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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'ようこそ ${name}';
	@override String get welcome2 => 'ようこそ';
	@override String get get_started => '始める';
	@override String get next => '次へ';
	@override String get back => '戻る';
	@override String get skip => 'スキップ';
	@override String get logintext => 'お会いできて嬉しいです。アカウントにログインして、中断したところから続けることができます。';
	@override late final _TranslationsTermOfServiceJa termOfService = _TranslationsTermOfServiceJa._(_root);
	@override String get cookies => 'クッキーポリシー';
	@override String get privacy => 'プライバシーポリシー';
	@override late final _TranslationsTermsOfServiceJa termsOfService = _TranslationsTermsOfServiceJa._(_root);
	@override late final _TranslationsCookiesPolicyJa cookiesPolicy = _TranslationsCookiesPolicyJa._(_root);
	@override late final _TranslationsPrivacyPolicyJa privacyPolicy = _TranslationsPrivacyPolicyJa._(_root);
	@override late final _TranslationsOnboardingJa onboarding = _TranslationsOnboardingJa._(_root);
	@override String get pressBackAgainToExit => 'もう一度戻るを押して終了';
	@override String get addedToFavoritesTitle => 'エクササイズがお気に入りに追加されました！';
	@override String get removedFromFavoritesTitle => 'エクササイズがお気に入りから削除されました！';
	@override String get removedFromFavorites => '追加したい他のエクササイズはコースからアクセスできます';
	@override late final _TranslationsFaqJa faq = _TranslationsFaqJa._(_root);
	@override String get full_face => '顔全体/全体的な活性化';
	@override String get eye_area => '目と目の周り';
	@override String get nose_area => '鼻と鼻の周り';
	@override String get cheeks_mid_face => '頬と顔の中央';
	@override String get lip_area => '唇と口の周り';
	@override String get jawline_chin => 'フェイスライン、あご、二重あご';
	@override String get forehead_brow => '額と眉の領域';
	@override String get neck_decollete => '首とデコルテ';
	@override String get good_morning => 'おはようございます';
	@override String get good_afternoon => 'こんにちは';
	@override String get good_evening => 'こんばんは';
	@override late final _TranslationsSplashJa splash = _TranslationsSplashJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsHomeJa home = _TranslationsHomeJa._(_root);
	@override late final _TranslationsCourseDetailJa courseDetail = _TranslationsCourseDetailJa._(_root);
	@override late final _TranslationsCoursesJa courses = _TranslationsCoursesJa._(_root);
	@override late final _TranslationsPersonalProgramJa personalProgram = _TranslationsPersonalProgramJa._(_root);
	@override late final _TranslationsEditProfileJa editProfile = _TranslationsEditProfileJa._(_root);
	@override late final _TranslationsNotificationsJa notifications = _TranslationsNotificationsJa._(_root);
	@override late final _TranslationsShareJa share = _TranslationsShareJa._(_root);
	@override late final _TranslationsFacialScanJa facialScan = _TranslationsFacialScanJa._(_root);
	@override late final _TranslationsAuthJa auth = _TranslationsAuthJa._(_root);
	@override String get benefits => 'メリット';
	@override String get minutes => '分';
	@override String get cancel => 'キャンセル';
	@override String get beforeBegin => '始める前に';
	@override String get rest => '休憩';
	@override String get courseCompleted => 'コース完了';
	@override String get courseCompletedDescription => '今日のセッションを完了した素晴らしい仕事。';
	@override String get deleteAccount => 'アカウントを削除';
	@override String get deleteDialogTitle => 'アカウントを削除してもよろしいですか？';
	@override String get deleteDialogDescription => 'このアクションは元に戻せず、すべてのエクササイズ履歴とデータが永久に削除されます。';
	@override String get deleteError => 'アカウントの削除中にエラーが発生しました。もう一度お試しください。';
	@override String get favoriteExercises => 'お気に入りのエクササイズ';
	@override String get noFavoritesInCategory => 'このカテゴリにお気に入りはありません';
	@override String get noFavoritesAdded => 'まだお気に入りが追加されていません。';
	@override String get favoriteExercisesDescription => 'お気に入りのエクササイズを設定するには、マイエクササイズページから好きなエクササイズを追加できます。';
	@override String get enterInvitationCode => '招待コードを入力';
	@override String get bePartOfPeace => '平和の一部になる';
	@override String get inviteFriends => '友達から受け取った招待コードを入力してください。\n指定されたフィールドに入力してください';
	@override String get twoDaysPremium => '7日間プレミアム';
	@override String get advantage => '\nその利点を享受するために。';
	@override String get send => '送信';
	@override late final _TranslationsReferralCodeJa referralCode = _TranslationsReferralCodeJa._(_root);
	@override String get deleteNotifications => '通知を削除';
	@override String get deleteNotificationsDescription => 'すべての通知を削除してもよろしいですか？\nこのアクションは元に戻せず、取り消すことはできません。';
	@override String get deleteAll => 'すべて削除';
	@override String get appLanguage => 'アプリの言語';
	@override String get selectLanguage => '希望する言語を選択してください';
	@override String get save => '保存';
	@override late final _TranslationsLanguageOptionsJa languageOptions = _TranslationsLanguageOptionsJa._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceJa implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'swipeに登録することで、';
	@override String get link1 => '利用規約';
	@override String get text2 => 'に同意したことになります。';
	@override String get link2 => 'プライバシーポリシー';
	@override String get text3 => 'および';
	@override String get link3 => 'クッキーポリシー';
	@override String get text4 => 'でデータの処理方法をご確認ください';
}

// Path: termsOfService
class _TranslationsTermsOfServiceJa implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – 利用規約';
	@override String get lastUpdated => '最終更新：2025年';
	@override String get principle => 'Yogifaceは、顔の筋肉をサポートすることを目的としたフェイシャルヨガエクササイズとガイド付きコンテンツを提供するウェルネスアプリケーションです。このアプリケーションは、医療、臨床、美容、または専門的な健康サービスを提供するものではありません。';
	@override String get intro => 'この利用規約（「規約」）には、Yogifaceモバイルアプリケーション（「アプリケーション」）の使用に適用されるルールが含まれています。アプリケーションを使用することにより、これらの規約に同意したことになります。規約に同意しない場合は、アプリケーションを使用しないでください。';
	@override late final _TranslationsTermsOfServiceSection1Ja section1 = _TranslationsTermsOfServiceSection1Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection2Ja section2 = _TranslationsTermsOfServiceSection2Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection3Ja section3 = _TranslationsTermsOfServiceSection3Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection4Ja section4 = _TranslationsTermsOfServiceSection4Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection5Ja section5 = _TranslationsTermsOfServiceSection5Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection6Ja section6 = _TranslationsTermsOfServiceSection6Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection7Ja section7 = _TranslationsTermsOfServiceSection7Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection12Ja section12 = _TranslationsTermsOfServiceSection12Ja._(_root);
	@override late final _TranslationsTermsOfServiceSection13Ja section13 = _TranslationsTermsOfServiceSection13Ja._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyJa implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – クッキーポリシー';
	@override String get lastUpdated => '最終更新：2025年';
	@override String get intro => 'Yogifaceへようこそ！アプリを訪問するたびに、デジタルヘルパー（クッキー）を使用して、エクスペリエンスを向上させ、パーソナライズします。このポリシーでは、設定を管理する方法について説明します。';
	@override late final _TranslationsCookiesPolicySection1Ja section1 = _TranslationsCookiesPolicySection1Ja._(_root);
	@override late final _TranslationsCookiesPolicySection2Ja section2 = _TranslationsCookiesPolicySection2Ja._(_root);
	@override late final _TranslationsCookiesPolicySection3Ja section3 = _TranslationsCookiesPolicySection3Ja._(_root);
	@override late final _TranslationsCookiesPolicySection4Ja section4 = _TranslationsCookiesPolicySection4Ja._(_root);
	@override late final _TranslationsCookiesPolicySection5Ja section5 = _TranslationsCookiesPolicySection5Ja._(_root);
	@override late final _TranslationsCookiesPolicySection6Ja section6 = _TranslationsCookiesPolicySection6Ja._(_root);
	@override late final _TranslationsCookiesPolicySection7Ja section7 = _TranslationsCookiesPolicySection7Ja._(_root);
	@override late final _TranslationsCookiesPolicySection8Ja section8 = _TranslationsCookiesPolicySection8Ja._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyJa implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – プライバシーポリシー';
	@override String get lastUpdated => '最終更新：2025年';
	@override String get intro => 'このプライバシーポリシーは、Yogifaceモバイルアプリケーション（「アプリ」）を使用するすべてのユーザーの個人データの収集、使用、保存、保護に関する原則を説明します。アプリを使用することにより、このポリシーに同意したことになります。';
	@override String get principle => 'Yogifaceは、ユーザーのプライバシーとデータセキュリティを基本原則として採用しています。すべての個人データは、GDPRおよび関連法規に従って処理されます。';
	@override late final _TranslationsPrivacyPolicySection1Ja section1 = _TranslationsPrivacyPolicySection1Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection2Ja section2 = _TranslationsPrivacyPolicySection2Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection3Ja section3 = _TranslationsPrivacyPolicySection3Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection4Ja section4 = _TranslationsPrivacyPolicySection4Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection5Ja section5 = _TranslationsPrivacyPolicySection5Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection6Ja section6 = _TranslationsPrivacyPolicySection6Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection8Ja section8 = _TranslationsPrivacyPolicySection8Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection10Ja section10 = _TranslationsPrivacyPolicySection10Ja._(_root);
}

