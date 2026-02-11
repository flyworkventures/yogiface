///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsHi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'स्वागत है ${name}';
	@override String get welcome2 => 'स्वागत है';
	@override String get get_started => 'शुरू करें';
	@override String get next => 'अगला';
	@override String get back => 'पीछे';
	@override String get skip => 'छोड़ें';
	@override String get logintext => 'आपको देखकर खुशी हुई। आप अपने खाते में लॉग इन करके जहां छोड़ा था वहीं से जारी रख सकते हैं।';
	@override late final _TranslationsTermOfServiceHi termOfService = _TranslationsTermOfServiceHi._(_root);
	@override String get cookies => 'कुकी नीति';
	@override String get privacy => 'गोपनीयता नीति';
	@override late final _TranslationsTermsOfServiceHi termsOfService = _TranslationsTermsOfServiceHi._(_root);
	@override late final _TranslationsCookiesPolicyHi cookiesPolicy = _TranslationsCookiesPolicyHi._(_root);
	@override late final _TranslationsPrivacyPolicyHi privacyPolicy = _TranslationsPrivacyPolicyHi._(_root);
	@override late final _TranslationsOnboardingHi onboarding = _TranslationsOnboardingHi._(_root);
	@override String get pressBackAgainToExit => 'बाहर निकलने के लिए फिर से वापस दबाएं';
	@override String get addedToFavoritesTitle => 'व्यायाम सफलतापूर्वक पसंदीदा में जोड़ा गया!';
	@override String get removedFromFavoritesTitle => 'व्यायाम सफलतापूर्वक पसंदीदा से हटाया गया!';
	@override String get removedFromFavorites => 'आप उन अन्य व्यायामों तक पहुंच सकते हैं जिन्हें आप पाठ्यक्रमों से जोड़ना चाहते हैं';
	@override late final _TranslationsFaqHi faq = _TranslationsFaqHi._(_root);
	@override String get full_face => 'पूरा चेहरा / सामान्य पुनरोद्धार';
	@override String get eye_area => 'आंखें और आंख का क्षेत्र';
	@override String get nose_area => 'नाक और नाक का क्षेत्र';
	@override String get cheeks_mid_face => 'गाल और मध्य चेहरा';
	@override String get lip_area => 'होंठ और मुंह का क्षेत्र';
	@override String get jawline_chin => 'जबड़े की रेखा, ठोड़ी और डबल चिन';
	@override String get forehead_brow => 'माथा और भौहें क्षेत्र';
	@override String get neck_decollete => 'गर्दन और डेकोलेटी';
	@override String get good_morning => 'सुप्रभात';
	@override String get good_afternoon => 'शुभ दोपहर';
	@override String get good_evening => 'शुभ संध्या';
	@override late final _TranslationsSplashHi splash = _TranslationsSplashHi._(_root);
	@override late final _TranslationsProfileHi profile = _TranslationsProfileHi._(_root);
	@override late final _TranslationsHomeHi home = _TranslationsHomeHi._(_root);
	@override late final _TranslationsCourseDetailHi courseDetail = _TranslationsCourseDetailHi._(_root);
	@override late final _TranslationsCoursesHi courses = _TranslationsCoursesHi._(_root);
	@override late final _TranslationsPersonalProgramHi personalProgram = _TranslationsPersonalProgramHi._(_root);
	@override late final _TranslationsEditProfileHi editProfile = _TranslationsEditProfileHi._(_root);
	@override late final _TranslationsNotificationsHi notifications = _TranslationsNotificationsHi._(_root);
	@override late final _TranslationsShareHi share = _TranslationsShareHi._(_root);
	@override late final _TranslationsFacialScanHi facialScan = _TranslationsFacialScanHi._(_root);
	@override late final _TranslationsAuthHi auth = _TranslationsAuthHi._(_root);
	@override String get benefits => 'लाभ';
	@override String get minutes => 'मिनट';
	@override String get cancel => 'रद्द करें';
	@override String get beforeBegin => 'शुरू करने से पहले';
	@override String get rest => 'आराम';
	@override String get courseCompleted => 'पाठ्यक्रम पूरा हुआ';
	@override String get courseCompletedDescription => 'आज के सत्र को पूरा करने पर उत्कृष्ट कार्य।';
	@override String get deleteAccount => 'खाता हटाएं';
	@override String get deleteDialogTitle => 'क्या आप वाकई अपना खाता हटाना चाहते हैं?';
	@override String get deleteDialogDescription => 'यह क्रिया अपरिवर्तनीय है और आपके सभी व्यायाम इतिहास और डेटा को स्थायी रूप से हटा देगी।';
	@override String get deleteError => 'अपना खाता हटाते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।';
	@override String get favoriteExercises => 'पसंदीदा व्यायाम';
	@override String get noFavoritesInCategory => 'इस श्रेणी में कोई पसंदीदा नहीं';
	@override String get noFavoritesAdded => 'अभी तक कोई पसंदीदा नहीं जोड़ा गया।';
	@override String get favoriteExercisesDescription => 'अपने पसंदीदा व्यायाम सेट करने के लिए, आप मेरे व्यायाम पृष्ठ से पसंद किए जाने वाले व्यायाम जोड़ सकते हैं।';
	@override String get enterInvitationCode => 'निमंत्रण कोड दर्ज करें';
	@override String get bePartOfPeace => 'शांति का हिस्सा बनें';
	@override String get inviteFriends => 'किसी मित्र से प्राप्त आमंत्रण कोड दर्ज करें।\nइसे निर्दिष्ट फ़ील्ड में टाइप करें';
	@override String get twoDaysPremium => '7 दिन प्रीमियम';
	@override String get advantage => '\nइसके लाभों का आनंद लेने के लिए।';
	@override String get send => 'भेजें';
	@override late final _TranslationsReferralCodeHi referralCode = _TranslationsReferralCodeHi._(_root);
	@override String get deleteNotifications => 'सूचनाएं हटाएं';
	@override String get deleteNotificationsDescription => 'क्या आप वाकई अपनी सभी\nसूचनाएं हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';
	@override String get deleteAll => 'सभी हटाएं';
	@override String get appLanguage => 'ऐप भाषा';
	@override String get selectLanguage => 'अपनी पसंदीदा भाषा चुनें';
	@override String get save => 'सहेजें';
	@override late final _TranslationsLanguageOptionsHi languageOptions = _TranslationsLanguageOptionsHi._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceHi implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipe पर साइन अप करके, आप हमारी ';
	@override String get link1 => 'सेवा की शर्तों';
	@override String get text2 => ' से सहमत हैं। जानें कि हम आपका डेटा कैसे प्रोसेस करते हैं हमारी ';
	@override String get link2 => 'गोपनीयता नीति';
	@override String get text3 => ' और ';
	@override String get link3 => 'कुकी नीति';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServiceHi implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – सेवा की शर्तें';
	@override String get lastUpdated => 'अंतिम अपडेट: 2025';
	@override String get principle => 'Yogiface एक वेलनेस एप्लिकेशन है जो चेहरे की मांसपेशियों को सहारा देने के लिए फेशियल योगा व्यायाम और निर्देशित सामग्री प्रदान करता है। एप्लिकेशन चिकित्सा, नैदानिक, सौंदर्य या पेशेवर स्वास्थ्य सेवाएं प्रदान नहीं करता है।';
	@override String get intro => 'इन सेवा की शर्तों ("शर्तें") में आपके Yogiface मोबाइल एप्लिकेशन ("एप्लिकेशन") के उपयोग पर लागू नियम शामिल हैं। एप्लिकेशन का उपयोग करके, आप इन शर्तों से सहमत हैं। यदि आप शर्तों से सहमत नहीं हैं, तो आपको एप्लिकेशन का उपयोग नहीं करना चाहिए।';
	@override late final _TranslationsTermsOfServiceSection1Hi section1 = _TranslationsTermsOfServiceSection1Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection2Hi section2 = _TranslationsTermsOfServiceSection2Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection3Hi section3 = _TranslationsTermsOfServiceSection3Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection4Hi section4 = _TranslationsTermsOfServiceSection4Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection5Hi section5 = _TranslationsTermsOfServiceSection5Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection6Hi section6 = _TranslationsTermsOfServiceSection6Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection7Hi section7 = _TranslationsTermsOfServiceSection7Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection12Hi section12 = _TranslationsTermsOfServiceSection12Hi._(_root);
	@override late final _TranslationsTermsOfServiceSection13Hi section13 = _TranslationsTermsOfServiceSection13Hi._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyHi implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – कुकी नीति';
	@override String get lastUpdated => 'अंतिम अपडेट: 2025';
	@override String get intro => 'Yogiface में आपका स्वागत है! हर बार जब आप ऐप पर आते हैं, तो हम आपके अनुभव को बेहतर और निजीकृत करने के लिए डिजिटल सहायक (कुकीज़) का उपयोग करते हैं। यह नीति बताती है कि आप अपनी प्राथमिकताओं को कैसे प्रबंधित कर सकते हैं।';
	@override late final _TranslationsCookiesPolicySection1Hi section1 = _TranslationsCookiesPolicySection1Hi._(_root);
	@override late final _TranslationsCookiesPolicySection2Hi section2 = _TranslationsCookiesPolicySection2Hi._(_root);
	@override late final _TranslationsCookiesPolicySection3Hi section3 = _TranslationsCookiesPolicySection3Hi._(_root);
	@override late final _TranslationsCookiesPolicySection4Hi section4 = _TranslationsCookiesPolicySection4Hi._(_root);
	@override late final _TranslationsCookiesPolicySection5Hi section5 = _TranslationsCookiesPolicySection5Hi._(_root);
	@override late final _TranslationsCookiesPolicySection6Hi section6 = _TranslationsCookiesPolicySection6Hi._(_root);
	@override late final _TranslationsCookiesPolicySection7Hi section7 = _TranslationsCookiesPolicySection7Hi._(_root);
	@override late final _TranslationsCookiesPolicySection8Hi section8 = _TranslationsCookiesPolicySection8Hi._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyHi implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – गोपनीयता नीति';
	@override String get lastUpdated => 'अंतिम अपडेट: 2025';
	@override String get intro => 'यह गोपनीयता नीति Yogiface मोबाइल एप्लिकेशन ("ऐप") का उपयोग करने वाले सभी उपयोगकर्ताओं के व्यक्तिगत डेटा के संग्रह, उपयोग, भंडारण और सुरक्षा से संबंधित सिद्धांतों की व्याख्या करती है। ऐप का उपयोग करके, आप इस नीति को स्वीकार करते हैं।';
	@override String get principle => 'Yogiface उपयोगकर्ता गोपनीयता और डेटा सुरक्षा को एक मुख्य सिद्धांत के रूप में अपनाता है। सभी व्यक्तिगत डेटा GDPR और प्रासंगिक कानून के अनुसार संसाधित किए जाते हैं।';
	@override late final _TranslationsPrivacyPolicySection1Hi section1 = _TranslationsPrivacyPolicySection1Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection2Hi section2 = _TranslationsPrivacyPolicySection2Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection3Hi section3 = _TranslationsPrivacyPolicySection3Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection4Hi section4 = _TranslationsPrivacyPolicySection4Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection5Hi section5 = _TranslationsPrivacyPolicySection5Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection6Hi section6 = _TranslationsPrivacyPolicySection6Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection8Hi section8 = _TranslationsPrivacyPolicySection8Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection10Hi section10 = _TranslationsPrivacyPolicySection10Hi._(_root);
}

