import 'package:flutter/material.dart';
import 'package:yogiface/theme/app_colors.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';

class LanguageViewPage extends StatefulWidget {
  const LanguageViewPage({super.key});

  @override
  State<LanguageViewPage> createState() => _LanguageViewPageState();
}

class _LanguageViewPageState extends State<LanguageViewPage> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'icon': AppIcons.eng},
    {'name': 'German', 'icon': AppIcons.ger},
    {'name': 'Italian', 'icon': AppIcons.italy},
    {'name': 'French', 'icon': AppIcons.fr},
    {'name': 'Japanese', 'icon': AppIcons.jp},
    {'name': 'Spanish', 'icon': AppIcons.tr},
    {'name': 'Russian', 'icon': AppIcons.rus},
    {'name': 'Turkish', 'icon': AppIcons.tr},
    {'name': 'Korean', 'icon': AppIcons.kr},
    {'name': 'Hindi', 'icon': AppIcons.en},
    {'name': 'Portuguese', 'icon': AppIcons.pr},
  ];

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          'Uygulama Dili',
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
                  'Select the application\nlanguage',
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
                      final isSelected = language['name'] == selectedLanguage;

                      return LanguageMenuItem(
                        icon: language['icon']!,
                        title: language['name']!,
                        isSelected: isSelected,
                        onTap: () {
                          setState(() {
                            selectedLanguage = language['name']!;
                          });
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context, selectedLanguage);
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
                      child: const Text(
                        'Save',
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