// Path: onboarding
class _TranslationsOnboardingJa implements TranslationsOnboardingEn {
	_TranslationsOnboardingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => '基本情報';
	@override String get target => '目標';
	@override String get habits => '習慣';
	@override String get step => 'ステップ';
	@override String get of => '/';
	@override String get tellUsAboutYourself => 'あなたについて教えてください';
	@override String get shortBioDescription => '短い自己紹介は、他の人があなたを本当に知るのに役立ちます。楽しく本物に保ちましょう';
	@override String get enterYourFullname => 'フルネームを入力してください';
	@override String get fullName => 'フルネーム';
	@override String get male => '男性';
	@override String get female => '女性';
	@override String get dontWantToMention => '言いたくない';
	@override String get whatIsMainObjective => '主な目的は何ですか？';
	@override String get reduceWrinkles => 'しわを減らす';
	@override String get tightenSkin => '肌を引き締める';
	@override String get liftDroopyEyelids => 'たるんだまぶたを持ち上げる';
	@override String get eliminateDoubleChin => '二重あごを解消する';
	@override String get brightenSkinTone => '肌のトーンを明るくする';
	@override String get allOfTheAbove => '上記のすべて';
	@override String get whichAreaToImprove => 'どの領域を改善したいですか？';
	@override String get forehead => '額';
	@override String get eyes => '目';
	@override String get nose => '鼻';
	@override String get cheeks => '頬';
	@override String get lips => '唇';
	@override String get jawline => 'フェイスライン';
	@override String get neck => '首';
	@override String get fullface => '顔全体';
	@override String get whatFaceShapeAiming => 'どの顔の形を目指していますか？';
	@override String get heart => 'ハート';
	@override String get oval => 'オーバル';
	@override String get square => 'スクエア';
	@override String get round => 'ラウンド';
	@override String get diamond => 'ダイヤモンド';
	@override String get whatIsYourSkinType => 'あなたの肌タイプは何ですか？';
	@override String get normal => '普通肌';
	@override String get oily => '脂性肌';
	@override String get dry => '乾燥肌';
	@override String get combination => '混合肌';
	@override String get sensitive => '敏感肌';
	@override String get whichOfThemDoYouHave => 'どれを持っていますか？';
	@override String get acneAndPimples => 'ニキビと吹き出物';
	@override String get redness => '赤み';
	@override String get swelling => '腫れ';
	@override String get wrinkles => 'しわ';
	@override String get neckLines => '首のしわ';
	@override String get howOftenWearMakeup => 'どのくらいの頻度でメイクをしますか？';
	@override String get everyDay => '毎日';
	@override String get fewDaysAWeek => '週に数日';
	@override String get occasionally => '時々';
	@override String get never => 'しない';
	@override String get haveYouHadBotox => 'ボトックスをしたことがありますか？';
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
	@override String get creatingPersonalizedProfile => 'パーソナライズされたプロフィールを作成中';
	@override String get tailoringExperience => 'あなたの好みに基づいてエクスペリエンスをカスタマイズしています...';
	@override String get gender => '性別';
	@override String get age => '年齢';
	@override String get weight => '体重';
	@override String get height => '身長';
	@override String get matchingPersonalities => 'パーソナリティのマッチング';
}

// Path: faq
class _TranslationsFaqJa implements TranslationsFaqEn {
	_TranslationsFaqJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'よくある質問';
	@override late final _TranslationsFaqQuestionsJa questions = _TranslationsFaqQuestionsJa._(_root);
}

// Path: splash
class _TranslationsSplashJa implements TranslationsSplashEn {
	_TranslationsSplashJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ja screen1 = _TranslationsSplashScreen1Ja._(_root);
	@override late final _TranslationsSplashScreen2Ja screen2 = _TranslationsSplashScreen2Ja._(_root);
	@override late final _TranslationsSplashScreen3Ja screen3 = _TranslationsSplashScreen3Ja._(_root);
}

// Path: profile
class _TranslationsProfileJa implements TranslationsProfileEn {
	_TranslationsProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィール';
	@override String get freeVersion => '無料版';
	@override String get error => 'エラー';
	@override late final _TranslationsProfileSectionsJa sections = _TranslationsProfileSectionsJa._(_root);
	@override late final _TranslationsProfileMenuJa menu = _TranslationsProfileMenuJa._(_root);
	@override String get manage => '管理';
	@override late final _TranslationsProfileLogoutDialogJa logoutDialog = _TranslationsProfileLogoutDialogJa._(_root);
}

// Path: home
class _TranslationsHomeJa implements TranslationsHomeEn {
	_TranslationsHomeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get premium => 'プレミアム！';
	@override String get focusAreas => 'フォーカスエリア';
	@override String get popularCourses => '人気のコース';
	@override String get seeMore => 'もっと見る';
	@override late final _TranslationsHomePersonalizedJa personalized = _TranslationsHomePersonalizedJa._(_root);
	@override late final _TranslationsHomePremiumPlanJa premiumPlan = _TranslationsHomePremiumPlanJa._(_root);
	@override late final _TranslationsHomeQuickActionsJa quickActions = _TranslationsHomeQuickActionsJa._(_root);
	@override late final _TranslationsHomeTodaysExerciseJa todaysExercise = _TranslationsHomeTodaysExerciseJa._(_root);
	@override late final _TranslationsHomeCoursesJa courses = _TranslationsHomeCoursesJa._(_root);
	@override late final _TranslationsHomeBenefitsJa benefits = _TranslationsHomeBenefitsJa._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailJa implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コースの詳細';
	@override String get getStarted => '始める';
	@override String get noExercisesFound => 'このカテゴリのエクササイズが見つかりません';
	@override late final _TranslationsCourseDetailInstructionsJa instructions = _TranslationsCourseDetailInstructionsJa._(_root);
}

// Path: courses
class _TranslationsCoursesJa implements TranslationsCoursesEn {
	_TranslationsCoursesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'すべてのコース';
	@override String get error => 'エクササイズの読み込みエラー';
	@override String get personalCoursesTitle => 'パーソナルコース';
}

// Path: personalProgram
class _TranslationsPersonalProgramJa implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => '毎日の目標を設定';
	@override String get dailyGoalDescription => 'スケジュールに合ったペースを選択してください';
	@override String get personalizing => 'プランをパーソナライズしています...';
	@override String get readyMessage => 'あなたのパーソナル30日間フェイシャルヨガプログラムの準備ができました✨';
	@override String get minutes => 'min';
	@override String get objectiveTitle => 'Which expression bothers you most when you look in the mirror?';
	@override String get objectiveSubtitle => 'Program balance is adjusted according to facial expression';
	@override String get feelingTitle => 'How would you like to feel by doing face yoga?';
	@override String get timeTitle => 'When is it easier for you to do face yoga?';
	@override late final _TranslationsPersonalProgramObjectivesJa objectives = _TranslationsPersonalProgramObjectivesJa._(_root);
	@override late final _TranslationsPersonalProgramFeelingsJa feelings = _TranslationsPersonalProgramFeelingsJa._(_root);
	@override late final _TranslationsPersonalProgramTimesJa times = _TranslationsPersonalProgramTimesJa._(_root);
}

// Path: editProfile
class _TranslationsEditProfileJa implements TranslationsEditProfileEn {
	_TranslationsEditProfileJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィールを編集';
	@override String get changePhoto => '写真を変更';
	@override String get fullName => 'フルネーム';
	@override String get email => 'メール';
	@override String get age => '年齢';
	@override String get gender => '性別';
	@override String get skinType => '肌タイプ';
	@override String get focusArea => 'フォーカスエリア';
	@override String get focusAreaHint => '額、目、鼻、口、頬...';
	@override String get save => '保存';
	@override String get saving => '保存中...';
	@override String get updateSuccess => 'プロフィールが正常に更新されました';
	@override String get updateError => 'プロフィールの更新中にエラーが発生しました';
	@override String get deleteAccount => 'アカウントを削除';
}

// Path: notifications
class _TranslationsNotificationsJa implements TranslationsNotificationsEn {
	_TranslationsNotificationsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '通知';
	@override String get emptyTitle => 'まだ通知はありません';
	@override String get emptyDescription => '学習の旅に関する重要な更新があるときにお知らせします。';
	@override String get premiumBannerTitle => 'プレミアム特典を\nお見逃しなく！';
	@override String get premiumBannerDescription => 'プレミアム購読者として機会をつかみましょう。';
	@override String get sample1Title => '今日の瞑想の準備ができました！';
	@override String get sample1Description => '今日の落ち着きを見つけてください';
	@override String get sample1Time => '15分前';
	@override String get sample2Title => '新しいエクササイズ：オーシャンブレス';
	@override String get sample2Description => '新しい呼吸法が追加されました';
	@override String get sample2Time => '1時間前';
	@override String get sample3Title => '7日間のストリークを達成しました！';
	@override String get sample3Description => 'あなたの幸福のための素晴らしい仕事を続けてください';
	@override String get sample3Time => '昨日';
}