// Path: onboarding
class _TranslationsOnboardingHi implements TranslationsOnboardingEn {
	_TranslationsOnboardingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'बुनियादी जानकारी';
	@override String get target => 'लक्ष्य';
	@override String get habits => 'आदतें';
	@override String get step => 'चरण';
	@override String get of => 'का';
	@override String get tellUsAboutYourself => 'अपने बारे में बताएं';
	@override String get shortBioDescription => 'एक संक्षिप्त परिचय दूसरों को आपको वास्तव में जानने में मदद करता है। इसे मजेदार और वास्तविक रखें';
	@override String get enterYourFullname => 'अपना पूरा नाम दर्ज करें';
	@override String get fullName => 'पूरा नाम';
	@override String get male => 'पुरुष';
	@override String get female => 'महिला';
	@override String get dontWantToMention => 'उल्लेख नहीं करना चाहते';
	@override String get whatIsMainObjective => 'मुख्य उद्देश्य क्या है?';
	@override String get reduceWrinkles => 'झुर्रियां कम करें';
	@override String get tightenSkin => 'त्वचा को कस लें';
	@override String get liftDroopyEyelids => 'झुकती पलकों को उठाएं';
	@override String get eliminateDoubleChin => 'डबल चिन हटा दें';
	@override String get brightenSkinTone => 'त्वचा की रंगत निखारें';
	@override String get allOfTheAbove => 'उपरोक्त सभी';
	@override String get whichAreaToImprove => 'आप किस क्षेत्र में सुधार करना चाहेंगे?';
	@override String get forehead => 'माथा';
	@override String get eyes => 'आंखें';
	@override String get nose => 'नाक';
	@override String get cheeks => 'गाल';
	@override String get lips => 'होंठ';
	@override String get jawline => 'जबड़े की रेखा';
	@override String get neck => 'गर्दन';
	@override String get fullface => 'पूरा चेहरा';
	@override String get whatFaceShapeAiming => 'आप किस चेहरे के आकार का लक्ष्य बना रहे हैं?';
	@override String get heart => 'दिल';
	@override String get oval => 'अंडाकार';
	@override String get square => 'चौकोर';
	@override String get round => 'गोल';
	@override String get diamond => 'हीरा';
	@override String get whatIsYourSkinType => 'आपकी त्वचा का प्रकार क्या है?';
	@override String get normal => 'सामान्य';
	@override String get oily => 'तैलिये';
	@override String get dry => 'सूखी';
	@override String get combination => 'मिश्रित';
	@override String get sensitive => 'संवेदनशील';
	@override String get whichOfThemDoYouHave => 'इनमें से कौन सा आपके पास है?';
	@override String get acneAndPimples => 'मुंहासे और फुंसियां';
	@override String get redness => 'लालिमा';
	@override String get swelling => 'सूजन';
	@override String get wrinkles => 'झुर्रियां';
	@override String get neckLines => 'गर्दन की रेखाएं';
	@override String get howOftenWearMakeup => 'आप कितनी बार मेकअप करती हैं?';
	@override String get everyDay => 'प्रतिदिन';
	@override String get fewDaysAWeek => 'सप्ताह में कुछ दिन';
	@override String get occasionally => 'कभी-कभार';
	@override String get never => 'कभी नहीं';
	@override String get haveYouHadBotox => 'क्या आपने बोटोक्स कराया है?';
	@override String get yes => 'हाँ';
	@override String get no => 'नहीं';
	@override String get creatingPersonalizedProfile => 'आपका व्यक्तिगत प्रोफ़ाइल बना रहा है';
	@override String get tailoringExperience => 'हम आपकी प्राथमिकताओं के आधार पर आपके अनुभव को अनुकूलित कर रहे हैं...';
	@override String get gender => 'लिंग';
	@override String get age => 'आयु';
	@override String get weight => 'वजन';
	@override String get height => 'कद';
	@override String get matchingPersonalities => 'व्यक्तित्व मिलान';
}

// Path: faq
class _TranslationsFaqHi implements TranslationsFaqEn {
	_TranslationsFaqHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सामान्य प्रश्न';
	@override late final _TranslationsFaqQuestionsHi questions = _TranslationsFaqQuestionsHi._(_root);
}

// Path: splash
class _TranslationsSplashHi implements TranslationsSplashEn {
	_TranslationsSplashHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Hi screen1 = _TranslationsSplashScreen1Hi._(_root);
	@override late final _TranslationsSplashScreen2Hi screen2 = _TranslationsSplashScreen2Hi._(_root);
	@override late final _TranslationsSplashScreen3Hi screen3 = _TranslationsSplashScreen3Hi._(_root);
}

// Path: profile
class _TranslationsProfileHi implements TranslationsProfileEn {
	_TranslationsProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल';
	@override String get freeVersion => 'मुफ्त संस्करण';
	@override String get error => 'त्रुटि';
	@override late final _TranslationsProfileSectionsHi sections = _TranslationsProfileSectionsHi._(_root);
	@override late final _TranslationsProfileMenuHi menu = _TranslationsProfileMenuHi._(_root);
	@override String get manage => 'प्रबंधित करें';
	@override late final _TranslationsProfileLogoutDialogHi logoutDialog = _TranslationsProfileLogoutDialogHi._(_root);
}

// Path: home
class _TranslationsHomeHi implements TranslationsHomeEn {
	_TranslationsHomeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get premium => 'प्रीमियम!';
	@override String get focusAreas => 'फोकस क्षेत्र';
	@override String get popularCourses => 'लोकप्रिय पाठ्यक्रम';
	@override String get seeMore => 'अधिक देखें';
	@override late final _TranslationsHomePersonalizedHi personalized = _TranslationsHomePersonalizedHi._(_root);
	@override late final _TranslationsHomePremiumPlanHi premiumPlan = _TranslationsHomePremiumPlanHi._(_root);
	@override late final _TranslationsHomeQuickActionsHi quickActions = _TranslationsHomeQuickActionsHi._(_root);
	@override late final _TranslationsHomeTodaysExerciseHi todaysExercise = _TranslationsHomeTodaysExerciseHi._(_root);
	@override late final _TranslationsHomeCoursesHi courses = _TranslationsHomeCoursesHi._(_root);
	@override late final _TranslationsHomeBenefitsHi benefits = _TranslationsHomeBenefitsHi._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailHi implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पाठ्यक्रम विवरण';
	@override String get getStarted => 'शुरू करें';
	@override String get noExercisesFound => 'इस श्रेणी के लिए कोई व्यायाम नहीं मिला';
	@override late final _TranslationsCourseDetailInstructionsHi instructions = _TranslationsCourseDetailInstructionsHi._(_root);
}

// Path: courses
class _TranslationsCoursesHi implements TranslationsCoursesEn {
	_TranslationsCoursesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सभी पाठ्यक्रम';
	@override String get error => 'व्यायाम लोड करने में त्रुटि';
	@override String get personalCoursesTitle => 'व्यक्तिगत पाठ्यक्रम';
}

// Path: personalProgram
class _TranslationsPersonalProgramHi implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'अपना दैनिक लक्ष्य निर्धारित करें';
	@override String get dailyGoalDescription => 'वह गति चुनें जो आपके शेड्यूल के अनुकूल हो';
	@override String get personalizing => 'आपकी योजना को निजीकृत कर रहा है...';
	@override String get readyMessage => 'आपका व्यक्तिगत 30-दिन का फेशियल योगा कार्यक्रम तैयार है✨';
	@override String get minutes => 'min';
	@override String get objectiveTitle => 'Which expression bothers you most when you look in the mirror?';
	@override String get objectiveSubtitle => 'Program balance is adjusted according to facial expression';
	@override String get feelingTitle => 'How would you like to feel by doing face yoga?';
	@override String get timeTitle => 'When is it easier for you to do face yoga?';
	@override late final _TranslationsPersonalProgramObjectivesHi objectives = _TranslationsPersonalProgramObjectivesHi._(_root);
	@override late final _TranslationsPersonalProgramFeelingsHi feelings = _TranslationsPersonalProgramFeelingsHi._(_root);
	@override late final _TranslationsPersonalProgramTimesHi times = _TranslationsPersonalProgramTimesHi._(_root);
}

// Path: editProfile
class _TranslationsEditProfileHi implements TranslationsEditProfileEn {
	_TranslationsEditProfileHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रोफ़ाइल संपादित करें';
	@override String get changePhoto => 'फ़ोटो बदलें';
	@override String get fullName => 'पूरा नाम';
	@override String get email => 'ईमेल';
	@override String get age => 'आयु';
	@override String get gender => 'लिंग';
	@override String get skinType => 'त्वचा का प्रकार';
	@override String get focusArea => 'फोकस क्षेत्र';
	@override String get focusAreaHint => 'माथा, आंखें, नाक, मुंह, गाल...';
	@override String get save => 'सहेजें';
	@override String get saving => 'सहेज रहा है...';
	@override String get updateSuccess => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई';
	@override String get updateError => 'प्रोफ़ाइल अपडेट करते समय एक त्रुटि हुई';
	@override String get deleteAccount => 'खाता हटाएं';
}

// Path: notifications
class _TranslationsNotificationsHi implements TranslationsNotificationsEn {
	_TranslationsNotificationsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सूचनाएं';
	@override String get emptyTitle => 'अभी तक कोई सूचना नहीं';
	@override String get emptyDescription => 'जब आपकी सीखने की यात्रा के बारे में कोई महत्वपूर्ण अपडेट होगा तो हम आपको सूचित करेंगे।';
	@override String get premiumBannerTitle => 'प्रीमियम लाभों को\nन चूकें!';
	@override String get premiumBannerDescription => 'प्रीमियम ग्राहक के रूप में अवसरों का लाभ उठाएं।';
	@override String get sample1Title => 'आपका दैनिक ध्यान तैयार है!';
	@override String get sample1Description => 'दिन के लिए अपनी शांति खोजें';
	@override String get sample1Time => '15 मिनट पहले';
	@override String get sample2Title => 'नया व्यायाम: महासागर श्वास';
	@override String get sample2Description => 'एक नई श्वास तकनीक जोड़ी गई है';
	@override String get sample2Time => '1 घंटा पहले';
	@override String get sample3Title => 'आप 7-दिवसीय स्ट्रीक तक पहुँच गए!';
	@override String get sample3Description => 'अपनी भलाई पर अद्भुत काम जारी रखें';
	@override String get sample3Time => 'कल';
}

// Path: share
class _TranslationsShareHi implements TranslationsShareEn {
	_TranslationsShareHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दोस्तों के साथ साझा करें';
	@override String get mainTitle => 'शांति साझा करें';
	@override String get descriptionPart1 => 'दोस्तों को एक साथ सांस लेने के लिए आमंत्रित करें।\nप्रत्येक आमंत्रण के लिए, आप दोनों को मिलता है ';
	@override String get descriptionPart2 => '1 सप्ताह प्रीमियम';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'आपका रेफरल कोड';
	@override String get codeCopied => 'कोड कॉपी किया गया!';
	@override String get copyCode => 'कोड कॉपी करें';
}

// Path: facialScan
class _TranslationsFacialScanHi implements TranslationsFacialScanEn {
	_TranslationsFacialScanHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'चेहरा स्कैन';
	@override String step({required Object current, required Object total}) => 'चरण ${current} / ${total}';
	@override String get getStarted => 'शुरू करें';
	@override late final _TranslationsFacialScanAnalyzingHi analyzing = _TranslationsFacialScanAnalyzingHi._(_root);
	@override late final _TranslationsFacialScanResultHi result = _TranslationsFacialScanResultHi._(_root);
	@override late final _TranslationsFacialScanInstructionsHi instructions = _TranslationsFacialScanInstructionsHi._(_root);
	@override late final _TranslationsFacialScanErrorsHi errors = _TranslationsFacialScanErrorsHi._(_root);
	@override late final _TranslationsFacialScanPositionsHi positions = _TranslationsFacialScanPositionsHi._(_root);
}

