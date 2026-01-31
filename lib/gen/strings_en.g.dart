///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Welcome'
	String get welcome => 'Welcome';

	/// en: 'Get Started'
	String get get_started => 'Get Started';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'I am happy to see you. You can continue where you left off by logging in to your account.'
	String get logintext => 'I am happy to see you. You can continue where you left off by logging in to your account.';

	late final TranslationsTermOfServiceEn termOfService = TranslationsTermOfServiceEn._(_root);

	/// en: 'Cookies Policy'
	String get cookies => 'Cookies Policy';

	/// en: 'Privacy Policy'
	String get privacy => 'Privacy Policy';

	late final TranslationsTermsOfServiceEn termsOfService = TranslationsTermsOfServiceEn._(_root);
	late final TranslationsCookiesPolicyEn cookiesPolicy = TranslationsCookiesPolicyEn._(_root);
	late final TranslationsPrivacyPolicyEn privacyPolicy = TranslationsPrivacyPolicyEn._(_root);
	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);

	/// en: 'Press back again to exit'
	String get pressBackAgainToExit => 'Press back again to exit';

	/// en: 'Exercise successfully added to favorites!'
	String get addedToFavoritesTitle => 'Exercise successfully added to favorites!';

	/// en: 'Exercise successfully removed from favorites!'
	String get removedFromFavoritesTitle => 'Exercise successfully removed from favorites!';

	/// en: 'You can access other exercises you want to add from courses'
	String get removedFromFavorites => 'You can access other exercises you want to add from courses';

	late final TranslationsFaqEn faq = TranslationsFaqEn._(_root);
}

// Path: termOfService
class TranslationsTermOfServiceEn {
	TranslationsTermOfServiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'By signing up for swipe, you agree to our '
	String get text1 => 'By signing up for swipe, you agree to our ';

	/// en: 'Terms of Service'
	String get link1 => 'Terms of Service';

	/// en: '. Learn how we process your data in our '
	String get text2 => '. Learn how we process your data in our ';

	/// en: 'Privacy Policy'
	String get link2 => 'Privacy Policy';

	/// en: ' and '
	String get text3 => ' and ';

	/// en: 'Cookies Policy'
	String get link3 => 'Cookies Policy';

	/// en: ''
	String get text4 => '';
}

// Path: termsOfService
class TranslationsTermsOfServiceEn {
	TranslationsTermsOfServiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yogiface – Terms of Service'
	String get title => 'Yogiface – Terms of Service';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'Yogiface is a wellness application that provides face yoga exercises and guided content aimed at supporting facial muscles. The Application does not provide medical, clinical, aesthetic, or professional health services.'
	String get principle => 'Yogiface is a wellness application that provides face yoga exercises and guided content aimed at supporting facial muscles. The Application does not provide medical, clinical, aesthetic, or professional health services.';

	/// en: 'These Terms of Service ("Terms") contain the rules applicable to your use of the Yogiface mobile application ("Application"). By using the Application, you agree to these Terms. If you do not agree to the Terms, you should not use the Application.'
	String get intro => 'These Terms of Service ("Terms") contain the rules applicable to your use of the Yogiface mobile application ("Application"). By using the Application, you agree to these Terms. If you do not agree to the Terms, you should not use the Application.';

	late final TranslationsTermsOfServiceSection1En section1 = TranslationsTermsOfServiceSection1En._(_root);
	late final TranslationsTermsOfServiceSection2En section2 = TranslationsTermsOfServiceSection2En._(_root);
	late final TranslationsTermsOfServiceSection3En section3 = TranslationsTermsOfServiceSection3En._(_root);
	late final TranslationsTermsOfServiceSection4En section4 = TranslationsTermsOfServiceSection4En._(_root);
	late final TranslationsTermsOfServiceSection5En section5 = TranslationsTermsOfServiceSection5En._(_root);
	late final TranslationsTermsOfServiceSection6En section6 = TranslationsTermsOfServiceSection6En._(_root);
	late final TranslationsTermsOfServiceSection7En section7 = TranslationsTermsOfServiceSection7En._(_root);
	late final TranslationsTermsOfServiceSection12En section12 = TranslationsTermsOfServiceSection12En._(_root);
	late final TranslationsTermsOfServiceSection13En section13 = TranslationsTermsOfServiceSection13En._(_root);
}

// Path: cookiesPolicy
class TranslationsCookiesPolicyEn {
	TranslationsCookiesPolicyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yogiface – Cookie Policy'
	String get title => 'Yogiface – Cookie Policy';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'Welcome to Yogiface! Every time you visit the app, we use digital helpers (cookies) to improve and personalize your experience. This policy explains how you can manage your preferences.'
	String get intro => 'Welcome to Yogiface! Every time you visit the app, we use digital helpers (cookies) to improve and personalize your experience. This policy explains how you can manage your preferences.';

	late final TranslationsCookiesPolicySection1En section1 = TranslationsCookiesPolicySection1En._(_root);
	late final TranslationsCookiesPolicySection2En section2 = TranslationsCookiesPolicySection2En._(_root);
	late final TranslationsCookiesPolicySection3En section3 = TranslationsCookiesPolicySection3En._(_root);
	late final TranslationsCookiesPolicySection4En section4 = TranslationsCookiesPolicySection4En._(_root);
	late final TranslationsCookiesPolicySection5En section5 = TranslationsCookiesPolicySection5En._(_root);
	late final TranslationsCookiesPolicySection6En section6 = TranslationsCookiesPolicySection6En._(_root);
	late final TranslationsCookiesPolicySection7En section7 = TranslationsCookiesPolicySection7En._(_root);
	late final TranslationsCookiesPolicySection8En section8 = TranslationsCookiesPolicySection8En._(_root);
}

// Path: privacyPolicy
class TranslationsPrivacyPolicyEn {
	TranslationsPrivacyPolicyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Yogiface – Privacy Policy'
	String get title => 'Yogiface – Privacy Policy';

	/// en: 'Last Updated: 2025'
	String get lastUpdated => 'Last Updated: 2025';

