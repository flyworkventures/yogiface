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

	/// en: 'Welcome $name'
	String welcome({required Object name}) => 'Welcome ${name}';

	/// en: 'Welcome'
	String get welcome2 => 'Welcome';

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

	/// en: 'Full Face / General Revitalization'
	String get full_face => 'Full Face / General Revitalization';

	/// en: 'Eyes & Eye Area'
	String get eye_area => 'Eyes & Eye Area';

	/// en: 'Nose & Nose Area'
	String get nose_area => 'Nose & Nose Area';

	/// en: 'Cheeks & Mid Face'
	String get cheeks_mid_face => 'Cheeks & Mid Face';

	/// en: 'Lips & Mouth Area'
	String get lip_area => 'Lips & Mouth Area';

	/// en: 'Jawline, Chin & Double Chin'
	String get jawline_chin => 'Jawline, Chin & Double Chin';

	/// en: 'Forehead & Brow Area'
	String get forehead_brow => 'Forehead & Brow Area';

	/// en: 'Neck & Decollete'
	String get neck_decollete => 'Neck & Decollete';

	/// en: 'Good Morning'
	String get good_morning => 'Good Morning';

	/// en: 'Good Afternoon'
	String get good_afternoon => 'Good Afternoon';

	/// en: 'Good Evening'
	String get good_evening => 'Good Evening';

	late final TranslationsSplashEn splash = TranslationsSplashEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsCourseDetailEn courseDetail = TranslationsCourseDetailEn._(_root);
	late final TranslationsCoursesEn courses = TranslationsCoursesEn._(_root);
	late final TranslationsPersonalProgramEn personalProgram = TranslationsPersonalProgramEn._(_root);
	late final TranslationsEditProfileEn editProfile = TranslationsEditProfileEn._(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn._(_root);
	late final TranslationsShareEn share = TranslationsShareEn._(_root);
	late final TranslationsFacialScanEn facialScan = TranslationsFacialScanEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);

	/// en: 'Benefits'
	String get benefits => 'Benefits';

	/// en: 'Min'
	String get minutes => 'Min';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Before You Begin'
	String get beforeBegin => 'Before You Begin';

	/// en: 'Rest'
	String get rest => 'Rest';

	/// en: 'Course Completed'
	String get courseCompleted => 'Course Completed';

	/// en: 'Great job finishing today's session.'
	String get courseCompletedDescription => 'Great job finishing today\'s session.';

	/// en: 'Delete Account'
	String get deleteAccount => 'Delete Account';

	/// en: 'Are you sure you want to delete your account?'
	String get deleteDialogTitle => 'Are you sure you want to delete your account?';

	/// en: 'This action is irreversible and will permanently delete all your exercise history and data.'
	String get deleteDialogDescription => 'This action is irreversible and will permanently delete all your exercise history and data.';

	/// en: 'An error occurred while deleting your account. Please try again.'
	String get deleteError => 'An error occurred while deleting your account. Please try again.';

	/// en: 'Favorite Exercises'
	String get favoriteExercises => 'Favorite Exercises';

	/// en: 'No favorites in this category'
	String get noFavoritesInCategory => 'No favorites in this category';

	/// en: 'No favorites added yet.'
	String get noFavoritesAdded => 'No favorites added yet.';

	/// en: 'To set your favorite exercises, you can add the exercises you like from the My Exercises page.'
	String get favoriteExercisesDescription => 'To set your favorite exercises, you can add the exercises you like from the My Exercises page.';

	/// en: 'Enter Invitation Code'
	String get enterInvitationCode => 'Enter Invitation Code';

	/// en: 'Be Part of Peace'
	String get bePartOfPeace => 'Be Part of Peace';

	/// en: 'Enter the invitation code you received from a friend. Type it into the designated field'
	String get inviteFriends => 'Enter the invitation code you received from a friend.\nType it into the designated field';

	/// en: '7-Day Premium'
	String get twoDaysPremium => '7-Day Premium';

	/// en: ' to enjoy its benefits.'
	String get advantage => '\nto enjoy its benefits.';

	/// en: 'Send'
	String get send => 'Send';

	late final TranslationsReferralCodeEn referralCode = TranslationsReferralCodeEn._(_root);

	/// en: 'Delete Notifications'
	String get deleteNotifications => 'Delete Notifications';

	/// en: 'Are you sure you want to delete all your notifications? This action is irreversible and cannot be undone.'
	String get deleteNotificationsDescription => 'Are you sure you want to delete all \nyour notifications? This action is irreversible and cannot be undone.';

	/// en: 'Delete All'
	String get deleteAll => 'Delete All';

	/// en: 'App Language'
	String get appLanguage => 'App Language';

	/// en: 'Select Your Preferred Language'
	String get selectLanguage => 'Select Your Preferred Language';

	/// en: 'Save'
	String get save => 'Save';

	late final TranslationsLanguageOptionsEn languageOptions = TranslationsLanguageOptionsEn._(_root);
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

	/// en: 'Full Face'
	String get fullface => 'Full Face';

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

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Weight'
	String get weight => 'Weight';

	/// en: 'Height'
	String get height => 'Height';

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

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSplashScreen1En screen1 = TranslationsSplashScreen1En._(_root);
	late final TranslationsSplashScreen2En screen2 = TranslationsSplashScreen2En._(_root);
	late final TranslationsSplashScreen3En screen3 = TranslationsSplashScreen3En._(_root);
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => 'Profile';

	/// en: 'Free Version'
	String get freeVersion => 'Free Version';

	/// en: 'Premium Version'
	String get premiumVersion => 'Premium Version';

	/// en: 'Error'
	String get error => 'Error';

	late final TranslationsProfileSectionsEn sections = TranslationsProfileSectionsEn._(_root);
	late final TranslationsProfileMenuEn menu = TranslationsProfileMenuEn._(_root);

	/// en: 'MANAGE'
	String get manage => 'MANAGE';

	late final TranslationsProfileLogoutDialogEn logoutDialog = TranslationsProfileLogoutDialogEn._(_root);
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Premium!'
	String get premium => 'Premium!';

	/// en: 'Focus Areas'
	String get focusAreas => 'Focus Areas';

	/// en: 'Popular Courses'
	String get popularCourses => 'Popular Courses';

	/// en: 'See More'
	String get seeMore => 'See More';

	late final TranslationsHomePersonalizedEn personalized = TranslationsHomePersonalizedEn._(_root);
	late final TranslationsHomePremiumPlanEn premiumPlan = TranslationsHomePremiumPlanEn._(_root);
	late final TranslationsHomeQuickActionsEn quickActions = TranslationsHomeQuickActionsEn._(_root);
	late final TranslationsHomeTodaysExerciseEn todaysExercise = TranslationsHomeTodaysExerciseEn._(_root);
	late final TranslationsHomeCoursesEn courses = TranslationsHomeCoursesEn._(_root);
	late final TranslationsHomeBenefitsEn benefits = TranslationsHomeBenefitsEn._(_root);
}