// Path: auth
class _TranslationsAuthHi implements TranslationsAuthEn {
	_TranslationsAuthHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'अतिथि के रूप में जारी रखें';
	@override String signInFailed({required Object error}) => 'साइन इन विफल: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeHi implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8-अंकीय कोड दर्ज करें';
	@override String get applying => 'कोड लागू हो रहा है...';
	@override late final _TranslationsReferralCodeSuccessHi success = _TranslationsReferralCodeSuccessHi._(_root);
	@override late final _TranslationsReferralCodeErrorsHi errors = _TranslationsReferralCodeErrorsHi._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsHi implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get english => 'अंग्रेज़ी';
	@override String get german => 'जर्मन';
	@override String get italian => 'इतालवी';
	@override String get french => 'फ्रेंच';
	@override String get japanese => 'जापानी';
	@override String get spanish => 'स्पेनिश';
	@override String get russian => 'रूसी';
	@override String get turkish => 'तुर्की';
	@override String get korean => 'कोरियाई';
	@override String get hindi => 'हिंदी';
	@override String get portuguese => 'पुर्तगाली';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Hi implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1. सेवा का दायरा';
	@override String get content => 'Yogiface उपयोगकर्ताओं को निर्देशित फेशियल योगा और व्यायाम का अनुभव प्रदान करता है। एप्लिकेशन में शामिल हैं:';
	@override List<String> get items => [
		'फेशियल योगा और व्यायाम गाइड',
		'दैनिक और साप्ताहिक व्यायाम दिनचर्या',
		'विशिष्ट चेहरे के क्षेत्रों के लिए लक्षित सिफारिशें',
		'अनुकूलन योग्य योजनाएं और प्रगति ट्रैकिंग',
	];
	@override String get note => 'प्रदान की गई सामग्री पेशेवर, चिकित्सा या सौंदर्य सलाह, निदान या उपचार का गठन नहीं करती है।';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Hi implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '2. उपयोग की शर्तें';
	@override List<String> get items => [
		'आपकी आयु कम से कम 13 वर्ष होनी चाहिए।',
		'आपको सटीक और अद्यतित खाता जानकारी प्रदान करनी होगी।',
		'आप स्वीकार करते हैं कि व्यायाम कोई चिकित्सा सेवा नहीं है।',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Hi implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '3. निषिद्ध उपयोग';
	@override List<String> get items => [
		'वैध गतिविधियों के लिए ऐप का उपयोग करना।',
		'बिना अनुमति के सामग्री बेचना, पुनरुत्पादन करना या वितरित करना।',
		'अनधिकृत पहुंच, हैकिंग या रिवर्स इंजीनियरिंग प्रयास।',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Hi implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '4. खाता और सदस्यता';
	@override String get content => 'आप अपने खाते की सुरक्षा के लिए जिम्मेदार हैं। Yogiface शर्तों के विपरीत उपयोग का पता चलने पर खातों को निलंबित या बंद करने का अधिकार सुरक्षित रखता है।';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Hi implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '5. प्रीमियम और सशुल्क सेवाएं';
	@override List<String> get items => [
		'मूल्य निर्धारण ऐप स्टोर और गूगल प्ले नीतियों पर आधारित है।',
		'सदस्यता स्वचालित रूप से नवीनीकृत हो सकती है; रद्दीकरण स्टोर सेटिंग्स के माध्यम से किया जाता है।',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Hi implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '6. अस्वीकरण';
	@override String get content => 'उपयोगकर्ता अपनी जिम्मेदारी पर व्यायाम करते हैं। स्वास्थ्य समस्याओं के मामले में, उपयोगकर्ताओं को स्वास्थ्य पेशेवर से परामर्श करना चाहिए। ऐप का उपयोग निदान या उपचार के लिए नहीं किया जाना चाहिए।';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Hi implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7. बौद्धिक संपदा';
	@override String get content => 'डिजाइन, सॉफ्टवेयर, चित्र और व्यायाम सामग्री Yogiface की है। अनधिकृत प्रतिलिपि या स्रोत कोड संशोधन प्रतिबंधित है।';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Hi implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '12. शासी कानून';
	@override String get content => 'ये शर्तें तुर्की गणराज्य के कानूनों द्वारा शासित होती हैं। इस्तांबुल केंद्रीय न्यायालयों का विवादों पर अधिकार क्षेत्र है।';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Hi implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '13. संपर्क';
	@override String get email => '📩 ईमेल: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Hi implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1. कुकीज़ क्या हैं?';
	@override String get content => 'कुकीज़ आपके डिवाइस पर रखी गई छोटी डेटा फ़ाइलें हैं। वे हमें यह समझने में मदद करती हैं कि आप ऐप का उपयोग कैसे करते हैं और आपके अनुभव को अधिक सुगम बनाते हैं। कुकीज़ में सीधे आपकी पहचान नहीं होती है; वे आपकी प्राथमिकताओं और उपयोग की आदतों को याद रखने वाले डिजिटल सहायक के रूप में कार्य करते हैं।';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Hi implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '2. हम किन कुकीज़ का उपयोग करते हैं?';
	@override late final _TranslationsCookiesPolicySection2EssentialHi essential = _TranslationsCookiesPolicySection2EssentialHi._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceHi performance = _TranslationsCookiesPolicySection2PerformanceHi._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationHi personalization = _TranslationsCookiesPolicySection2PersonalizationHi._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingHi marketing = _TranslationsCookiesPolicySection2MarketingHi._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Hi implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '3. हम कुकीज़ का उपयोग क्यों करते हैं?';
	@override List<String> get items => [
		'यह सुनिश्चित करने के लिए कि ऐप तेज और सुचारू रूप से चले',
		'उपयोगकर्ता की प्राथमिकताओं को याद करके दोहराव वाली क्रियाओं को कम करने के लिए',
		'अनुभव को अधिक व्यक्तिगत और उपयोगी बनाने के लिए',
		'उपयोग डेटा का विश्लेषण करके ऐप को बेहतर बनाने के लिए',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Hi implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '4. तृतीय-पक्ष कुकीज़';
	@override String get content => 'कुछ कुकीज़ विश्लेषणात्मक और विज्ञापन सेवाएं प्रदान करने वाले तृतीय-पक्ष भागीदारों द्वारा रखी जा सकती हैं। ये प्रदाताओं की अपनी गोपनीयता और कुकी नीतियों के अधीन हैं।';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Hi implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '5. कुकी नियंत्रण और प्रबंधन';
	@override String get content => 'आप डिवाइस सेटिंग्स, ऐप अनुमतियों या सिस्टम सेटिंग्स के माध्यम से कुकीज़ का प्रबंधन कर सकते हैं। आवश्यक कुकीज़ को अक्षम करने से ऐप के कुछ हिस्से खराब हो सकते हैं।';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Hi implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '6. डेटा उपयोग';
	@override String get content => 'कुकीज़ के माध्यम से प्राप्त डेटा, यदि व्यक्तिगत डेटा के रूप में योग्य है, तो गोपनीयता नीति के अनुसार कानूनी ढांचे के भीतर संसाधित किया जाता है।';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Hi implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '7. नीति अद्यतन';
	@override String get content => 'तकनीकी और कानूनी परिवर्तनों के आधार पर यह नीति अपडेट की जा सकती है। वर्तमान संस्करण प्रकाशित होते ही प्रभावी हो जाता है।';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Hi implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '8. संपर्क';
	@override String get email => '📩 ईमेल: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Hi implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1. एकत्रित जानकारी';
	@override late final _TranslationsPrivacyPolicySection1Sub1Hi sub1 = _TranslationsPrivacyPolicySection1Sub1Hi._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Hi sub2 = _TranslationsPrivacyPolicySection1Sub2Hi._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Hi implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '2. डेटा उपयोग के उद्देश्य';
	@override List<String> get items => [
		'ऐप का निर्बाध संचालन सुनिश्चित करने के लिए',
		'फेशियल योगा अनुभव को निजीकृत और अनुकूलित करने के लिए',
		'त्रुटि का पता लगाने और प्रदर्शन विश्लेषण करने के लिए',
		'उपयोगकर्ता की मांगों और समर्थन अनुरोधों का जवाब देने के लिए',
	];
	@override String get note => 'महत्वपूर्ण: उपयोगकर्ता डेटा कभी भी तीसरे पक्ष को नहीं बेचा जाता है।';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Hi implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '3. डेटा प्रतिधारण';
	@override List<String> get items => [
		'डेटा तब तक संग्रहीत किया जाता है जब तक उपयोगकर्ता खाता सक्रिय है।',
		'जब कोई खाता हटा दिया जाता है, तो व्यक्तिगत डेटा अपरिवर्तनीय रूप से हटा दिया जाता है।',
		'समर्थन रिकॉर्ड पूरा होने के बाद अधिकतम 12 महीने तक रखे जाते हैं।',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Hi implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '4. डेटा साझा करना';
	@override String get content => 'आपका डेटा केवल कानूनी आवश्यकताओं (आधिकारिक अनुरोध), सेवा प्रदाताओं (क्लाउड इंफ्रास्ट्रक्चर, एनालिटिक्स) या उपयोगकर्ता की स्पष्ट सहमति के मामले में साझा किया जाता है।';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Hi implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '5. कुकीज़ और सुरक्षा';
	@override String get content => 'Yogiface प्रदर्शन और अनुभव को बेहतर बनाने के लिए कुकीज़ का उपयोग कर सकता है। आपका डेटा SSL/TLS एन्क्रिप्शन और नियमित सुरक्षा ऑडिट द्वारा सुरक्षित है।';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Hi implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '6. उपयोगकर्ता अधिकार';
	@override String get content => 'आपको डेटा प्रोसेसिंग तक पहुंचने, सही करने, हटाने और प्रतिबंधित करने का अधिकार है।';
	@override String get contact => 'अनुरोधों के लिए:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Hi implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '8. बच्चों की गोपनीयता';
	@override String get content => 'Yogiface 13 वर्ष से कम उम्र के व्यक्तियों के लिए अभिप्रेत नहीं है। यदि इस आयु वर्ग से कोई डेटा एकत्र किया जाता है, तो उसे पता चलने पर तुरंत हटा दिया जाएगा।';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Hi implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '10. संपर्क';
	@override String get email => '📩 ईमेल: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsHi implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Hi q1 = _TranslationsFaqQuestionsQ1Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ2Hi q2 = _TranslationsFaqQuestionsQ2Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ3Hi q3 = _TranslationsFaqQuestionsQ3Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ4Hi q4 = _TranslationsFaqQuestionsQ4Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ5Hi q5 = _TranslationsFaqQuestionsQ5Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ6Hi q6 = _TranslationsFaqQuestionsQ6Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ7Hi q7 = _TranslationsFaqQuestionsQ7Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ8Hi q8 = _TranslationsFaqQuestionsQ8Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ9Hi q9 = _TranslationsFaqQuestionsQ9Hi._(_root);
	@override late final _TranslationsFaqQuestionsQ10Hi q10 = _TranslationsFaqQuestionsQ10Hi._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Hi implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अपने चेहरे को प्राकृतिक रूप से आकार दें';
	@override String get description => 'दैनिक चेहरे के व्यायाम के कुछ ही मिनटों के साथ अपनी चेहरे की मांसपेशियों को काम करें। एक प्राकृतिक, सौंदर्य और गैर-इनवेसिव सौंदर्य दिनचर्या बनाएं।';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Hi implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI के साथ व्यक्तिगत व्यायाम योजना';
	@override String get description => 'AI आपकी चेहरे की विशेषताओं का विश्लेषण करता है, आपकी आवश्यकताओं को निर्धारित करता है और आपके लिए अनुकूलित व्यायाम की सिफारिश करता है। यह ट्रैक करता है कि किन मांसपेशियों को अधिक काम करने की आवश्यकता है।';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Hi implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'दृश्य परिणाम';
	@override String get description => 'नियमित उपयोग के साथ, चेहरे की रूपरेखा अधिक परिभाषित हो जाती है, परिसंचरण में सुधार होता है और त्वचा अधिक जीवंत दिखती है। हर दिन छोटे कदम बड़े बदलाव लाते हैं।';
}

// Path: profile.sections
class _TranslationsProfileSectionsHi implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'खाता सेटिंग्स';
	@override String get supportAndOther => 'समर्थन और अन्य';
}

// Path: profile.menu
class _TranslationsProfileMenuHi implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'प्रोफ़ाइल संपादित करें';
	@override String get notifications => 'सूचनाएं';
	@override String get premium => 'प्रीमियम';
	@override String get favoriteExercises => 'पसंदीदा व्यायाम';
	@override String get appLanguage => 'ऐप भाषा';
	@override String get shareWithFriends => 'दोस्तों के साथ साझा करें';
	@override String get enterInviteCode => 'निमंत्रण कोड दर्ज करें';
	@override String get rateUs => 'हमें रेट करें';
	@override String get faq => 'FAQ';
	@override String get logout => 'लॉग आउट';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogHi implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आप लॉग आउट करने वाले हैं';
	@override String get message => 'फिर मिलेंगे! हम आपके श्वास व्यायाम को ट्रैक करना जारी रखेंगे।';
	@override String get logoutButton => 'लॉग आउट';
	@override String get cancelButton => 'रद्द करें';
}

// Path: home.personalized
class _TranslationsHomePersonalizedHi implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'व्यक्तिगत\nचेहरा विश्लेषण\nरिपोर्ट';
	@override String get description => 'कृपया अपनी त्वचा का विश्लेषण करें\nयह पता लगाने के लिए कि यह किस प्रकार की है।';
	@override String get button => 'अभी आज़माएं';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanHi implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रीमियम प्लान';
	@override String get description => 'अपने AI चैटबॉट को अनलॉक करें और\nसभी प्रीमियम सुविधाएं प्राप्त करें';
	@override String get button => 'प्रीमियम प्राप्त करें';
	@override late final _TranslationsHomePremiumPlanDialogHi dialog = _TranslationsHomePremiumPlanDialogHi._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsHi implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'त्वरित क्रियाएं';
	@override String get programTitle => 'आपका व्यक्तिगत कार्यक्रम';
	@override String get programSubtitle => '30 दिनों में\nअपने सर्वश्रेष्ठ लुक के लिए';
	@override String get button => 'शुरू करें';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseHi implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आज का व्यायाम';
	@override String get recommended => 'अनुशंसित दिनचर्या';
	@override String get forToday => 'आज के लिए';
}

// Path: home.courses
class _TranslationsHomeCoursesHi implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherHi foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherHi._(_root);
	@override late final _TranslationsHomeCoursesVMoveHi vMove = _TranslationsHomeCoursesVMoveHi._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterHi cheekLifter = _TranslationsHomeCoursesCheekLifterHi._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsHi implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningHi naturalIroning = _TranslationsHomeBenefitsNaturalIroningHi._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectHi botoxEffect = _TranslationsHomeBenefitsBotoxEffectHi._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefHi stressRelief = _TranslationsHomeBenefitsStressReliefHi._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceHi radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceHi._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingHi dePuffing = _TranslationsHomeBenefitsDePuffingHi._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsHi implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Hi instruction1 = _TranslationsCourseDetailInstructionsInstruction1Hi._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Hi instruction2 = _TranslationsCourseDetailInstructionsInstruction2Hi._(_root);
}

// Path: personalProgram.objectives
class _TranslationsPersonalProgramObjectivesHi implements TranslationsPersonalProgramObjectivesEn {
	_TranslationsPersonalProgramObjectivesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get tired => 'Tired and worn-out look';
	@override String get harsh => 'Harsh and tense expression';
	@override String get pale => 'Pale and lifeless skin';
	@override String get asymmetrical => 'Asymmetrical facial features';
	@override String get general => 'No obvious problem, I want general care';
}

// Path: personalProgram.feelings
class _TranslationsPersonalProgramFeelingsHi implements TranslationsPersonalProgramFeelingsEn {
	_TranslationsPersonalProgramFeelingsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get lightened => 'Lightened';
	@override String get revitalized => 'Revitalized';
	@override String get refreshed => 'Refreshed';
	@override String get energetic => 'More energetic';
}

// Path: personalProgram.times
class _TranslationsPersonalProgramTimesHi implements TranslationsPersonalProgramTimesEn {
	_TranslationsPersonalProgramTimesHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get morning => 'Morning';
	@override String get duringDay => 'During the day';
	@override String get evening => 'Evening';
	@override String get anytime => 'Time doesn\'t matter, a reminder is enough';
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingHi implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'विश्लेषण';
	@override String get description => 'आपकी अनूठी विशेषताओं का विश्लेषण';
	@override String get detail => 'आपकी व्यक्तिगत दिनचर्या के लिए त्वचा की बनावट, मांसपेशियों की टोन और फोकस क्षेत्र का पता लगाना।';
	@override String get aiEngineWorking => 'AI इंजन काम कर रहा है';
}

// Path: facialScan.result
class _TranslationsFacialScanResultHi implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपका विश्लेषण तैयार है!';
	@override String get subtitle => 'हमने आपके परिणामों के आधार पर एक दिनचर्या बनाई है।';
	@override String get skinType => 'त्वचा का प्रकार';
	@override String get primaryGoal => 'प्राथमिक लक्ष्य';
	@override String get recommended => 'आपके लिए अनुशंसित';
	@override String get back => 'पीछे';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsHi implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get front => 'फ्रेम के भीतर अपना चेहरा रखें';
	@override String get left => 'अपना सिर बाईं ओर घुमाएं';
	@override String get right => 'अपना सिर दाईं ओर घुमाएं';
	@override String get lighting => 'सुनिश्चित करें कि आप बेहतर परिणामों के लिए अच्छी तरह से प्रकाशित वातावरण में हैं';
	@override String get tapToCapture => 'फ़ोटो लेने के लिए कैमरा बटन टैप करें';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsHi implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'फोटो लेने के लिए कैमरा अनुमति आवश्यक है।';
	@override String get cameraPermissionRequired => 'कैमरा अनुमति आवश्यक';
	@override String get cameraPermissionMessage => 'चेहरा स्कैन के लिए कैमरा अनुमति आवश्यक है। कृपया इसे ऐप सेटिंग्स में सक्षम करें।';
	@override String get openSettings => 'सेटिंग्स खोलें';
	@override String get cancel => 'रद्द करें';
	@override String get noFaceDetected => 'कोई चेहरा नहीं मिला। कृपया पुनः प्रयास करें।';
	@override String get captureFailed => 'छवि कैप्चर करने में विफल। कृपया पुनः प्रयास करें।';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsHi implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get front => 'सामने';
	@override String get left => 'बाएँ';
	@override String get right => 'दाएँ';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessHi implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सफल!';
	@override String get message => 'रेफरल कोड सफलतापूर्वक लागू किया गया! आपको और आपके मित्र को 1 सप्ताह का प्रीमियम मिला है।';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsHi implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeHi missingCode = _TranslationsReferralCodeErrorsMissingCodeHi._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatHi invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatHi._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedHi alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedHi._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralHi selfReferral = _TranslationsReferralCodeErrorsSelfReferralHi._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundHi codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundHi._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorHi genericError = _TranslationsReferralCodeErrorsGenericErrorHi._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialHi implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सख्ती से आवश्यक कुकीज़';
	@override String get content => 'बुनियादी ऐप कार्यों के लिए आवश्यक। वे सत्र प्रबंधन, सुरक्षा और बुनियादी नेविगेशन जैसी मुख्य प्रक्रियाओं का समर्थन करते हैं।';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceHi implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्रदर्शन और विश्लेषण कुकीज़';
	@override String get content => 'हमें यह समझने में मदद करती हैं कि किन क्षेत्रों का सबसे अधिक उपयोग किया जाता है और किन अनुभागों में सुधार की आवश्यकता है।';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationHi implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'निजीकरण कुकीज़';
	@override String get content => 'भाषा, थीम और व्यायाम वरीयताओं जैसी सेटिंग्स को याद करके एक अधिक व्यक्तिगत अनुभव प्रदान करती हैं।';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingHi implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'विपणन और विज्ञापन कुकीज़';
	@override String get content => 'आपकी रुचियों के लिए अधिक उपयुक्त सामग्री और प्रचार प्रदान करने के लिए उपयोग की जा सकती हैं और कभी-कभी तीसरे पक्ष की सेवाओं के साथ काम करती हैं।';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Hi implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. उपयोगकर्ता द्वारा प्रदान किया गया डेटा';
	@override List<String> get items => [
		'नाम, उपनाम या प्रोफ़ाइल जानकारी',
		'ईमेल पता (पंजीकरण, खरीद और समर्थन के लिए)',
		'व्यायाम योजनाएं, प्राथमिकताएं और निजीकरण सेटिंग्स',
		'फीडबैक, अनुरोध और समर्थन संदेश',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Hi implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. स्वचालित रूप से एकत्रित डेटा';
	@override List<String> get items => [
		'डिवाइस का प्रकार, ऑपरेटिंग सिस्टम और तकनीकी जानकारी',
		'अनुमानित स्थान डेटा (शहर/देश स्तर)',
		'उपयोग जानकारी जैसे सत्र की अवधि और स्क्रीन इंटरैक्शन',
		'प्रदर्शन, त्रुटि और क्रैश लॉग',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Hi implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace क्या है?';
	@override String get answer => 'YogiFace एक AI संचालित व्यक्तिगत देखभाल ऐप है जो चेहरे की मांसपेशियों को काम करके त्वचा की उपस्थिति में सुधार करने के लिए फेशियल योगा व्यायाम प्रदान करता है।';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Hi implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या ऐप वास्तव में काम करता है?';
	@override String get answer => 'हाँ। फेशियल योगा चेहरे की मांसपेशियों को सक्रिय करता है ताकि त्वचा की दृढ़ता बढ़े, परिसंचरण में तेजी आए और नियमित उपयोग के साथ अधिक युवा उपस्थिति प्रदान की जा सके।';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Hi implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'आर्टिफिशियल इंटेलिजेंस यहाँ क्या करता है?';
	@override String get answer => 'YogiFace चेहरे की विशेषताओं का विश्लेषण करता है, लक्ष्य क्षेत्रों की पहचान करता है और एक व्यक्तिगत व्यायाम योजना बनाता है। इस तरह, प्रत्येक आंदोलन व्यक्तिगत आवश्यकताओं के अनुसार अनुकूलित होता है।';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Hi implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'मुझे हर दिन कितना समय समर्पित करने की आवश्यकता है?';
	@override String get answer => 'दिन में केवल 5-10 मिनट ही काफी हैं। नियमित अभ्यास के साथ, कुछ ही हफ्तों में दृश्य परिवर्तन शुरू हो जाते हैं।';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Hi implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'मुझे परिणाम कब दिखाई देंगे?';
	@override String get answer => 'नियमित उपयोग के साथ, त्वचा की रंगत में सुधार 2-3 सप्ताह के भीतर दिखाई देता है, और चेहरे की विशेषताएं 4-6 सप्ताह के भीतर अधिक परिभाषित हो जाती हैं। परिणाम व्यक्ति से दूसरे व्यक्ति में भिन्न हो सकते हैं।';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Hi implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या यह डबल चिन या सैगिंग जैसी समस्याओं के लिए काम करता है?';
	@override String get answer => 'हाँ। YogiFace जबड़े की रेखा, गाल की मांसपेशियों और गर्दन के क्षेत्र के लिए लक्षित व्यायाम प्रदान करता है। जब नियमित रूप से किया जाता है, तो ये व्यायाम इन क्षेत्रों में महत्वपूर्ण कसाव प्रदान करते हैं।';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Hi implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'मुझे कैसे पता चलेगा कि मैं आंदोलनों को सही तरीके से कर रहा हूँ?';
	@override String get answer => 'ऐप आपके चेहरे के कोण, अभिव्यक्ति और आंदोलन पैटर्न का विश्लेषण करने के लिए AI का उपयोग करता है; यह आपको किसी भी गलत बिंदु के बारे में सूचित करता है।';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Hi implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या यह सभी उम्र के लिए उपयुक्त है?';
	@override String get answer => 'हाँ। फेशियल योगा एक गैर-इनवेसिव प्राकृतिक तरीका है। हर कोई कम उम्र से सुरक्षित रूप से इसका अभ्यास कर सकता है।';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Hi implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या YogiFace मुफ़्त है?';
	@override String get answer => 'बुनियादी व्यायाम मुफ़्त हैं। व्यक्तिगत कार्यक्रम, उन्नत चेहरे का विश्लेषण और विशेष AI सिफारिशें प्रीमियम पैकेज में शामिल हैं।';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Hi implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get question => 'क्या जिन लोगों ने प्लास्टिक सर्जरी कराई है वे इसका उपयोग कर सकते हैं?';
	@override String get answer => 'कई उपयोगकर्ता सुरक्षित रूप से इसका उपयोग करते हैं, लेकिन ऑपरेशन के बाद रिकवरी अवधि के दौरान डॉक्टर से परामर्श करने की सिफारिश की जाती है।';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogHi implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'सुविधा उपलब्ध नहीं है';
	@override String get message => 'यह सुविधा वर्तमान में उपलब्ध नहीं है।';
	@override String get button => 'ठीक है';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherHi implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'माथा स्मूदर';
	@override String get description => 'यह आंदोलन माथे की मांसपेशियों में तनाव और संचित भ्रूभंग रेखाओं को छोड़ता है...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveHi implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => '"V" मूव';
	@override String get description => 'आंखों के चारों ओर नाजुक त्वचा को मजबूत करता है, झुकती पलकों को उठाता है और थकान के संकेतों को मिटाता है।';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterHi implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'चीक लिफ्टर';
	@override String get description => 'गाल की मांसपेशियों (ज़ाइगोमैटिक) को उठाता है जो गुरुत्वाकर्षण के लिए सबसे अधिक प्रवण हैं, चेहरे के अंडाकार को बहाल करते हैं।';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningHi implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'प्राकृतिक इस्त्री:';
	@override String get description => 'माथे पर क्षैतिज रेखाओं को खोलता है और उन्हें गहरा होने से रोकता है।';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectHi implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'बोटोक्स प्रभाव';
	@override String get description => 'तनावग्रस्त मांसपेशियों को आराम देता है और भ्रूभंग करने की आदत को तोड़ता है।';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefHi implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'तनाव से राहत';
	@override String get description => 'माथे पर जमा तनाव से राहत देता है और सिरदर्द को कम करता है।';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceHi implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'उज्ज्वल उपस्थिति';
	@override String get description => 'रक्त परिसंचरण को बढ़ाता है जिससे त्वचा में चमक आती है।';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingHi implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'डी-पफ़िंग';
	@override String get description => 'इसके लसीका जल निकासी प्रभाव के माध्यम से चेहरे की सूजन को कम करता है।';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Hi implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अपने हाथ और चेहरा धोएं';
	@override String get description => 'साफ त्वचा मालिश को अधिक प्रभावी बनाती है।';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Hi implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Hi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'फेस ऑयल या मॉइस्चराइज़र लगाएं';
	@override String get description => 'अपनी त्वचा को खींचे बिना आसानी से ग्लाइड करें।';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeHi implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कोड आवश्यक';
	@override String get message => 'जारी रखने के लिए कृपया रेफरल कोड दर्ज करें।';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatHi implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अमान्य प्रारूप';
	@override String get message => 'रेफरल कोड ठीक 8 वर्णों का होना चाहिए।';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedHi implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'पहले से उपयोग किया गया';
	@override String get message => 'आपने पहले ही एक रेफरल कोड का उपयोग कर लिया है। प्रत्येक उपयोगकर्ता केवल एक कोड का उपयोग कर सकता है।';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralHi implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'अमान्य कोड';
	@override String get message => 'आप अपने स्वयं के आमंत्रण कोड का उपयोग नहीं कर सकते। कृपया किसी मित्र के कोड का उपयोग करें।';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundHi implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'कोड नहीं मिला';
	@override String get message => 'दर्ज किया गया रेफरल कोड मौजूद नहीं है। कृपया जांचें और पुनः प्रयास करें।';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorHi implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorHi._(this._root);

	final TranslationsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'त्रुटि';
	@override String get message => 'रेफरल कोड लागू करते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।';
}

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'स्वागत है ${name}',
			'welcome2' => 'स्वागत है',
			'get_started' => 'शुरू करें',
			'next' => 'अगला',
			'back' => 'पीछे',
			'skip' => 'छोड़ें',
			'logintext' => 'आपको देखकर खुशी हुई। आप अपने खाते में लॉग इन करके जहां छोड़ा था वहीं से जारी रख सकते हैं।',
			'termOfService.text1' => 'swipe पर साइन अप करके, आप हमारी ',
			'termOfService.link1' => 'सेवा की शर्तों',
			'termOfService.text2' => ' से सहमत हैं। जानें कि हम आपका डेटा कैसे प्रोसेस करते हैं हमारी ',
			'termOfService.link2' => 'गोपनीयता नीति',
			'termOfService.text3' => ' और ',
			'termOfService.link3' => 'कुकी नीति',
			'termOfService.text4' => '',
			'cookies' => 'कुकी नीति',
			'privacy' => 'गोपनीयता नीति',
			'termsOfService.title' => 'Yogiface – सेवा की शर्तें',
			'termsOfService.lastUpdated' => 'अंतिम अपडेट: 2025',
			'termsOfService.principle' => 'Yogiface एक वेलनेस एप्लिकेशन है जो चेहरे की मांसपेशियों को सहारा देने के लिए फेशियल योगा व्यायाम और निर्देशित सामग्री प्रदान करता है। एप्लिकेशन चिकित्सा, नैदानिक, सौंदर्य या पेशेवर स्वास्थ्य सेवाएं प्रदान नहीं करता है।',
			'termsOfService.intro' => 'इन सेवा की शर्तों ("शर्तें") में आपके Yogiface मोबाइल एप्लिकेशन ("एप्लिकेशन") के उपयोग पर लागू नियम शामिल हैं। एप्लिकेशन का उपयोग करके, आप इन शर्तों से सहमत हैं। यदि आप शर्तों से सहमत नहीं हैं, तो आपको एप्लिकेशन का उपयोग नहीं करना चाहिए।',
			'termsOfService.section1.title' => '1. सेवा का दायरा',
			'termsOfService.section1.content' => 'Yogiface उपयोगकर्ताओं को निर्देशित फेशियल योगा और व्यायाम का अनुभव प्रदान करता है। एप्लिकेशन में शामिल हैं:',
			'termsOfService.section1.items.0' => 'फेशियल योगा और व्यायाम गाइड',
			'termsOfService.section1.items.1' => 'दैनिक और साप्ताहिक व्यायाम दिनचर्या',
			'termsOfService.section1.items.2' => 'विशिष्ट चेहरे के क्षेत्रों के लिए लक्षित सिफारिशें',
			'termsOfService.section1.items.3' => 'अनुकूलन योग्य योजनाएं और प्रगति ट्रैकिंग',
			'termsOfService.section1.note' => 'प्रदान की गई सामग्री पेशेवर, चिकित्सा या सौंदर्य सलाह, निदान या उपचार का गठन नहीं करती है।',
			'termsOfService.section2.title' => '2. उपयोग की शर्तें',
			'termsOfService.section2.items.0' => 'आपकी आयु कम से कम 13 वर्ष होनी चाहिए।',
			'termsOfService.section2.items.1' => 'आपको सटीक और अद्यतित खाता जानकारी प्रदान करनी होगी।',
			'termsOfService.section2.items.2' => 'आप स्वीकार करते हैं कि व्यायाम कोई चिकित्सा सेवा नहीं है।',
			'termsOfService.section3.title' => '3. निषिद्ध उपयोग',
			'termsOfService.section3.items.0' => 'वैध गतिविधियों के लिए ऐप का उपयोग करना।',
			'termsOfService.section3.items.1' => 'बिना अनुमति के सामग्री बेचना, पुनरुत्पादन करना या वितरित करना।',
			'termsOfService.section3.items.2' => 'अनधिकृत पहुंच, हैकिंग या रिवर्स इंजीनियरिंग प्रयास।',
			'termsOfService.section4.title' => '4. खाता और सदस्यता',
			'termsOfService.section4.content' => 'आप अपने खाते की सुरक्षा के लिए जिम्मेदार हैं। Yogiface शर्तों के विपरीत उपयोग का पता चलने पर खातों को निलंबित या बंद करने का अधिकार सुरक्षित रखता है।',
			'termsOfService.section5.title' => '5. प्रीमियम और सशुल्क सेवाएं',
			'termsOfService.section5.items.0' => 'मूल्य निर्धारण ऐप स्टोर और गूगल प्ले नीतियों पर आधारित है।',
			'termsOfService.section5.items.1' => 'सदस्यता स्वचालित रूप से नवीनीकृत हो सकती है; रद्दीकरण स्टोर सेटिंग्स के माध्यम से किया जाता है।',
			'termsOfService.section6.title' => '6. अस्वीकरण',
			'termsOfService.section6.content' => 'उपयोगकर्ता अपनी जिम्मेदारी पर व्यायाम करते हैं। स्वास्थ्य समस्याओं के मामले में, उपयोगकर्ताओं को स्वास्थ्य पेशेवर से परामर्श करना चाहिए। ऐप का उपयोग निदान या उपचार के लिए नहीं किया जाना चाहिए।',
			'termsOfService.section7.title' => '7. बौद्धिक संपदा',
			'termsOfService.section7.content' => 'डिजाइन, सॉफ्टवेयर, चित्र और व्यायाम सामग्री Yogiface की है। अनधिकृत प्रतिलिपि या स्रोत कोड संशोधन प्रतिबंधित है।',
			'termsOfService.section12.title' => '12. शासी कानून',
			'termsOfService.section12.content' => 'ये शर्तें तुर्की गणराज्य के कानूनों द्वारा शासित होती हैं। इस्तांबुल केंद्रीय न्यायालयों का विवादों पर अधिकार क्षेत्र है।',
			'termsOfService.section13.title' => '13. संपर्क',
			'termsOfService.section13.email' => '📩 ईमेल: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – कुकी नीति',
			'cookiesPolicy.lastUpdated' => 'अंतिम अपडेट: 2025',
			'cookiesPolicy.intro' => 'Yogiface में आपका स्वागत है! हर बार जब आप ऐप पर आते हैं, तो हम आपके अनुभव को बेहतर और निजीकृत करने के लिए डिजिटल सहायक (कुकीज़) का उपयोग करते हैं। यह नीति बताती है कि आप अपनी प्राथमिकताओं को कैसे प्रबंधित कर सकते हैं।',
			'cookiesPolicy.section1.title' => '1. कुकीज़ क्या हैं?',
			'cookiesPolicy.section1.content' => 'कुकीज़ आपके डिवाइस पर रखी गई छोटी डेटा फ़ाइलें हैं। वे हमें यह समझने में मदद करती हैं कि आप ऐप का उपयोग कैसे करते हैं और आपके अनुभव को अधिक सुगम बनाते हैं। कुकीज़ में सीधे आपकी पहचान नहीं होती है; वे आपकी प्राथमिकताओं और उपयोग की आदतों को याद रखने वाले डिजिटल सहायक के रूप में कार्य करते हैं।',
			'cookiesPolicy.section2.title' => '2. हम किन कुकीज़ का उपयोग करते हैं?',
			'cookiesPolicy.section2.essential.title' => 'सख्ती से आवश्यक कुकीज़',
			'cookiesPolicy.section2.essential.content' => 'बुनियादी ऐप कार्यों के लिए आवश्यक। वे सत्र प्रबंधन, सुरक्षा और बुनियादी नेविगेशन जैसी मुख्य प्रक्रियाओं का समर्थन करते हैं।',
			'cookiesPolicy.section2.performance.title' => 'प्रदर्शन और विश्लेषण कुकीज़',
			'cookiesPolicy.section2.performance.content' => 'हमें यह समझने में मदद करती हैं कि किन क्षेत्रों का सबसे अधिक उपयोग किया जाता है और किन अनुभागों में सुधार की आवश्यकता है।',
			'cookiesPolicy.section2.personalization.title' => 'निजीकरण कुकीज़',
			'cookiesPolicy.section2.personalization.content' => 'भाषा, थीम और व्यायाम वरीयताओं जैसी सेटिंग्स को याद करके एक अधिक व्यक्तिगत अनुभव प्रदान करती हैं।',
			'cookiesPolicy.section2.marketing.title' => 'विपणन और विज्ञापन कुकीज़',
			'cookiesPolicy.section2.marketing.content' => 'आपकी रुचियों के लिए अधिक उपयुक्त सामग्री और प्रचार प्रदान करने के लिए उपयोग की जा सकती हैं और कभी-कभी तीसरे पक्ष की सेवाओं के साथ काम करती हैं।',
			'cookiesPolicy.section3.title' => '3. हम कुकीज़ का उपयोग क्यों करते हैं?',
			'cookiesPolicy.section3.items.0' => 'यह सुनिश्चित करने के लिए कि ऐप तेज और सुचारू रूप से चले',
			'cookiesPolicy.section3.items.1' => 'उपयोगकर्ता की प्राथमिकताओं को याद करके दोहराव वाली क्रियाओं को कम करने के लिए',
			'cookiesPolicy.section3.items.2' => 'अनुभव को अधिक व्यक्तिगत और उपयोगी बनाने के लिए',
			'cookiesPolicy.section3.items.3' => 'उपयोग डेटा का विश्लेषण करके ऐप को बेहतर बनाने के लिए',
			'cookiesPolicy.section4.title' => '4. तृतीय-पक्ष कुकीज़',
			'cookiesPolicy.section4.content' => 'कुछ कुकीज़ विश्लेषणात्मक और विज्ञापन सेवाएं प्रदान करने वाले तृतीय-पक्ष भागीदारों द्वारा रखी जा सकती हैं। ये प्रदाताओं की अपनी गोपनीयता और कुकी नीतियों के अधीन हैं।',
			'cookiesPolicy.section5.title' => '5. कुकी नियंत्रण और प्रबंधन',
			'cookiesPolicy.section5.content' => 'आप डिवाइस सेटिंग्स, ऐप अनुमतियों या सिस्टम सेटिंग्स के माध्यम से कुकीज़ का प्रबंधन कर सकते हैं। आवश्यक कुकीज़ को अक्षम करने से ऐप के कुछ हिस्से खराब हो सकते हैं।',
			'cookiesPolicy.section6.title' => '6. डेटा उपयोग',
			'cookiesPolicy.section6.content' => 'कुकीज़ के माध्यम से प्राप्त डेटा, यदि व्यक्तिगत डेटा के रूप में योग्य है, तो गोपनीयता नीति के अनुसार कानूनी ढांचे के भीतर संसाधित किया जाता है।',
			'cookiesPolicy.section7.title' => '7. नीति अद्यतन',
			'cookiesPolicy.section7.content' => 'तकनीकी और कानूनी परिवर्तनों के आधार पर यह नीति अपडेट की जा सकती है। वर्तमान संस्करण प्रकाशित होते ही प्रभावी हो जाता है।',
			'cookiesPolicy.section8.title' => '8. संपर्क',
			'cookiesPolicy.section8.email' => '📩 ईमेल: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – गोपनीयता नीति',
			'privacyPolicy.lastUpdated' => 'अंतिम अपडेट: 2025',
			'privacyPolicy.intro' => 'यह गोपनीयता नीति Yogiface मोबाइल एप्लिकेशन ("ऐप") का उपयोग करने वाले सभी उपयोगकर्ताओं के व्यक्तिगत डेटा के संग्रह, उपयोग, भंडारण और सुरक्षा से संबंधित सिद्धांतों की व्याख्या करती है। ऐप का उपयोग करके, आप इस नीति को स्वीकार करते हैं।',
			'privacyPolicy.principle' => 'Yogiface उपयोगकर्ता गोपनीयता और डेटा सुरक्षा को एक मुख्य सिद्धांत के रूप में अपनाता है। सभी व्यक्तिगत डेटा GDPR और प्रासंगिक कानून के अनुसार संसाधित किए जाते हैं।',
			'privacyPolicy.section1.title' => '1. एकत्रित जानकारी',
			'privacyPolicy.section1.sub1.title' => '1.1. उपयोगकर्ता द्वारा प्रदान किया गया डेटा',
			'privacyPolicy.section1.sub1.items.0' => 'नाम, उपनाम या प्रोफ़ाइल जानकारी',
			'privacyPolicy.section1.sub1.items.1' => 'ईमेल पता (पंजीकरण, खरीद और समर्थन के लिए)',
			'privacyPolicy.section1.sub1.items.2' => 'व्यायाम योजनाएं, प्राथमिकताएं और निजीकरण सेटिंग्स',
			'privacyPolicy.section1.sub1.items.3' => 'फीडबैक, अनुरोध और समर्थन संदेश',
			'privacyPolicy.section1.sub2.title' => '1.2. स्वचालित रूप से एकत्रित डेटा',
			'privacyPolicy.section1.sub2.items.0' => 'डिवाइस का प्रकार, ऑपरेटिंग सिस्टम और तकनीकी जानकारी',
			'privacyPolicy.section1.sub2.items.1' => 'अनुमानित स्थान डेटा (शहर/देश स्तर)',
			'privacyPolicy.section1.sub2.items.2' => 'उपयोग जानकारी जैसे सत्र की अवधि और स्क्रीन इंटरैक्शन',
			'privacyPolicy.section1.sub2.items.3' => 'प्रदर्शन, त्रुटि और क्रैश लॉग',
			'privacyPolicy.section2.title' => '2. डेटा उपयोग के उद्देश्य',
			'privacyPolicy.section2.items.0' => 'ऐप का निर्बाध संचालन सुनिश्चित करने के लिए',
			'privacyPolicy.section2.items.1' => 'फेशियल योगा अनुभव को निजीकृत और अनुकूलित करने के लिए',
			'privacyPolicy.section2.items.2' => 'त्रुटि का पता लगाने और प्रदर्शन विश्लेषण करने के लिए',
			'privacyPolicy.section2.items.3' => 'उपयोगकर्ता की मांगों और समर्थन अनुरोधों का जवाब देने के लिए',
			'privacyPolicy.section2.note' => 'महत्वपूर्ण: उपयोगकर्ता डेटा कभी भी तीसरे पक्ष को नहीं बेचा जाता है।',
			'privacyPolicy.section3.title' => '3. डेटा प्रतिधारण',
			'privacyPolicy.section3.items.0' => 'डेटा तब तक संग्रहीत किया जाता है जब तक उपयोगकर्ता खाता सक्रिय है।',
			'privacyPolicy.section3.items.1' => 'जब कोई खाता हटा दिया जाता है, तो व्यक्तिगत डेटा अपरिवर्तनीय रूप से हटा दिया जाता है।',
			'privacyPolicy.section3.items.2' => 'समर्थन रिकॉर्ड पूरा होने के बाद अधिकतम 12 महीने तक रखे जाते हैं।',
			'privacyPolicy.section4.title' => '4. डेटा साझा करना',
			'privacyPolicy.section4.content' => 'आपका डेटा केवल कानूनी आवश्यकताओं (आधिकारिक अनुरोध), सेवा प्रदाताओं (क्लाउड इंफ्रास्ट्रक्चर, एनालिटिक्स) या उपयोगकर्ता की स्पष्ट सहमति के मामले में साझा किया जाता है।',
			'privacyPolicy.section5.title' => '5. कुकीज़ और सुरक्षा',
			'privacyPolicy.section5.content' => 'Yogiface प्रदर्शन और अनुभव को बेहतर बनाने के लिए कुकीज़ का उपयोग कर सकता है। आपका डेटा SSL/TLS एन्क्रिप्शन और नियमित सुरक्षा ऑडिट द्वारा सुरक्षित है।',
			'privacyPolicy.section6.title' => '6. उपयोगकर्ता अधिकार',
			'privacyPolicy.section6.content' => 'आपको डेटा प्रोसेसिंग तक पहुंचने, सही करने, हटाने और प्रतिबंधित करने का अधिकार है।',
			'privacyPolicy.section6.contact' => 'अनुरोधों के लिए:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. बच्चों की गोपनीयता',
			'privacyPolicy.section8.content' => 'Yogiface 13 वर्ष से कम उम्र के व्यक्तियों के लिए अभिप्रेत नहीं है। यदि इस आयु वर्ग से कोई डेटा एकत्र किया जाता है, तो उसे पता चलने पर तुरंत हटा दिया जाएगा।',
			'privacyPolicy.section10.title' => '10. संपर्क',
			'privacyPolicy.section10.email' => '📩 ईमेल: support@fly-work.com',
			'onboarding.basicInformation' => 'बुनियादी जानकारी',
			'onboarding.target' => 'लक्ष्य',
			'onboarding.habits' => 'आदतें',
			'onboarding.step' => 'चरण',
			'onboarding.of' => 'का',
			'onboarding.tellUsAboutYourself' => 'अपने बारे में बताएं',
			'onboarding.shortBioDescription' => 'एक संक्षिप्त परिचय दूसरों को आपको वास्तव में जानने में मदद करता है। इसे मजेदार और वास्तविक रखें',
			'onboarding.enterYourFullname' => 'अपना पूरा नाम दर्ज करें',
			'onboarding.fullName' => 'पूरा नाम',
			'onboarding.male' => 'पुरुष',
			'onboarding.female' => 'महिला',
			'onboarding.dontWantToMention' => 'उल्लेख नहीं करना चाहते',
			'onboarding.whatIsMainObjective' => 'मुख्य उद्देश्य क्या है?',
			'onboarding.reduceWrinkles' => 'झुर्रियां कम करें',
			'onboarding.tightenSkin' => 'त्वचा को कस लें',
			'onboarding.liftDroopyEyelids' => 'झुकती पलकों को उठाएं',
			'onboarding.eliminateDoubleChin' => 'डबल चिन हटा दें',
			'onboarding.brightenSkinTone' => 'त्वचा की रंगत निखारें',
			'onboarding.allOfTheAbove' => 'उपरोक्त सभी',
			'onboarding.whichAreaToImprove' => 'आप किस क्षेत्र में सुधार करना चाहेंगे?',
			'onboarding.forehead' => 'माथा',
			'onboarding.eyes' => 'आंखें',
			'onboarding.nose' => 'नाक',
			'onboarding.cheeks' => 'गाल',
			'onboarding.lips' => 'होंठ',
			'onboarding.jawline' => 'जबड़े की रेखा',
			'onboarding.neck' => 'गर्दन',
			'onboarding.fullface' => 'पूरा चेहरा',
			'onboarding.whatFaceShapeAiming' => 'आप किस चेहरे के आकार का लक्ष्य बना रहे हैं?',
			'onboarding.heart' => 'दिल',
			'onboarding.oval' => 'अंडाकार',
			'onboarding.square' => 'चौकोर',
			'onboarding.round' => 'गोल',
			'onboarding.diamond' => 'हीरा',
			'onboarding.whatIsYourSkinType' => 'आपकी त्वचा का प्रकार क्या है?',
			'onboarding.normal' => 'सामान्य',
			'onboarding.oily' => 'तैलिये',
			'onboarding.dry' => 'सूखी',
			'onboarding.combination' => 'मिश्रित',
			'onboarding.sensitive' => 'संवेदनशील',
			'onboarding.whichOfThemDoYouHave' => 'इनमें से कौन सा आपके पास है?',
			'onboarding.acneAndPimples' => 'मुंहासे और फुंसियां',
			'onboarding.redness' => 'लालिमा',
			'onboarding.swelling' => 'सूजन',
			'onboarding.wrinkles' => 'झुर्रियां',
			'onboarding.neckLines' => 'गर्दन की रेखाएं',
			'onboarding.howOftenWearMakeup' => 'आप कितनी बार मेकअप करती हैं?',
			'onboarding.everyDay' => 'प्रतिदिन',
			'onboarding.fewDaysAWeek' => 'सप्ताह में कुछ दिन',
			'onboarding.occasionally' => 'कभी-कभार',
			'onboarding.never' => 'कभी नहीं',
			'onboarding.haveYouHadBotox' => 'क्या आपने बोटोक्स कराया है?',
			'onboarding.yes' => 'हाँ',
			'onboarding.no' => 'नहीं',
			'onboarding.creatingPersonalizedProfile' => 'आपका व्यक्तिगत प्रोफ़ाइल बना रहा है',
			'onboarding.tailoringExperience' => 'हम आपकी प्राथमिकताओं के आधार पर आपके अनुभव को अनुकूलित कर रहे हैं...',
			'onboarding.gender' => 'लिंग',
			'onboarding.age' => 'आयु',
			'onboarding.weight' => 'वजन',
			'onboarding.height' => 'कद',
			'onboarding.matchingPersonalities' => 'व्यक्तित्व मिलान',
			'pressBackAgainToExit' => 'बाहर निकलने के लिए फिर से वापस दबाएं',
			'addedToFavoritesTitle' => 'व्यायाम सफलतापूर्वक पसंदीदा में जोड़ा गया!',
			'removedFromFavoritesTitle' => 'व्यायाम सफलतापूर्वक पसंदीदा से हटाया गया!',
			'removedFromFavorites' => 'आप उन अन्य व्यायामों तक पहुंच सकते हैं जिन्हें आप पाठ्यक्रमों से जोड़ना चाहते हैं',
			'faq.title' => 'सामान्य प्रश्न',
			'faq.questions.q1.question' => 'YogiFace क्या है?',
			'faq.questions.q1.answer' => 'YogiFace एक AI संचालित व्यक्तिगत देखभाल ऐप है जो चेहरे की मांसपेशियों को काम करके त्वचा की उपस्थिति में सुधार करने के लिए फेशियल योगा व्यायाम प्रदान करता है।',
			'faq.questions.q2.question' => 'क्या ऐप वास्तव में काम करता है?',
			'faq.questions.q2.answer' => 'हाँ। फेशियल योगा चेहरे की मांसपेशियों को सक्रिय करता है ताकि त्वचा की दृढ़ता बढ़े, परिसंचरण में तेजी आए और नियमित उपयोग के साथ अधिक युवा उपस्थिति प्रदान की जा सके।',
			'faq.questions.q3.question' => 'आर्टिफिशियल इंटेलिजेंस यहाँ क्या करता है?',
			'faq.questions.q3.answer' => 'YogiFace चेहरे की विशेषताओं का विश्लेषण करता है, लक्ष्य क्षेत्रों की पहचान करता है और एक व्यक्तिगत व्यायाम योजना बनाता है। इस तरह, प्रत्येक आंदोलन व्यक्तिगत आवश्यकताओं के अनुसार अनुकूलित होता है।',
			'faq.questions.q4.question' => 'मुझे हर दिन कितना समय समर्पित करने की आवश्यकता है?',
			'faq.questions.q4.answer' => 'दिन में केवल 5-10 मिनट ही काफी हैं। नियमित अभ्यास के साथ, कुछ ही हफ्तों में दृश्य परिवर्तन शुरू हो जाते हैं।',
			'faq.questions.q5.question' => 'मुझे परिणाम कब दिखाई देंगे?',
			'faq.questions.q5.answer' => 'नियमित उपयोग के साथ, त्वचा की रंगत में सुधार 2-3 सप्ताह के भीतर दिखाई देता है, और चेहरे की विशेषताएं 4-6 सप्ताह के भीतर अधिक परिभाषित हो जाती हैं। परिणाम व्यक्ति से दूसरे व्यक्ति में भिन्न हो सकते हैं।',
			'faq.questions.q6.question' => 'क्या यह डबल चिन या सैगिंग जैसी समस्याओं के लिए काम करता है?',
			'faq.questions.q6.answer' => 'हाँ। YogiFace जबड़े की रेखा, गाल की मांसपेशियों और गर्दन के क्षेत्र के लिए लक्षित व्यायाम प्रदान करता है। जब नियमित रूप से किया जाता है, तो ये व्यायाम इन क्षेत्रों में महत्वपूर्ण कसाव प्रदान करते हैं।',
			'faq.questions.q7.question' => 'मुझे कैसे पता चलेगा कि मैं आंदोलनों को सही तरीके से कर रहा हूँ?',
			'faq.questions.q7.answer' => 'ऐप आपके चेहरे के कोण, अभिव्यक्ति और आंदोलन पैटर्न का विश्लेषण करने के लिए AI का उपयोग करता है; यह आपको किसी भी गलत बिंदु के बारे में सूचित करता है।',
			'faq.questions.q8.question' => 'क्या यह सभी उम्र के लिए उपयुक्त है?',
			'faq.questions.q8.answer' => 'हाँ। फेशियल योगा एक गैर-इनवेसिव प्राकृतिक तरीका है। हर कोई कम उम्र से सुरक्षित रूप से इसका अभ्यास कर सकता है।',
			'faq.questions.q9.question' => 'क्या YogiFace मुफ़्त है?',
			'faq.questions.q9.answer' => 'बुनियादी व्यायाम मुफ़्त हैं। व्यक्तिगत कार्यक्रम, उन्नत चेहरे का विश्लेषण और विशेष AI सिफारिशें प्रीमियम पैकेज में शामिल हैं।',
			'faq.questions.q10.question' => 'क्या जिन लोगों ने प्लास्टिक सर्जरी कराई है वे इसका उपयोग कर सकते हैं?',
			'faq.questions.q10.answer' => 'कई उपयोगकर्ता सुरक्षित रूप से इसका उपयोग करते हैं, लेकिन ऑपरेशन के बाद रिकवरी अवधि के दौरान डॉक्टर से परामर्श करने की सिफारिश की जाती है।',
			'full_face' => 'पूरा चेहरा / सामान्य पुनरोद्धार',
			'eye_area' => 'आंखें और आंख का क्षेत्र',
			'nose_area' => 'नाक और नाक का क्षेत्र',
			'cheeks_mid_face' => 'गाल और मध्य चेहरा',
			'lip_area' => 'होंठ और मुंह का क्षेत्र',
			'jawline_chin' => 'जबड़े की रेखा, ठोड़ी और डबल चिन',
			'forehead_brow' => 'माथा और भौहें क्षेत्र',
			'neck_decollete' => 'गर्दन और डेकोलेटी',
			'good_morning' => 'सुप्रभात',
			'good_afternoon' => 'शुभ दोपहर',
			'good_evening' => 'शुभ संध्या',
			'splash.screen1.title' => 'अपने चेहरे को प्राकृतिक रूप से आकार दें',
			'splash.screen1.description' => 'दैनिक चेहरे के व्यायाम के कुछ ही मिनटों के साथ अपनी चेहरे की मांसपेशियों को काम करें। एक प्राकृतिक, सौंदर्य और गैर-इनवेसिव सौंदर्य दिनचर्या बनाएं।',
			'splash.screen2.title' => 'AI के साथ व्यक्तिगत व्यायाम योजना',
			'splash.screen2.description' => 'AI आपकी चेहरे की विशेषताओं का विश्लेषण करता है, आपकी आवश्यकताओं को निर्धारित करता है और आपके लिए अनुकूलित व्यायाम की सिफारिश करता है। यह ट्रैक करता है कि किन मांसपेशियों को अधिक काम करने की आवश्यकता है।',
			'splash.screen3.title' => 'दृश्य परिणाम',
			'splash.screen3.description' => 'नियमित उपयोग के साथ, चेहरे की रूपरेखा अधिक परिभाषित हो जाती है, परिसंचरण में सुधार होता है और त्वचा अधिक जीवंत दिखती है। हर दिन छोटे कदम बड़े बदलाव लाते हैं।',
			'profile.title' => 'प्रोफ़ाइल',
			'profile.freeVersion' => 'मुफ्त संस्करण',
			'profile.error' => 'त्रुटि',
			'profile.sections.accountSettings' => 'खाता सेटिंग्स',
			'profile.sections.supportAndOther' => 'समर्थन और अन्य',
			'profile.menu.editProfile' => 'प्रोफ़ाइल संपादित करें',
			'profile.menu.notifications' => 'सूचनाएं',
			'profile.menu.premium' => 'प्रीमियम',
			'profile.menu.favoriteExercises' => 'पसंदीदा व्यायाम',
			'profile.menu.appLanguage' => 'ऐप भाषा',
			'profile.menu.shareWithFriends' => 'दोस्तों के साथ साझा करें',
			'profile.menu.enterInviteCode' => 'निमंत्रण कोड दर्ज करें',
			'profile.menu.rateUs' => 'हमें रेट करें',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'लॉग आउट',
			'profile.manage' => 'प्रबंधित करें',
			'profile.logoutDialog.title' => 'आप लॉग आउट करने वाले हैं',
			'profile.logoutDialog.message' => 'फिर मिलेंगे! हम आपके श्वास व्यायाम को ट्रैक करना जारी रखेंगे।',
			'profile.logoutDialog.logoutButton' => 'लॉग आउट',
			'profile.logoutDialog.cancelButton' => 'रद्द करें',
			'home.premium' => 'प्रीमियम!',
			'home.focusAreas' => 'फोकस क्षेत्र',
			'home.popularCourses' => 'लोकप्रिय पाठ्यक्रम',
			'home.seeMore' => 'अधिक देखें',
			'home.personalized.title' => 'व्यक्तिगत\nचेहरा विश्लेषण\nरिपोर्ट',
			'home.personalized.description' => 'कृपया अपनी त्वचा का विश्लेषण करें\nयह पता लगाने के लिए कि यह किस प्रकार की है।',
			'home.personalized.button' => 'अभी आज़माएं',
			'home.premiumPlan.title' => 'प्रीमियम प्लान',
			'home.premiumPlan.description' => 'अपने AI चैटबॉट को अनलॉक करें और\nसभी प्रीमियम सुविधाएं प्राप्त करें',
			'home.premiumPlan.button' => 'प्रीमियम प्राप्त करें',
			'home.premiumPlan.dialog.title' => 'सुविधा उपलब्ध नहीं है',
			'home.premiumPlan.dialog.message' => 'यह सुविधा वर्तमान में उपलब्ध नहीं है।',
			'home.premiumPlan.dialog.button' => 'ठीक है',
			'home.quickActions.title' => 'त्वरित क्रियाएं',
			'home.quickActions.programTitle' => 'आपका व्यक्तिगत कार्यक्रम',
			'home.quickActions.programSubtitle' => '30 दिनों में\nअपने सर्वश्रेष्ठ लुक के लिए',
			'home.quickActions.button' => 'शुरू करें',
			'home.todaysExercise.title' => 'आज का व्यायाम',
			'home.todaysExercise.recommended' => 'अनुशंसित दिनचर्या',
			'home.todaysExercise.forToday' => 'आज के लिए',
			'home.courses.foreheadSmoother.title' => 'माथा स्मूदर',
			'home.courses.foreheadSmoother.description' => 'यह आंदोलन माथे की मांसपेशियों में तनाव और संचित भ्रूभंग रेखाओं को छोड़ता है...',
			'home.courses.vMove.title' => '"V" मूव',
			'home.courses.vMove.description' => 'आंखों के चारों ओर नाजुक त्वचा को मजबूत करता है, झुकती पलकों को उठाता है और थकान के संकेतों को मिटाता है।',
			'home.courses.cheekLifter.title' => 'चीक लिफ्टर',
			'home.courses.cheekLifter.description' => 'गाल की मांसपेशियों (ज़ाइगोमैटिक) को उठाता है जो गुरुत्वाकर्षण के लिए सबसे अधिक प्रवण हैं, चेहरे के अंडाकार को बहाल करते हैं।',
			'home.benefits.naturalIroning.title' => 'प्राकृतिक इस्त्री:',
			'home.benefits.naturalIroning.description' => 'माथे पर क्षैतिज रेखाओं को खोलता है और उन्हें गहरा होने से रोकता है।',
			'home.benefits.botoxEffect.title' => 'बोटोक्स प्रभाव',
			'home.benefits.botoxEffect.description' => 'तनावग्रस्त मांसपेशियों को आराम देता है और भ्रूभंग करने की आदत को तोड़ता है।',
			'home.benefits.stressRelief.title' => 'तनाव से राहत',
			'home.benefits.stressRelief.description' => 'माथे पर जमा तनाव से राहत देता है और सिरदर्द को कम करता है।',
			'home.benefits.radiantAppearance.title' => 'उज्ज्वल उपस्थिति',
			'home.benefits.radiantAppearance.description' => 'रक्त परिसंचरण को बढ़ाता है जिससे त्वचा में चमक आती है।',
			'home.benefits.dePuffing.title' => 'डी-पफ़िंग',
			'home.benefits.dePuffing.description' => 'इसके लसीका जल निकासी प्रभाव के माध्यम से चेहरे की सूजन को कम करता है।',
			'courseDetail.title' => 'पाठ्यक्रम विवरण',
			'courseDetail.getStarted' => 'शुरू करें',
			'courseDetail.noExercisesFound' => 'इस श्रेणी के लिए कोई व्यायाम नहीं मिला',
			'courseDetail.instructions.instruction1.title' => 'अपने हाथ और चेहरा धोएं',
			'courseDetail.instructions.instruction1.description' => 'साफ त्वचा मालिश को अधिक प्रभावी बनाती है।',
			'courseDetail.instructions.instruction2.title' => 'फेस ऑयल या मॉइस्चराइज़र लगाएं',
			'courseDetail.instructions.instruction2.description' => 'अपनी त्वचा को खींचे बिना आसानी से ग्लाइड करें।',
			'courses.title' => 'सभी पाठ्यक्रम',
			'courses.error' => 'व्यायाम लोड करने में त्रुटि',
			'courses.personalCoursesTitle' => 'व्यक्तिगत पाठ्यक्रम',
			'personalProgram.dailyGoalTitle' => 'अपना दैनिक लक्ष्य निर्धारित करें',
			'personalProgram.dailyGoalDescription' => 'वह गति चुनें जो आपके शेड्यूल के अनुकूल हो',
			'personalProgram.personalizing' => 'आपकी योजना को निजीकृत कर रहा है...',
			'personalProgram.readyMessage' => 'आपका व्यक्तिगत 30-दिन का फेशियल योगा कार्यक्रम तैयार है✨',
			'personalProgram.minutes' => 'min',
			'personalProgram.objectiveTitle' => 'Which expression bothers you most when you look in the mirror?',
			'personalProgram.objectiveSubtitle' => 'Program balance is adjusted according to facial expression',
			'personalProgram.feelingTitle' => 'How would you like to feel by doing face yoga?',
			'personalProgram.timeTitle' => 'When is it easier for you to do face yoga?',
			'personalProgram.objectives.tired' => 'Tired and worn-out look',
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
			'personalProgram.times.anytime' => 'Time doesn\'t matter, a reminder is enough',
			'editProfile.title' => 'प्रोफ़ाइल संपादित करें',
			'editProfile.changePhoto' => 'फ़ोटो बदलें',
			'editProfile.fullName' => 'पूरा नाम',
			'editProfile.email' => 'ईमेल',
			'editProfile.age' => 'आयु',
			'editProfile.gender' => 'लिंग',
			'editProfile.skinType' => 'त्वचा का प्रकार',
			'editProfile.focusArea' => 'फोकस क्षेत्र',
			'editProfile.focusAreaHint' => 'माथा, आंखें, नाक, मुंह, गाल...',
			'editProfile.save' => 'सहेजें',
			'editProfile.saving' => 'सहेज रहा है...',
			'editProfile.updateSuccess' => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई',
			'editProfile.updateError' => 'प्रोफ़ाइल अपडेट करते समय एक त्रुटि हुई',
			'editProfile.deleteAccount' => 'खाता हटाएं',
			'notifications.title' => 'सूचनाएं',
			'notifications.emptyTitle' => 'अभी तक कोई सूचना नहीं',
			'notifications.emptyDescription' => 'जब आपकी सीखने की यात्रा के बारे में कोई महत्वपूर्ण अपडेट होगा तो हम आपको सूचित करेंगे।',
			'notifications.premiumBannerTitle' => 'प्रीमियम लाभों को\nन चूकें!',
			'notifications.premiumBannerDescription' => 'प्रीमियम ग्राहक के रूप में अवसरों का लाभ उठाएं।',
			'notifications.sample1Title' => 'आपका दैनिक ध्यान तैयार है!',
			'notifications.sample1Description' => 'दिन के लिए अपनी शांति खोजें',
			'notifications.sample1Time' => '15 मिनट पहले',
			'notifications.sample2Title' => 'नया व्यायाम: महासागर श्वास',
			'notifications.sample2Description' => 'एक नई श्वास तकनीक जोड़ी गई है',
			'notifications.sample2Time' => '1 घंटा पहले',
			'notifications.sample3Title' => 'आप 7-दिवसीय स्ट्रीक तक पहुँच गए!',
			'notifications.sample3Description' => 'अपनी भलाई पर अद्भुत काम जारी रखें',
			'notifications.sample3Time' => 'कल',
			'share.title' => 'दोस्तों के साथ साझा करें',
			'share.mainTitle' => 'शांति साझा करें',
			'share.descriptionPart1' => 'दोस्तों को एक साथ सांस लेने के लिए आमंत्रित करें।\nप्रत्येक आमंत्रण के लिए, आप दोनों को मिलता है ',
			'share.descriptionPart2' => '1 सप्ताह प्रीमियम',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'आपका रेफरल कोड',
			'share.codeCopied' => 'कोड कॉपी किया गया!',
			'share.copyCode' => 'कोड कॉपी करें',
			'facialScan.title' => 'चेहरा स्कैन',
			'facialScan.step' => ({required Object current, required Object total}) => 'चरण ${current} / ${total}',
			'facialScan.getStarted' => 'शुरू करें',
			'facialScan.analyzing.title' => 'विश्लेषण',
			'facialScan.analyzing.description' => 'आपकी अनूठी विशेषताओं का विश्लेषण',
			'facialScan.analyzing.detail' => 'आपकी व्यक्तिगत दिनचर्या के लिए त्वचा की बनावट, मांसपेशियों की टोन और फोकस क्षेत्र का पता लगाना।',
			'facialScan.analyzing.aiEngineWorking' => 'AI इंजन काम कर रहा है',
			'facialScan.result.title' => 'आपका विश्लेषण तैयार है!',
			'facialScan.result.subtitle' => 'हमने आपके परिणामों के आधार पर एक दिनचर्या बनाई है।',
			'facialScan.result.skinType' => 'त्वचा का प्रकार',
			'facialScan.result.primaryGoal' => 'प्राथमिक लक्ष्य',
			'facialScan.result.recommended' => 'आपके लिए अनुशंसित',
			'facialScan.result.back' => 'पीछे',
			'facialScan.instructions.front' => 'फ्रेम के भीतर अपना चेहरा रखें',
			'facialScan.instructions.left' => 'अपना सिर बाईं ओर घुमाएं',
			'facialScan.instructions.right' => 'अपना सिर दाईं ओर घुमाएं',
			'facialScan.instructions.lighting' => 'सुनिश्चित करें कि आप बेहतर परिणामों के लिए अच्छी तरह से प्रकाशित वातावरण में हैं',
			'facialScan.instructions.tapToCapture' => 'फ़ोटो लेने के लिए कैमरा बटन टैप करें',
			'facialScan.errors.cameraPermission' => 'फोटो लेने के लिए कैमरा अनुमति आवश्यक है।',
			'facialScan.errors.cameraPermissionRequired' => 'कैमरा अनुमति आवश्यक',
			'facialScan.errors.cameraPermissionMessage' => 'चेहरा स्कैन के लिए कैमरा अनुमति आवश्यक है। कृपया इसे ऐप सेटिंग्स में सक्षम करें।',
			'facialScan.errors.openSettings' => 'सेटिंग्स खोलें',
			'facialScan.errors.cancel' => 'रद्द करें',
			'facialScan.errors.noFaceDetected' => 'कोई चेहरा नहीं मिला। कृपया पुनः प्रयास करें।',
			'facialScan.errors.captureFailed' => 'छवि कैप्चर करने में विफल। कृपया पुनः प्रयास करें।',
			'facialScan.positions.front' => 'सामने',
			'facialScan.positions.left' => 'बाएँ',
			'facialScan.positions.right' => 'दाएँ',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'अतिथि के रूप में जारी रखें',
			'auth.signInFailed' => ({required Object error}) => 'साइन इन विफल: ${error}',
			'benefits' => 'लाभ',
			'minutes' => 'मिनट',
			'cancel' => 'रद्द करें',
			'beforeBegin' => 'शुरू करने से पहले',
			'rest' => 'आराम',
			'courseCompleted' => 'पाठ्यक्रम पूरा हुआ',
			'courseCompletedDescription' => 'आज के सत्र को पूरा करने पर उत्कृष्ट कार्य।',
			'deleteAccount' => 'खाता हटाएं',
			'deleteDialogTitle' => 'क्या आप वाकई अपना खाता हटाना चाहते हैं?',
			'deleteDialogDescription' => 'यह क्रिया अपरिवर्तनीय है और आपके सभी व्यायाम इतिहास और डेटा को स्थायी रूप से हटा देगी।',
			'deleteError' => 'अपना खाता हटाते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।',
			'favoriteExercises' => 'पसंदीदा व्यायाम',
			'noFavoritesInCategory' => 'इस श्रेणी में कोई पसंदीदा नहीं',
			'noFavoritesAdded' => 'अभी तक कोई पसंदीदा नहीं जोड़ा गया।',
			'favoriteExercisesDescription' => 'अपने पसंदीदा व्यायाम सेट करने के लिए, आप मेरे व्यायाम पृष्ठ से पसंद किए जाने वाले व्यायाम जोड़ सकते हैं।',
			'enterInvitationCode' => 'निमंत्रण कोड दर्ज करें',
			'bePartOfPeace' => 'शांति का हिस्सा बनें',
			'inviteFriends' => 'किसी मित्र से प्राप्त आमंत्रण कोड दर्ज करें।\nइसे निर्दिष्ट फ़ील्ड में टाइप करें',
			'twoDaysPremium' => '7 दिन प्रीमियम',
			'advantage' => '\nइसके लाभों का आनंद लेने के लिए।',
			'send' => 'भेजें',
			'referralCode.inputPlaceholder' => '8-अंकीय कोड दर्ज करें',
			'referralCode.applying' => 'कोड लागू हो रहा है...',
			'referralCode.success.title' => 'सफल!',
			'referralCode.success.message' => 'रेफरल कोड सफलतापूर्वक लागू किया गया! आपको और आपके मित्र को 1 सप्ताह का प्रीमियम मिला है।',
			'referralCode.errors.missingCode.title' => 'कोड आवश्यक',
			'referralCode.errors.missingCode.message' => 'जारी रखने के लिए कृपया रेफरल कोड दर्ज करें।',
			'referralCode.errors.invalidFormat.title' => 'अमान्य प्रारूप',
			'referralCode.errors.invalidFormat.message' => 'रेफरल कोड ठीक 8 वर्णों का होना चाहिए।',
			'referralCode.errors.alreadyUsed.title' => 'पहले से उपयोग किया गया',
			'referralCode.errors.alreadyUsed.message' => 'आपने पहले ही एक रेफरल कोड का उपयोग कर लिया है। प्रत्येक उपयोगकर्ता केवल एक कोड का उपयोग कर सकता है।',
			'referralCode.errors.selfReferral.title' => 'अमान्य कोड',
			'referralCode.errors.selfReferral.message' => 'आप अपने स्वयं के आमंत्रण कोड का उपयोग नहीं कर सकते। कृपया किसी मित्र के कोड का उपयोग करें।',
			'referralCode.errors.codeNotFound.title' => 'कोड नहीं मिला',
			'referralCode.errors.codeNotFound.message' => 'दर्ज किया गया रेफरल कोड मौजूद नहीं है। कृपया जांचें और पुनः प्रयास करें।',
			'referralCode.errors.genericError.title' => 'त्रुटि',
			'referralCode.errors.genericError.message' => 'रेफरल कोड लागू करते समय एक त्रुटि हुई। कृपया पुनः प्रयास करें।',
			'deleteNotifications' => 'सूचनाएं हटाएं',
			'deleteNotificationsDescription' => 'क्या आप वाकई अपनी सभी\nसूचनाएं हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।',
			'deleteAll' => 'सभी हटाएं',
			'appLanguage' => 'ऐप भाषा',
			'selectLanguage' => 'अपनी पसंदीदा भाषा चुनें',
			'save' => 'सहेजें',
			'languageOptions.english' => 'अंग्रेज़ी',
			'languageOptions.german' => 'जर्मन',
			'languageOptions.italian' => 'इतालवी',
			'languageOptions.french' => 'फ्रेंच',
			'languageOptions.japanese' => 'जापानी',
			'languageOptions.spanish' => 'स्पेनिश',
			'languageOptions.russian' => 'रूसी',
			'languageOptions.turkish' => 'तुर्की',
			'languageOptions.korean' => 'कोरियाई',
			'languageOptions.hindi' => 'हिंदी',
			'languageOptions.portuguese' => 'पुर्तगाली',
			_ => null,
		};
	}
}
