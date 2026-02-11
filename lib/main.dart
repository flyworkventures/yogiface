import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:yogiface/Core/Routes/app_routes.dart';
import 'package:yogiface/Riverpod/Providers/all_providers.dart';
import 'package:yogiface/Services/secure_storage_service.dart';
import 'package:yogiface/Views/SplashView/splash_view.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/utils/print.dart' hide LogLevel;

Future<void> initPlatformState() async {
  const String googleApiKey = 'goog_IKjXwzWzRYFtEeOXIMLrgCkrNEP';
  const String appleApiKey = 'appl_IFmIkNubULNOdiRaHZXmpagweii';

  await Purchases.setLogLevel(kDebugMode ? LogLevel.debug : LogLevel.info);

  if (defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.macOS) {
    await Purchases.configure(PurchasesConfiguration(appleApiKey));
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    await Purchases.configure(PurchasesConfiguration(googleApiKey));
  }
  //TODO:
  // await Purchases.logIn(kullaniciId);

  Print.info('RevenueCat initialized', tag: 'Main');
}

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterNativeSplash.remove();
  await initPlatformState();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("d5f72260-7b06-436d-8d21-03ac3c99b2cb");

  // Create a ProviderContainer so we can access Riverpod providers from
  // this top-level location (observer callbacks run before widgets can
  // easily access a Ref). We'll pass this container into ProviderScope
  // below so the rest of the app uses the same container.
  final container = ProviderContainer();

  OneSignal.User.pushSubscription.addObserver((state) {
    final id = state.current.id;
    final isOptedIn = state.current.optedIn;
    Print.info(
        "📢 OneSignal Subscription Changed - ID: $id, OptedIn: $isOptedIn");

    // Only save if user is actually subscribed (opted in)
    if (id != null && id.isNotEmpty && isOptedIn == true) {
      try {
        // Save to backend so we can send push notifications to this user
        container.read(AllProviders.userProvider.notifier).saveOneSignalId(id);
        Print.info("📢 OneSignal id sent to backend: $id (subscribed)");
      } catch (e) {
        Print.error('Error saving OneSignal id from observer: $e');
      }
    } else if (id != null && isOptedIn != true) {
      Print.info(
          "⚠️ OneSignal ID exists but user is not subscribed. Not saving to backend.");
    }
  });

  final initialId = OneSignal.User.pushSubscription.id;
  final initialOptedIn = OneSignal.User.pushSubscription.optedIn;
  Print.info("📢 Initial OneSignal - ID: $initialId, OptedIn: $initialOptedIn");

  // If we already have an id at startup AND user is subscribed, send it to the backend
  if (initialId != null && initialId.isNotEmpty && initialOptedIn == true) {
    try {
      container
          .read(AllProviders.userProvider.notifier)
          .saveOneSignalId(initialId);
      Print.info(
          '📢 Initial OneSignal id sent to backend: $initialId (subscribed)');
    } catch (e) {
      Print.error('Error sending initial OneSignal id: $e');
    }
  } else if (initialId != null && initialOptedIn != true) {
    Print.info(
        '⚠️ Initial OneSignal ID exists but user not subscribed. Waiting for opt-in...');
  }

  // Only prompt for notification permission once (Apple guideline).
  // Use secure storage flag to track whether we've already asked.
  final storageService = SecureStorageService();
  final alreadyAsked = await storageService.getNotificationPermissionAsked();
  if (!alreadyAsked) {
    OneSignal.Notifications.requestPermission(true);
    await storageService.saveNotificationPermissionAsked(true);
    Print.info('Notification permission requested (first time)');
  } else {
    Print.info(
        'Notification permission already asked previously - skipping prompt');
  }

  final savedLanguageCode = await storageService.getLanguage();

  if (savedLanguageCode != null) {
    try {
      final locale = AppLocaleUtils.parseLocaleParts(
        languageCode: savedLanguageCode,
      );
      LocaleSettings.setLocale(locale);
    } catch (e) {
      await LocaleSettings.useDeviceLocale();
    }
  } else {
    await LocaleSettings.useDeviceLocale();
  }

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yogiface',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashView(),
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      routes: AppRoutes.getRoutes(),
    );
  }
}