// Path: courseDetail
class TranslationsCourseDetailEn {
	TranslationsCourseDetailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Course Detail'
	String get title => 'Course Detail';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	/// en: 'No exercises found for this category'
	String get noExercisesFound => 'No exercises found for this category';

	late final TranslationsCourseDetailInstructionsEn instructions = TranslationsCourseDetailInstructionsEn._(_root);
}

// Path: courses
class TranslationsCoursesEn {
	TranslationsCoursesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All Courses'
	String get title => 'All Courses';

	/// en: 'Error loading exercises'
	String get error => 'Error loading exercises';

	/// en: 'Personal Courses'
	String get personalCoursesTitle => 'Personal Courses';
}

// Path: personalProgram
class TranslationsPersonalProgramEn {
	TranslationsPersonalProgramEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Set Your Daily Goal'
	String get dailyGoalTitle => 'Set Your Daily Goal';

	/// en: 'Choose a pace that fits your schedule'
	String get dailyGoalDescription => 'Choose a pace that fits your schedule';

	/// en: 'Personalizing Your Plan...'
	String get personalizing => 'Personalizing Your Plan...';

	/// en: 'Your personal 30-day face yoga program is ready✨'
	String get readyMessage => 'Your personal 30-day face yoga program is ready✨';

	/// en: 'Min'
	String get minutes => 'Min';

	/// en: 'When you look in the mirror, which expression bothers you the most?'
	String get objectiveTitle => 'When you look in the mirror, which expression bothers you the most?';

	/// en: 'Program balance is adjusted according to facial expression'
	String get objectiveSubtitle => 'Program balance is adjusted according to facial expression';

	/// en: 'How would you like to feel when doing face yoga?'
	String get feelingTitle => 'How would you like to feel when doing face yoga?';

	/// en: 'When is it easier for you to do face yoga?'
	String get timeTitle => 'When is it easier for you to do face yoga?';

	late final TranslationsPersonalProgramObjectivesEn objectives = TranslationsPersonalProgramObjectivesEn._(_root);
	late final TranslationsPersonalProgramFeelingsEn feelings = TranslationsPersonalProgramFeelingsEn._(_root);
	late final TranslationsPersonalProgramTimesEn times = TranslationsPersonalProgramTimesEn._(_root);
}

// Path: editProfile
class TranslationsEditProfileEn {
	TranslationsEditProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get title => 'Edit Profile';

	/// en: 'Change Photo'
	String get changePhoto => 'Change Photo';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'E-mail'
	String get email => 'E-mail';

	/// en: 'Age'
	String get age => 'Age';

	/// en: 'Gender'
	String get gender => 'Gender';

	/// en: 'Skin Type'
	String get skinType => 'Skin Type';

	/// en: 'Focus Area'
	String get focusArea => 'Focus Area';

	/// en: 'Forehead, Eyes, Nose, Mouth, Cheeks...'
	String get focusAreaHint => 'Forehead, Eyes, Nose, Mouth, Cheeks...';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Saving...'
	String get saving => 'Saving...';

	/// en: 'Profile updated successfully'
	String get updateSuccess => 'Profile updated successfully';

	/// en: 'An error occurred while updating profile'
	String get updateError => 'An error occurred while updating profile';

	/// en: 'Delete Account'
	String get deleteAccount => 'Delete Account';
}

// Path: notifications
class TranslationsNotificationsEn {
	TranslationsNotificationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Notifications'
	String get title => 'Notifications';

	/// en: 'No notifications yet'
	String get emptyTitle => 'No notifications yet';

	/// en: 'We'll notify you when there's an important update about your learning journey.'
	String get emptyDescription => 'We\'ll notify you when there\'s an important update about your learning journey.';

	/// en: 'Don't miss out on Premium benefits!'
	String get premiumBannerTitle => 'Don\'t miss out on\nPremium benefits!';

	/// en: 'Grab the opportunities as a Premium subscriber.'
	String get premiumBannerDescription => 'Grab the opportunities as a Premium subscriber.';

	/// en: 'Your daily meditation is ready!'
	String get sample1Title => 'Your daily meditation is ready!';

	/// en: 'Find your calm for the day'
	String get sample1Description => 'Find your calm for the day';

	/// en: '15 min ago'
	String get sample1Time => '15 min ago';

	/// en: 'New Exercise: Ocean Breath'
	String get sample2Title => 'New Exercise: Ocean Breath';

	/// en: 'A new breathing technique has been added'
	String get sample2Description => 'A new breathing technique has been added';

	/// en: '1 hour ago'
	String get sample2Time => '1 hour ago';

	/// en: 'You've hit a 7-day streak!'
	String get sample3Title => 'You\'ve hit a 7-day streak!';

	/// en: 'Keep up the amazing work on your well-being'
	String get sample3Description => 'Keep up the amazing work on your well-being';

	/// en: 'Yesterday'
	String get sample3Time => 'Yesterday';
}

// Path: share
class TranslationsShareEn {
	TranslationsShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share with Friends'
	String get title => 'Share with Friends';

	/// en: 'Share the Peace'
	String get mainTitle => 'Share the Peace';

	/// en: 'Invite your friends to breathe together. For every invite, you both get '
	String get descriptionPart1 => 'Invite your friends to breathe together.\nFor every invite, you both get ';