// Path: share
class _TranslationsShareJa implements TranslationsShareEn {
	_TranslationsShareJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '友達と共有';
	@override String get mainTitle => '平和を共有する';
	@override String get descriptionPart1 => '友達を招待して一緒に呼吸しましょう。\n招待ごとに、両方が ';
	@override String get descriptionPart2 => '1週間プレミアム';
	@override String get descriptionPart3 => 'を取得';
	@override String get yourReferralCode => 'あなたの紹介コード';
	@override String get codeCopied => 'コードがコピーされました！';
	@override String get copyCode => 'コードをコピー';
}

// Path: facialScan
class _TranslationsFacialScanJa implements TranslationsFacialScanEn {
	_TranslationsFacialScanJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '顔スキャン';
	@override String step({required Object current, required Object total}) => 'ステップ ${current} / ${total}';
	@override String get getStarted => '始める';
	@override late final _TranslationsFacialScanAnalyzingJa analyzing = _TranslationsFacialScanAnalyzingJa._(_root);
	@override late final _TranslationsFacialScanResultJa result = _TranslationsFacialScanResultJa._(_root);
	@override late final _TranslationsFacialScanInstructionsJa instructions = _TranslationsFacialScanInstructionsJa._(_root);
	@override late final _TranslationsFacialScanErrorsJa errors = _TranslationsFacialScanErrorsJa._(_root);
	@override late final _TranslationsFacialScanPositionsJa positions = _TranslationsFacialScanPositionsJa._(_root);
}

// Path: auth
class _TranslationsAuthJa implements TranslationsAuthEn {
	_TranslationsAuthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'ゲストとして続行';
	@override String signInFailed({required Object error}) => 'サインインに失敗しました：${error}';
}

// Path: referralCode
class _TranslationsReferralCodeJa implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8桁のコードを入力';
	@override String get applying => 'コードを適用中...';
	@override late final _TranslationsReferralCodeSuccessJa success = _TranslationsReferralCodeSuccessJa._(_root);
	@override late final _TranslationsReferralCodeErrorsJa errors = _TranslationsReferralCodeErrorsJa._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsJa implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get english => '英語';
	@override String get german => 'ドイツ語';
	@override String get italian => 'イタリア語';
	@override String get french => 'フランス語';
	@override String get japanese => '日本語';
	@override String get spanish => 'スペイン語';
	@override String get russian => 'ロシア語';
	@override String get turkish => 'トルコ語';
	@override String get korean => '韓国語';
	@override String get hindi => 'ヒンディー語';
	@override String get portuguese => 'ポルトガル語';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Ja implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1. サービスの範囲';
	@override String get content => 'Yogifaceは、ユーザーにガイド付きフェイシャルヨガとエクササイズの体験を提供します。アプリケーションには以下が含まれます：';
	@override List<String> get items => [
		'フェイシャルヨガとエクササイズのガイド',
		'毎日および毎週のエクササイズルーチン',
		'特定の顔の領域に対する的を絞った推奨事項',
		'カスタマイズ可能なプランと進捗追跡',
	];
	@override String get note => '提供されるコンテンツは、専門的、医療的、または美容的なアドバイス、診断、または治療を構成するものではありません。';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Ja implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 使用条件';
	@override List<String> get items => [
		'13歳以上である必要があります。',
		'正確で最新のアカウント情報を提供する必要があります。',
		'エクササイズは医療サービスではないことを認識します。',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Ja implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '3. 禁止事項';
	@override List<String> get items => [
		'違法な活動のためにアプリを使用すること。',
		'許可なくコンテンツを販売、複製、または配布すること。',
		'不正アクセス、ハッキング、またはリバースエンジニアリングの試み。',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Ja implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4. アカウントとメンバーシップ';
	@override String get content => 'アカウントのセキュリティはお客様の責任です。Yogifaceは、規約に反する使用が検出された場合、アカウントを一時停止または閉鎖する権利を留保します。';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Ja implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '5. プレミアムおよび有料サービス';
	@override List<String> get items => [
		'価格設定はApp StoreおよびGoogle Playのポリシーに基づいています。',
		'サブスクリプションは自動更新される場合があります。キャンセルはストアの設定から行います。',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Ja implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '6. 免責事項';
	@override String get content => 'ユーザーは自己責任でエクササイズを実行します。健康上の問題がある場合は、医療専門家に相談してください。アプリは診断や治療に使用しないでください。';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Ja implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7. 知的財産';
	@override String get content => 'デザイン、ソフトウェア、画像、エクササイズコンテンツはYogifaceに帰属します。無断でのコピーまたはソースコードの変更は禁止されています。';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Ja implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '12. 準拠法';
	@override String get content => 'これらの規約は、トルコ共和国の法律に準拠します。イスタンブール中央裁判所が紛争に対する管轄権を有します。';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Ja implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '13. お問い合わせ';
	@override String get email => '📩 メール：support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Ja implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1. クッキーとは？';
	@override String get content => 'クッキーは、デバイスに配置される小さなデータファイルです。アプリの使用方法を理解し、エクスペリエンスをよりスムーズにするのに役立ちます。クッキーには直接的にあなたのIDは含まれません。設定や使用習慣を記憶するデジタルヘルパーとして機能します。';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Ja implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '2. 使用するクッキーは？';
	@override late final _TranslationsCookiesPolicySection2EssentialJa essential = _TranslationsCookiesPolicySection2EssentialJa._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceJa performance = _TranslationsCookiesPolicySection2PerformanceJa._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationJa personalization = _TranslationsCookiesPolicySection2PersonalizationJa._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingJa marketing = _TranslationsCookiesPolicySection2MarketingJa._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Ja implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '3. クッキーを使用する理由';
	@override List<String> get items => [
		'アプリが高速かつスムーズに動作することを保証するため',
		'ユーザーの設定を記憶することで繰り返しのアクションを減らすため',
		'エクスペリエンスをよりパーソナルで有用にするため',
		'使用データを分析してアプリを改善するため',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Ja implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4. サードパーティのクッキー';
	@override String get content => '一部のクッキーは、分析および広告サービスを提供するサードパーティパートナーによって配置される場合があります。これらは、プロバイダー独自のプライバシーおよびクッキーポリシーの対象となります。';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Ja implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '5. クッキーの制御と管理';
	@override String get content => 'デバイスの設定、アプリの権限、またはシステム設定からクッキーを管理できます。必要なクッキーを無効にすると、アプリの一部が正しく機能しなくなる可能性があります。';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Ja implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '6. データの使用';
	@override String get content => 'クッキーを通じて取得されたデータは、個人データとして認定される場合、プライバシーポリシーに従って法的枠組み内で処理されます。';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Ja implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '7. ポリシーの更新';
	@override String get content => 'このポリシーは、技術的および法的変更に応じて更新される場合があります。現在のバージョンは公開されるとすぐに有効になります。';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Ja implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '8. お問い合わせ';
	@override String get email => '📩 メール：support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Ja implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1. 収集される情報';
	@override late final _TranslationsPrivacyPolicySection1Sub1Ja sub1 = _TranslationsPrivacyPolicySection1Sub1Ja._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Ja sub2 = _TranslationsPrivacyPolicySection1Sub2Ja._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Ja implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '2. データ使用目的';
	@override List<String> get items => [
		'アプリの中断のない動作を保証するため',
		'フェイシャルヨガエクスペリエンスをパーソナライズおよび最適化するため',
		'エラー検出とパフォーマンス分析を実行するため',
		'ユーザーの要求とサポートリクエストに応答するため',
	];
	@override String get note => '重要：ユーザーデータは第三者に販売されることはありません。';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Ja implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '3. データ保持';
	@override List<String> get items => [
		'データは、ユーザーアカウントがアクティブである限り保存されます。',
		'アカウントが削除されると、個人データは不可逆的に削除されます。',
		'サポート記録は、完了後最大12か月間保持されます。',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Ja implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '4. データ共有';
	@override String get content => 'データは、法的要件（公式リクエスト）、サービスプロバイダー（クラウドインフラストラクチャ、分析）、またはユーザーの明示的な同意がある場合にのみ共有されます。';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Ja implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '5. クッキーとセキュリティ';
	@override String get content => 'Yogifaceは、パフォーマンスとエクスペリエンスの向上のためにクッキーを使用する場合があります。データはSSL/TLS暗号化と定期的なセキュリティ監査によって保護されています。';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Ja implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '6. ユーザーの権利';
	@override String get content => 'アクセス、修正、削除、データ処理の制限の権利があります。';
	@override String get contact => 'リクエストについて：';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Ja implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '8. 子供のプライバシー';
	@override String get content => 'Yogifaceは13歳未満の個人を対象としていません。この年齢層から収集されたデータは、検出された場合直ちに削除されます。';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Ja implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '10. お問い合わせ';
	@override String get email => '📩 メール：support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsJa implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ja q1 = _TranslationsFaqQuestionsQ1Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ja q2 = _TranslationsFaqQuestionsQ2Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ja q3 = _TranslationsFaqQuestionsQ3Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ja q4 = _TranslationsFaqQuestionsQ4Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ja q5 = _TranslationsFaqQuestionsQ5Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ja q6 = _TranslationsFaqQuestionsQ6Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ja q7 = _TranslationsFaqQuestionsQ7Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ja q8 = _TranslationsFaqQuestionsQ8Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ja q9 = _TranslationsFaqQuestionsQ9Ja._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ja q10 = _TranslationsFaqQuestionsQ10Ja._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ja implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自然に顔を形作る';
	@override String get description => '毎日わずか数分のフェイシャルエクササイズで顔の筋肉を鍛えましょう。自然で美的で非侵襲的な美容ルーチンを作成します。';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ja implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'AIによるパーソナライズされたエクササイズプラン';
	@override String get description => 'AIがあなたの顔の特徴を分析し、ニーズを決定し、あなたに合わせたエクササイズを推奨します。どの筋肉がより多くの作業を必要とするかを追跡します。';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Ja implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '目に見える結果';
	@override String get description => '定期的な使用により、顔の輪郭がより明確になり、循環が改善され、肌がより活気に満ちて見えます。毎日の小さな一歩が大きな変化をもたらします。';
}

// Path: profile.sections
class _TranslationsProfileSectionsJa implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'アカウント設定';
	@override String get supportAndOther => 'サポートとその他';
}

// Path: profile.menu
class _TranslationsProfileMenuJa implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'プロフィールを編集';
	@override String get notifications => '通知';
	@override String get premium => 'プレミアム';
	@override String get favoriteExercises => 'お気に入りのエクササイズ';
	@override String get appLanguage => 'アプリの言語';
	@override String get shareWithFriends => '友達と共有';
	@override String get enterInviteCode => '招待コードを入力';
	@override String get rateUs => '評価する';
	@override String get faq => 'FAQ';
	@override String get logout => 'ログアウト';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogJa implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログアウトしようとしています';
	@override String get message => 'またお会いしましょう！呼吸エクササイズを追跡し続けます。';
	@override String get logoutButton => 'ログアウト';
	@override String get cancelButton => 'キャンセル';
}

// Path: home.personalized
class _TranslationsHomePersonalizedJa implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'パーソナライズされた\n顔分析\nレポート';
	@override String get description => '肌のタイプを見つけるために\n肌を分析してください。';
	@override String get button => '今すぐ試す';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanJa implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プレミアムプラン';
	@override String get description => 'AIチャットボットのロックを解除し、\nすべてのプレミアム機能を取得';
	@override String get button => 'プレミアムを取得';
	@override late final _TranslationsHomePremiumPlanDialogJa dialog = _TranslationsHomePremiumPlanDialogJa._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsJa implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'クイックアクション';
	@override String get programTitle => 'あなたのパーソナルプログラム';
	@override String get programSubtitle => '30日間で\n最高の見た目のために';
	@override String get button => '始める';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseJa implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '今日のエクササイズ';
	@override String get recommended => '推奨ルーチン';
	@override String get forToday => '今日のために';
}

// Path: home.courses
class _TranslationsHomeCoursesJa implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherJa foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherJa._(_root);
	@override late final _TranslationsHomeCoursesVMoveJa vMove = _TranslationsHomeCoursesVMoveJa._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterJa cheekLifter = _TranslationsHomeCoursesCheekLifterJa._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsJa implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningJa naturalIroning = _TranslationsHomeBenefitsNaturalIroningJa._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectJa botoxEffect = _TranslationsHomeBenefitsBotoxEffectJa._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefJa stressRelief = _TranslationsHomeBenefitsStressReliefJa._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceJa radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceJa._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingJa dePuffing = _TranslationsHomeBenefitsDePuffingJa._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsJa implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Ja instruction1 = _TranslationsCourseDetailInstructionsInstruction1Ja._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Ja instruction2 = _TranslationsCourseDetailInstructionsInstruction2Ja._(_root);
}