	/// en: 'This Privacy Policy explains the principles regarding the collection, use, storage, and protection of personal data of all users who use the Yogiface mobile application ("App"). By using the App, you accept this policy.'
	String get intro => 'This Privacy Policy explains the principles regarding the collection, use, storage, and protection of personal data of all users who use the Yogiface mobile application ("App"). By using the App, you accept this policy.';

	/// en: 'Yogiface adopts user privacy and data security as a core principle. All personal data is processed in accordance with GDPR and relevant legislation.'
	String get principle => 'Yogiface adopts user privacy and data security as a core principle. All personal data is processed in accordance with GDPR and relevant legislation.';

	late final TranslationsPrivacyPolicySection1En section1 = TranslationsPrivacyPolicySection1En._(_root);
	late final TranslationsPrivacyPolicySection2En section2 = TranslationsPrivacyPolicySection2En._(_root);
	late final TranslationsPrivacyPolicySection3En section3 = TranslationsPrivacyPolicySection3En._(_root);
	late final TranslationsPrivacyPolicySection4En section4 = TranslationsPrivacyPolicySection4En._(_root);
	late final TranslationsPrivacyPolicySection5En section5 = TranslationsPrivacyPolicySection5En._(_root);
	late final TranslationsPrivacyPolicySection6En section6 = TranslationsPrivacyPolicySection6En._(_root);
	late final TranslationsPrivacyPolicySection8En section8 = TranslationsPrivacyPolicySection8En._(_root);
	late final TranslationsPrivacyPolicySection10En section10 = TranslationsPrivacyPolicySection10En._(_root);
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'BASIC INFORMATION'
	String get basicInformation => 'BASIC INFORMATION';

	/// en: 'TARGET'
	String get target => 'TARGET';

	/// en: 'HABITS'
	String get habits => 'HABITS';

	/// en: 'STEP'
	String get step => 'STEP';

	/// en: 'OF'
	String get of => 'OF';

	/// en: 'Tell Us About Yourself'
	String get tellUsAboutYourself => 'Tell Us About Yourself';

	/// en: 'A short bio helps others know the real you. Keep it fun and genuine'
	String get shortBioDescription => 'A short bio helps others know the real you. Keep it fun and genuine';

	/// en: 'Enter your Fullname'
	String get enterYourFullname => 'Enter your Fullname';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'Male'
	String get male => 'Male';

	/// en: 'Female'
	String get female => 'Female';

	/// en: 'I don't want to mention it'
	String get dontWantToMention => 'I don\'t want to mention it';

	/// en: 'What is the main objective?'
	String get whatIsMainObjective => 'What is the main objective?';

	/// en: 'Reduce wrinkles'
	String get reduceWrinkles => 'Reduce wrinkles';

	/// en: 'Tighten skin'
	String get tightenSkin => 'Tighten skin';

	/// en: 'Lift droopy eyelids'
	String get liftDroopyEyelids => 'Lift droopy eyelids';

	/// en: 'Eliminate double chin'
	String get eliminateDoubleChin => 'Eliminate double chin';

	/// en: 'Brighten skin tone'
	String get brightenSkinTone => 'Brighten skin tone';

	/// en: 'All of the above'
	String get allOfTheAbove => 'All of the above';

	/// en: 'Which area would you like to improve?'
	String get whichAreaToImprove => 'Which area would you like to improve?';

	/// en: 'Forehead'
	String get forehead => 'Forehead';

	/// en: 'Eyes'
	String get eyes => 'Eyes';

	/// en: 'Nose'
	String get nose => 'Nose';

	/// en: 'Cheeks'
	String get cheeks => 'Cheeks';

	/// en: 'Lips'
	String get lips => 'Lips';

	/// en: 'Jawline'
	String get jawline => 'Jawline';

	/// en: 'Neck'
	String get neck => 'Neck';

	/// en: 'What face shape are you aiming for?'
	String get whatFaceShapeAiming => 'What face shape are you aiming for?';

	/// en: 'Heart'
	String get heart => 'Heart';

	/// en: 'Oval'
	String get oval => 'Oval';

	/// en: 'Square'
	String get square => 'Square';

	/// en: 'Round'
	String get round => 'Round';

	/// en: 'Diamond'
	String get diamond => 'Diamond';

	/// en: 'What is your skin type?'
	String get whatIsYourSkinType => 'What is your skin type?';

	/// en: 'Normal'
	String get normal => 'Normal';

	/// en: 'Oily'
	String get oily => 'Oily';

	/// en: 'Dry'
	String get dry => 'Dry';

	/// en: 'Combination'
	String get combination => 'Combination';

	/// en: 'Sensitive'
	String get sensitive => 'Sensitive';

	/// en: 'Which of them do you have?'
	String get whichOfThemDoYouHave => 'Which of them do you have?';

	/// en: 'Acne and pimples'
	String get acneAndPimples => 'Acne and pimples';

	/// en: 'Redness'
	String get redness => 'Redness';

	/// en: 'Swelling'
	String get swelling => 'Swelling';

	/// en: 'Wrinkles'
	String get wrinkles => 'Wrinkles';

	/// en: 'Neck lines'
	String get neckLines => 'Neck lines';

	/// en: 'How often do you wear make-up?'
	String get howOftenWearMakeup => 'How often do you wear make-up?';

	/// en: 'Every day'
	String get everyDay => 'Every day';

	/// en: 'A few days a week'
	String get fewDaysAWeek => 'A few days a week';

	/// en: 'Occasionally'
	String get occasionally => 'Occasionally';

	/// en: 'Never'
	String get never => 'Never';

	/// en: 'Have you had Botox?'
	String get haveYouHadBotox => 'Have you had Botox?';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Creating Your Personalized Profile'
	String get creatingPersonalizedProfile => 'Creating Your Personalized Profile';

	/// en: 'We are tailoring your experience based on your preferences...'
	String get tailoringExperience => 'We are tailoring your experience based on your preferences...';

	/// en: 'MATCHING PERSONALITIES'
	String get matchingPersonalities => 'MATCHING PERSONALITIES';
}

// Path: faq
class TranslationsFaqEn {
	TranslationsFaqEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Frequently Asked Questions'
	String get title => 'Frequently Asked Questions';