	/// en: '1 week Premium'
	String get descriptionPart2 => '1 week Premium';

	/// en: ''
	String get descriptionPart3 => '';

	/// en: 'YOUR REFERRAL CODE'
	String get yourReferralCode => 'YOUR REFERRAL CODE';

	/// en: 'Code copied!'
	String get codeCopied => 'Code copied!';

	/// en: 'Copy Code'
	String get copyCode => 'Copy Code';
}

// Path: facialScan
class TranslationsFacialScanEn {
	TranslationsFacialScanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Facial Scan'
	String get title => 'Facial Scan';

	/// en: 'STEP $current OF $total'
	String step({required Object current, required Object total}) => 'STEP ${current} OF ${total}';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	late final TranslationsFacialScanAnalyzingEn analyzing = TranslationsFacialScanAnalyzingEn._(_root);
	late final TranslationsFacialScanResultEn result = TranslationsFacialScanResultEn._(_root);
	late final TranslationsFacialScanInstructionsEn instructions = TranslationsFacialScanInstructionsEn._(_root);
	late final TranslationsFacialScanErrorsEn errors = TranslationsFacialScanErrorsEn._(_root);
	late final TranslationsFacialScanPositionsEn positions = TranslationsFacialScanPositionsEn._(_root);
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Google'
	String get google => 'Google';

	/// en: 'Facebook'
	String get facebook => 'Facebook';

	/// en: 'Apple'
	String get apple => 'Apple';

	/// en: 'Continue as Guest'
	String get guest => 'Continue as Guest';

	/// en: 'Sign-in failed: $error'
	String signInFailed({required Object error}) => 'Sign-in failed: ${error}';
}

// Path: referralCode
class TranslationsReferralCodeEn {
	TranslationsReferralCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter 8-character code'
	String get inputPlaceholder => 'Enter 8-character code';

	/// en: 'Applying code...'
	String get applying => 'Applying code...';

	late final TranslationsReferralCodeSuccessEn success = TranslationsReferralCodeSuccessEn._(_root);
	late final TranslationsReferralCodeErrorsEn errors = TranslationsReferralCodeErrorsEn._(_root);
}

// Path: languageOptions
class TranslationsLanguageOptionsEn {
	TranslationsLanguageOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'English'
	String get english => 'English';

	/// en: 'German'
	String get german => 'German';

	/// en: 'Italian'
	String get italian => 'Italian';

	/// en: 'French'
	String get french => 'French';

	/// en: 'Japanese'
	String get japanese => 'Japanese';

	/// en: 'Spanish'
	String get spanish => 'Spanish';

	/// en: 'Russian'
	String get russian => 'Russian';

	/// en: 'Turkish'
	String get turkish => 'Turkish';

	/// en: 'Korean'
	String get korean => 'Korean';

	/// en: 'Hindi'
	String get hindi => 'Hindi';

	/// en: 'Portuguese'
	String get portuguese => 'Portuguese';
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

// Path: splash.screen1
class TranslationsSplashScreen1En {
	TranslationsSplashScreen1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Shape Your Face Naturally'
	String get title => 'Shape Your Face Naturally';

	/// en: 'Work your facial muscles with just a few minutes of daily face exercises. Create a natural, aesthetic, and non-invasive beauty routine.'
	String get description => 'Work your facial muscles with just a few minutes of daily face exercises. Create a natural, aesthetic, and non-invasive beauty routine.';
}

// Path: splash.screen2
class TranslationsSplashScreen2En {
	TranslationsSplashScreen2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Personalized Exercise Plan with Ai'
	String get title => 'Personalized Exercise Plan with Ai';

	/// en: 'AI analyzes your facial features, determines your needs, and recommends exercises tailored to you. It tracks which muscles need more work.'
	String get description => 'AI analyzes your facial features, determines your needs, and recommends exercises tailored to you. It tracks which muscles need more work.';
}

// Path: splash.screen3
class TranslationsSplashScreen3En {
	TranslationsSplashScreen3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Visible Results'
	String get title => 'Visible Results';

	/// en: 'With regular use, facial contours become more defined, circulation improves, and skin appears more vibrant. Small steps every day bring big changes.'
	String get description => 'With regular use, facial contours become more defined, circulation improves, and skin appears more vibrant. Small steps every day bring big changes.';
}

// Path: profile.sections
class TranslationsProfileSectionsEn {
	TranslationsProfileSectionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'ACCOUNT SETTINGS'
	String get accountSettings => 'ACCOUNT SETTINGS';

	/// en: 'SUPPORT & OTHER'
	String get supportAndOther => 'SUPPORT & OTHER';
}

// Path: profile.menu
class TranslationsProfileMenuEn {
	TranslationsProfileMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Notifications'
	String get notifications => 'Notifications';

	/// en: 'Premium'
	String get premium => 'Premium';

	/// en: 'Favorite Exercises'
	String get favoriteExercises => 'Favorite Exercises';

	/// en: 'App Language'
	String get appLanguage => 'App Language';

	/// en: 'Share with Friends'
	String get shareWithFriends => 'Share with Friends';

	/// en: 'Enter Invite Code'
	String get enterInviteCode => 'Enter Invite Code';

	/// en: 'Rate Us'
	String get rateUs => 'Rate Us';

	/// en: 'FAQ'
	String get faq => 'FAQ';

	/// en: 'Logout'
	String get logout => 'Logout';
}

// Path: profile.logoutDialog
class TranslationsProfileLogoutDialogEn {
	TranslationsProfileLogoutDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'You are about to log out'
	String get title => 'You are about to log out';

	/// en: 'See you again! We will keep tracking your breath exercises.'
	String get message => 'See you again! We will keep tracking your breath exercises.';

	/// en: 'Log Out'
	String get logoutButton => 'Log Out';

	/// en: 'Cancel'
	String get cancelButton => 'Cancel';
}

// Path: home.personalized
class TranslationsHomePersonalizedEn {
	TranslationsHomePersonalizedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Personalized Facial Analysis Report'
	String get title => 'Personalized\nFacial Analysis\nReport';