// Path: personalProgram.objectives
class _TranslationsPersonalProgramObjectivesJa implements TranslationsPersonalProgramObjectivesEn {
	_TranslationsPersonalProgramObjectivesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get tired => 'Tired and worn-out look';
	@override String get harsh => 'Harsh and tense expression';
	@override String get pale => 'Pale and lifeless skin';
	@override String get asymmetrical => 'Asymmetrical facial features';
	@override String get general => 'No obvious problem, I want general care';
}

// Path: personalProgram.feelings
class _TranslationsPersonalProgramFeelingsJa implements TranslationsPersonalProgramFeelingsEn {
	_TranslationsPersonalProgramFeelingsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get lightened => 'Lightened';
	@override String get revitalized => 'Revitalized';
	@override String get refreshed => 'Refreshed';
	@override String get energetic => 'More energetic';
}

// Path: personalProgram.times
class _TranslationsPersonalProgramTimesJa implements TranslationsPersonalProgramTimesEn {
	_TranslationsPersonalProgramTimesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get morning => 'Morning';
	@override String get duringDay => 'During the day';
	@override String get evening => 'Evening';
	@override String get anytime => 'Time doesn\'t matter, a reminder is enough';
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingJa implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '分析中';
	@override String get description => 'あなたのユニークな特徴を分析しています';
	@override String get detail => 'パーソナライズされたルーチンのために、肌の質感、筋肉のトーン、フォーカスエリアを検出しています。';
	@override String get aiEngineWorking => 'AIエンジン作動中';
}