	late final TranslationsFaqQuestionsEn questions = TranslationsFaqQuestionsEn._(_root);
}

// Path: termsOfService.section1
class TranslationsTermsOfServiceSection1En {
	TranslationsTermsOfServiceSection1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1. Scope of Service'
	String get title => '1. Scope of Service';

	/// en: 'Yogiface offers users a guided face yoga and exercise experience. The Application includes:'
	String get content => 'Yogiface offers users a guided face yoga and exercise experience. The Application includes:';

	List<String> get items => [
		'Face yoga and exercise guides',
		'Daily and weekly exercise routines',
		'Targeted recommendations for specific facial areas',
		'Customizable plans and progress tracking',
	];

	/// en: 'The content provided does not constitute professional, medical, or aesthetic advice, diagnosis, or treatment.'
	String get note => 'The content provided does not constitute professional, medical, or aesthetic advice, diagnosis, or treatment.';
}

// Path: termsOfService.section2
class TranslationsTermsOfServiceSection2En {
	TranslationsTermsOfServiceSection2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '2. Conditions of Use'
	String get title => '2. Conditions of Use';

	List<String> get items => [
		'You must be at least 13 years old.',
		'You must provide accurate and up-to-date account information.',
		'You acknowledge that the exercises are not a medical service.',
	];
}

// Path: termsOfService.section3
class TranslationsTermsOfServiceSection3En {
	TranslationsTermsOfServiceSection3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '3. Prohibited Uses'
	String get title => '3. Prohibited Uses';

	List<String> get items => [
		'Using the app for illegal activities.',
		'Selling, reproducing, or distributing content without permission.',
		'Unauthorized access, hacking, or reverse engineering attempts.',
	];
}

// Path: termsOfService.section4
class TranslationsTermsOfServiceSection4En {
	TranslationsTermsOfServiceSection4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4. Account and Membership'
	String get title => '4. Account and Membership';

	/// en: 'You are responsible for your account security. Yogiface reserves the right to suspend or close accounts in case of usage contrary to the Terms.'
	String get content => 'You are responsible for your account security. Yogiface reserves the right to suspend or close accounts in case of usage contrary to the Terms.';
}

// Path: termsOfService.section5
class TranslationsTermsOfServiceSection5En {
	TranslationsTermsOfServiceSection5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '5. Premium and Paid Services'
	String get title => '5. Premium and Paid Services';

	List<String> get items => [
		'Pricing is based on App Store and Google Play policies.',
		'Subscriptions may renew automatically; cancellations are made via store settings.',
	];
}

// Path: termsOfService.section6
class TranslationsTermsOfServiceSection6En {
	TranslationsTermsOfServiceSection6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '6. Disclaimer'
	String get title => '6. Disclaimer';

	/// en: 'Users perform exercises at their own responsibility. In case of any health issues, users should consult a healthcare professional. The App should not be used for diagnosis or treatment.'
	String get content => 'Users perform exercises at their own responsibility. In case of any health issues, users should consult a healthcare professional. The App should not be used for diagnosis or treatment.';
}

// Path: termsOfService.section7
class TranslationsTermsOfServiceSection7En {
	TranslationsTermsOfServiceSection7En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '7. Intellectual Property'
	String get title => '7. Intellectual Property';

	/// en: 'Design, software, images, and exercise content belong to Yogiface. Unauthorized copying or source code modification is prohibited.'
	String get content => 'Design, software, images, and exercise content belong to Yogiface. Unauthorized copying or source code modification is prohibited.';
}

// Path: termsOfService.section12
class TranslationsTermsOfServiceSection12En {
	TranslationsTermsOfServiceSection12En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '12. Governing Law'
	String get title => '12. Governing Law';

	/// en: 'These Terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts have jurisdiction over disputes.'
	String get content => 'These Terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts have jurisdiction over disputes.';
}

// Path: termsOfService.section13
class TranslationsTermsOfServiceSection13En {
	TranslationsTermsOfServiceSection13En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '13. Contact'
	String get title => '13. Contact';

	/// en: '📩 Email: support@fly-work.com'
	String get email => '📩 Email: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class TranslationsCookiesPolicySection1En {
	TranslationsCookiesPolicySection1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1. What Are Cookies?'
	String get title => '1. What Are Cookies?';

	/// en: 'Cookies are small data files placed on your device. They help us understand how you use the app and make your experience smoother. Cookies do not directly contain your identity; they act as digital helpers that remember your preferences and usage habits.'
	String get content => 'Cookies are small data files placed on your device. They help us understand how you use the app and make your experience smoother. Cookies do not directly contain your identity; they act as digital helpers that remember your preferences and usage habits.';
}

// Path: cookiesPolicy.section2
class TranslationsCookiesPolicySection2En {
	TranslationsCookiesPolicySection2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '2. Which Cookies Do We Use?'
	String get title => '2. Which Cookies Do We Use?';

	late final TranslationsCookiesPolicySection2EssentialEn essential = TranslationsCookiesPolicySection2EssentialEn._(_root);
	late final TranslationsCookiesPolicySection2PerformanceEn performance = TranslationsCookiesPolicySection2PerformanceEn._(_root);
	late final TranslationsCookiesPolicySection2PersonalizationEn personalization = TranslationsCookiesPolicySection2PersonalizationEn._(_root);
	late final TranslationsCookiesPolicySection2MarketingEn marketing = TranslationsCookiesPolicySection2MarketingEn._(_root);
}

// Path: cookiesPolicy.section3
class TranslationsCookiesPolicySection3En {
	TranslationsCookiesPolicySection3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '3. Why Do We Use Cookies?'
	String get title => '3. Why Do We Use Cookies?';

	List<String> get items => [
		'To ensure the app runs fast and smoothly',
		'To reduce repetitive actions by remembering user preferences',
		'To make the experience more personal and useful',
		'To improve the app by analyzing usage data',
	];
}

// Path: cookiesPolicy.section4
class TranslationsCookiesPolicySection4En {
	TranslationsCookiesPolicySection4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4. Third-Party Cookies'
	String get title => '4. Third-Party Cookies';

