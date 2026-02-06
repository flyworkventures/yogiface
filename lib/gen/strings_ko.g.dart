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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => '환영합니다 ${name}';
	@override String get welcome2 => '환영합니다';
	@override String get get_started => '시작하기';
	@override String get next => '다음';
	@override String get back => '뒤로';
	@override String get skip => '건너뛰기';
	@override String get logintext => '만나서 반갑습니다. 계정에 로그인하여 중단한 곳부터 계속할 수 있습니다.';
	@override late final _TranslationsTermOfServiceKo termOfService = _TranslationsTermOfServiceKo._(_root);
	@override String get cookies => '쿠키 정책';
	@override String get privacy => '개인정보 처리방침';
	@override late final _TranslationsTermsOfServiceKo termsOfService = _TranslationsTermsOfServiceKo._(_root);
	@override late final _TranslationsCookiesPolicyKo cookiesPolicy = _TranslationsCookiesPolicyKo._(_root);
	@override late final _TranslationsPrivacyPolicyKo privacyPolicy = _TranslationsPrivacyPolicyKo._(_root);
	@override late final _TranslationsOnboardingKo onboarding = _TranslationsOnboardingKo._(_root);
	@override String get pressBackAgainToExit => '종료하려면 뒤로 버튼을 다시 누르세요';
	@override String get addedToFavoritesTitle => '운동이 즐겨찾기에 성공적으로 추가되었습니다!';
	@override String get removedFromFavoritesTitle => '운동이 즐겨찾기에서 성공적으로 제거되었습니다!';
	@override String get removedFromFavorites => '코스에서 추가하고 싶은 다른 운동에 액세스할 수 있습니다';
	@override late final _TranslationsFaqKo faq = _TranslationsFaqKo._(_root);
	@override String get full_face => '얼굴 전체 / 일반 활력';
	@override String get eye_area => '눈 & 눈 주위';
	@override String get nose_area => '코 & 코 주위';
	@override String get cheeks_mid_face => '볼 & 중안면';
	@override String get lip_area => '입술 & 입 주위';
	@override String get jawline_chin => '턱선, 턱 & 이중턱';
	@override String get forehead_brow => '이마 & 눈썹 부위';
	@override String get neck_decollete => '목 & 데콜테';
	@override String get good_morning => '좋은 아침입니다';
	@override String get good_afternoon => '좋은 오후입니다';
	@override String get good_evening => '좋은 저녁입니다';
	@override late final _TranslationsSplashKo splash = _TranslationsSplashKo._(_root);
	@override late final _TranslationsProfileKo profile = _TranslationsProfileKo._(_root);
	@override late final _TranslationsHomeKo home = _TranslationsHomeKo._(_root);
	@override late final _TranslationsCourseDetailKo courseDetail = _TranslationsCourseDetailKo._(_root);
	@override late final _TranslationsCoursesKo courses = _TranslationsCoursesKo._(_root);
	@override late final _TranslationsPersonalProgramKo personalProgram = _TranslationsPersonalProgramKo._(_root);
	@override late final _TranslationsEditProfileKo editProfile = _TranslationsEditProfileKo._(_root);
	@override late final _TranslationsNotificationsKo notifications = _TranslationsNotificationsKo._(_root);
	@override late final _TranslationsShareKo share = _TranslationsShareKo._(_root);
	@override late final _TranslationsFacialScanKo facialScan = _TranslationsFacialScanKo._(_root);
	@override late final _TranslationsAuthKo auth = _TranslationsAuthKo._(_root);
	@override String get benefits => '혜택';
	@override String get minutes => '분';
	@override String get cancel => '취소';
	@override String get beforeBegin => '시작하기 전에';
	@override String get rest => '휴식';
	@override String get courseCompleted => '코스 완료';
	@override String get courseCompletedDescription => '오늘 세션을 완료하신 것을 축하합니다.';
	@override String get deleteAccount => '계정 삭제';
	@override String get deleteDialogTitle => '계정을 삭제하시겠습니까?';
	@override String get deleteDialogDescription => '이 작업은 되돌릴 수 없으며 모든 운동 기록과 데이터가 영구적으로 삭제됩니다.';
	@override String get deleteError => '계정을 삭제하는 중 오류가 발생했습니다. 다시 시도해 주세요.';
	@override String get favoriteExercises => '즐겨찾는 운동';
	@override String get noFavoritesInCategory => '이 카테고리에 즐겨찾기가 없습니다';
	@override String get noFavoritesAdded => '아직 즐겨찾기가 추가되지 않았습니다.';
	@override String get favoriteExercisesDescription => '즐겨찾는 운동을 설정하려면 내 운동 페이지에서 좋아하는 운동을 추가할 수 있습니다.';
	@override String get enterInvitationCode => '초대 코드 입력';
	@override String get bePartOfPeace => '평화의 일부가 되세요';
	@override String get inviteFriends => '친구에게 받은 초대 코드를 입력하세요.\n지정된 필드에 입력하세요';
	@override String get twoDaysPremium => '2일 프리미엄';
	@override String get advantage => '\n혜택을 누리세요.';
	@override String get send => '보내기';
	@override String get deleteNotifications => '알림 삭제';
	@override String get deleteNotificationsDescription => '모든 알림을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없으며 실행 취소할 수 없습니다.';
	@override String get deleteAll => '모두 삭제';
	@override String get appLanguage => '앱 언어';
	@override String get selectLanguage => '선호하는 언어를 선택하세요';
	@override String get save => '저장';
	@override late final _TranslationsLanguageOptionsKo languageOptions = _TranslationsLanguageOptionsKo._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceKo implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipe에 가입하면 당사의 ';
	@override String get link1 => '서비스 약관';
	@override String get text2 => '에 동의하는 것입니다. ';
	@override String get link2 => '개인정보 처리방침';
	@override String get text3 => ' 및 ';
	@override String get link3 => '쿠키 정책';
	@override String get text4 => '에서 데이터를 처리하는 방법을 알아보세요';
}

// Path: termsOfService
class _TranslationsTermsOfServiceKo implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – 서비스 약관';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get principle => 'Yogiface는 안면 근육을 지원하기 위한 페이스 요가 운동 및 가이드 콘텐츠를 제공하는 웰니스 애플리케이션입니다. 이 애플리케이션은 의학적, 임상적, 미용적 또는 전문적인 의료 서비스를 제공하지 않습니다.';
	@override String get intro => '이 서비스 약관("약관")에는 Yogiface 모바일 애플리케이션("애플리케이션") 사용에 적용되는 규칙이 포함되어 있습니다. 애플리케이션을 사용함으로써 귀하는 이 약관에 동의하는 것입니다. 약관에 동의하지 않으면 애플리케이션을 사용해서는 안 됩니다.';
	@override late final _TranslationsTermsOfServiceSection1Ko section1 = _TranslationsTermsOfServiceSection1Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection2Ko section2 = _TranslationsTermsOfServiceSection2Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection3Ko section3 = _TranslationsTermsOfServiceSection3Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection4Ko section4 = _TranslationsTermsOfServiceSection4Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection5Ko section5 = _TranslationsTermsOfServiceSection5Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection6Ko section6 = _TranslationsTermsOfServiceSection6Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection7Ko section7 = _TranslationsTermsOfServiceSection7Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection12Ko section12 = _TranslationsTermsOfServiceSection12Ko._(_root);
	@override late final _TranslationsTermsOfServiceSection13Ko section13 = _TranslationsTermsOfServiceSection13Ko._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyKo implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – 쿠키 정책';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get intro => 'Yogiface에 오신 것을 환영합니다! 앱을 방문할 때마다 디지털 도우미(쿠키)를 사용하여 경험을 개선하고 개인화합니다. 이 정책은 귀하가 선호 사항을 관리하는 방법을 설명합니다.';
	@override late final _TranslationsCookiesPolicySection1Ko section1 = _TranslationsCookiesPolicySection1Ko._(_root);
	@override late final _TranslationsCookiesPolicySection2Ko section2 = _TranslationsCookiesPolicySection2Ko._(_root);
	@override late final _TranslationsCookiesPolicySection3Ko section3 = _TranslationsCookiesPolicySection3Ko._(_root);
	@override late final _TranslationsCookiesPolicySection4Ko section4 = _TranslationsCookiesPolicySection4Ko._(_root);
	@override late final _TranslationsCookiesPolicySection5Ko section5 = _TranslationsCookiesPolicySection5Ko._(_root);
	@override late final _TranslationsCookiesPolicySection6Ko section6 = _TranslationsCookiesPolicySection6Ko._(_root);
	@override late final _TranslationsCookiesPolicySection7Ko section7 = _TranslationsCookiesPolicySection7Ko._(_root);
	@override late final _TranslationsCookiesPolicySection8Ko section8 = _TranslationsCookiesPolicySection8Ko._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyKo implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – 개인정보 처리방침';
	@override String get lastUpdated => '최종 업데이트: 2025';
	@override String get intro => '이 개인정보 처리방침은 Yogiface 모바일 애플리케이션("앱")을 사용하는 모든 사용자의 개인 데이터 수집, 사용, 저장 및 보호에 관한 원칙을 설명합니다. 앱을 사용함으로써 귀하는 이 정책에 동의하는 것입니다.';
	@override String get principle => 'Yogiface는 사용자 개인정보 보호 및 데이터 보안을 핵심 원칙으로 채택합니다. 모든 개인 데이터는 GDPR 및 관련 법률에 따라 처리됩니다.';
	@override late final _TranslationsPrivacyPolicySection1Ko section1 = _TranslationsPrivacyPolicySection1Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection2Ko section2 = _TranslationsPrivacyPolicySection2Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection3Ko section3 = _TranslationsPrivacyPolicySection3Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection4Ko section4 = _TranslationsPrivacyPolicySection4Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection5Ko section5 = _TranslationsPrivacyPolicySection5Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection6Ko section6 = _TranslationsPrivacyPolicySection6Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection8Ko section8 = _TranslationsPrivacyPolicySection8Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection10Ko section10 = _TranslationsPrivacyPolicySection10Ko._(_root);
}