// Path: facialScan.result
class _TranslationsFacialScanResultJa implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '分析の準備ができました！';
	@override String get subtitle => '結果に基づいてルーチンを作成しました。';
	@override String get skinType => '肌タイプ';
	@override String get primaryGoal => '主な目標';
	@override String get recommended => 'あなたにおすすめ';
	@override String get back => '戻る';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsJa implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get front => 'フレーム内に顔を配置してください';
	@override String get left => '頭を左に向けてください';
	@override String get right => '頭を右に向けてください';
	@override String get lighting => 'より良い結果を得るために、明るい環境にいることを確認してください';
	@override String get tapToCapture => 'カメラボタンをタップして写真を撮ります';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsJa implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => '写真を撮るにはカメラの許可が必要です。';
	@override String get cameraPermissionRequired => 'カメラの許可が必要です';
	@override String get cameraPermissionMessage => '顔スキャンにはカメラの許可が必要です。アプリの設定で有効にしてください。';
	@override String get openSettings => '設定を開く';
	@override String get cancel => 'キャンセル';
	@override String get noFaceDetected => '顔が検出されませんでした。もう一度お試しください。';
	@override String get captureFailed => '画像のキャプチャに失敗しました。もう一度お試しください。';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsJa implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get front => '正面';
	@override String get left => '左';
	@override String get right => '右';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessJa implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '成功！';
	@override String get message => '紹介コードが正常に適用されました！あなたとあなたの友人は1週間のプレミアムを受け取りました。';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsJa implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeJa missingCode = _TranslationsReferralCodeErrorsMissingCodeJa._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatJa invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatJa._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedJa alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedJa._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralJa selfReferral = _TranslationsReferralCodeErrorsSelfReferralJa._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundJa codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundJa._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorJa genericError = _TranslationsReferralCodeErrorsGenericErrorJa._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialJa implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '必須クッキー';
	@override String get content => '基本的なアプリ機能に必要です。セッション管理、セキュリティ、基本的なナビゲーションなどのコアプロセスをサポートします。';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceJa implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'パフォーマンスと分析クッキー';
	@override String get content => '最も頻繁に使用される領域と改善が必要なセクションを理解するのに役立ちます。';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationJa implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'パーソナライゼーションクッキー';
	@override String get content => '言語、テーマ、エクササイズの設定などの設定を記憶することで、よりパーソナルなエクスペリエンスを提供します。';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingJa implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'マーケティングおよび広告クッキー';
	@override String get content => '興味に合ったコンテンツやプロモーションを提供するために使用され、サードパーティのサービスと連携することがあります。';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Ja implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. ユーザー提供データ';
	@override List<String> get items => [
		'名前、ニックネーム、またはプロフィール情報',
		'メールアドレス（登録、購入、サポート用）',
		'エクササイズプラン、設定、パーソナライゼーション設定',
		'フィードバック、リクエスト、サポートメッセージ',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Ja implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. 自動収集データ';
	@override List<String> get items => [
		'デバイスタイプ、オペレーティングシステム、技術情報',
		'おおよその位置データ（市/国レベル）',
		'セッション時間や画面操作などの使用情報',
		'パフォーマンス、エラー、クラッシュログ',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ja implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFaceとは何ですか？';
	@override String get answer => 'YogiFaceは、顔の筋肉を鍛えることで肌の見た目を改善するフェイシャルヨガエクササイズを提供するAI搭載のパーソナルケアアプリです。';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ja implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'アプリは本当に効果がありますか？';
	@override String get answer => 'はい。フェイシャルヨガは顔の筋肉を活性化し、肌の引き締めを高め、循環を加速し、定期的な使用でより若々しい外観を提供します。';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ja implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '人工知能はここで何をしますか？';
	@override String get answer => 'YogiFaceは顔の特徴を分析し、ターゲット領域を特定し、パーソナライズされたエクササイズプランを作成します。このようにして、各動きは個人のニーズに応じて最適化されます。';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ja implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '毎日どのくらいの時間が必要ですか？';
	@override String get answer => '1日わずか5〜10分で十分です。定期的な練習により、数週間以内に目に見える変化が始まります。';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ja implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'いつ結果が見えますか？';
	@override String get answer => '定期的な使用で、2〜3週間以内に肌のトーンの改善が見られ、4〜6週間以内に顔の特徴がより明確になります。結果は人によって異なる場合があります。';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ja implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '二重あごやたるみなどの問題に効果がありますか？';
	@override String get answer => 'はい。YogiFaceは、フェイスライン、頬の筋肉、首の領域に対する的を絞ったエクササイズを提供します。定期的に行うと、これらのエクササイズはこれらの領域で顕著な引き締めを提供します。';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ja implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '動きを正しく行っているかどうかをどうやって知ることができますか？';
	@override String get answer => 'アプリはAIを使用して顔の角度、表情、動きのパターンを分析し、間違った点を通知します。';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ja implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'すべての年齢に適していますか？';
	@override String get answer => 'はい。フェイシャルヨガは非侵襲的な自然な方法です。若い年齢から誰でも安全に練習できます。';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ja implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFaceは無料ですか？';
	@override String get answer => '基本的なエクササイズは無料です。パーソナルプログラム、高度な顔分析、特別なAI推奨事項はプレミアムパッケージに含まれています。';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ja implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get question => '美容整形を受けた人は使用できますか？';
	@override String get answer => '多くのユーザーが安全に使用していますが、術後の回復期間中は医師に相談することをお勧めします。';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogJa implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '機能は利用できません';
	@override String get message => 'この機能は現在利用できません。';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherJa implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '額のスムーザー';
	@override String get description => 'この動きは、額の筋肉の緊張と蓄積されたしわを解放します...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveJa implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '「V」ムーブ';
	@override String get description => '目の周りの繊細な肌を強化し、たるんだまぶたを持ち上げ、疲労の兆候を消します。';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterJa implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '頬のリフター';
	@override String get description => '重力に最も影響を受けやすい頬の筋肉（頬骨筋）を持ち上げ、顔のオーバルを回復します。';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningJa implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '自然なアイロン：';
	@override String get description => '額の水平線を開き、深くなるのを防ぎます。';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectJa implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ボトックス効果';
	@override String get description => '緊張した筋肉をリラックスさせ、しかめっ面の習慣を断ち切ります。';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefJa implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ストレス解消';
	@override String get description => '額に蓄積されたストレスを和らげ、頭痛を軽減します。';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceJa implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '輝く外観';
	@override String get description => '血液循環を促進して肌に輝きを与えます。';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingJa implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'むくみ取り';
	@override String get description => 'リンパドレナージュ効果により顔のむくみを軽減します。';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Ja implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '手と顔を洗う';
	@override String get description => '清潔な肌はマッサージをより効果的にします。';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Ja implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フェイスオイルまたは保湿剤を塗る';
	@override String get description => '肌を引っ張らずにスムーズに滑らせます。';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeJa implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードが必要です';
	@override String get message => '続行するには紹介コードを入力してください。';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatJa implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '無効な形式';
	@override String get message => '紹介コードは正確に8文字である必要があります。';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedJa implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '既に使用済み';
	@override String get message => 'すでに紹介コードを使用しています。各ユーザーは1つのコードのみを使用できます。';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralJa implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '無効なコード';
	@override String get message => '自分の招待コードは使用できません。友人のコードを使用してください。';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundJa implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'コードが見つかりません';
	@override String get message => '入力された紹介コードは存在しません。確認してもう一度お試しください。';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorJa implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラー';
	@override String get message => '紹介コードの適用中にエラーが発生しました。もう一度お試しください。';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'ようこそ ${name}',
			'welcome2' => 'ようこそ',
			'get_started' => '始める',
			'next' => '次へ',
			'back' => '戻る',
			'skip' => 'スキップ',
			'logintext' => 'お会いできて嬉しいです。アカウントにログインして、中断したところから続けることができます。',
			'termOfService.text1' => 'swipeに登録することで、',
			'termOfService.link1' => '利用規約',
			'termOfService.text2' => 'に同意したことになります。',
			'termOfService.link2' => 'プライバシーポリシー',
			'termOfService.text3' => 'および',
			'termOfService.link3' => 'クッキーポリシー',
			'termOfService.text4' => 'でデータの処理方法をご確認ください',
			'cookies' => 'クッキーポリシー',
			'privacy' => 'プライバシーポリシー',
			'termsOfService.title' => 'Yogiface – 利用規約',
			'termsOfService.lastUpdated' => '最終更新：2025年',
			'termsOfService.principle' => 'Yogifaceは、顔の筋肉をサポートすることを目的としたフェイシャルヨガエクササイズとガイド付きコンテンツを提供するウェルネスアプリケーションです。このアプリケーションは、医療、臨床、美容、または専門的な健康サービスを提供するものではありません。',
			'termsOfService.intro' => 'この利用規約（「規約」）には、Yogifaceモバイルアプリケーション（「アプリケーション」）の使用に適用されるルールが含まれています。アプリケーションを使用することにより、これらの規約に同意したことになります。規約に同意しない場合は、アプリケーションを使用しないでください。',
			'termsOfService.section1.title' => '1. サービスの範囲',
			'termsOfService.section1.content' => 'Yogifaceは、ユーザーにガイド付きフェイシャルヨガとエクササイズの体験を提供します。アプリケーションには以下が含まれます：',
			'termsOfService.section1.items.0' => 'フェイシャルヨガとエクササイズのガイド',
			'termsOfService.section1.items.1' => '毎日および毎週のエクササイズルーチン',
			'termsOfService.section1.items.2' => '特定の顔の領域に対する的を絞った推奨事項',
			'termsOfService.section1.items.3' => 'カスタマイズ可能なプランと進捗追跡',
			'termsOfService.section1.note' => '提供されるコンテンツは、専門的、医療的、または美容的なアドバイス、診断、または治療を構成するものではありません。',
			'termsOfService.section2.title' => '2. 使用条件',
			'termsOfService.section2.items.0' => '13歳以上である必要があります。',
			'termsOfService.section2.items.1' => '正確で最新のアカウント情報を提供する必要があります。',
			'termsOfService.section2.items.2' => 'エクササイズは医療サービスではないことを認識します。',
			'termsOfService.section3.title' => '3. 禁止事項',
			'termsOfService.section3.items.0' => '違法な活動のためにアプリを使用すること。',
			'termsOfService.section3.items.1' => '許可なくコンテンツを販売、複製、または配布すること。',
			'termsOfService.section3.items.2' => '不正アクセス、ハッキング、またはリバースエンジニアリングの試み。',
			'termsOfService.section4.title' => '4. アカウントとメンバーシップ',
			'termsOfService.section4.content' => 'アカウントのセキュリティはお客様の責任です。Yogifaceは、規約に反する使用が検出された場合、アカウントを一時停止または閉鎖する権利を留保します。',
			'termsOfService.section5.title' => '5. プレミアムおよび有料サービス',
			'termsOfService.section5.items.0' => '価格設定はApp StoreおよびGoogle Playのポリシーに基づいています。',
			'termsOfService.section5.items.1' => 'サブスクリプションは自動更新される場合があります。キャンセルはストアの設定から行います。',
			'termsOfService.section6.title' => '6. 免責事項',
			'termsOfService.section6.content' => 'ユーザーは自己責任でエクササイズを実行します。健康上の問題がある場合は、医療専門家に相談してください。アプリは診断や治療に使用しないでください。',
			'termsOfService.section7.title' => '7. 知的財産',
			'termsOfService.section7.content' => 'デザイン、ソフトウェア、画像、エクササイズコンテンツはYogifaceに帰属します。無断でのコピーまたはソースコードの変更は禁止されています。',
			'termsOfService.section12.title' => '12. 準拠法',
			'termsOfService.section12.content' => 'これらの規約は、トルコ共和国の法律に準拠します。イスタンブール中央裁判所が紛争に対する管轄権を有します。',
			'termsOfService.section13.title' => '13. お問い合わせ',
			'termsOfService.section13.email' => '📩 メール：support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – クッキーポリシー',
			'cookiesPolicy.lastUpdated' => '最終更新：2025年',
			'cookiesPolicy.intro' => 'Yogifaceへようこそ！アプリを訪問するたびに、デジタルヘルパー（クッキー）を使用して、エクスペリエンスを向上させ、パーソナライズします。このポリシーでは、設定を管理する方法について説明します。',
			'cookiesPolicy.section1.title' => '1. クッキーとは？',
			'cookiesPolicy.section1.content' => 'クッキーは、デバイスに配置される小さなデータファイルです。アプリの使用方法を理解し、エクスペリエンスをよりスムーズにするのに役立ちます。クッキーには直接的にあなたのIDは含まれません。設定や使用習慣を記憶するデジタルヘルパーとして機能します。',
			'cookiesPolicy.section2.title' => '2. 使用するクッキーは？',
			'cookiesPolicy.section2.essential.title' => '必須クッキー',
			'cookiesPolicy.section2.essential.content' => '基本的なアプリ機能に必要です。セッション管理、セキュリティ、基本的なナビゲーションなどのコアプロセスをサポートします。',
			'cookiesPolicy.section2.performance.title' => 'パフォーマンスと分析クッキー',
			'cookiesPolicy.section2.performance.content' => '最も頻繁に使用される領域と改善が必要なセクションを理解するのに役立ちます。',
			'cookiesPolicy.section2.personalization.title' => 'パーソナライゼーションクッキー',
			'cookiesPolicy.section2.personalization.content' => '言語、テーマ、エクササイズの設定などの設定を記憶することで、よりパーソナルなエクスペリエンスを提供します。',
			'cookiesPolicy.section2.marketing.title' => 'マーケティングおよび広告クッキー',
			'cookiesPolicy.section2.marketing.content' => '興味に合ったコンテンツやプロモーションを提供するために使用され、サードパーティのサービスと連携することがあります。',
			'cookiesPolicy.section3.title' => '3. クッキーを使用する理由',
			'cookiesPolicy.section3.items.0' => 'アプリが高速かつスムーズに動作することを保証するため',
			'cookiesPolicy.section3.items.1' => 'ユーザーの設定を記憶することで繰り返しのアクションを減らすため',
			'cookiesPolicy.section3.items.2' => 'エクスペリエンスをよりパーソナルで有用にするため',
			'cookiesPolicy.section3.items.3' => '使用データを分析してアプリを改善するため',
			'cookiesPolicy.section4.title' => '4. サードパーティのクッキー',
			'cookiesPolicy.section4.content' => '一部のクッキーは、分析および広告サービスを提供するサードパーティパートナーによって配置される場合があります。これらは、プロバイダー独自のプライバシーおよびクッキーポリシーの対象となります。',
			'cookiesPolicy.section5.title' => '5. クッキーの制御と管理',
			'cookiesPolicy.section5.content' => 'デバイスの設定、アプリの権限、またはシステム設定からクッキーを管理できます。必要なクッキーを無効にすると、アプリの一部が正しく機能しなくなる可能性があります。',
			'cookiesPolicy.section6.title' => '6. データの使用',
			'cookiesPolicy.section6.content' => 'クッキーを通じて取得されたデータは、個人データとして認定される場合、プライバシーポリシーに従って法的枠組み内で処理されます。',
			'cookiesPolicy.section7.title' => '7. ポリシーの更新',
			'cookiesPolicy.section7.content' => 'このポリシーは、技術的および法的変更に応じて更新される場合があります。現在のバージョンは公開されるとすぐに有効になります。',
			'cookiesPolicy.section8.title' => '8. お問い合わせ',
			'cookiesPolicy.section8.email' => '📩 メール：support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – プライバシーポリシー',
			'privacyPolicy.lastUpdated' => '最終更新：2025年',
			'privacyPolicy.intro' => 'このプライバシーポリシーは、Yogifaceモバイルアプリケーション（「アプリ」）を使用するすべてのユーザーの個人データの収集、使用、保存、保護に関する原則を説明します。アプリを使用することにより、このポリシーに同意したことになります。',
			'privacyPolicy.principle' => 'Yogifaceは、ユーザーのプライバシーとデータセキュリティを基本原則として採用しています。すべての個人データは、GDPRおよび関連法規に従って処理されます。',
			'privacyPolicy.section1.title' => '1. 収集される情報',
			'privacyPolicy.section1.sub1.title' => '1.1. ユーザー提供データ',
			'privacyPolicy.section1.sub1.items.0' => '名前、ニックネーム、またはプロフィール情報',
			'privacyPolicy.section1.sub1.items.1' => 'メールアドレス（登録、購入、サポート用）',
			'privacyPolicy.section1.sub1.items.2' => 'エクササイズプラン、設定、パーソナライゼーション設定',
			'privacyPolicy.section1.sub1.items.3' => 'フィードバック、リクエスト、サポートメッセージ',
			'privacyPolicy.section1.sub2.title' => '1.2. 自動収集データ',
			'privacyPolicy.section1.sub2.items.0' => 'デバイスタイプ、オペレーティングシステム、技術情報',
			'privacyPolicy.section1.sub2.items.1' => 'おおよその位置データ（市/国レベル）',
			'privacyPolicy.section1.sub2.items.2' => 'セッション時間や画面操作などの使用情報',
			'privacyPolicy.section1.sub2.items.3' => 'パフォーマンス、エラー、クラッシュログ',
			'privacyPolicy.section2.title' => '2. データ使用目的',
			'privacyPolicy.section2.items.0' => 'アプリの中断のない動作を保証するため',
			'privacyPolicy.section2.items.1' => 'フェイシャルヨガエクスペリエンスをパーソナライズおよび最適化するため',
			'privacyPolicy.section2.items.2' => 'エラー検出とパフォーマンス分析を実行するため',
			'privacyPolicy.section2.items.3' => 'ユーザーの要求とサポートリクエストに応答するため',
			'privacyPolicy.section2.note' => '重要：ユーザーデータは第三者に販売されることはありません。',
			'privacyPolicy.section3.title' => '3. データ保持',
			'privacyPolicy.section3.items.0' => 'データは、ユーザーアカウントがアクティブである限り保存されます。',
			'privacyPolicy.section3.items.1' => 'アカウントが削除されると、個人データは不可逆的に削除されます。',
			'privacyPolicy.section3.items.2' => 'サポート記録は、完了後最大12か月間保持されます。',
			'privacyPolicy.section4.title' => '4. データ共有',
			'privacyPolicy.section4.content' => 'データは、法的要件（公式リクエスト）、サービスプロバイダー（クラウドインフラストラクチャ、分析）、またはユーザーの明示的な同意がある場合にのみ共有されます。',
			'privacyPolicy.section5.title' => '5. クッキーとセキュリティ',
			'privacyPolicy.section5.content' => 'Yogifaceは、パフォーマンスとエクスペリエンスの向上のためにクッキーを使用する場合があります。データはSSL/TLS暗号化と定期的なセキュリティ監査によって保護されています。',
			'privacyPolicy.section6.title' => '6. ユーザーの権利',
			'privacyPolicy.section6.content' => 'アクセス、修正、削除、データ処理の制限の権利があります。',
			'privacyPolicy.section6.contact' => 'リクエストについて：',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. 子供のプライバシー',
			'privacyPolicy.section8.content' => 'Yogifaceは13歳未満の個人を対象としていません。この年齢層から収集されたデータは、検出された場合直ちに削除されます。',
			'privacyPolicy.section10.title' => '10. お問い合わせ',
			'privacyPolicy.section10.email' => '📩 メール：support@fly-work.com',
			'onboarding.basicInformation' => '基本情報',
			'onboarding.target' => '目標',
			'onboarding.habits' => '習慣',
			'onboarding.step' => 'ステップ',
			'onboarding.of' => '/',
			'onboarding.tellUsAboutYourself' => 'あなたについて教えてください',
			'onboarding.shortBioDescription' => '短い自己紹介は、他の人があなたを本当に知るのに役立ちます。楽しく本物に保ちましょう',
			'onboarding.enterYourFullname' => 'フルネームを入力してください',
			'onboarding.fullName' => 'フルネーム',
			'onboarding.male' => '男性',
			'onboarding.female' => '女性',
			'onboarding.dontWantToMention' => '言いたくない',
			'onboarding.whatIsMainObjective' => '主な目的は何ですか？',
			'onboarding.reduceWrinkles' => 'しわを減らす',
			'onboarding.tightenSkin' => '肌を引き締める',
			'onboarding.liftDroopyEyelids' => 'たるんだまぶたを持ち上げる',
			'onboarding.eliminateDoubleChin' => '二重あごを解消する',
			'onboarding.brightenSkinTone' => '肌のトーンを明るくする',
			'onboarding.allOfTheAbove' => '上記のすべて',
			'onboarding.whichAreaToImprove' => 'どの領域を改善したいですか？',
			'onboarding.forehead' => '額',
			'onboarding.eyes' => '目',
			'onboarding.nose' => '鼻',
			'onboarding.cheeks' => '頬',
			'onboarding.lips' => '唇',
			'onboarding.jawline' => 'フェイスライン',
			'onboarding.neck' => '首',
			'onboarding.fullface' => '顔全体',
			'onboarding.whatFaceShapeAiming' => 'どの顔の形を目指していますか？',
			'onboarding.heart' => 'ハート',
			'onboarding.oval' => 'オーバル',
			'onboarding.square' => 'スクエア',
			'onboarding.round' => 'ラウンド',
			'onboarding.diamond' => 'ダイヤモンド',
			'onboarding.whatIsYourSkinType' => 'あなたの肌タイプは何ですか？',
			'onboarding.normal' => '普通肌',
			'onboarding.oily' => '脂性肌',
			'onboarding.dry' => '乾燥肌',
			'onboarding.combination' => '混合肌',
			'onboarding.sensitive' => '敏感肌',
			'onboarding.whichOfThemDoYouHave' => 'どれを持っていますか？',
			'onboarding.acneAndPimples' => 'ニキビと吹き出物',
			'onboarding.redness' => '赤み',
			'onboarding.swelling' => '腫れ',
			'onboarding.wrinkles' => 'しわ',
			'onboarding.neckLines' => '首のしわ',
			'onboarding.howOftenWearMakeup' => 'どのくらいの頻度でメイクをしますか？',
			'onboarding.everyDay' => '毎日',
			'onboarding.fewDaysAWeek' => '週に数日',
			'onboarding.occasionally' => '時々',
			'onboarding.never' => 'しない',
			'onboarding.haveYouHadBotox' => 'ボトックスをしたことがありますか？',
			'onboarding.yes' => 'はい',
			'onboarding.no' => 'いいえ',
			'onboarding.creatingPersonalizedProfile' => 'パーソナライズされたプロフィールを作成中',
			'onboarding.tailoringExperience' => 'あなたの好みに基づいてエクスペリエンスをカスタマイズしています...',
			'onboarding.gender' => '性別',
			'onboarding.age' => '年齢',
			'onboarding.weight' => '体重',
			'onboarding.height' => '身長',
			'onboarding.matchingPersonalities' => 'パーソナリティのマッチング',
			'pressBackAgainToExit' => 'もう一度戻るを押して終了',
			'addedToFavoritesTitle' => 'エクササイズがお気に入りに追加されました！',
			'removedFromFavoritesTitle' => 'エクササイズがお気に入りから削除されました！',
			'removedFromFavorites' => '追加したい他のエクササイズはコースからアクセスできます',
			'faq.title' => 'よくある質問',
			'faq.questions.q1.question' => 'YogiFaceとは何ですか？',
			'faq.questions.q1.answer' => 'YogiFaceは、顔の筋肉を鍛えることで肌の見た目を改善するフェイシャルヨガエクササイズを提供するAI搭載のパーソナルケアアプリです。',
			'faq.questions.q2.question' => 'アプリは本当に効果がありますか？',
			'faq.questions.q2.answer' => 'はい。フェイシャルヨガは顔の筋肉を活性化し、肌の引き締めを高め、循環を加速し、定期的な使用でより若々しい外観を提供します。',
			'faq.questions.q3.question' => '人工知能はここで何をしますか？',
			'faq.questions.q3.answer' => 'YogiFaceは顔の特徴を分析し、ターゲット領域を特定し、パーソナライズされたエクササイズプランを作成します。このようにして、各動きは個人のニーズに応じて最適化されます。',
			'faq.questions.q4.question' => '毎日どのくらいの時間が必要ですか？',
			'faq.questions.q4.answer' => '1日わずか5〜10分で十分です。定期的な練習により、数週間以内に目に見える変化が始まります。',
			'faq.questions.q5.question' => 'いつ結果が見えますか？',
			'faq.questions.q5.answer' => '定期的な使用で、2〜3週間以内に肌のトーンの改善が見られ、4〜6週間以内に顔の特徴がより明確になります。結果は人によって異なる場合があります。',
			'faq.questions.q6.question' => '二重あごやたるみなどの問題に効果がありますか？',
			'faq.questions.q6.answer' => 'はい。YogiFaceは、フェイスライン、頬の筋肉、首の領域に対する的を絞ったエクササイズを提供します。定期的に行うと、これらのエクササイズはこれらの領域で顕著な引き締めを提供します。',
			'faq.questions.q7.question' => '動きを正しく行っているかどうかをどうやって知ることができますか？',
			'faq.questions.q7.answer' => 'アプリはAIを使用して顔の角度、表情、動きのパターンを分析し、間違った点を通知します。',
			'faq.questions.q8.question' => 'すべての年齢に適していますか？',
			'faq.questions.q8.answer' => 'はい。フェイシャルヨガは非侵襲的な自然な方法です。若い年齢から誰でも安全に練習できます。',
			'faq.questions.q9.question' => 'YogiFaceは無料ですか？',
			'faq.questions.q9.answer' => '基本的なエクササイズは無料です。パーソナルプログラム、高度な顔分析、特別なAI推奨事項はプレミアムパッケージに含まれています。',
			'faq.questions.q10.question' => '美容整形を受けた人は使用できますか？',
			'faq.questions.q10.answer' => '多くのユーザーが安全に使用していますが、術後の回復期間中は医師に相談することをお勧めします。',
			'full_face' => '顔全体/全体的な活性化',
			'eye_area' => '目と目の周り',
			'nose_area' => '鼻と鼻の周り',
			'cheeks_mid_face' => '頬と顔の中央',
			'lip_area' => '唇と口の周り',
			'jawline_chin' => 'フェイスライン、あご、二重あご',
			'forehead_brow' => '額と眉の領域',
			'neck_decollete' => '首とデコルテ',
			'good_morning' => 'おはようございます',
			'good_afternoon' => 'こんにちは',
			'good_evening' => 'こんばんは',
			'splash.screen1.title' => '自然に顔を形作る',
			'splash.screen1.description' => '毎日わずか数分のフェイシャルエクササイズで顔の筋肉を鍛えましょう。自然で美的で非侵襲的な美容ルーチンを作成します。',
			'splash.screen2.title' => 'AIによるパーソナライズされたエクササイズプラン',
			'splash.screen2.description' => 'AIがあなたの顔の特徴を分析し、ニーズを決定し、あなたに合わせたエクササイズを推奨します。どの筋肉がより多くの作業を必要とするかを追跡します。',
			'splash.screen3.title' => '目に見える結果',
			'splash.screen3.description' => '定期的な使用により、顔の輪郭がより明確になり、循環が改善され、肌がより活気に満ちて見えます。毎日の小さな一歩が大きな変化をもたらします。',
			'profile.title' => 'プロフィール',
			'profile.freeVersion' => '無料版',
			'profile.error' => 'エラー',
			'profile.sections.accountSettings' => 'アカウント設定',
			'profile.sections.supportAndOther' => 'サポートとその他',
			'profile.menu.editProfile' => 'プロフィールを編集',
			'profile.menu.notifications' => '通知',
			'profile.menu.premium' => 'プレミアム',
			'profile.menu.favoriteExercises' => 'お気に入りのエクササイズ',
			'profile.menu.appLanguage' => 'アプリの言語',
			'profile.menu.shareWithFriends' => '友達と共有',
			'profile.menu.enterInviteCode' => '招待コードを入力',
			'profile.menu.rateUs' => '評価する',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'ログアウト',
			'profile.manage' => '管理',
			'profile.logoutDialog.title' => 'ログアウトしようとしています',
			'profile.logoutDialog.message' => 'またお会いしましょう！呼吸エクササイズを追跡し続けます。',
			'profile.logoutDialog.logoutButton' => 'ログアウト',
			'profile.logoutDialog.cancelButton' => 'キャンセル',
			'home.premium' => 'プレミアム！',
			'home.focusAreas' => 'フォーカスエリア',
			'home.popularCourses' => '人気のコース',
			'home.seeMore' => 'もっと見る',
			'home.personalized.title' => 'パーソナライズされた\n顔分析\nレポート',
			'home.personalized.description' => '肌のタイプを見つけるために\n肌を分析してください。',
			'home.personalized.button' => '今すぐ試す',
			'home.premiumPlan.title' => 'プレミアムプラン',
			'home.premiumPlan.description' => 'AIチャットボットのロックを解除し、\nすべてのプレミアム機能を取得',
			'home.premiumPlan.button' => 'プレミアムを取得',
			'home.premiumPlan.dialog.title' => '機能は利用できません',
			'home.premiumPlan.dialog.message' => 'この機能は現在利用できません。',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'クイックアクション',
			'home.quickActions.programTitle' => 'あなたのパーソナルプログラム',
			'home.quickActions.programSubtitle' => '30日間で\n最高の見た目のために',
			'home.quickActions.button' => '始める',
			'home.todaysExercise.title' => '今日のエクササイズ',
			'home.todaysExercise.recommended' => '推奨ルーチン',
			'home.todaysExercise.forToday' => '今日のために',
			'home.courses.foreheadSmoother.title' => '額のスムーザー',
			'home.courses.foreheadSmoother.description' => 'この動きは、額の筋肉の緊張と蓄積されたしわを解放します...',
			'home.courses.vMove.title' => '「V」ムーブ',
			'home.courses.vMove.description' => '目の周りの繊細な肌を強化し、たるんだまぶたを持ち上げ、疲労の兆候を消します。',
			'home.courses.cheekLifter.title' => '頬のリフター',
			'home.courses.cheekLifter.description' => '重力に最も影響を受けやすい頬の筋肉（頬骨筋）を持ち上げ、顔のオーバルを回復します。',
			'home.benefits.naturalIroning.title' => '自然なアイロン：',
			'home.benefits.naturalIroning.description' => '額の水平線を開き、深くなるのを防ぎます。',
			'home.benefits.botoxEffect.title' => 'ボトックス効果',
			'home.benefits.botoxEffect.description' => '緊張した筋肉をリラックスさせ、しかめっ面の習慣を断ち切ります。',
			'home.benefits.stressRelief.title' => 'ストレス解消',
			'home.benefits.stressRelief.description' => '額に蓄積されたストレスを和らげ、頭痛を軽減します。',
			'home.benefits.radiantAppearance.title' => '輝く外観',
			'home.benefits.radiantAppearance.description' => '血液循環を促進して肌に輝きを与えます。',
			'home.benefits.dePuffing.title' => 'むくみ取り',
			'home.benefits.dePuffing.description' => 'リンパドレナージュ効果により顔のむくみを軽減します。',
			'courseDetail.title' => 'コースの詳細',
			'courseDetail.getStarted' => '始める',
			'courseDetail.noExercisesFound' => 'このカテゴリのエクササイズが見つかりません',
			'courseDetail.instructions.instruction1.title' => '手と顔を洗う',
			'courseDetail.instructions.instruction1.description' => '清潔な肌はマッサージをより効果的にします。',
			'courseDetail.instructions.instruction2.title' => 'フェイスオイルまたは保湿剤を塗る',
			'courseDetail.instructions.instruction2.description' => '肌を引っ張らずにスムーズに滑らせます。',
			'courses.title' => 'すべてのコース',
			'courses.error' => 'エクササイズの読み込みエラー',
			'courses.personalCoursesTitle' => 'パーソナルコース',
			'personalProgram.dailyGoalTitle' => '毎日の目標を設定',
			'personalProgram.dailyGoalDescription' => 'スケジュールに合ったペースを選択してください',
			'personalProgram.personalizing' => 'プランをパーソナライズしています...',
			'personalProgram.readyMessage' => 'あなたのパーソナル30日間フェイシャルヨガプログラムの準備ができました✨',
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
			'editProfile.title' => 'プロフィールを編集',
			'editProfile.changePhoto' => '写真を変更',
			'editProfile.fullName' => 'フルネーム',
			'editProfile.email' => 'メール',
			'editProfile.age' => '年齢',
			'editProfile.gender' => '性別',
			'editProfile.skinType' => '肌タイプ',
			'editProfile.focusArea' => 'フォーカスエリア',
			'editProfile.focusAreaHint' => '額、目、鼻、口、頬...',
			'editProfile.save' => '保存',
			'editProfile.saving' => '保存中...',
			'editProfile.updateSuccess' => 'プロフィールが正常に更新されました',
			'editProfile.updateError' => 'プロフィールの更新中にエラーが発生しました',
			'editProfile.deleteAccount' => 'アカウントを削除',
			'notifications.title' => '通知',
			'notifications.emptyTitle' => 'まだ通知はありません',
			'notifications.emptyDescription' => '学習の旅に関する重要な更新があるときにお知らせします。',
			'notifications.premiumBannerTitle' => 'プレミアム特典を\nお見逃しなく！',
			'notifications.premiumBannerDescription' => 'プレミアム購読者として機会をつかみましょう。',
			'notifications.sample1Title' => '今日の瞑想の準備ができました！',
			'notifications.sample1Description' => '今日の落ち着きを見つけてください',
			'notifications.sample1Time' => '15分前',
			'notifications.sample2Title' => '新しいエクササイズ：オーシャンブレス',
			'notifications.sample2Description' => '新しい呼吸法が追加されました',
			'notifications.sample2Time' => '1時間前',
			'notifications.sample3Title' => '7日間のストリークを達成しました！',
			'notifications.sample3Description' => 'あなたの幸福のための素晴らしい仕事を続けてください',
			'notifications.sample3Time' => '昨日',
			'share.title' => '友達と共有',
			'share.mainTitle' => '平和を共有する',
			'share.descriptionPart1' => '友達を招待して一緒に呼吸しましょう。\n招待ごとに、両方が ',
			'share.descriptionPart2' => '1週間プレミアム',
			'share.descriptionPart3' => 'を取得',
			'share.yourReferralCode' => 'あなたの紹介コード',
			'share.codeCopied' => 'コードがコピーされました！',
			'share.copyCode' => 'コードをコピー',
			'facialScan.title' => '顔スキャン',
			'facialScan.step' => ({required Object current, required Object total}) => 'ステップ ${current} / ${total}',
			'facialScan.getStarted' => '始める',
			'facialScan.analyzing.title' => '分析中',
			'facialScan.analyzing.description' => 'あなたのユニークな特徴を分析しています',
			'facialScan.analyzing.detail' => 'パーソナライズされたルーチンのために、肌の質感、筋肉のトーン、フォーカスエリアを検出しています。',
			'facialScan.analyzing.aiEngineWorking' => 'AIエンジン作動中',
			'facialScan.result.title' => '分析の準備ができました！',
			'facialScan.result.subtitle' => '結果に基づいてルーチンを作成しました。',
			'facialScan.result.skinType' => '肌タイプ',
			'facialScan.result.primaryGoal' => '主な目標',
			'facialScan.result.recommended' => 'あなたにおすすめ',
			'facialScan.result.back' => '戻る',
			'facialScan.instructions.front' => 'フレーム内に顔を配置してください',
			'facialScan.instructions.left' => '頭を左に向けてください',
			'facialScan.instructions.right' => '頭を右に向けてください',
			'facialScan.instructions.lighting' => 'より良い結果を得るために、明るい環境にいることを確認してください',
			'facialScan.instructions.tapToCapture' => 'カメラボタンをタップして写真を撮ります',
			'facialScan.errors.cameraPermission' => '写真を撮るにはカメラの許可が必要です。',
			'facialScan.errors.cameraPermissionRequired' => 'カメラの許可が必要です',
			'facialScan.errors.cameraPermissionMessage' => '顔スキャンにはカメラの許可が必要です。アプリの設定で有効にしてください。',
			'facialScan.errors.openSettings' => '設定を開く',
			'facialScan.errors.cancel' => 'キャンセル',
			'facialScan.errors.noFaceDetected' => '顔が検出されませんでした。もう一度お試しください。',
			'facialScan.errors.captureFailed' => '画像のキャプチャに失敗しました。もう一度お試しください。',
			'facialScan.positions.front' => '正面',
			'facialScan.positions.left' => '左',
			'facialScan.positions.right' => '右',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'ゲストとして続行',
			'auth.signInFailed' => ({required Object error}) => 'サインインに失敗しました：${error}',
			'benefits' => 'メリット',
			'minutes' => '分',
			'cancel' => 'キャンセル',
			'beforeBegin' => '始める前に',
			'rest' => '休憩',
			'courseCompleted' => 'コース完了',
			'courseCompletedDescription' => '今日のセッションを完了した素晴らしい仕事。',
			'deleteAccount' => 'アカウントを削除',
			'deleteDialogTitle' => 'アカウントを削除してもよろしいですか？',
			'deleteDialogDescription' => 'このアクションは元に戻せず、すべてのエクササイズ履歴とデータが永久に削除されます。',
			'deleteError' => 'アカウントの削除中にエラーが発生しました。もう一度お試しください。',
			'favoriteExercises' => 'お気に入りのエクササイズ',
			'noFavoritesInCategory' => 'このカテゴリにお気に入りはありません',
			'noFavoritesAdded' => 'まだお気に入りが追加されていません。',
			'favoriteExercisesDescription' => 'お気に入りのエクササイズを設定するには、マイエクササイズページから好きなエクササイズを追加できます。',
			'enterInvitationCode' => '招待コードを入力',
			'bePartOfPeace' => '平和の一部になる',
			'inviteFriends' => '友達から受け取った招待コードを入力してください。\n指定されたフィールドに入力してください',
			'twoDaysPremium' => '7日間プレミアム',
			'advantage' => '\nその利点を享受するために。',
			'send' => '送信',
			'referralCode.inputPlaceholder' => '8桁のコードを入力',
			'referralCode.applying' => 'コードを適用中...',
			'referralCode.success.title' => '成功！',
			'referralCode.success.message' => '紹介コードが正常に適用されました！あなたとあなたの友人は1週間のプレミアムを受け取りました。',
			'referralCode.errors.missingCode.title' => 'コードが必要です',
			'referralCode.errors.missingCode.message' => '続行するには紹介コードを入力してください。',
			'referralCode.errors.invalidFormat.title' => '無効な形式',
			'referralCode.errors.invalidFormat.message' => '紹介コードは正確に8文字である必要があります。',
			'referralCode.errors.alreadyUsed.title' => '既に使用済み',
			'referralCode.errors.alreadyUsed.message' => 'すでに紹介コードを使用しています。各ユーザーは1つのコードのみを使用できます。',
			'referralCode.errors.selfReferral.title' => '無効なコード',
			'referralCode.errors.selfReferral.message' => '自分の招待コードは使用できません。友人のコードを使用してください。',
			'referralCode.errors.codeNotFound.title' => 'コードが見つかりません',
			'referralCode.errors.codeNotFound.message' => '入力された紹介コードは存在しません。確認してもう一度お試しください。',
			'referralCode.errors.genericError.title' => 'エラー',
			'referralCode.errors.genericError.message' => '紹介コードの適用中にエラーが発生しました。もう一度お試しください。',
			'deleteNotifications' => '通知を削除',
			'deleteNotificationsDescription' => 'すべての通知を削除してもよろしいですか？\nこのアクションは元に戻せず、取り消すことはできません。',
			'deleteAll' => 'すべて削除',
			'appLanguage' => 'アプリの言語',
			'selectLanguage' => '希望する言語を選択してください',
			'save' => '保存',
			'languageOptions.english' => '英語',
			'languageOptions.german' => 'ドイツ語',
			'languageOptions.italian' => 'イタリア語',
			'languageOptions.french' => 'フランス語',
			'languageOptions.japanese' => '日本語',
			'languageOptions.spanish' => 'スペイン語',
			'languageOptions.russian' => 'ロシア語',
			'languageOptions.turkish' => 'トルコ語',
			'languageOptions.korean' => '韓国語',
			'languageOptions.hindi' => 'ヒンディー語',
			'languageOptions.portuguese' => 'ポルトガル語',
			_ => null,
		};
	}
}