	/// en: 'Some cookies may be placed by third-party partners providing analytical and advertising services. These are subject to the providers' own privacy and cookie policies.'
	String get content => 'Some cookies may be placed by third-party partners providing analytical and advertising services. These are subject to the providers\' own privacy and cookie policies.';
}

// Path: cookiesPolicy.section5
class TranslationsCookiesPolicySection5En {
	TranslationsCookiesPolicySection5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '5. Cookie Control and Management'
	String get title => '5. Cookie Control and Management';

	/// en: 'You can manage cookies via device settings, app permissions, or system settings. Disabling necessary cookies may cause parts of the app to malfunction.'
	String get content => 'You can manage cookies via device settings, app permissions, or system settings. Disabling necessary cookies may cause parts of the app to malfunction.';
}

// Path: cookiesPolicy.section6
class TranslationsCookiesPolicySection6En {
	TranslationsCookiesPolicySection6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '6. Use of Data'
	String get title => '6. Use of Data';

	/// en: 'Data obtained through cookies, if qualified as personal data, is processed within the legal framework under the Privacy Policy.'
	String get content => 'Data obtained through cookies, if qualified as personal data, is processed within the legal framework under the Privacy Policy.';
}

// Path: cookiesPolicy.section7
class TranslationsCookiesPolicySection7En {
	TranslationsCookiesPolicySection7En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '7. Policy Updates'
	String get title => '7. Policy Updates';

	/// en: 'This policy may be updated depending on technological and legal changes. The current version becomes effective as soon as it is published.'
	String get content => 'This policy may be updated depending on technological and legal changes. The current version becomes effective as soon as it is published.';
}

// Path: cookiesPolicy.section8
class TranslationsCookiesPolicySection8En {
	TranslationsCookiesPolicySection8En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '8. Contact'
	String get title => '8. Contact';

	/// en: '📩 Email: support@fly-work.com'
	String get email => '📩 Email: support@fly-work.com';
}

// Path: privacyPolicy.section1
class TranslationsPrivacyPolicySection1En {
	TranslationsPrivacyPolicySection1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1. Collected Information'
	String get title => '1. Collected Information';

	late final TranslationsPrivacyPolicySection1Sub1En sub1 = TranslationsPrivacyPolicySection1Sub1En._(_root);
	late final TranslationsPrivacyPolicySection1Sub2En sub2 = TranslationsPrivacyPolicySection1Sub2En._(_root);
}

// Path: privacyPolicy.section2
class TranslationsPrivacyPolicySection2En {
	TranslationsPrivacyPolicySection2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '2. Data Usage Purposes'
	String get title => '2. Data Usage Purposes';

	List<String> get items => [
		'To ensure uninterrupted operation of the app',
		'To personalize and optimize the face yoga experience',
		'To perform error detection and performance analysis',
		'To respond to user demands and support requests',
	];

	/// en: 'Important: User data is never sold to third parties.'
	String get note => 'Important: User data is never sold to third parties.';
}

// Path: privacyPolicy.section3
class TranslationsPrivacyPolicySection3En {
	TranslationsPrivacyPolicySection3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '3. Data Retention'
	String get title => '3. Data Retention';

	List<String> get items => [
		'Data is stored as long as the user account is active.',
		'When an account is deleted, personal data is irreversibly removed.',
		'Support records are kept for a maximum of 12 months after completion.',
	];
}

// Path: privacyPolicy.section4
class TranslationsPrivacyPolicySection4En {
	TranslationsPrivacyPolicySection4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '4. Data Sharing'
	String get title => '4. Data Sharing';

	/// en: 'Your data is only shared in case of legal requirements (official requests), service providers (cloud infrastructure, analytics), or with explicit user consent.'
	String get content => 'Your data is only shared in case of legal requirements (official requests), service providers (cloud infrastructure, analytics), or with explicit user consent.';
}

// Path: privacyPolicy.section5
class TranslationsPrivacyPolicySection5En {
	TranslationsPrivacyPolicySection5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '5. Cookies and Security'
	String get title => '5. Cookies and Security';

	/// en: 'Yogiface may use cookies for performance and experience enhancement. Your data is protected by SSL/TLS encryption and regular security audits.'
	String get content => 'Yogiface may use cookies for performance and experience enhancement. Your data is protected by SSL/TLS encryption and regular security audits.';
}

// Path: privacyPolicy.section6
class TranslationsPrivacyPolicySection6En {
	TranslationsPrivacyPolicySection6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '6. User Rights'
	String get title => '6. User Rights';

	/// en: 'You have the right to access, correct, delete, and restrict data processing.'
	String get content => 'You have the right to access, correct, delete, and restrict data processing.';

	/// en: 'For requests:'
	String get contact => 'For requests:';

	/// en: 'support@fly-work.com'
	String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class TranslationsPrivacyPolicySection8En {
	TranslationsPrivacyPolicySection8En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '8. Children's Privacy'
	String get title => '8. Children\'s Privacy';

	/// en: 'Yogiface is not intended for individuals under 13. Any data collected from this age group will be deleted immediately if detected.'
	String get content => 'Yogiface is not intended for individuals under 13. Any data collected from this age group will be deleted immediately if detected.';
}

// Path: privacyPolicy.section10
class TranslationsPrivacyPolicySection10En {
	TranslationsPrivacyPolicySection10En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '10. Contact'
	String get title => '10. Contact';