	/// en: 'Please analyze your skin to find out what type it is.'
	String get description => 'Please analyze your skin\nto find out what type it is.';

	/// en: 'Try it now'
	String get button => 'Try it now';
}

// Path: home.premiumPlan
class TranslationsHomePremiumPlanEn {
	TranslationsHomePremiumPlanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Premium Plan'
	String get title => 'Premium Plan';

	/// en: 'Unlock your ai chatbot & get all premium features'
	String get description => 'Unlock your ai chatbot & get \nall premium features';

	/// en: 'Get Premium'
	String get button => 'Get Premium';

	late final TranslationsHomePremiumPlanDialogEn dialog = TranslationsHomePremiumPlanDialogEn._(_root);
}

// Path: home.quickActions
class TranslationsHomeQuickActionsEn {
	TranslationsHomeQuickActionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Quick Actions'
	String get title => 'Quick Actions';

	/// en: 'Your Personal Program'
	String get programTitle => 'Your Personal Program';

	/// en: 'For your best look in 30 days'
	String get programSubtitle => 'For your best look\nin 30 days';

	/// en: 'Get Started'
	String get button => 'Get Started';
}

// Path: home.todaysExercise
class TranslationsHomeTodaysExerciseEn {
	TranslationsHomeTodaysExerciseEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Today's Exercise'
	String get title => 'Today\'s Exercise';

	/// en: 'Recommended Routine'
	String get recommended => 'Recommended Routine';

	/// en: 'for today'
	String get forToday => 'for today';
}

// Path: home.courses
class TranslationsHomeCoursesEn {
	TranslationsHomeCoursesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeCoursesForeheadSmootherEn foreheadSmoother = TranslationsHomeCoursesForeheadSmootherEn._(_root);
	late final TranslationsHomeCoursesVMoveEn vMove = TranslationsHomeCoursesVMoveEn._(_root);
	late final TranslationsHomeCoursesCheekLifterEn cheekLifter = TranslationsHomeCoursesCheekLifterEn._(_root);
}

// Path: home.benefits
class TranslationsHomeBenefitsEn {
	TranslationsHomeBenefitsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeBenefitsNaturalIroningEn naturalIroning = TranslationsHomeBenefitsNaturalIroningEn._(_root);
	late final TranslationsHomeBenefitsBotoxEffectEn botoxEffect = TranslationsHomeBenefitsBotoxEffectEn._(_root);
	late final TranslationsHomeBenefitsStressReliefEn stressRelief = TranslationsHomeBenefitsStressReliefEn._(_root);
	late final TranslationsHomeBenefitsRadiantAppearanceEn radiantAppearance = TranslationsHomeBenefitsRadiantAppearanceEn._(_root);
	late final TranslationsHomeBenefitsDePuffingEn dePuffing = TranslationsHomeBenefitsDePuffingEn._(_root);
}

// Path: courseDetail.instructions
class TranslationsCourseDetailInstructionsEn {
	TranslationsCourseDetailInstructionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCourseDetailInstructionsInstruction1En instruction1 = TranslationsCourseDetailInstructionsInstruction1En._(_root);
	late final TranslationsCourseDetailInstructionsInstruction2En instruction2 = TranslationsCourseDetailInstructionsInstruction2En._(_root);
}

// Path: personalProgram.objectives
class TranslationsPersonalProgramObjectivesEn {
	TranslationsPersonalProgramObjectivesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tired and worn-out appearance'
	String get tired => 'Tired and worn-out appearance';

	/// en: 'Harsh and tense expression'
	String get harsh => 'Harsh and tense expression';

	/// en: 'Pale and lifeless skin'
	String get pale => 'Pale and lifeless skin';

	/// en: 'Asymmetrical facial features'
	String get asymmetrical => 'Asymmetrical facial features';

	/// en: 'No obvious problem, I want general care'
	String get general => 'No obvious problem, I want general care';
}

// Path: personalProgram.feelings
class TranslationsPersonalProgramFeelingsEn {
	TranslationsPersonalProgramFeelingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Lightened'
	String get lightened => 'Lightened';

	/// en: 'Revitalized'
	String get revitalized => 'Revitalized';

	/// en: 'Refreshed'
	String get refreshed => 'Refreshed';

	/// en: 'More energetic'
	String get energetic => 'More energetic';
}

// Path: personalProgram.times
class TranslationsPersonalProgramTimesEn {
	TranslationsPersonalProgramTimesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Morning'
	String get morning => 'Morning';

	/// en: 'During the day'
	String get duringDay => 'During the day';

	/// en: 'Evening'
	String get evening => 'Evening';

	/// en: 'The time doesn't matter, a reminder is enough'
	String get anytime => 'The time doesn\'t matter, a reminder is enough';
}

// Path: facialScan.analyzing
class TranslationsFacialScanAnalyzingEn {
	TranslationsFacialScanAnalyzingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Analyzing'
	String get title => 'Analyzing';

	/// en: 'Analyzing Your Unique Features'
	String get description => 'Analyzing Your Unique Features';

	/// en: 'Detecting skin texture, muscle tone, and focus area for your personalized routine.'
	String get detail => 'Detecting skin texture, muscle tone, and focus area for your personalized routine.';

	/// en: 'AI ENGINE WORKING'
	String get aiEngineWorking => 'AI ENGINE WORKING';
}

// Path: facialScan.result
class TranslationsFacialScanResultEn {
	TranslationsFacialScanResultEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Your Analysis is Ready!'
	String get title => 'Your Analysis is Ready!';

	/// en: 'We've tailored a routine based on your results.'
	String get subtitle => 'We\'ve tailored a routine based on your results.';

	/// en: 'SKIN TYPE'
	String get skinType => 'SKIN TYPE';

	/// en: 'PRIMARY GOAL'
	String get primaryGoal => 'PRIMARY GOAL';

	/// en: 'Recommended for You'
	String get recommended => 'Recommended for You';

	/// en: 'Back'
	String get back => 'Back';
}

// Path: facialScan.instructions
class TranslationsFacialScanInstructionsEn {
	TranslationsFacialScanInstructionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Position your face within the frame'
	String get front => 'Position your face within the frame';