// Path: onboarding
class _TranslationsOnboardingKo implements TranslationsOnboardingEn {
	_TranslationsOnboardingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => '기본 정보';
	@override String get target => '목표';
	@override String get habits => '습관';
	@override String get step => '단계';
	@override String get of => '/';
	@override String get tellUsAboutYourself => '자신에 대해 알려주세요';
	@override String get shortBioDescription => '짧은 소개는 다른 사람들이 당신을 진짜로 알게 하는 데 도움이 됩니다. 재미있고 진솔하게 작성하세요';
	@override String get enterYourFullname => '성명을 입력하세요';
	@override String get fullName => '성명';
	@override String get male => '남성';
	@override String get female => '여성';
	@override String get dontWantToMention => '언급하고 싶지 않음';
	@override String get whatIsMainObjective => '주된 목표는 무엇인가요?';
	@override String get reduceWrinkles => '주름 감소';
	@override String get tightenSkin => '피부 탄력';
	@override String get liftDroopyEyelids => '처진 눈꺼풀 리프팅';
	@override String get eliminateDoubleChin => '이중턱 제거';
	@override String get brightenSkinTone => '피부 톤 밝게 하기';
	@override String get allOfTheAbove => '위의 모든 것';
	@override String get whichAreaToImprove => '어떤 부위를 개선하고 싶으신가요?';
	@override String get forehead => '이마';
	@override String get eyes => '눈';
	@override String get nose => '코';
	@override String get cheeks => '볼';
	@override String get lips => '입술';
	@override String get jawline => '턱선';
	@override String get neck => '목';
	@override String get fullface => '얼굴 전체';
	@override String get whatFaceShapeAiming => '어떤 얼굴형을 목표로 하시나요?';
	@override String get heart => '하트형';
	@override String get oval => '계란형';
	@override String get square => '사각형';
	@override String get round => '둥근형';
	@override String get diamond => '다이아몬드형';
	@override String get whatIsYourSkinType => '피부 타입은 무엇인가요?';
	@override String get normal => '중성';
	@override String get oily => '지성';
	@override String get dry => '건성';
	@override String get combination => '복합성';
	@override String get sensitive => '민감성';
	@override String get whichOfThemDoYouHave => '이 중 어떤 것을 가지고 계신가요?';
	@override String get acneAndPimples => '여드름 및 뾰루지';
	@override String get redness => '홍조';
	@override String get swelling => '부기';
	@override String get wrinkles => '주름';
	@override String get neckLines => '목 주름';
	@override String get howOftenWearMakeup => '화장은 얼마나 자주 하시나요?';
	@override String get everyDay => '매일';
	@override String get fewDaysAWeek => '일주일에 며칠';
	@override String get occasionally => '가끔';
	@override String get never => '전혀 안 함';
	@override String get haveYouHadBotox => '보톡스 시술을 받은 적이 있나요?';
	@override String get yes => '예';
	@override String get no => '아니요';
	@override String get creatingPersonalizedProfile => '개인화된 프로필 생성 중';
	@override String get tailoringExperience => '선호도에 따라 경험을 맞춤화하고 있습니다...';
	@override String get gender => '성별';
	@override String get age => '나이';
	@override String get weight => '체중';
	@override String get height => '신장';
	@override String get matchingPersonalities => '성격 매칭 중';
}

// Path: faq
class _TranslationsFaqKo implements TranslationsFaqEn {
	_TranslationsFaqKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자주 묻는 질문';
	@override late final _TranslationsFaqQuestionsKo questions = _TranslationsFaqQuestionsKo._(_root);
}

// Path: splash
class _TranslationsSplashKo implements TranslationsSplashEn {
	_TranslationsSplashKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ko screen1 = _TranslationsSplashScreen1Ko._(_root);
	@override late final _TranslationsSplashScreen2Ko screen2 = _TranslationsSplashScreen2Ko._(_root);
	@override late final _TranslationsSplashScreen3Ko screen3 = _TranslationsSplashScreen3Ko._(_root);
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get freeVersion => '무료 버전';
	@override String get error => '오류';
	@override late final _TranslationsProfileSectionsKo sections = _TranslationsProfileSectionsKo._(_root);
	@override late final _TranslationsProfileMenuKo menu = _TranslationsProfileMenuKo._(_root);
	@override String get manage => '관리';
	@override late final _TranslationsProfileLogoutDialogKo logoutDialog = _TranslationsProfileLogoutDialogKo._(_root);
}

// Path: home
class _TranslationsHomeKo implements TranslationsHomeEn {
	_TranslationsHomeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get premium => '프리미엄!';
	@override String get focusAreas => '집중 영역';
	@override String get popularCourses => '인기 코스';
	@override String get seeMore => '더 보기';
	@override late final _TranslationsHomePersonalizedKo personalized = _TranslationsHomePersonalizedKo._(_root);
	@override late final _TranslationsHomePremiumPlanKo premiumPlan = _TranslationsHomePremiumPlanKo._(_root);
	@override late final _TranslationsHomeQuickActionsKo quickActions = _TranslationsHomeQuickActionsKo._(_root);
	@override late final _TranslationsHomeTodaysExerciseKo todaysExercise = _TranslationsHomeTodaysExerciseKo._(_root);
	@override late final _TranslationsHomeCoursesKo courses = _TranslationsHomeCoursesKo._(_root);
	@override late final _TranslationsHomeBenefitsKo benefits = _TranslationsHomeBenefitsKo._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailKo implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '코스 상세';
	@override String get getStarted => '시작하기';
	@override String get noExercisesFound => '이 카테고리에 대한 운동이 없습니다';
	@override late final _TranslationsCourseDetailInstructionsKo instructions = _TranslationsCourseDetailInstructionsKo._(_root);
}

// Path: courses
class _TranslationsCoursesKo implements TranslationsCoursesEn {
	_TranslationsCoursesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모든 코스';
	@override String get error => '운동 로드 오류';
	@override String get personalCoursesTitle => '개인 코스';
}

// Path: personalProgram
class _TranslationsPersonalProgramKo implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => '일일 목표 설정';
	@override String get dailyGoalDescription => '일정에 맞는 속도를 선택하세요';
	@override String get personalizing => '계획 개인화 중...';
	@override String get readyMessage => '당신의 개인 30일 페이스 요가 프로그램이 준비되었습니다✨';
	@override String get minutes => '분';
}

// Path: editProfile
class _TranslationsEditProfileKo implements TranslationsEditProfileEn {
	_TranslationsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override String get changePhoto => '사진 변경';
	@override String get fullName => '성명';
	@override String get email => '이메일';
	@override String get age => '나이';
	@override String get gender => '성별';
	@override String get skinType => '피부 타입';
	@override String get focusArea => '집중 영역';
	@override String get focusAreaHint => '이마, 눈, 코, 입, 볼...';
	@override String get save => '저장';
	@override String get saving => '저장 중...';
	@override String get updateSuccess => '프로필이 성공적으로 업데이트되었습니다';
	@override String get updateError => '프로필 업데이트 중 오류가 발생했습니다';
	@override String get deleteAccount => '계정 삭제';
}

// Path: notifications
class _TranslationsNotificationsKo implements TranslationsNotificationsEn {
	_TranslationsNotificationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '알림';
	@override String get emptyTitle => '아직 알림 없음';
	@override String get emptyDescription => '학습 여정에 대한 중요한 업데이트가 있을 때 알려드리겠습니다.';
	@override String get premiumBannerTitle => '프리미엄 혜택을\n놓치지 마세요!';
	@override String get premiumBannerDescription => '프리미엄 구독자로서 기회를 잡으세요.';
	@override String get sample1Title => '일일 명상이 준비되었습니다!';
	@override String get sample1Description => '오늘 하루의 평온을 찾으세요';
	@override String get sample1Time => '15분 전';
	@override String get sample2Title => '새로운 운동: 오션 브레스';
	@override String get sample2Description => '새로운 호흡 기술이 추가되었습니다';
	@override String get sample2Time => '1시간 전';
	@override String get sample3Title => '7일 연속 달성!';
	@override String get sample3Description => '웰빙을 위한 놀라운 작업을 계속하세요';
	@override String get sample3Time => '어제';
}