	/// en: '📩 Email: support@fly-work.com'
	String get email => '📩 Email: support@fly-work.com';
}

// Path: faq.questions
class TranslationsFaqQuestionsEn {
	TranslationsFaqQuestionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFaqQuestionsQ1En q1 = TranslationsFaqQuestionsQ1En._(_root);
	late final TranslationsFaqQuestionsQ2En q2 = TranslationsFaqQuestionsQ2En._(_root);
	late final TranslationsFaqQuestionsQ3En q3 = TranslationsFaqQuestionsQ3En._(_root);
	late final TranslationsFaqQuestionsQ4En q4 = TranslationsFaqQuestionsQ4En._(_root);
	late final TranslationsFaqQuestionsQ5En q5 = TranslationsFaqQuestionsQ5En._(_root);
	late final TranslationsFaqQuestionsQ6En q6 = TranslationsFaqQuestionsQ6En._(_root);
	late final TranslationsFaqQuestionsQ7En q7 = TranslationsFaqQuestionsQ7En._(_root);
	late final TranslationsFaqQuestionsQ8En q8 = TranslationsFaqQuestionsQ8En._(_root);
	late final TranslationsFaqQuestionsQ9En q9 = TranslationsFaqQuestionsQ9En._(_root);
	late final TranslationsFaqQuestionsQ10En q10 = TranslationsFaqQuestionsQ10En._(_root);
}

// Path: cookiesPolicy.section2.essential
class TranslationsCookiesPolicySection2EssentialEn {
	TranslationsCookiesPolicySection2EssentialEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Strictly Necessary Cookies'
	String get title => 'Strictly Necessary Cookies';

	/// en: 'Required for basic app functions. They support core processes such as session management, security, and basic navigation.'
	String get content => 'Required for basic app functions. They support core processes such as session management, security, and basic navigation.';
}

// Path: cookiesPolicy.section2.performance
class TranslationsCookiesPolicySection2PerformanceEn {
	TranslationsCookiesPolicySection2PerformanceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Performance and Analytics Cookies'
	String get title => 'Performance and Analytics Cookies';

	/// en: 'Helps us understand which areas are used most frequently and which sections need improvement.'
	String get content => 'Helps us understand which areas are used most frequently and which sections need improvement.';
}

// Path: cookiesPolicy.section2.personalization
class TranslationsCookiesPolicySection2PersonalizationEn {
	TranslationsCookiesPolicySection2PersonalizationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Personalization Cookies'
	String get title => 'Personalization Cookies';

	/// en: 'Provides a more personal experience by remembering settings such as language, theme, and exercise preferences.'
	String get content => 'Provides a more personal experience by remembering settings such as language, theme, and exercise preferences.';
}

// Path: cookiesPolicy.section2.marketing
class TranslationsCookiesPolicySection2MarketingEn {
	TranslationsCookiesPolicySection2MarketingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Marketing and Advertising Cookies'
	String get title => 'Marketing and Advertising Cookies';

	/// en: 'May be used to provide content and promotions more suitable to your interests and sometimes works with third-party services.'
	String get content => 'May be used to provide content and promotions more suitable to your interests and sometimes works with third-party services.';
}

// Path: privacyPolicy.section1.sub1
class TranslationsPrivacyPolicySection1Sub1En {
	TranslationsPrivacyPolicySection1Sub1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1.1. User-Provided Data'
	String get title => '1.1. User-Provided Data';

	List<String> get items => [
		'Name, nickname, or profile info',
		'Email address (for registration, purchase, and support)',
		'Exercise plans, preferences, and personalization settings',
		'Feedback, requests, and support messages',
	];
}

// Path: privacyPolicy.section1.sub2
class TranslationsPrivacyPolicySection1Sub2En {
	TranslationsPrivacyPolicySection1Sub2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '1.2. Automatically Collected Data'
	String get title => '1.2. Automatically Collected Data';

	List<String> get items => [
		'Device type, operating system, and technical info',
		'Approximate location data (city/country level)',
		'Usage info such as session duration and screen interactions',
		'Performance, error, and crash logs',
	];
}

// Path: faq.questions.q1
class TranslationsFaqQuestionsQ1En {
	TranslationsFaqQuestionsQ1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What is YogiFace?'
	String get question => 'What is YogiFace?';

	/// en: 'YogiFace is an AI-powered personal care app that offers face yoga exercises to improve skin appearance by working facial muscles.'
	String get answer => 'YogiFace is an AI-powered personal care app that offers face yoga exercises to improve skin appearance by working facial muscles.';
}

// Path: faq.questions.q2
class TranslationsFaqQuestionsQ2En {
	TranslationsFaqQuestionsQ2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Does the app really work?'
	String get question => 'Does the app really work?';

	/// en: 'Yes. Face yoga activates facial muscles to increase skin firmness, accelerate circulation, and provide a more youthful appearance with regular use.'
	String get answer => 'Yes. Face yoga activates facial muscles to increase skin firmness, accelerate circulation, and provide a more youthful appearance with regular use.';
}

// Path: faq.questions.q3
class TranslationsFaqQuestionsQ3En {
	TranslationsFaqQuestionsQ3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'What does artificial intelligence do here?'
	String get question => 'What does artificial intelligence do here?';

	/// en: 'YogiFace analyzes facial features, identifies target areas, and creates a personalized exercise plan. This way, each movement is optimized according to personal needs.'
	String get answer => 'YogiFace analyzes facial features, identifies target areas, and creates a personalized exercise plan. This way, each movement is optimized according to personal needs.';
}

// Path: faq.questions.q4
class TranslationsFaqQuestionsQ4En {
	TranslationsFaqQuestionsQ4En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How much time do I need to dedicate each day?'
	String get question => 'How much time do I need to dedicate each day?';

	/// en: 'Only 5-10 minutes a day is sufficient. With regular practice, visible changes begin within a few weeks.'
	String get answer => 'Only 5-10 minutes a day is sufficient. With regular practice, visible changes begin within a few weeks.';
}

// Path: faq.questions.q5
class TranslationsFaqQuestionsQ5En {
	TranslationsFaqQuestionsQ5En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'When will I see results?'
	String get question => 'When will I see results?';

	/// en: 'With regular use, improvement in skin tone is visible within 2-3 weeks, and facial features become more defined within 4-6 weeks. Results may vary from person to person.'
	String get answer => 'With regular use, improvement in skin tone is visible within 2-3 weeks, and facial features become more defined within 4-6 weeks. Results may vary from person to person.';
}

// Path: faq.questions.q6
class TranslationsFaqQuestionsQ6En {
	TranslationsFaqQuestionsQ6En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Does it work for problems like double chin or sagging?'
	String get question => 'Does it work for problems like double chin or sagging?';

