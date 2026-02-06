import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:yogiface/Core/Routes/app_routes.dart';
import 'package:yogiface/Services/secure_storage_service.dart';
import 'package:yogiface/Views/SplashView/splash_view.dart';
import 'package:yogiface/gen/strings.g.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterNativeSplash.remove();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("d5f72260-7b06-436d-8d21-03ac3c99b2cb");

  OneSignal.Notifications.requestPermission(true);

  final storageService = SecureStorageService();
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
    ProviderScope(
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
