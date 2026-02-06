import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/Services/secure_storage_service.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class LanguageViewPage extends HookWidget {
  const LanguageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Current locale'i al ve state olarak tut
    final currentLocale = LocaleSettings.currentLocale;
    final selectedLanguage = useState(currentLocale);

    final List<Map<String, dynamic>> languages = [
      {
        'name': context.t.languageOptions.english,
        'icon': AppIcons.eng,
        'value': AppLocale.en,
      },
      {
        'name': context.t.languageOptions.german,
        'icon': AppIcons.ger,
        'value': AppLocale.de,
      },
      {
        'name': context.t.languageOptions.italian,
        'icon': AppIcons.italy,
        'value': AppLocale.it,
      },
      {
        'name': context.t.languageOptions.french,
        'icon': AppIcons.fr,
        'value': AppLocale.fr,
      },
      {
        'name': context.t.languageOptions.japanese,
        'icon': AppIcons.jp,
        'value': AppLocale.ja,
      },
      {
        'name': context.t.languageOptions.spanish,
        'icon': AppIcons.tr, // TODO: Spanish flag asset needed
        'value': AppLocale.es,
      },
      {
        'name': context.t.languageOptions.russian,
        'icon': AppIcons.rus,
        'value': AppLocale.ru,
      },
      {
        'name': context.t.languageOptions.turkish,
        'icon': AppIcons.tr,
        'value': AppLocale.tr,
      },
      {
        'name': context.t.languageOptions.korean,
        'icon': AppIcons.kr,
        'value': AppLocale.ko,
      },
      {
        'name': context.t.languageOptions.hindi,
        'icon': AppIcons.en, // TODO: Hindi flag asset needed
        'value': AppLocale.hi,
      },
      {
        'name': context.t.languageOptions.portuguese,
        'icon': AppIcons.pr, // TODO: Portuguese flag asset needed
        'value': AppLocale.pt,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          context.t.appLanguage,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topRight,
            radius: 1.7,
            colors: [
              Color(0xFFE8A7F2),
              Colors.white,
            ],
            stops: [0.0, 0.5],
          ),
        ),
        child: SizedBox.expand(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 16),
                // Başlık
                Text(
                  context.t.selectLanguage,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.latoBody(
                    24,
                    weight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemCount: languages.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final language = languages[index];
                      final isSelected =
                          language['value'] == selectedLanguage.value;

                      return LanguageMenuItem(
                        icon: language['icon']!,
                        title: language['name']!,
                        isSelected: isSelected,
                        onTap: () {
                          selectedLanguage.value =
                              language['value'] as AppLocale;
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: GestureDetector(
                    onTap: () async {
                      final storageService = SecureStorageService();
                      await storageService
                          .saveLanguage(selectedLanguage.value.languageCode);

                      LocaleSettings.setLocale(selectedLanguage.value);

                      // TODO: Backend'e dil değişikliğini bildir (User API update)
                      // await UserService.updateLanguage(selectedLanguage.value.languageTag);

                      if (context.mounted) {
                        Navigator.pop(context);
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFE991DC), Color(0xFFD56FCB)],
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        context.t.save,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguageMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;

  const LanguageMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFE991DC)
                : AppColors.onboardingGreyLight,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            // Bayrak ikonu
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                icon,
                width: 32,
                height: 24,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Dil adı
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.latoBody(
                  16,
                  weight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