	/// en: 'Yes. YogiFace offers targeted exercises for the jawline, cheek muscles, and neck area. When done regularly, these exercises provide significant tightening in these areas.'
	String get answer => 'Yes. YogiFace offers targeted exercises for the jawline, cheek muscles, and neck area. When done regularly, these exercises provide significant tightening in these areas.';
}

// Path: faq.questions.q7
class TranslationsFaqQuestionsQ7En {
	TranslationsFaqQuestionsQ7En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'How do I know if I'm doing the movements correctly?'
	String get question => 'How do I know if I\'m doing the movements correctly?';

	/// en: 'The app uses AI to analyze your facial angle, expression, and movement pattern; it notifies you of any incorrect points.'
	String get answer => 'The app uses AI to analyze your facial angle, expression, and movement pattern; it notifies you of any incorrect points.';
}

// Path: faq.questions.q8
class TranslationsFaqQuestionsQ8En {
	TranslationsFaqQuestionsQ8En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Is it suitable for all ages?'
	String get question => 'Is it suitable for all ages?';

	/// en: 'Yes. Face yoga is a non-invasive natural method. Everyone from a young age can safely practice it.'
	String get answer => 'Yes. Face yoga is a non-invasive natural method. Everyone from a young age can safely practice it.';
}

// Path: faq.questions.q9
class TranslationsFaqQuestionsQ9En {
	TranslationsFaqQuestionsQ9En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Is YogiFace free?'
	String get question => 'Is YogiFace free?';

	/// en: 'Basic exercises are free. Personal programs, advanced face analysis, and special AI recommendations are included in the premium package.'
	String get answer => 'Basic exercises are free. Personal programs, advanced face analysis, and special AI recommendations are included in the premium package.';
}

// Path: faq.questions.q10
class TranslationsFaqQuestionsQ10En {
	TranslationsFaqQuestionsQ10En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Can people who have had cosmetic surgery use it?'
	String get question => 'Can people who have had cosmetic surgery use it?';