	/// en: 'Turn your head to the left'
	String get left => 'Turn your head to the left';

	/// en: 'Turn your head to the right'
	String get right => 'Turn your head to the right';

	/// en: 'Ensure you are in a well-lit environment for better results'
	String get lighting => 'Ensure you are in a well-lit environment for better results';

	/// en: 'Tap the camera button to take a photo'
	String get tapToCapture => 'Tap the camera button to take a photo';
}

// Path: facialScan.errors
class TranslationsFacialScanErrorsEn {
	TranslationsFacialScanErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Camera permission is required to take photos.'
	String get cameraPermission => 'Camera permission is required to take photos.';

	/// en: 'Camera Permission Required'
	String get cameraPermissionRequired => 'Camera Permission Required';

	/// en: 'Camera permission is required for facial scanning. Please enable it in app settings.'
	String get cameraPermissionMessage => 'Camera permission is required for facial scanning. Please enable it in app settings.';

	/// en: 'Open Settings'
	String get openSettings => 'Open Settings';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'No face detected. Please try again.'
	String get noFaceDetected => 'No face detected. Please try again.';

	/// en: 'Failed to capture image. Please try again.'
	String get captureFailed => 'Failed to capture image. Please try again.';
}

// Path: facialScan.positions
class TranslationsFacialScanPositionsEn {
	TranslationsFacialScanPositionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'FRONT'
	String get front => 'FRONT';

	/// en: 'LEFT'
	String get left => 'LEFT';

	/// en: 'RIGHT'
	String get right => 'RIGHT';
}

// Path: referralCode.success
class TranslationsReferralCodeSuccessEn {
	TranslationsReferralCodeSuccessEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Success!'
	String get title => 'Success!';

	/// en: 'Referral code applied successfully! Both you and your friend received 1 week of premium.'
	String get message => 'Referral code applied successfully! Both you and your friend received 1 week of premium.';
}

// Path: referralCode.errors
class TranslationsReferralCodeErrorsEn {
	TranslationsReferralCodeErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsReferralCodeErrorsMissingCodeEn missingCode = TranslationsReferralCodeErrorsMissingCodeEn._(_root);
	late final TranslationsReferralCodeErrorsInvalidFormatEn invalidFormat = TranslationsReferralCodeErrorsInvalidFormatEn._(_root);
	late final TranslationsReferralCodeErrorsAlreadyUsedEn alreadyUsed = TranslationsReferralCodeErrorsAlreadyUsedEn._(_root);
	late final TranslationsReferralCodeErrorsSelfReferralEn selfReferral = TranslationsReferralCodeErrorsSelfReferralEn._(_root);
	late final TranslationsReferralCodeErrorsCodeNotFoundEn codeNotFound = TranslationsReferralCodeErrorsCodeNotFoundEn._(_root);
	late final TranslationsReferralCodeErrorsGenericErrorEn genericError = TranslationsReferralCodeErrorsGenericErrorEn._(_root);
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

// Path: home.premiumPlan.dialog
class TranslationsHomePremiumPlanDialogEn {
	TranslationsHomePremiumPlanDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Feature Not Available'
	String get title => 'Feature Not Available';

	/// en: 'This feature is currently not available.'
	String get message => 'This feature is currently not available.';

	/// en: 'OK'
	String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class TranslationsHomeCoursesForeheadSmootherEn {
	TranslationsHomeCoursesForeheadSmootherEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The Forehead Smoother'
	String get title => 'The Forehead Smoother';

	/// en: 'This move releases tension in the forehead muscles and frown lines accumulated...'
	String get description => 'This move releases tension in the forehead muscles and frown lines accumulated...';
}

// Path: home.courses.vMove
class TranslationsHomeCoursesVMoveEn {
	TranslationsHomeCoursesVMoveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The "V" Move'
	String get title => 'The "V" Move';

	/// en: 'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.'
	String get description => 'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.';
}

// Path: home.courses.cheekLifter
class TranslationsHomeCoursesCheekLifterEn {
	TranslationsHomeCoursesCheekLifterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'The Cheek Lifter'
	String get title => 'The Cheek Lifter';

	/// en: 'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.'
	String get description => 'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.';
}

// Path: home.benefits.naturalIroning
class TranslationsHomeBenefitsNaturalIroningEn {
	TranslationsHomeBenefitsNaturalIroningEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Natural Ironing:'
	String get title => 'Natural Ironing:';

	/// en: 'Opens horizontal lines on the forehead and prevents them from deepening.'
	String get description => 'Opens horizontal lines on the forehead and prevents them from deepening.';
}

// Path: home.benefits.botoxEffect
class TranslationsHomeBenefitsBotoxEffectEn {
	TranslationsHomeBenefitsBotoxEffectEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Botox Effect'
	String get title => 'Botox Effect';

	/// en: 'Relaxes tense muscles and breaks the habit of frowning.'
	String get description => 'Relaxes tense muscles and breaks the habit of frowning.';
}

// Path: home.benefits.stressRelief
class TranslationsHomeBenefitsStressReliefEn {
	TranslationsHomeBenefitsStressReliefEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stress Relief'
	String get title => 'Stress Relief';

	/// en: 'Relieves stress accumulated on the forehead and alleviates headaches.'
	String get description => 'Relieves stress accumulated on the forehead and alleviates headaches.';
}

// Path: home.benefits.radiantAppearance
class TranslationsHomeBenefitsRadiantAppearanceEn {
	TranslationsHomeBenefitsRadiantAppearanceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Radiant Appearance'
	String get title => 'Radiant Appearance';

	/// en: 'Boosts blood circulation to give the skin a glow.'
	String get description => 'Boosts blood circulation to give the skin a glow.';
}

// Path: home.benefits.dePuffing
class TranslationsHomeBenefitsDePuffingEn {
	TranslationsHomeBenefitsDePuffingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'De-Puffing'
	String get title => 'De-Puffing';

