import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yogiface/gen/strings.g.dart';
import 'package:yogiface/theme/app_paddings.dart';
import 'package:yogiface/theme/app_text_styles.dart';
import 'package:yogiface/utils/app_assets.dart';
import 'package:yogiface/utils/extension.dart';

class LoadingScreen extends HookWidget {
  final VoidCallback onComplete;
  final void Function(double progress)? onProgressChanged;

  const LoadingScreen({
    super.key,
    required this.onComplete,
    this.onProgressChanged,
  });

  @override
  Widget build(BuildContext context) {
    final progress = useState<double>(0.0);

    useEffect(() {
      debugPrint('🟢 LoadingScreen MOUNTED');
      bool isCompleted = false;

      final timer = Stream.periodic(const Duration(milliseconds: 50), (i) {
        if (i >= 100) return 1.0;
        return (i + 1) / 100.0;
      }).take(101).listen((value) {
        progress.value = value;
        onProgressChanged?.call(value);

        if (value >= 1.0 && !isCompleted) {
          isCompleted = true;
          debugPrint('🟢 Progress 100% - calling onComplete in 1 second');
          Future.delayed(const Duration(seconds: 1), () {
            debugPrint('🟢 onComplete NOW');
            onComplete();
          });
        }
      });

      return () {
        debugPrint('🔴 LoadingScreen DISPOSED');
        timer.cancel();
      };
    }, []);

    return Padding(
      padding: AppPaddings.horizontalPage,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: AppSpacing.xl),

            // Kadın fotoğrafı
            Container(
              height: context.height * 0.28,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AppImages.female3),
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xl),

            // Başlık
            Align(
                alignment: Alignment.center,
                child: Text(
                  context.t.onboarding.creatingPersonalizedProfile,
                  style: AppTextStyles.onboardingBody(
                    28,
                    height: 1.3,
                    weight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: AppSpacing.sm),

            // Alt metin
            Align(
                alignment: Alignment.center,
                child: Text(
                  context.t.onboarding.tailoringExperience,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.onboardingBody(
                    18,
                    height: 1.3,
                    weight: FontWeight.w500,
                  ),
                )),
            const SizedBox(height: AppSpacing.xl * 2),

            // İkonlar bölümü
            // İkon grubu
            LayoutBuilder(
              builder: (context, constraints) {
                final iconGroupSize = constraints.maxWidth * 0.55;
                final iconSize = iconGroupSize * 0.30;

                return Center(
                  child: SizedBox(
                    width: iconGroupSize.clamp(180.0, 220.0),
                    height: iconGroupSize.clamp(180.0, 220.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Arka plan mor daire
                        Image.asset(
                          AppIcons.circlebackground,
                          width: iconGroupSize.clamp(180.0, 220.0),
                          height: iconGroupSize.clamp(180.0, 220.0),
                          fit: BoxFit.contain,
                        ),
                        // İkonlar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AppIcons.heart,
                              width: iconSize.clamp(50.0, 69.0),
                              height: iconSize.clamp(50.0, 68.0),
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: iconGroupSize * 0.035),
                            Image.asset(
                              AppIcons.profile,
                              width: iconSize.clamp(50.0, 69.0),
                              height: iconSize.clamp(50.0, 68.0),
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: iconGroupSize * 0.035),
                            Image.asset(
                              AppIcons.setting,
                              width: iconSize.clamp(50.0, 69.0),
                              height: iconSize.clamp(50.0, 68.0),
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