	/// en: 'Many users use it safely, but it is recommended to consult a doctor during the post-operative recovery period.'
	String get answer => 'Many users use it safely, but it is recommended to consult a doctor during the post-operative recovery period.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => 'Welcome',
			'get_started' => 'Get Started',
			'next' => 'Next',
			'back' => 'Back',
			'skip' => 'Skip',
			'logintext' => 'I am happy to see you. You can continue where you left off by logging in to your account.',
			'termOfService.text1' => 'By signing up for swipe, you agree to our ',
			'termOfService.link1' => 'Terms of Service',
			'termOfService.text2' => '. Learn how we process your data in our ',
			'termOfService.link2' => 'Privacy Policy',
			'termOfService.text3' => ' and ',
			'termOfService.link3' => 'Cookies Policy',
			'termOfService.text4' => '',
			'cookies' => 'Cookies Policy',
			'privacy' => 'Privacy Policy',
			'termsOfService.title' => 'Yogiface – Terms of Service',
			'termsOfService.lastUpdated' => 'Last Updated: 2025',
			'termsOfService.principle' => 'Yogiface is a wellness application that provides face yoga exercises and guided content aimed at supporting facial muscles. The Application does not provide medical, clinical, aesthetic, or professional health services.',
			'termsOfService.intro' => 'These Terms of Service ("Terms") contain the rules applicable to your use of the Yogiface mobile application ("Application"). By using the Application, you agree to these Terms. If you do not agree to the Terms, you should not use the Application.',
			'termsOfService.section1.title' => '1. Scope of Service',
			'termsOfService.section1.content' => 'Yogiface offers users a guided face yoga and exercise experience. The Application includes:',
			'termsOfService.section1.items.0' => 'Face yoga and exercise guides',
			'termsOfService.section1.items.1' => 'Daily and weekly exercise routines',
			'termsOfService.section1.items.2' => 'Targeted recommendations for specific facial areas',
			'termsOfService.section1.items.3' => 'Customizable plans and progress tracking',
			'termsOfService.section1.note' => 'The content provided does not constitute professional, medical, or aesthetic advice, diagnosis, or treatment.',
			'termsOfService.section2.title' => '2. Conditions of Use',
			'termsOfService.section2.items.0' => 'You must be at least 13 years old.',
			'termsOfService.section2.items.1' => 'You must provide accurate and up-to-date account information.',
			'termsOfService.section2.items.2' => 'You acknowledge that the exercises are not a medical service.',
			'termsOfService.section3.title' => '3. Prohibited Uses',
			'termsOfService.section3.items.0' => 'Using the app for illegal activities.',
			'termsOfService.section3.items.1' => 'Selling, reproducing, or distributing content without permission.',
			'termsOfService.section3.items.2' => 'Unauthorized access, hacking, or reverse engineering attempts.',
			'termsOfService.section4.title' => '4. Account and Membership',
			'termsOfService.section4.content' => 'You are responsible for your account security. Yogiface reserves the right to suspend or close accounts in case of usage contrary to the Terms.',
			'termsOfService.section5.title' => '5. Premium and Paid Services',
			'termsOfService.section5.items.0' => 'Pricing is based on App Store and Google Play policies.',
			'termsOfService.section5.items.1' => 'Subscriptions may renew automatically; cancellations are made via store settings.',
			'termsOfService.section6.title' => '6. Disclaimer',
			'termsOfService.section6.content' => 'Users perform exercises at their own responsibility. In case of any health issues, users should consult a healthcare professional. The App should not be used for diagnosis or treatment.',
			'termsOfService.section7.title' => '7. Intellectual Property',
			'termsOfService.section7.content' => 'Design, software, images, and exercise content belong to Yogiface. Unauthorized copying or source code modification is prohibited.',
			'termsOfService.section12.title' => '12. Governing Law',
			'termsOfService.section12.content' => 'These Terms are governed by the laws of the Republic of Turkey. Istanbul Central Courts have jurisdiction over disputes.',
			'termsOfService.section13.title' => '13. Contact',
			'termsOfService.section13.email' => '📩 Email: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Cookie Policy',
			'cookiesPolicy.lastUpdated' => 'Last Updated: 2025',
			'cookiesPolicy.intro' => 'Welcome to Yogiface! Every time you visit the app, we use digital helpers (cookies) to improve and personalize your experience. This policy explains how you can manage your preferences.',
			'cookiesPolicy.section1.title' => '1. What Are Cookies?',
			'cookiesPolicy.section1.content' => 'Cookies are small data files placed on your device. They help us understand how you use the app and make your experience smoother. Cookies do not directly contain your identity; they act as digital helpers that remember your preferences and usage habits.',
			'cookiesPolicy.section2.title' => '2. Which Cookies Do We Use?',
			'cookiesPolicy.section2.essential.title' => 'Strictly Necessary Cookies',
			'cookiesPolicy.section2.essential.content' => 'Required for basic app functions. They support core processes such as session management, security, and basic navigation.',
			'cookiesPolicy.section2.performance.title' => 'Performance and Analytics Cookies',
			'cookiesPolicy.section2.performance.content' => 'Helps us understand which areas are used most frequently and which sections need improvement.',
			'cookiesPolicy.section2.personalization.title' => 'Personalization Cookies',
			'cookiesPolicy.section2.personalization.content' => 'Provides a more personal experience by remembering settings such as language, theme, and exercise preferences.',
			'cookiesPolicy.section2.marketing.title' => 'Marketing and Advertising Cookies',
			'cookiesPolicy.section2.marketing.content' => 'May be used to provide content and promotions more suitable to your interests and sometimes works with third-party services.',
			'cookiesPolicy.section3.title' => '3. Why Do We Use Cookies?',
			'cookiesPolicy.section3.items.0' => 'To ensure the app runs fast and smoothly',
			'cookiesPolicy.section3.items.1' => 'To reduce repetitive actions by remembering user preferences',
			'cookiesPolicy.section3.items.2' => 'To make the experience more personal and useful',
			'cookiesPolicy.section3.items.3' => 'To improve the app by analyzing usage data',
			'cookiesPolicy.section4.title' => '4. Third-Party Cookies',
			'cookiesPolicy.section4.content' => 'Some cookies may be placed by third-party partners providing analytical and advertising services. These are subject to the providers\' own privacy and cookie policies.',
			'cookiesPolicy.section5.title' => '5. Cookie Control and Management',
			'cookiesPolicy.section5.content' => 'You can manage cookies via device settings, app permissions, or system settings. Disabling necessary cookies may cause parts of the app to malfunction.',
			'cookiesPolicy.section6.title' => '6. Use of Data',
			'cookiesPolicy.section6.content' => 'Data obtained through cookies, if qualified as personal data, is processed within the legal framework under the Privacy Policy.',
			'cookiesPolicy.section7.title' => '7. Policy Updates',
			'cookiesPolicy.section7.content' => 'This policy may be updated depending on technological and legal changes. The current version becomes effective as soon as it is published.',
			'cookiesPolicy.section8.title' => '8. Contact',
			'cookiesPolicy.section8.email' => '📩 Email: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Privacy Policy',
			'privacyPolicy.lastUpdated' => 'Last Updated: 2025',
			'privacyPolicy.intro' => 'This Privacy Policy explains the principles regarding the collection, use, storage, and protection of personal data of all users who use the Yogiface mobile application ("App"). By using the App, you accept this policy.',
			'privacyPolicy.principle' => 'Yogiface adopts user privacy and data security as a core principle. All personal data is processed in accordance with GDPR and relevant legislation.',
			'privacyPolicy.section1.title' => '1. Collected Information',
			'privacyPolicy.section1.sub1.title' => '1.1. User-Provided Data',
			'privacyPolicy.section1.sub1.items.0' => 'Name, nickname, or profile info',
			'privacyPolicy.section1.sub1.items.1' => 'Email address (for registration, purchase, and support)',
			'privacyPolicy.section1.sub1.items.2' => 'Exercise plans, preferences, and personalization settings',
			'privacyPolicy.section1.sub1.items.3' => 'Feedback, requests, and support messages',
			'privacyPolicy.section1.sub2.title' => '1.2. Automatically Collected Data',
			'privacyPolicy.section1.sub2.items.0' => 'Device type, operating system, and technical info',
			'privacyPolicy.section1.sub2.items.1' => 'Approximate location data (city/country level)',
			'privacyPolicy.section1.sub2.items.2' => 'Usage info such as session duration and screen interactions',
			'privacyPolicy.section1.sub2.items.3' => 'Performance, error, and crash logs',
			'privacyPolicy.section2.title' => '2. Data Usage Purposes',
			'privacyPolicy.section2.items.0' => 'To ensure uninterrupted operation of the app',
			'privacyPolicy.section2.items.1' => 'To personalize and optimize the face yoga experience',
			'privacyPolicy.section2.items.2' => 'To perform error detection and performance analysis',
			'privacyPolicy.section2.items.3' => 'To respond to user demands and support requests',
			'privacyPolicy.section2.note' => 'Important: User data is never sold to third parties.',
			'privacyPolicy.section3.title' => '3. Data Retention',
			'privacyPolicy.section3.items.0' => 'Data is stored as long as the user account is active.',
			'privacyPolicy.section3.items.1' => 'When an account is deleted, personal data is irreversibly removed.',
			'privacyPolicy.section3.items.2' => 'Support records are kept for a maximum of 12 months after completion.',
			'privacyPolicy.section4.title' => '4. Data Sharing',
			'privacyPolicy.section4.content' => 'Your data is only shared in case of legal requirements (official requests), service providers (cloud infrastructure, analytics), or with explicit user consent.',
			'privacyPolicy.section5.title' => '5. Cookies and Security',
			'privacyPolicy.section5.content' => 'Yogiface may use cookies for performance and experience enhancement. Your data is protected by SSL/TLS encryption and regular security audits.',
			'privacyPolicy.section6.title' => '6. User Rights',
			'privacyPolicy.section6.content' => 'You have the right to access, correct, delete, and restrict data processing.',
			'privacyPolicy.section6.contact' => 'For requests:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Children\'s Privacy',
			'privacyPolicy.section8.content' => 'Yogiface is not intended for individuals under 13. Any data collected from this age group will be deleted immediately if detected.',
			'privacyPolicy.section10.title' => '10. Contact',
			'privacyPolicy.section10.email' => '📩 Email: support@fly-work.com',
			'onboarding.basicInformation' => 'BASIC INFORMATION',
			'onboarding.target' => 'TARGET',
			'onboarding.habits' => 'HABITS',
			'onboarding.step' => 'STEP',
			'onboarding.of' => 'OF',
			'onboarding.tellUsAboutYourself' => 'Tell Us About Yourself',
			'onboarding.shortBioDescription' => 'A short bio helps others know the real you. Keep it fun and genuine',
			'onboarding.enterYourFullname' => 'Enter your Fullname',
			'onboarding.fullName' => 'Full Name',
			'onboarding.male' => 'Male',
			'onboarding.female' => 'Female',
			'onboarding.dontWantToMention' => 'I don\'t want to mention it',
			'onboarding.whatIsMainObjective' => 'What is the main objective?',
			'onboarding.reduceWrinkles' => 'Reduce wrinkles',
			'onboarding.tightenSkin' => 'Tighten skin',
			'onboarding.liftDroopyEyelids' => 'Lift droopy eyelids',
			'onboarding.eliminateDoubleChin' => 'Eliminate double chin',
			'onboarding.brightenSkinTone' => 'Brighten skin tone',
			'onboarding.allOfTheAbove' => 'All of the above',
			'onboarding.whichAreaToImprove' => 'Which area would you like to improve?',
			'onboarding.forehead' => 'Forehead',
			'onboarding.eyes' => 'Eyes',
			'onboarding.nose' => 'Nose',
			'onboarding.cheeks' => 'Cheeks',
			'onboarding.lips' => 'Lips',
			'onboarding.jawline' => 'Jawline',
			'onboarding.neck' => 'Neck',
			'onboarding.whatFaceShapeAiming' => 'What face shape are you aiming for?',
			'onboarding.heart' => 'Heart',
			'onboarding.oval' => 'Oval',
			'onboarding.square' => 'Square',
			'onboarding.round' => 'Round',
			'onboarding.diamond' => 'Diamond',
			'onboarding.whatIsYourSkinType' => 'What is your skin type?',
			'onboarding.normal' => 'Normal',
			'onboarding.oily' => 'Oily',
			'onboarding.dry' => 'Dry',
			'onboarding.combination' => 'Combination',
			'onboarding.sensitive' => 'Sensitive',
			'onboarding.whichOfThemDoYouHave' => 'Which of them do you have?',
			'onboarding.acneAndPimples' => 'Acne and pimples',
			'onboarding.redness' => 'Redness',
			'onboarding.swelling' => 'Swelling',
			'onboarding.wrinkles' => 'Wrinkles',
			'onboarding.neckLines' => 'Neck lines',
			'onboarding.howOftenWearMakeup' => 'How often do you wear make-up?',
			'onboarding.everyDay' => 'Every day',
			'onboarding.fewDaysAWeek' => 'A few days a week',
			'onboarding.occasionally' => 'Occasionally',
			'onboarding.never' => 'Never',
			'onboarding.haveYouHadBotox' => 'Have you had Botox?',
			'onboarding.yes' => 'Yes',
			'onboarding.no' => 'No',
			'onboarding.creatingPersonalizedProfile' => 'Creating Your Personalized Profile',
			'onboarding.tailoringExperience' => 'We are tailoring your experience based on your preferences...',
			'onboarding.matchingPersonalities' => 'MATCHING PERSONALITIES',
			'pressBackAgainToExit' => 'Press back again to exit',
			'addedToFavoritesTitle' => 'Exercise successfully added to favorites!',
			'removedFromFavoritesTitle' => 'Exercise successfully removed from favorites!',
			'removedFromFavorites' => 'You can access other exercises you want to add from courses',
			'faq.title' => 'Frequently Asked Questions',
			'faq.questions.q1.question' => 'What is YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace is an AI-powered personal care app that offers face yoga exercises to improve skin appearance by working facial muscles.',
			'faq.questions.q2.question' => 'Does the app really work?',
			'faq.questions.q2.answer' => 'Yes. Face yoga activates facial muscles to increase skin firmness, accelerate circulation, and provide a more youthful appearance with regular use.',
			'faq.questions.q3.question' => 'What does artificial intelligence do here?',
			'faq.questions.q3.answer' => 'YogiFace analyzes facial features, identifies target areas, and creates a personalized exercise plan. This way, each movement is optimized according to personal needs.',
			'faq.questions.q4.question' => 'How much time do I need to dedicate each day?',
			'faq.questions.q4.answer' => 'Only 5-10 minutes a day is sufficient. With regular practice, visible changes begin within a few weeks.',
			'faq.questions.q5.question' => 'When will I see results?',
			'faq.questions.q5.answer' => 'With regular use, improvement in skin tone is visible within 2-3 weeks, and facial features become more defined within 4-6 weeks. Results may vary from person to person.',
			'faq.questions.q6.question' => 'Does it work for problems like double chin or sagging?',
			'faq.questions.q6.answer' => 'Yes. YogiFace offers targeted exercises for the jawline, cheek muscles, and neck area. When done regularly, these exercises provide significant tightening in these areas.',
			'faq.questions.q7.question' => 'How do I know if I\'m doing the movements correctly?',
			'faq.questions.q7.answer' => 'The app uses AI to analyze your facial angle, expression, and movement pattern; it notifies you of any incorrect points.',
			'faq.questions.q8.question' => 'Is it suitable for all ages?',
			'faq.questions.q8.answer' => 'Yes. Face yoga is a non-invasive natural method. Everyone from a young age can safely practice it.',
			'faq.questions.q9.question' => 'Is YogiFace free?',
			'faq.questions.q9.answer' => 'Basic exercises are free. Personal programs, advanced face analysis, and special AI recommendations are included in the premium package.',
			'faq.questions.q10.question' => 'Can people who have had cosmetic surgery use it?',
			'faq.questions.q10.answer' => 'Many users use it safely, but it is recommended to consult a doctor during the post-operative recovery period.',
			_ => null,
		};
	}
}