// Path: share
class _TranslationsShareKo implements TranslationsShareEn {
	_TranslationsShareKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '친구와 공유';
	@override String get mainTitle => '평화를 공유하세요';
	@override String get descriptionPart1 => '친구를 초대하여 함께 호흡하세요.\n초대할 때마다 두 분 모두 ';
	@override String get descriptionPart2 => '1주일 프리미엄';
	@override String get descriptionPart3 => '을 받습니다';
	@override String get yourReferralCode => '귀하의 추천 코드';
	@override String get codeCopied => '코드 복사됨!';
	@override String get copyCode => '코드 복사';
}

// Path: facialScan
class _TranslationsFacialScanKo implements TranslationsFacialScanEn {
	_TranslationsFacialScanKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '얼굴 스캔';
	@override String step({required Object current, required Object total}) => '단계 ${current} / ${total}';
	@override String get getStarted => '시작하기';
	@override late final _TranslationsFacialScanAnalyzingKo analyzing = _TranslationsFacialScanAnalyzingKo._(_root);
	@override late final _TranslationsFacialScanResultKo result = _TranslationsFacialScanResultKo._(_root);
	@override late final _TranslationsFacialScanInstructionsKo instructions = _TranslationsFacialScanInstructionsKo._(_root);
	@override late final _TranslationsFacialScanErrorsKo errors = _TranslationsFacialScanErrorsKo._(_root);
	@override late final _TranslationsFacialScanPositionsKo positions = _TranslationsFacialScanPositionsKo._(_root);
}

// Path: auth
class _TranslationsAuthKo implements TranslationsAuthEn {
	_TranslationsAuthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => '게스트로 계속';
	@override String signInFailed({required Object error}) => '로그인 실패: ${error}';
}

// Path: languageOptions
class _TranslationsLanguageOptionsKo implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get english => '영어';
	@override String get german => '독일어';
	@override String get italian => '이탈리아어';
	@override String get french => '프랑스어';
	@override String get japanese => '일본어';
	@override String get spanish => '스페인어';
	@override String get russian => '러시아어';
	@override String get turkish => '터키어';
	@override String get korean => '한국어';
	@override String get hindi => '힌디어';
	@override String get portuguese => '포르투갈어';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Ko implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 서비스 범위';
	@override String get content => 'Yogiface는 사용자에게 가이드 페이스 요가 및 운동 경험을 제공합니다. 애플리케이션에는 다음이 포함됩니다:';
	@override List<String> get items => [
		'페이스 요가 및 운동 가이드',
		'일일 및 주간 운동 루틴',
		'특정 얼굴 부위에 대한 맞춤형 추천',
		'사용자 지정 가능한 계획 및 진행 상황 추적',
	];
	@override String get note => '제공된 콘텐츠는 전문적, 의학적 또는 미용적 조언, 진단 또는 치료를 구성하지 않습니다.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Ko implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 사용 조건';
	@override List<String> get items => [
		'만 13세 이상이어야 합니다.',
		'정확하고 최신의 계정 정보를 제공해야 합니다.',
		'운동이 의료 서비스가 아님을 인정합니다.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Ko implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 금지된 사용';
	@override List<String> get items => [
		'불법 활동을 위해 앱 사용.',
		'허가 없이 콘텐츠 판매, 복제 또는 배포.',
		'무단 액세스, 해킹 또는 리버스 엔지니어링 시도.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Ko implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '4. 계정 및 멤버십';
	@override String get content => '계정 보안에 대한 책임은 귀하에게 있습니다. Yogiface는 약관에 위배되는 사용이 확인될 경우 계정을 정지하거나 폐쇄할 권리를 보유합니다.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Ko implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 프리미엄 및 유료 서비스';
	@override List<String> get items => [
		'가격 책정은 App Store 및 Google Play 정책을 따릅니다.',
		'구독은 자동으로 갱신될 수 있으며, 취소는 스토어 설정을 통해 이루어집니다.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Ko implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 면책 조항';
	@override String get content => '사용자는 자신의 책임하에 운동을 수행합니다. 건강 문제가 있는 경우 사용자는 의료 전문가와 상담해야 합니다. 앱은 진단 또는 치료 목적으로 사용되어서는 안 됩니다.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Ko implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 지적 재산권';
	@override String get content => '디자인, 소프트웨어, 이미지 및 운동 콘텐츠는 Yogiface에 속합니다. 무단 복사 또는 소스 코드 수정은 금지됩니다.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Ko implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '12. 준거법';
	@override String get content => '이 약관은 튀르키예 공화국 법률의 적용을 받습니다. 이스탄불 중앙 법원은 분쟁에 대한 관할권을 갖습니다.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Ko implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '13. 연락처';
	@override String get email => '📩 이메일: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Ko implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 쿠키란 무엇인가요?';
	@override String get content => '쿠키는 기기에 배치되는 작은 데이터 파일입니다. 앱 사용 방식을 이해하고 경험을 더 원활하게 만드는 데 도움이 됩니다. 쿠키는 귀하의 신원을 직접 포함하지 않으며, 선호 사항과 사용 습관을 기억하는 디지털 도우미 역할을 합니다.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Ko implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 어떤 쿠키를 사용나요?';
	@override late final _TranslationsCookiesPolicySection2EssentialKo essential = _TranslationsCookiesPolicySection2EssentialKo._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceKo performance = _TranslationsCookiesPolicySection2PerformanceKo._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationKo personalization = _TranslationsCookiesPolicySection2PersonalizationKo._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingKo marketing = _TranslationsCookiesPolicySection2MarketingKo._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Ko implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 쿠키를 사용하는 이유는 무엇인가요?';
	@override List<String> get items => [
		'앱이 빠르고 원활하게 실행되도록 보장하기 위해',
		'사용자 선호 사항을 기억하여 반복적인 작업을 줄이기 위해',
		'경험을 더 개인적이고 유용하게 만들기 위해',
		'사용 데이터를 분석하여 앱을 개선하기 위해',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Ko implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '4. 타사 쿠키';
	@override String get content => '분석 및 광고 서비스를 제공하는 타사 파트너가 일부 쿠키를 배치할 수 있습니다. 이는 제공업체의 자체 개인정보 처리방침 및 쿠키 정책의 적용을 받습니다.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Ko implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 쿠키 제어 및 관리';
	@override String get content => '기기 설정, 앱 권한 또는 시스템 설정을 통해 쿠키를 관리할 수 있습니다. 필수 쿠키를 비활성화하면 앱의 일부가 오작동할 수 있습니다.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Ko implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 데이터 사용';
	@override String get content => '쿠키를 통해 얻은 데이터가 개인 데이터로 분류되는 경우 개인정보 처리방침에 따라 법적 프레임워크 내에서 처리됩니다.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Ko implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 정책 업데이트';
	@override String get content => '이 정책은 기술 및 법적 변경에 따라 업데이트될 수 있습니다. 현재 버전은 게시되는 즉시 효력을 발생합니다.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Ko implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 연락처';
	@override String get email => '📩 이메일: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Ko implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 수집된 정보';
	@override late final _TranslationsPrivacyPolicySection1Sub1Ko sub1 = _TranslationsPrivacyPolicySection1Sub1Ko._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Ko sub2 = _TranslationsPrivacyPolicySection1Sub2Ko._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Ko implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 데이터 사용 목적';
	@override List<String> get items => [
		'앱의 중단 없는 운영을 보장하기 위해',
		'페이스 요가 경험을 개인화하고 최적화하기 위해',
		'오류 감지 및 성능 분석을 수행하기 위해',
		'사용자 요구 및 지원 요청에 응답하기 위해',
	];
	@override String get note => '중요: 사용자 데이터는 제3자에게 절대 판매되지 않습니다.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Ko implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 데이터 보존';
	@override List<String> get items => [
		'데이터는 사용자 계정이 활성 상태인 동안 저장됩니다.',
		'계정이 삭제되면 개인 데이터는 복구할 수 없도록 제거됩니다.',
		'지원 기록은 완료 후 최대 12개월 동안 보관됩니다.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Ko implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '4. 데이터 공유';
	@override String get content => '귀하의 데이터는 법적 요구 사항(공식 요청), 서비스 제공업체(클라우드 인프라, 분석) 또는 사용자 명시적 동의가 있는 경우에만 공유됩니다.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Ko implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '5. 쿠키 및 보안';
	@override String get content => 'Yogiface는 성능 및 경험 향상을 위해 쿠키를 사용할 수 있습니다. 귀하의 데이터는 SSL/TLS 암호화 및 정기적인 보안 감사로 보호됩니다.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Ko implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 사용자 권리';
	@override String get content => '귀하는 데이터 처리에 대한 액세스, 수정, 삭제 및 제한 권한이 있습니다.';
	@override String get contact => '요청 시:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Ko implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 아동의 개인정보 보호';
	@override String get content => 'Yogiface는 13세 미만의 개인을 대상으로 하지 않습니다. 이 연령대에서 수집된 데이터는 감지되는 즉시 삭제됩니다.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Ko implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '10. 연락처';
	@override String get email => '📩 이메일: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsKo implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ko q1 = _TranslationsFaqQuestionsQ1Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ko q2 = _TranslationsFaqQuestionsQ2Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ko q3 = _TranslationsFaqQuestionsQ3Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ko q4 = _TranslationsFaqQuestionsQ4Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ko q5 = _TranslationsFaqQuestionsQ5Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ko q6 = _TranslationsFaqQuestionsQ6Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ko q7 = _TranslationsFaqQuestionsQ7Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ko q8 = _TranslationsFaqQuestionsQ8Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ko q9 = _TranslationsFaqQuestionsQ9Ko._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ko q10 = _TranslationsFaqQuestionsQ10Ko._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ko implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자연스럽게 얼굴 가꾸기';
	@override String get description => '매일 몇 분의 얼굴 운동으로 얼굴 근육을 단련하세요. 자연스럽고 미적이며 비침습적인 뷰티 루틴을 만드세요.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ko implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI를 통한 개인화된 운동 계획';
	@override String get description => 'AI가 얼굴 특징을 분석하고 필요 사항을 결정하며 귀하에게 맞는 운동을 추천합니다. 더 많은 운동이 필요한 근육을 추적합니다.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Ko implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '눈에 띄는 결과';
	@override String get description => '정기적으로 사용하면 얼굴 윤곽이 더 뚜렷해지고 순환이 개선되며 피부가 더 생기 있어 보입니다. 매일의 작은 발걸음이 큰 변화를 가져옵니다.';
}

// Path: profile.sections
class _TranslationsProfileSectionsKo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => '계정 설정';
	@override String get supportAndOther => '지원 & 기타';
}

// Path: profile.menu
class _TranslationsProfileMenuKo implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get editProfile => '프로필 편집';
	@override String get notifications => '알림';
	@override String get premium => '프리미엄';
	@override String get favoriteExercises => '즐겨찾는 운동';
	@override String get appLanguage => '앱 언어';
	@override String get shareWithFriends => '친구와 공유';
	@override String get enterInviteCode => '초대 코드 입력';
	@override String get rateUs => '평가하기';
	@override String get faq => '자주 묻는 질문';
	@override String get logout => '로그아웃';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogKo implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그아웃하려고 합니다';
	@override String get message => '또 만나요! 호흡 운동을 계속 추적하겠습니다.';
	@override String get logoutButton => '로그아웃';
	@override String get cancelButton => '취소';
}

// Path: home.personalized
class _TranslationsHomePersonalizedKo implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인화된\n얼굴 분석\n보고서';
	@override String get description => '피부 타입을 알아보기 위해\n피부를 분석해 주세요.';
	@override String get button => '지금 시도';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanKo implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프리미엄 플랜';
	@override String get description => 'AI 챗봇 잠금 해제 &\n모든 프리미엄 기능 받기';
	@override String get button => '프리미엄 받기';
	@override late final _TranslationsHomePremiumPlanDialogKo dialog = _TranslationsHomePremiumPlanDialogKo._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsKo implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '빠른 작업';
	@override String get programTitle => '당신의 개인 프로그램';
	@override String get programSubtitle => '30일 안에\n최고의 모습을 위해';
	@override String get button => '시작하기';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseKo implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오늘의 운동';
	@override String get recommended => '추천 루틴';
	@override String get forToday => '오늘을 위한';
}

// Path: home.courses
class _TranslationsHomeCoursesKo implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherKo foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherKo._(_root);
	@override late final _TranslationsHomeCoursesVMoveKo vMove = _TranslationsHomeCoursesVMoveKo._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterKo cheekLifter = _TranslationsHomeCoursesCheekLifterKo._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsKo implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningKo naturalIroning = _TranslationsHomeBenefitsNaturalIroningKo._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectKo botoxEffect = _TranslationsHomeBenefitsBotoxEffectKo._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefKo stressRelief = _TranslationsHomeBenefitsStressReliefKo._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceKo radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceKo._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingKo dePuffing = _TranslationsHomeBenefitsDePuffingKo._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsKo implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Ko instruction1 = _TranslationsCourseDetailInstructionsInstruction1Ko._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Ko instruction2 = _TranslationsCourseDetailInstructionsInstruction2Ko._(_root);
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingKo implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '분석 중';
	@override String get description => '고유한 특징 분석 중';
	@override String get detail => '개인화된 루틴을 위해 피부 질감, 근육 톤 및 집중 영역을 감지합니다.';
	@override String get aiEngineWorking => 'AI 엔진 작동 중';
}