	/// en: 'Reduces facial puffiness through its lymphatic drainage effect.'
	String get description => 'Reduces facial puffiness through its lymphatic drainage effect.';
}

// Path: courseDetail.instructions.instruction1
class TranslationsCourseDetailInstructionsInstruction1En {
	TranslationsCourseDetailInstructionsInstruction1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Wash Your Hands and Face'
	String get title => 'Wash Your Hands and Face';

	/// en: 'A clean skin allows the massage to be more effective.'
	String get description => 'A clean skin allows the massage to be more effective.';
}

// Path: courseDetail.instructions.instruction2
class TranslationsCourseDetailInstructionsInstruction2En {
	TranslationsCourseDetailInstructionsInstruction2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Apply Face Oil or Moisturizer'
	String get title => 'Apply Face Oil or Moisturizer';

	/// en: 'Smoothly glide without pulling your skin.'
	String get description => 'Smoothly glide without pulling your skin.';
}

// Path: referralCode.errors.missingCode
class TranslationsReferralCodeErrorsMissingCodeEn {
	TranslationsReferralCodeErrorsMissingCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code Required'
	String get title => 'Code Required';

	/// en: 'Please enter a referral code to continue.'
	String get message => 'Please enter a referral code to continue.';
}

// Path: referralCode.errors.invalidFormat
class TranslationsReferralCodeErrorsInvalidFormatEn {
	TranslationsReferralCodeErrorsInvalidFormatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid Format'
	String get title => 'Invalid Format';

	/// en: 'Referral code must be exactly 8 characters long.'
	String get message => 'Referral code must be exactly 8 characters long.';
}

// Path: referralCode.errors.alreadyUsed
class TranslationsReferralCodeErrorsAlreadyUsedEn {
	TranslationsReferralCodeErrorsAlreadyUsedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already Used'
	String get title => 'Already Used';

	/// en: 'You have already used a referral code. Each user can only use one code.'
	String get message => 'You have already used a referral code. Each user can only use one code.';
}

// Path: referralCode.errors.selfReferral
class TranslationsReferralCodeErrorsSelfReferralEn {
	TranslationsReferralCodeErrorsSelfReferralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid Code'
	String get title => 'Invalid Code';

	/// en: 'You cannot use your own invitation code. Please use a code from a friend.'
	String get message => 'You cannot use your own invitation code. Please use a code from a friend.';
}

// Path: referralCode.errors.codeNotFound
class TranslationsReferralCodeErrorsCodeNotFoundEn {
	TranslationsReferralCodeErrorsCodeNotFoundEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code Not Found'
	String get title => 'Code Not Found';

	/// en: 'The referral code you entered does not exist. Please double-check and try again.'
	String get message => 'The referral code you entered does not exist. Please double-check and try again.';
}

// Path: referralCode.errors.genericError
class TranslationsReferralCodeErrorsGenericErrorEn {
	TranslationsReferralCodeErrorsGenericErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Error'
	String get title => 'Error';