// Path: facialScan.result
class _TranslationsFacialScanResultKo implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '분석이 준비되었습니다!';
	@override String get subtitle => '결과에 따라 루틴을 만들었습니다.';
	@override String get skinType => '피부 타입';
	@override String get primaryGoal => '주된 목표';
	@override String get recommended => '귀하를 위한 추천';
	@override String get back => '뒤로';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsKo implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get front => '프레임 안에 얼굴을 위치시키세요';
	@override String get left => '머리를 왼쪽으로 돌리세요';
	@override String get right => '머리를 오른쪽으로 돌리세요';
	@override String get lighting => '더 나은 결과를 위해 밝은 환경에 있는지 확인하세요';
	@override String get tapToCapture => '카메라 버튼을 탭하여 사진을 찍으세요';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsKo implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => '사진을 찍으려면 카메라 권한이 필요합니다.';
	@override String get cameraPermissionRequired => '카메라 권한 필요';
	@override String get cameraPermissionMessage => '얼굴 스캔에는 카메라 권한이 필요합니다. 앱 설정에서 활성화해 주세요.';
	@override String get openSettings => '설정 열기';
	@override String get cancel => '취소';
	@override String get noFaceDetected => '얼굴이 감지되지 않았습니다. 다시 시도해 주세요.';
	@override String get captureFailed => '이미지를 캡처하지 못했습니다. 다시 시도해 주세요.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsKo implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get front => '정면';
	@override String get left => '왼쪽';
	@override String get right => '오른쪽';
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialKo implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '필수 쿠키';
	@override String get content => '기본 앱 기능에 필요합니다. 세션 관리, 보안 및 기본 탐색과 같은 핵심 프로세스를 지원합니다.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceKo implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '성능 및 분석 쿠키';
	@override String get content => '가장 자주 사용되는 영역과 개선이 필요한 섹션을 이해하는 데 도움이 됩니다.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationKo implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인화 쿠키';
	@override String get content => '언어, 테마 및 운동 선호도와 같은 설정을 기억하여 더 개인적인 경험을 제공합니다.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingKo implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '마케팅 및 광고 쿠키';
	@override String get content => '관심사에 더 적합한 콘텐츠 및 프로모션을 제공하는 데 사용될 수 있으며 때로는 타사 서비스와 연동됩니다.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Ko implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. 사용자 제공 데이터';
	@override List<String> get items => [
		'이름, 닉네임 또는 프로필 정보',
		'이메일 주소(등록, 구매 및 지원용)',
		'운동 계획, 선호도 및 개인화 설정',
		'피드백, 요청 및 지원 메시지',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Ko implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. 자동 수집 데이터';
	@override List<String> get items => [
		'기기 유형, 운영 체제 및 기술 정보',
		'대략적인 위치 데이터(도시/국가 수준)',
		'세션 지속 시간 및 화면 상호 작용과 같은 사용 정보',
		'성능, 오류 및 충돌 로그',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ko implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => 'Yogiface란 무엇인가요?';
	@override String get answer => 'Yogiface는 얼굴 근육을 단련하여 피부 외관을 개선하는 페이스 요가 운동을 제공하는 AI 기반 개인 관리 앱입니다.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ko implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '앱이 정말 효과가 있나요?';
	@override String get answer => '예. 페이스 요가는 얼굴 근육을 활성화하여 피부 탄력을 높이고 순환을 가속화하며 정기적으로 사용하면 더 젊어 보이는 외모를 제공합니다.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ko implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '인공 지능은 여기서 무엇을 하나요?';
	@override String get answer => 'Yogiface는 얼굴 특징을 분석하고 목표 영역을 식별하며 개인화된 운동 계획을 생성합니다. 이렇게 하면 각 동작이 개인의 필요에 따라 최적화됩니다.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ko implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '매일 얼마나 시간을 투자해야 하나요?';
	@override String get answer => '하루에 5-10분이면 충분합니다. 정기적으로 연습하면 몇 주 안에 눈에 띄는 변화가 시작됩니다.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ko implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '결과는 언제 볼 수 있나요?';
	@override String get answer => '정기적으로 사용하면 2~3주 내에 피부 톤 개선이 눈에 띄고 4~6주 내에 얼굴 특징이 더 뚜렷해집니다. 결과는 사람마다 다를 수 있습니다.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ko implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '이중턱이나 처짐 같은 문제에도 효과가 있나요?';
	@override String get answer => '예. Yogiface는 턱선, 볼 근육 및 목 부위에 대한 목표 운동을 제공합니다. 정기적으로 수행하면 이 운동은 이 부위에 상당한 타이트닝 효과를 제공합니다.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ko implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '동작을 올바르게 하고 있는지 어떻게 알 수 있나요?';
	@override String get answer => '앱은 AI를 사용 하여 얼굴 각도, 표정 및 움직임 패턴을 분석하고 잘못된 부분을 알려줍니다.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ko implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '모든 연령대 적합한가요?';
	@override String get answer => '예. 페이스 요가는 비침습적 자연 요법입니다. 누구나 어린 나이부터 안전하게 연습할 수 있습니다.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ko implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => 'Yogiface는 무료인가요?';
	@override String get answer => '기본 운동은 무료입니다. 개인 프로그램, 고급 얼굴 분석 및 특별 AI 추천은 프리미엄 패키지에 포함되어 있습니다.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ko implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get question => '성형 수술을 받은 사람도 사용할 수 있나요?';
	@override String get answer => '많은 사용자가 안전하게 사용하지만 수술 후 회복 기간 동안 의사와 상담하는 것이 좋습니다.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogKo implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기능 사용 불가';
	@override String get message => '이 기능은 현재 사용할 수 없습니다.';
	@override String get button => '확인';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherKo implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이마 스무더';
	@override String get description => '이 동작은 이마 근육의 긴장과 축적된 찌푸린 주름을 풀어줍니다...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveKo implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '"V" 무브';
	@override String get description => '눈 주위의 연약한 피부를 강화하고, 처진 눈꺼풀을 들어 올리고, 피로의 징후를 지웁니다.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterKo implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '치크 리프터';
	@override String get description => '중력에 가장 취약한 볼 근육(대광대근)을 들어 올려 얼굴 타원을 복원합니다.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningKo implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자연 다림질:';
	@override String get description => '이마의 가로 주름을 펴고 깊어지는 것을 방지합니다.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectKo implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '보톡스 효과';
	@override String get description => '긴장된 근육을 이완하고 찌푸리는 습관을 고칩니다.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefKo implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '스트레스 해소';
	@override String get description => '이마에 쌓인 스트레스를 해소하고 두통을 완화합니다.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceKo implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '빛나는 외모';
	@override String get description => '혈액 순환을 촉진하여 피부에 광채를 줍니다.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingKo implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '부기 제거';
	@override String get description => '림프 배수 효과를 통해 얼굴 부기를 줄입니다.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Ko implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '손과 얼굴 씻기';
	@override String get description => '깨끗한 피부는 마사지를 더 효과적으로 만듭니다.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Ko implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Ko._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '페이스 오일 또는 모이스처라이저 바르기';
	@override String get description => '피부를 당기지 않고 부드럽게 미끄러지 듯 바르세요.';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => '환영합니다 ${name}',
			'welcome2' => '환영합니다',
			'get_started' => '시작하기',
			'next' => '다음',
			'back' => '뒤로',
			'skip' => '건너뛰기',
			'logintext' => '만나서 반갑습니다. 계정에 로그인하여 중단한 곳부터 계속할 수 있습니다.',
			'termOfService.text1' => 'swipe에 가입하면 당사의 ',
			'termOfService.link1' => '서비스 약관',
			'termOfService.text2' => '에 동의하는 것입니다. ',
			'termOfService.link2' => '개인정보 처리방침',
			'termOfService.text3' => ' 및 ',
			'termOfService.link3' => '쿠키 정책',
			'termOfService.text4' => '에서 데이터를 처리하는 방법을 알아보세요',
			'cookies' => '쿠키 정책',
			'privacy' => '개인정보 처리방침',
			'termsOfService.title' => 'Yogiface – 서비스 약관',
			'termsOfService.lastUpdated' => '최종 업데이트: 2025',
			'termsOfService.principle' => 'Yogiface는 안면 근육을 지원하기 위한 페이스 요가 운동 및 가이드 콘텐츠를 제공하는 웰니스 애플리케이션입니다. 이 애플리케이션은 의학적, 임상적, 미용적 또는 전문적인 의료 서비스를 제공하지 않습니다.',
			'termsOfService.intro' => '이 서비스 약관("약관")에는 Yogiface 모바일 애플리케이션("애플리케이션") 사용에 적용되는 규칙이 포함되어 있습니다. 애플리케이션을 사용함으로써 귀하는 이 약관에 동의하는 것입니다. 약관에 동의하지 않으면 애플리케이션을 사용해서는 안 됩니다.',
			'termsOfService.section1.title' => '1. 서비스 범위',
			'termsOfService.section1.content' => 'Yogiface는 사용자에게 가이드 페이스 요가 및 운동 경험을 제공합니다. 애플리케이션에는 다음이 포함됩니다:',
			'termsOfService.section1.items.0' => '페이스 요가 및 운동 가이드',
			'termsOfService.section1.items.1' => '일일 및 주간 운동 루틴',
			'termsOfService.section1.items.2' => '특정 얼굴 부위에 대한 맞춤형 추천',
			'termsOfService.section1.items.3' => '사용자 지정 가능한 계획 및 진행 상황 추적',
			'termsOfService.section1.note' => '제공된 콘텐츠는 전문적, 의학적 또는 미용적 조언, 진단 또는 치료를 구성하지 않습니다.',
			'termsOfService.section2.title' => '2. 사용 조건',
			'termsOfService.section2.items.0' => '만 13세 이상이어야 합니다.',
			'termsOfService.section2.items.1' => '정확하고 최신의 계정 정보를 제공해야 합니다.',
			'termsOfService.section2.items.2' => '운동이 의료 서비스가 아님을 인정합니다.',
			'termsOfService.section3.title' => '3. 금지된 사용',
			'termsOfService.section3.items.0' => '불법 활동을 위해 앱 사용.',
			'termsOfService.section3.items.1' => '허가 없이 콘텐츠 판매, 복제 또는 배포.',
			'termsOfService.section3.items.2' => '무단 액세스, 해킹 또는 리버스 엔지니어링 시도.',
			'termsOfService.section4.title' => '4. 계정 및 멤버십',
			'termsOfService.section4.content' => '계정 보안에 대한 책임은 귀하에게 있습니다. Yogiface는 약관에 위배되는 사용이 확인될 경우 계정을 정지하거나 폐쇄할 권리를 보유합니다.',
			'termsOfService.section5.title' => '5. 프리미엄 및 유료 서비스',
			'termsOfService.section5.items.0' => '가격 책정은 App Store 및 Google Play 정책을 따릅니다.',
			'termsOfService.section5.items.1' => '구독은 자동으로 갱신될 수 있으며, 취소는 스토어 설정을 통해 이루어집니다.',
			'termsOfService.section6.title' => '6. 면책 조항',
			'termsOfService.section6.content' => '사용자는 자신의 책임하에 운동을 수행합니다. 건강 문제가 있는 경우 사용자는 의료 전문가와 상담해야 합니다. 앱은 진단 또는 치료 목적으로 사용되어서는 안 됩니다.',
			'termsOfService.section7.title' => '7. 지적 재산권',
			'termsOfService.section7.content' => '디자인, 소프트웨어, 이미지 및 운동 콘텐츠는 Yogiface에 속합니다. 무단 복사 또는 소스 코드 수정은 금지됩니다.',
			'termsOfService.section12.title' => '12. 준거법',
			'termsOfService.section12.content' => '이 약관은 튀르키예 공화국 법률의 적용을 받습니다. 이스탄불 중앙 법원은 분쟁에 대한 관할권을 갖습니다.',
			'termsOfService.section13.title' => '13. 연락처',
			'termsOfService.section13.email' => '📩 이메일: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – 쿠키 정책',
			'cookiesPolicy.lastUpdated' => '최종 업데이트: 2025',
			'cookiesPolicy.intro' => 'Yogiface에 오신 것을 환영합니다! 앱을 방문할 때마다 디지털 도우미(쿠키)를 사용하여 경험을 개선하고 개인화합니다. 이 정책은 귀하가 선호 사항을 관리하는 방법을 설명합니다.',
			'cookiesPolicy.section1.title' => '1. 쿠키란 무엇인가요?',
			'cookiesPolicy.section1.content' => '쿠키는 기기에 배치되는 작은 데이터 파일입니다. 앱 사용 방식을 이해하고 경험을 더 원활하게 만드는 데 도움이 됩니다. 쿠키는 귀하의 신원을 직접 포함하지 않으며, 선호 사항과 사용 습관을 기억하는 디지털 도우미 역할을 합니다.',
			'cookiesPolicy.section2.title' => '2. 어떤 쿠키를 사용나요?',
			'cookiesPolicy.section2.essential.title' => '필수 쿠키',
			'cookiesPolicy.section2.essential.content' => '기본 앱 기능에 필요합니다. 세션 관리, 보안 및 기본 탐색과 같은 핵심 프로세스를 지원합니다.',
			'cookiesPolicy.section2.performance.title' => '성능 및 분석 쿠키',
			'cookiesPolicy.section2.performance.content' => '가장 자주 사용되는 영역과 개선이 필요한 섹션을 이해하는 데 도움이 됩니다.',
			'cookiesPolicy.section2.personalization.title' => '개인화 쿠키',
			'cookiesPolicy.section2.personalization.content' => '언어, 테마 및 운동 선호도와 같은 설정을 기억하여 더 개인적인 경험을 제공합니다.',
			'cookiesPolicy.section2.marketing.title' => '마케팅 및 광고 쿠키',
			'cookiesPolicy.section2.marketing.content' => '관심사에 더 적합한 콘텐츠 및 프로모션을 제공하는 데 사용될 수 있으며 때로는 타사 서비스와 연동됩니다.',
			'cookiesPolicy.section3.title' => '3. 쿠키를 사용하는 이유는 무엇인가요?',
			'cookiesPolicy.section3.items.0' => '앱이 빠르고 원활하게 실행되도록 보장하기 위해',
			'cookiesPolicy.section3.items.1' => '사용자 선호 사항을 기억하여 반복적인 작업을 줄이기 위해',
			'cookiesPolicy.section3.items.2' => '경험을 더 개인적이고 유용하게 만들기 위해',
			'cookiesPolicy.section3.items.3' => '사용 데이터를 분석하여 앱을 개선하기 위해',
			'cookiesPolicy.section4.title' => '4. 타사 쿠키',
			'cookiesPolicy.section4.content' => '분석 및 광고 서비스를 제공하는 타사 파트너가 일부 쿠키를 배치할 수 있습니다. 이는 제공업체의 자체 개인정보 처리방침 및 쿠키 정책의 적용을 받습니다.',
			'cookiesPolicy.section5.title' => '5. 쿠키 제어 및 관리',
			'cookiesPolicy.section5.content' => '기기 설정, 앱 권한 또는 시스템 설정을 통해 쿠키를 관리할 수 있습니다. 필수 쿠키를 비활성화하면 앱의 일부가 오작동할 수 있습니다.',
			'cookiesPolicy.section6.title' => '6. 데이터 사용',
			'cookiesPolicy.section6.content' => '쿠키를 통해 얻은 데이터가 개인 데이터로 분류되는 경우 개인정보 처리방침에 따라 법적 프레임워크 내에서 처리됩니다.',
			'cookiesPolicy.section7.title' => '7. 정책 업데이트',
			'cookiesPolicy.section7.content' => '이 정책은 기술 및 법적 변경에 따라 업데이트될 수 있습니다. 현재 버전은 게시되는 즉시 효력을 발생합니다.',
			'cookiesPolicy.section8.title' => '8. 연락처',
			'cookiesPolicy.section8.email' => '📩 이메일: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – 개인정보 처리방침',
			'privacyPolicy.lastUpdated' => '최종 업데이트: 2025',
			'privacyPolicy.intro' => '이 개인정보 처리방침은 Yogiface 모바일 애플리케이션("앱")을 사용하는 모든 사용자의 개인 데이터 수집, 사용, 저장 및 보호에 관한 원칙을 설명합니다. 앱을 사용함으로써 귀하는 이 정책에 동의하는 것입니다.',
			'privacyPolicy.principle' => 'Yogiface는 사용자 개인정보 보호 및 데이터 보안을 핵심 원칙으로 채택합니다. 모든 개인 데이터는 GDPR 및 관련 법률에 따라 처리됩니다.',
			'privacyPolicy.section1.title' => '1. 수집된 정보',
			'privacyPolicy.section1.sub1.title' => '1.1. 사용자 제공 데이터',
			'privacyPolicy.section1.sub1.items.0' => '이름, 닉네임 또는 프로필 정보',
			'privacyPolicy.section1.sub1.items.1' => '이메일 주소(등록, 구매 및 지원용)',
			'privacyPolicy.section1.sub1.items.2' => '운동 계획, 선호도 및 개인화 설정',
			'privacyPolicy.section1.sub1.items.3' => '피드백, 요청 및 지원 메시지',
			'privacyPolicy.section1.sub2.title' => '1.2. 자동 수집 데이터',
			'privacyPolicy.section1.sub2.items.0' => '기기 유형, 운영 체제 및 기술 정보',
			'privacyPolicy.section1.sub2.items.1' => '대략적인 위치 데이터(도시/국가 수준)',
			'privacyPolicy.section1.sub2.items.2' => '세션 지속 시간 및 화면 상호 작용과 같은 사용 정보',
			'privacyPolicy.section1.sub2.items.3' => '성능, 오류 및 충돌 로그',
			'privacyPolicy.section2.title' => '2. 데이터 사용 목적',
			'privacyPolicy.section2.items.0' => '앱의 중단 없는 운영을 보장하기 위해',
			'privacyPolicy.section2.items.1' => '페이스 요가 경험을 개인화하고 최적화하기 위해',
			'privacyPolicy.section2.items.2' => '오류 감지 및 성능 분석을 수행하기 위해',
			'privacyPolicy.section2.items.3' => '사용자 요구 및 지원 요청에 응답하기 위해',
			'privacyPolicy.section2.note' => '중요: 사용자 데이터는 제3자에게 절대 판매되지 않습니다.',
			'privacyPolicy.section3.title' => '3. 데이터 보존',
			'privacyPolicy.section3.items.0' => '데이터는 사용자 계정이 활성 상태인 동안 저장됩니다.',
			'privacyPolicy.section3.items.1' => '계정이 삭제되면 개인 데이터는 복구할 수 없도록 제거됩니다.',
			'privacyPolicy.section3.items.2' => '지원 기록은 완료 후 최대 12개월 동안 보관됩니다.',
			'privacyPolicy.section4.title' => '4. 데이터 공유',
			'privacyPolicy.section4.content' => '귀하의 데이터는 법적 요구 사항(공식 요청), 서비스 제공업체(클라우드 인프라, 분석) 또는 사용자 명시적 동의가 있는 경우에만 공유됩니다.',
			'privacyPolicy.section5.title' => '5. 쿠키 및 보안',
			'privacyPolicy.section5.content' => 'Yogiface는 성능 및 경험 향상을 위해 쿠키를 사용할 수 있습니다. 귀하의 데이터는 SSL/TLS 암호화 및 정기적인 보안 감사로 보호됩니다.',
			'privacyPolicy.section6.title' => '6. 사용자 권리',
			'privacyPolicy.section6.content' => '귀하는 데이터 처리에 대한 액세스, 수정, 삭제 및 제한 권한이 있습니다.',
			'privacyPolicy.section6.contact' => '요청 시:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. 아동의 개인정보 보호',
			'privacyPolicy.section8.content' => 'Yogiface는 13세 미만의 개인을 대상으로 하지 않습니다. 이 연령대에서 수집된 데이터는 감지되는 즉시 삭제됩니다.',
			'privacyPolicy.section10.title' => '10. 연락처',
			'privacyPolicy.section10.email' => '📩 이메일: support@fly-work.com',
			'onboarding.basicInformation' => '기본 정보',
			'onboarding.target' => '목표',
			'onboarding.habits' => '습관',
			'onboarding.step' => '단계',
			'onboarding.of' => '/',
			'onboarding.tellUsAboutYourself' => '자신에 대해 알려주세요',
			'onboarding.shortBioDescription' => '짧은 소개는 다른 사람들이 당신을 진짜로 알게 하는 데 도움이 됩니다. 재미있고 진솔하게 작성하세요',
			'onboarding.enterYourFullname' => '성명을 입력하세요',
			'onboarding.fullName' => '성명',
			'onboarding.male' => '남성',
			'onboarding.female' => '여성',
			'onboarding.dontWantToMention' => '언급하고 싶지 않음',
			'onboarding.whatIsMainObjective' => '주된 목표는 무엇인가요?',
			'onboarding.reduceWrinkles' => '주름 감소',
			'onboarding.tightenSkin' => '피부 탄력',
			'onboarding.liftDroopyEyelids' => '처진 눈꺼풀 리프팅',
			'onboarding.eliminateDoubleChin' => '이중턱 제거',
			'onboarding.brightenSkinTone' => '피부 톤 밝게 하기',
			'onboarding.allOfTheAbove' => '위의 모든 것',
			'onboarding.whichAreaToImprove' => '어떤 부위를 개선하고 싶으신가요?',
			'onboarding.forehead' => '이마',
			'onboarding.eyes' => '눈',
			'onboarding.nose' => '코',
			'onboarding.cheeks' => '볼',
			'onboarding.lips' => '입술',
			'onboarding.jawline' => '턱선',
			'onboarding.neck' => '목',
			'onboarding.fullface' => '얼굴 전체',
			'onboarding.whatFaceShapeAiming' => '어떤 얼굴형을 목표로 하시나요?',
			'onboarding.heart' => '하트형',
			'onboarding.oval' => '계란형',
			'onboarding.square' => '사각형',
			'onboarding.round' => '둥근형',
			'onboarding.diamond' => '다이아몬드형',
			'onboarding.whatIsYourSkinType' => '피부 타입은 무엇인가요?',
			'onboarding.normal' => '중성',
			'onboarding.oily' => '지성',
			'onboarding.dry' => '건성',
			'onboarding.combination' => '복합성',
			'onboarding.sensitive' => '민감성',
			'onboarding.whichOfThemDoYouHave' => '이 중 어떤 것을 가지고 계신가요?',
			'onboarding.acneAndPimples' => '여드름 및 뾰루지',
			'onboarding.redness' => '홍조',
			'onboarding.swelling' => '부기',
			'onboarding.wrinkles' => '주름',
			'onboarding.neckLines' => '목 주름',
			'onboarding.howOftenWearMakeup' => '화장은 얼마나 자주 하시나요?',
			'onboarding.everyDay' => '매일',
			'onboarding.fewDaysAWeek' => '일주일에 며칠',
			'onboarding.occasionally' => '가끔',
			'onboarding.never' => '전혀 안 함',
			'onboarding.haveYouHadBotox' => '보톡스 시술을 받은 적이 있나요?',
			'onboarding.yes' => '예',
			'onboarding.no' => '아니요',
			'onboarding.creatingPersonalizedProfile' => '개인화된 프로필 생성 중',
			'onboarding.tailoringExperience' => '선호도에 따라 경험을 맞춤화하고 있습니다...',
			'onboarding.gender' => '성별',
			'onboarding.age' => '나이',
			'onboarding.weight' => '체중',
			'onboarding.height' => '신장',
			'onboarding.matchingPersonalities' => '성격 매칭 중',
			'pressBackAgainToExit' => '종료하려면 뒤로 버튼을 다시 누르세요',
			'addedToFavoritesTitle' => '운동이 즐겨찾기에 성공적으로 추가되었습니다!',
			'removedFromFavoritesTitle' => '운동이 즐겨찾기에서 성공적으로 제거되었습니다!',
			'removedFromFavorites' => '코스에서 추가하고 싶은 다른 운동에 액세스할 수 있습니다',
			'faq.title' => '자주 묻는 질문',
			'faq.questions.q1.question' => 'Yogiface란 무엇인가요?',
			'faq.questions.q1.answer' => 'Yogiface는 얼굴 근육을 단련하여 피부 외관을 개선하는 페이스 요가 운동을 제공하는 AI 기반 개인 관리 앱입니다.',
			'faq.questions.q2.question' => '앱이 정말 효과가 있나요?',
			'faq.questions.q2.answer' => '예. 페이스 요가는 얼굴 근육을 활성화하여 피부 탄력을 높이고 순환을 가속화하며 정기적으로 사용하면 더 젊어 보이는 외모를 제공합니다.',
			'faq.questions.q3.question' => '인공 지능은 여기서 무엇을 하나요?',
			'faq.questions.q3.answer' => 'Yogiface는 얼굴 특징을 분석하고 목표 영역을 식별하며 개인화된 운동 계획을 생성합니다. 이렇게 하면 각 동작이 개인의 필요에 따라 최적화됩니다.',
			'faq.questions.q4.question' => '매일 얼마나 시간을 투자해야 하나요?',
			'faq.questions.q4.answer' => '하루에 5-10분이면 충분합니다. 정기적으로 연습하면 몇 주 안에 눈에 띄는 변화가 시작됩니다.',
			'faq.questions.q5.question' => '결과는 언제 볼 수 있나요?',
			'faq.questions.q5.answer' => '정기적으로 사용하면 2~3주 내에 피부 톤 개선이 눈에 띄고 4~6주 내에 얼굴 특징이 더 뚜렷해집니다. 결과는 사람마다 다를 수 있습니다.',
			'faq.questions.q6.question' => '이중턱이나 처짐 같은 문제에도 효과가 있나요?',
			'faq.questions.q6.answer' => '예. Yogiface는 턱선, 볼 근육 및 목 부위에 대한 목표 운동을 제공합니다. 정기적으로 수행하면 이 운동은 이 부위에 상당한 타이트닝 효과를 제공합니다.',
			'faq.questions.q7.question' => '동작을 올바르게 하고 있는지 어떻게 알 수 있나요?',
			'faq.questions.q7.answer' => '앱은 AI를 사용 하여 얼굴 각도, 표정 및 움직임 패턴을 분석하고 잘못된 부분을 알려줍니다.',
			'faq.questions.q8.question' => '모든 연령대 적합한가요?',
			'faq.questions.q8.answer' => '예. 페이스 요가는 비침습적 자연 요법입니다. 누구나 어린 나이부터 안전하게 연습할 수 있습니다.',
			'faq.questions.q9.question' => 'Yogiface는 무료인가요?',
			'faq.questions.q9.answer' => '기본 운동은 무료입니다. 개인 프로그램, 고급 얼굴 분석 및 특별 AI 추천은 프리미엄 패키지에 포함되어 있습니다.',
			'faq.questions.q10.question' => '성형 수술을 받은 사람도 사용할 수 있나요?',
			'faq.questions.q10.answer' => '많은 사용자가 안전하게 사용하지만 수술 후 회복 기간 동안 의사와 상담하는 것이 좋습니다.',
			'full_face' => '얼굴 전체 / 일반 활력',
			'eye_area' => '눈 & 눈 주위',
			'nose_area' => '코 & 코 주위',
			'cheeks_mid_face' => '볼 & 중안면',
			'lip_area' => '입술 & 입 주위',
			'jawline_chin' => '턱선, 턱 & 이중턱',
			'forehead_brow' => '이마 & 눈썹 부위',
			'neck_decollete' => '목 & 데콜테',
			'good_morning' => '좋은 아침입니다',
			'good_afternoon' => '좋은 오후입니다',
			'good_evening' => '좋은 저녁입니다',
			'splash.screen1.title' => '자연스럽게 얼굴 가꾸기',
			'splash.screen1.description' => '매일 몇 분의 얼굴 운동으로 얼굴 근육을 단련하세요. 자연스럽고 미적이며 비침습적인 뷰티 루틴을 만드세요.',
			'splash.screen2.title' => 'AI를 통한 개인화된 운동 계획',
			'splash.screen2.description' => 'AI가 얼굴 특징을 분석하고 필요 사항을 결정하며 귀하에게 맞는 운동을 추천합니다. 더 많은 운동이 필요한 근육을 추적합니다.',
			'splash.screen3.title' => '눈에 띄는 결과',
			'splash.screen3.description' => '정기적으로 사용하면 얼굴 윤곽이 더 뚜렷해지고 순환이 개선되며 피부가 더 생기 있어 보입니다. 매일의 작은 발걸음이 큰 변화를 가져옵니다.',
			'profile.title' => '프로필',
			'profile.freeVersion' => '무료 버전',
			'profile.error' => '오류',
			'profile.sections.accountSettings' => '계정 설정',
			'profile.sections.supportAndOther' => '지원 & 기타',
			'profile.menu.editProfile' => '프로필 편집',
			'profile.menu.notifications' => '알림',
			'profile.menu.premium' => '프리미엄',
			'profile.menu.favoriteExercises' => '즐겨찾는 운동',
			'profile.menu.appLanguage' => '앱 언어',
			'profile.menu.shareWithFriends' => '친구와 공유',
			'profile.menu.enterInviteCode' => '초대 코드 입력',
			'profile.menu.rateUs' => '평가하기',
			'profile.menu.faq' => '자주 묻는 질문',
			'profile.menu.logout' => '로그아웃',
			'profile.manage' => '관리',
			'profile.logoutDialog.title' => '로그아웃하려고 합니다',
			'profile.logoutDialog.message' => '또 만나요! 호흡 운동을 계속 추적하겠습니다.',
			'profile.logoutDialog.logoutButton' => '로그아웃',
			'profile.logoutDialog.cancelButton' => '취소',
			'home.premium' => '프리미엄!',
			'home.focusAreas' => '집중 영역',
			'home.popularCourses' => '인기 코스',
			'home.seeMore' => '더 보기',
			'home.personalized.title' => '개인화된\n얼굴 분석\n보고서',
			'home.personalized.description' => '피부 타입을 알아보기 위해\n피부를 분석해 주세요.',
			'home.personalized.button' => '지금 시도',
			'home.premiumPlan.title' => '프리미엄 플랜',
			'home.premiumPlan.description' => 'AI 챗봇 잠금 해제 &\n모든 프리미엄 기능 받기',
			'home.premiumPlan.button' => '프리미엄 받기',
			'home.premiumPlan.dialog.title' => '기능 사용 불가',
			'home.premiumPlan.dialog.message' => '이 기능은 현재 사용할 수 없습니다.',
			'home.premiumPlan.dialog.button' => '확인',
			'home.quickActions.title' => '빠른 작업',
			'home.quickActions.programTitle' => '당신의 개인 프로그램',
			'home.quickActions.programSubtitle' => '30일 안에\n최고의 모습을 위해',
			'home.quickActions.button' => '시작하기',
			'home.todaysExercise.title' => '오늘의 운동',
			'home.todaysExercise.recommended' => '추천 루틴',
			'home.todaysExercise.forToday' => '오늘을 위한',
			'home.courses.foreheadSmoother.title' => '이마 스무더',
			'home.courses.foreheadSmoother.description' => '이 동작은 이마 근육의 긴장과 축적된 찌푸린 주름을 풀어줍니다...',
			'home.courses.vMove.title' => '"V" 무브',
			'home.courses.vMove.description' => '눈 주위의 연약한 피부를 강화하고, 처진 눈꺼풀을 들어 올리고, 피로의 징후를 지웁니다.',
			'home.courses.cheekLifter.title' => '치크 리프터',
			'home.courses.cheekLifter.description' => '중력에 가장 취약한 볼 근육(대광대근)을 들어 올려 얼굴 타원을 복원합니다.',
			'home.benefits.naturalIroning.title' => '자연 다림질:',
			'home.benefits.naturalIroning.description' => '이마의 가로 주름을 펴고 깊어지는 것을 방지합니다.',
			'home.benefits.botoxEffect.title' => '보톡스 효과',
			'home.benefits.botoxEffect.description' => '긴장된 근육을 이완하고 찌푸리는 습관을 고칩니다.',
			'home.benefits.stressRelief.title' => '스트레스 해소',
			'home.benefits.stressRelief.description' => '이마에 쌓인 스트레스를 해소하고 두통을 완화합니다.',
			'home.benefits.radiantAppearance.title' => '빛나는 외모',
			'home.benefits.radiantAppearance.description' => '혈액 순환을 촉진하여 피부에 광채를 줍니다.',
			'home.benefits.dePuffing.title' => '부기 제거',
			'home.benefits.dePuffing.description' => '림프 배수 효과를 통해 얼굴 부기를 줄입니다.',
			'courseDetail.title' => '코스 상세',
			'courseDetail.getStarted' => '시작하기',
			'courseDetail.noExercisesFound' => '이 카테고리에 대한 운동이 없습니다',
			'courseDetail.instructions.instruction1.title' => '손과 얼굴 씻기',
			'courseDetail.instructions.instruction1.description' => '깨끗한 피부는 마사지를 더 효과적으로 만듭니다.',
			'courseDetail.instructions.instruction2.title' => '페이스 오일 또는 모이스처라이저 바르기',
			'courseDetail.instructions.instruction2.description' => '피부를 당기지 않고 부드럽게 미끄러지 듯 바르세요.',
			'courses.title' => '모든 코스',
			'courses.error' => '운동 로드 오류',
			'courses.personalCoursesTitle' => '개인 코스',
			'personalProgram.dailyGoalTitle' => '일일 목표 설정',
			'personalProgram.dailyGoalDescription' => '일정에 맞는 속도를 선택하세요',
			'personalProgram.personalizing' => '계획 개인화 중...',
			'personalProgram.readyMessage' => '당신의 개인 30일 페이스 요가 프로그램이 준비되었습니다✨',
			'personalProgram.minutes' => '분',
			'editProfile.title' => '프로필 편집',
			'editProfile.changePhoto' => '사진 변경',
			'editProfile.fullName' => '성명',
			'editProfile.email' => '이메일',
			'editProfile.age' => '나이',
			'editProfile.gender' => '성별',
			'editProfile.skinType' => '피부 타입',
			'editProfile.focusArea' => '집중 영역',
			'editProfile.focusAreaHint' => '이마, 눈, 코, 입, 볼...',
			'editProfile.save' => '저장',
			'editProfile.saving' => '저장 중...',
			'editProfile.updateSuccess' => '프로필이 성공적으로 업데이트되었습니다',
			'editProfile.updateError' => '프로필 업데이트 중 오류가 발생했습니다',
			'editProfile.deleteAccount' => '계정 삭제',
			'notifications.title' => '알림',
			'notifications.emptyTitle' => '아직 알림 없음',
			'notifications.emptyDescription' => '학습 여정에 대한 중요한 업데이트가 있을 때 알려드리겠습니다.',
			'notifications.premiumBannerTitle' => '프리미엄 혜택을\n놓치지 마세요!',
			'notifications.premiumBannerDescription' => '프리미엄 구독자로서 기회를 잡으세요.',
			'notifications.sample1Title' => '일일 명상이 준비되었습니다!',
			'notifications.sample1Description' => '오늘 하루의 평온을 찾으세요',
			'notifications.sample1Time' => '15분 전',
			'notifications.sample2Title' => '새로운 운동: 오션 브레스',
			'notifications.sample2Description' => '새로운 호흡 기술이 추가되었습니다',
			'notifications.sample2Time' => '1시간 전',
			'notifications.sample3Title' => '7일 연속 달성!',
			'notifications.sample3Description' => '웰빙을 위한 놀라운 작업을 계속하세요',
			'notifications.sample3Time' => '어제',
			'share.title' => '친구와 공유',
			'share.mainTitle' => '평화를 공유하세요',
			'share.descriptionPart1' => '친구를 초대하여 함께 호흡하세요.\n초대할 때마다 두 분 모두 ',
			'share.descriptionPart2' => '1주일 프리미엄',
			'share.descriptionPart3' => '을 받습니다',
			'share.yourReferralCode' => '귀하의 추천 코드',
			'share.codeCopied' => '코드 복사됨!',
			'share.copyCode' => '코드 복사',
			'facialScan.title' => '얼굴 스캔',
			'facialScan.step' => ({required Object current, required Object total}) => '단계 ${current} / ${total}',
			'facialScan.getStarted' => '시작하기',
			'facialScan.analyzing.title' => '분석 중',
			'facialScan.analyzing.description' => '고유한 특징 분석 중',
			'facialScan.analyzing.detail' => '개인화된 루틴을 위해 피부 질감, 근육 톤 및 집중 영역을 감지합니다.',
			'facialScan.analyzing.aiEngineWorking' => 'AI 엔진 작동 중',
			'facialScan.result.title' => '분석이 준비되었습니다!',
			'facialScan.result.subtitle' => '결과에 따라 루틴을 만들었습니다.',
			'facialScan.result.skinType' => '피부 타입',
			'facialScan.result.primaryGoal' => '주된 목표',
			'facialScan.result.recommended' => '귀하를 위한 추천',
			'facialScan.result.back' => '뒤로',
			'facialScan.instructions.front' => '프레임 안에 얼굴을 위치시키세요',
			'facialScan.instructions.left' => '머리를 왼쪽으로 돌리세요',
			'facialScan.instructions.right' => '머리를 오른쪽으로 돌리세요',
			'facialScan.instructions.lighting' => '더 나은 결과를 위해 밝은 환경에 있는지 확인하세요',
			'facialScan.instructions.tapToCapture' => '카메라 버튼을 탭하여 사진을 찍으세요',
			'facialScan.errors.cameraPermission' => '사진을 찍으려면 카메라 권한이 필요합니다.',
			'facialScan.errors.cameraPermissionRequired' => '카메라 권한 필요',
			'facialScan.errors.cameraPermissionMessage' => '얼굴 스캔에는 카메라 권한이 필요합니다. 앱 설정에서 활성화해 주세요.',
			'facialScan.errors.openSettings' => '설정 열기',
			'facialScan.errors.cancel' => '취소',
			'facialScan.errors.noFaceDetected' => '얼굴이 감지되지 않았습니다. 다시 시도해 주세요.',
			'facialScan.errors.captureFailed' => '이미지를 캡처하지 못했습니다. 다시 시도해 주세요.',
			'facialScan.positions.front' => '정면',
			'facialScan.positions.left' => '왼쪽',
			'facialScan.positions.right' => '오른쪽',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => '게스트로 계속',
			'auth.signInFailed' => ({required Object error}) => '로그인 실패: ${error}',
			'benefits' => '혜택',
			'minutes' => '분',
			'cancel' => '취소',
			'beforeBegin' => '시작하기 전에',
			'rest' => '휴식',
			'courseCompleted' => '코스 완료',
			'courseCompletedDescription' => '오늘 세션을 완료하신 것을 축하합니다.',
			'deleteAccount' => '계정 삭제',
			'deleteDialogTitle' => '계정을 삭제하시겠습니까?',
			'deleteDialogDescription' => '이 작업은 되돌릴 수 없으며 모든 운동 기록과 데이터가 영구적으로 삭제됩니다.',
			'deleteError' => '계정을 삭제하는 중 오류가 발생했습니다. 다시 시도해 주세요.',
			'favoriteExercises' => '즐겨찾는 운동',
			'noFavoritesInCategory' => '이 카테고리에 즐겨찾기가 없습니다',
			'noFavoritesAdded' => '아직 즐겨찾기가 추가되지 않았습니다.',
			'favoriteExercisesDescription' => '즐겨찾는 운동을 설정하려면 내 운동 페이지에서 좋아하는 운동을 추가할 수 있습니다.',
			'enterInvitationCode' => '초대 코드 입력',
			'bePartOfPeace' => '평화의 일부가 되세요',
			'inviteFriends' => '친구에게 받은 초대 코드를 입력하세요.\n지정된 필드에 입력하세요',
			'twoDaysPremium' => '2일 프리미엄',
			'advantage' => '\n혜택을 누리세요.',
			'send' => '보내기',
			'deleteNotifications' => '알림 삭제',
			'deleteNotificationsDescription' => '모든 알림을 삭제하시겠습니까?\n이 작업은 되돌릴 수 없으며 실행 취소할 수 없습니다.',
			'deleteAll' => '모두 삭제',
			'appLanguage' => '앱 언어',
			'selectLanguage' => '선호하는 언어를 선택하세요',
			'save' => '저장',
			'languageOptions.english' => '영어',
			'languageOptions.german' => '독일어',
			'languageOptions.italian' => '이탈리아어',
			'languageOptions.french' => '프랑스어',
			'languageOptions.japanese' => '일본어',
			'languageOptions.spanish' => '스페인어',
			'languageOptions.russian' => '러시아어',
			'languageOptions.turkish' => '터키어',
			'languageOptions.korean' => '한국어',
			'languageOptions.hindi' => '힌디어',
			'languageOptions.portuguese' => '포르투갈어',
			_ => null,
		};
	}
}