	/// en: 'An error occurred while applying the referral code. Please try again.'
	String get message => 'An error occurred while applying the referral code. Please try again.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Welcome ${name}',
			'welcome2' => 'Welcome',
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
			'onboarding.fullface' => 'Full Face',
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
			'onboarding.gender' => 'Gender',
			'onboarding.age' => 'Age',
			'onboarding.weight' => 'Weight',
			'onboarding.height' => 'Height',
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
			'full_face' => 'Full Face / General Revitalization',
			'eye_area' => 'Eyes & Eye Area',
			'nose_area' => 'Nose & Nose Area',
			'cheeks_mid_face' => 'Cheeks & Mid Face',
			'lip_area' => 'Lips & Mouth Area',
			'jawline_chin' => 'Jawline, Chin & Double Chin',
			'forehead_brow' => 'Forehead & Brow Area',
			'neck_decollete' => 'Neck & Decollete',
			'good_morning' => 'Good Morning',
			'good_afternoon' => 'Good Afternoon',
			'good_evening' => 'Good Evening',
			'splash.screen1.title' => 'Shape Your Face Naturally',
			'splash.screen1.description' => 'Work your facial muscles with just a few minutes of daily face exercises. Create a natural, aesthetic, and non-invasive beauty routine.',
			'splash.screen2.title' => 'Personalized Exercise Plan with Ai',
			'splash.screen2.description' => 'AI analyzes your facial features, determines your needs, and recommends exercises tailored to you. It tracks which muscles need more work.',
			'splash.screen3.title' => 'Visible Results',
			'splash.screen3.description' => 'With regular use, facial contours become more defined, circulation improves, and skin appears more vibrant. Small steps every day bring big changes.',
			'profile.title' => 'Profile',
			'profile.freeVersion' => 'Free Version',
			'profile.premiumVersion' => 'Premium Version',
			'profile.error' => 'Error',
			'profile.sections.accountSettings' => 'ACCOUNT SETTINGS',
			'profile.sections.supportAndOther' => 'SUPPORT & OTHER',
			'profile.menu.editProfile' => 'Edit Profile',
			'profile.menu.notifications' => 'Notifications',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Favorite Exercises',
			'profile.menu.appLanguage' => 'App Language',
			'profile.menu.shareWithFriends' => 'Share with Friends',
			'profile.menu.enterInviteCode' => 'Enter Invite Code',
			'profile.menu.rateUs' => 'Rate Us',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Logout',
			'profile.manage' => 'MANAGE',
			'profile.logoutDialog.title' => 'You are about to log out',
			'profile.logoutDialog.message' => 'See you again! We will keep tracking your breath exercises.',
			'profile.logoutDialog.logoutButton' => 'Log Out',
			'profile.logoutDialog.cancelButton' => 'Cancel',
			'home.premium' => 'Premium!',
			'home.focusAreas' => 'Focus Areas',
			'home.popularCourses' => 'Popular Courses',
			'home.seeMore' => 'See More',
			'home.personalized.title' => 'Personalized\nFacial Analysis\nReport',
			'home.personalized.description' => 'Please analyze your skin\nto find out what type it is.',
			'home.personalized.button' => 'Try it now',
			'home.premiumPlan.title' => 'Premium Plan',
			'home.premiumPlan.description' => 'Unlock your ai chatbot & get \nall premium features',
			'home.premiumPlan.button' => 'Get Premium',
			'home.premiumPlan.dialog.title' => 'Feature Not Available',
			'home.premiumPlan.dialog.message' => 'This feature is currently not available.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Quick Actions',
			'home.quickActions.programTitle' => 'Your Personal Program',
			'home.quickActions.programSubtitle' => 'For your best look\nin 30 days',
			'home.quickActions.button' => 'Get Started',
			'home.todaysExercise.title' => 'Today\'s Exercise',
			'home.todaysExercise.recommended' => 'Recommended Routine',
			'home.todaysExercise.forToday' => 'for today',
			'home.courses.foreheadSmoother.title' => 'The Forehead Smoother',
			'home.courses.foreheadSmoother.description' => 'This move releases tension in the forehead muscles and frown lines accumulated...',
			'home.courses.vMove.title' => 'The "V" Move',
			'home.courses.vMove.description' => 'Strengthens the delicate skin around the eyes, lifts drooping eyelids, and erases signs of fatigue.',
			'home.courses.cheekLifter.title' => 'The Cheek Lifter',
			'home.courses.cheekLifter.description' => 'Lifts the cheek muscles (Zygomaticus) which are most prone to gravity, restoring the facial oval.',
			'home.benefits.naturalIroning.title' => 'Natural Ironing:',
			'home.benefits.naturalIroning.description' => 'Opens horizontal lines on the forehead and prevents them from deepening.',
			'home.benefits.botoxEffect.title' => 'Botox Effect',
			'home.benefits.botoxEffect.description' => 'Relaxes tense muscles and breaks the habit of frowning.',
			'home.benefits.stressRelief.title' => 'Stress Relief',
			'home.benefits.stressRelief.description' => 'Relieves stress accumulated on the forehead and alleviates headaches.',
			'home.benefits.radiantAppearance.title' => 'Radiant Appearance',
			'home.benefits.radiantAppearance.description' => 'Boosts blood circulation to give the skin a glow.',
			'home.benefits.dePuffing.title' => 'De-Puffing',
			'home.benefits.dePuffing.description' => 'Reduces facial puffiness through its lymphatic drainage effect.',
			'courseDetail.title' => 'Course Detail',
			'courseDetail.getStarted' => 'Get Started',
			'courseDetail.noExercisesFound' => 'No exercises found for this category',
			'courseDetail.instructions.instruction1.title' => 'Wash Your Hands and Face',
			'courseDetail.instructions.instruction1.description' => 'A clean skin allows the massage to be more effective.',
			'courseDetail.instructions.instruction2.title' => 'Apply Face Oil or Moisturizer',
			'courseDetail.instructions.instruction2.description' => 'Smoothly glide without pulling your skin.',
			'courses.title' => 'All Courses',
			'courses.error' => 'Error loading exercises',
			'courses.personalCoursesTitle' => 'Personal Courses',
			'personalProgram.dailyGoalTitle' => 'Set Your Daily Goal',
			'personalProgram.dailyGoalDescription' => 'Choose a pace that fits your schedule',
			'personalProgram.personalizing' => 'Personalizing Your Plan...',
			'personalProgram.readyMessage' => 'Your personal 30-day face yoga program is ready✨',
			'personalProgram.minutes' => 'Min',
			'personalProgram.objectiveTitle' => 'When you look in the mirror, which expression bothers you the most?',
			'personalProgram.objectiveSubtitle' => 'Program balance is adjusted according to facial expression',
			'personalProgram.feelingTitle' => 'How would you like to feel when doing face yoga?',
			'personalProgram.timeTitle' => 'When is it easier for you to do face yoga?',
			'personalProgram.objectives.tired' => 'Tired and worn-out appearance',
			'personalProgram.objectives.harsh' => 'Harsh and tense expression',
			'personalProgram.objectives.pale' => 'Pale and lifeless skin',
			'personalProgram.objectives.asymmetrical' => 'Asymmetrical facial features',
			'personalProgram.objectives.general' => 'No obvious problem, I want general care',
			'personalProgram.feelings.lightened' => 'Lightened',
			'personalProgram.feelings.revitalized' => 'Revitalized',
			'personalProgram.feelings.refreshed' => 'Refreshed',
			'personalProgram.feelings.energetic' => 'More energetic',
			'personalProgram.times.morning' => 'Morning',
			'personalProgram.times.duringDay' => 'During the day',
			'personalProgram.times.evening' => 'Evening',
			'personalProgram.times.anytime' => 'The time doesn\'t matter, a reminder is enough',
			'editProfile.title' => 'Edit Profile',
			'editProfile.changePhoto' => 'Change Photo',
			'editProfile.fullName' => 'Full Name',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Age',
			'editProfile.gender' => 'Gender',
			'editProfile.skinType' => 'Skin Type',
			'editProfile.focusArea' => 'Focus Area',
			'editProfile.focusAreaHint' => 'Forehead, Eyes, Nose, Mouth, Cheeks...',
			'editProfile.save' => 'Save',
			'editProfile.saving' => 'Saving...',
			'editProfile.updateSuccess' => 'Profile updated successfully',
			'editProfile.updateError' => 'An error occurred while updating profile',
			'editProfile.deleteAccount' => 'Delete Account',
			'notifications.title' => 'Notifications',
			'notifications.emptyTitle' => 'No notifications yet',
			'notifications.emptyDescription' => 'We\'ll notify you when there\'s an important update about your learning journey.',
			'notifications.premiumBannerTitle' => 'Don\'t miss out on\nPremium benefits!',
			'notifications.premiumBannerDescription' => 'Grab the opportunities as a Premium subscriber.',
			'notifications.sample1Title' => 'Your daily meditation is ready!',
			'notifications.sample1Description' => 'Find your calm for the day',
			'notifications.sample1Time' => '15 min ago',
			'notifications.sample2Title' => 'New Exercise: Ocean Breath',
			'notifications.sample2Description' => 'A new breathing technique has been added',
			'notifications.sample2Time' => '1 hour ago',
			'notifications.sample3Title' => 'You\'ve hit a 7-day streak!',
			'notifications.sample3Description' => 'Keep up the amazing work on your well-being',
			'notifications.sample3Time' => 'Yesterday',
			'share.title' => 'Share with Friends',
			'share.mainTitle' => 'Share the Peace',
			'share.descriptionPart1' => 'Invite your friends to breathe together.\nFor every invite, you both get ',
			'share.descriptionPart2' => '1 week Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'YOUR REFERRAL CODE',
			'share.codeCopied' => 'Code copied!',
			'share.copyCode' => 'Copy Code',
			'facialScan.title' => 'Facial Scan',
			'facialScan.step' => ({required Object current, required Object total}) => 'STEP ${current} OF ${total}',
			'facialScan.getStarted' => 'Get Started',
			'facialScan.analyzing.title' => 'Analyzing',
			'facialScan.analyzing.description' => 'Analyzing Your Unique Features',
			'facialScan.analyzing.detail' => 'Detecting skin texture, muscle tone, and focus area for your personalized routine.',
			'facialScan.analyzing.aiEngineWorking' => 'AI ENGINE WORKING',
			'facialScan.result.title' => 'Your Analysis is Ready!',
			'facialScan.result.subtitle' => 'We\'ve tailored a routine based on your results.',
			'facialScan.result.skinType' => 'SKIN TYPE',
			'facialScan.result.primaryGoal' => 'PRIMARY GOAL',
			'facialScan.result.recommended' => 'Recommended for You',
			'facialScan.result.back' => 'Back',
			'facialScan.instructions.front' => 'Position your face within the frame',
			'facialScan.instructions.left' => 'Turn your head to the left',
			'facialScan.instructions.right' => 'Turn your head to the right',
			'facialScan.instructions.lighting' => 'Ensure you are in a well-lit environment for better results',
			'facialScan.instructions.tapToCapture' => 'Tap the camera button to take a photo',
			'facialScan.errors.cameraPermission' => 'Camera permission is required to take photos.',
			'facialScan.errors.cameraPermissionRequired' => 'Camera Permission Required',
			'facialScan.errors.cameraPermissionMessage' => 'Camera permission is required for facial scanning. Please enable it in app settings.',
			'facialScan.errors.openSettings' => 'Open Settings',
			'facialScan.errors.cancel' => 'Cancel',
			'facialScan.errors.noFaceDetected' => 'No face detected. Please try again.',
			'facialScan.errors.captureFailed' => 'Failed to capture image. Please try again.',
			'facialScan.positions.front' => 'FRONT',
			'facialScan.positions.left' => 'LEFT',
			'facialScan.positions.right' => 'RIGHT',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continue as Guest',
			'auth.signInFailed' => ({required Object error}) => 'Sign-in failed: ${error}',
			'benefits' => 'Benefits',
			'minutes' => 'Min',
			'cancel' => 'Cancel',
			'beforeBegin' => 'Before You Begin',
			'rest' => 'Rest',
			'courseCompleted' => 'Course Completed',
			'courseCompletedDescription' => 'Great job finishing today\'s session.',
			'deleteAccount' => 'Delete Account',
			'deleteDialogTitle' => 'Are you sure you want to delete your account?',
			'deleteDialogDescription' => 'This action is irreversible and will permanently delete all your exercise history and data.',
			'deleteError' => 'An error occurred while deleting your account. Please try again.',
			'favoriteExercises' => 'Favorite Exercises',
			'noFavoritesInCategory' => 'No favorites in this category',
			'noFavoritesAdded' => 'No favorites added yet.',
			'favoriteExercisesDescription' => 'To set your favorite exercises, you can add the exercises you like from the My Exercises page.',
			'enterInvitationCode' => 'Enter Invitation Code',
			'bePartOfPeace' => 'Be Part of Peace',
			'inviteFriends' => 'Enter the invitation code you received from a friend.\nType it into the designated field',
			'twoDaysPremium' => '7-Day Premium',
			'advantage' => '\nto enjoy its benefits.',
			'send' => 'Send',
			'referralCode.inputPlaceholder' => 'Enter 8-character code',
			'referralCode.applying' => 'Applying code...',
			'referralCode.success.title' => 'Success!',
			'referralCode.success.message' => 'Referral code applied successfully! Both you and your friend received 1 week of premium.',
			'referralCode.errors.missingCode.title' => 'Code Required',
			'referralCode.errors.missingCode.message' => 'Please enter a referral code to continue.',
			'referralCode.errors.invalidFormat.title' => 'Invalid Format',
			'referralCode.errors.invalidFormat.message' => 'Referral code must be exactly 8 characters long.',
			'referralCode.errors.alreadyUsed.title' => 'Already Used',
			'referralCode.errors.alreadyUsed.message' => 'You have already used a referral code. Each user can only use one code.',
			'referralCode.errors.selfReferral.title' => 'Invalid Code',
			'referralCode.errors.selfReferral.message' => 'You cannot use your own invitation code. Please use a code from a friend.',
			'referralCode.errors.codeNotFound.title' => 'Code Not Found',
			'referralCode.errors.codeNotFound.message' => 'The referral code you entered does not exist. Please double-check and try again.',
			'referralCode.errors.genericError.title' => 'Error',
			'referralCode.errors.genericError.message' => 'An error occurred while applying the referral code. Please try again.',
			'deleteNotifications' => 'Delete Notifications',
			'deleteNotificationsDescription' => 'Are you sure you want to delete all \nyour notifications? This action is irreversible and cannot be undone.',
			'deleteAll' => 'Delete All',
			'appLanguage' => 'App Language',
			'selectLanguage' => 'Select Your Preferred Language',
			'save' => 'Save',
			'languageOptions.english' => 'English',
			'languageOptions.german' => 'German',
			'languageOptions.italian' => 'Italian',
			'languageOptions.french' => 'French',
			'languageOptions.japanese' => 'Japanese',
			'languageOptions.spanish' => 'Spanish',
			'languageOptions.russian' => 'Russian',
			'languageOptions.turkish' => 'Turkish',
			'languageOptions.korean' => 'Korean',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portuguese',
			_ => null,
		};
	}
}
