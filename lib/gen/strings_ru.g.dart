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
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Добро пожаловать ${name}';
	@override String get welcome2 => 'Добро пожаловать';
	@override String get get_started => 'Начать';
	@override String get next => 'Далее';
	@override String get back => 'Назад';
	@override String get skip => 'Пропустить';
	@override String get logintext => 'Рад вас видеть. Вы можете продолжить с того места, где остановились, войдя в свою учетную запись.';
	@override late final _TranslationsTermOfServiceRu termOfService = _TranslationsTermOfServiceRu._(_root);
	@override String get cookies => 'Политика использования файлов cookie';
	@override String get privacy => 'Политика конфиденциальности';
	@override late final _TranslationsTermsOfServiceRu termsOfService = _TranslationsTermsOfServiceRu._(_root);
	@override late final _TranslationsCookiesPolicyRu cookiesPolicy = _TranslationsCookiesPolicyRu._(_root);
	@override late final _TranslationsPrivacyPolicyRu privacyPolicy = _TranslationsPrivacyPolicyRu._(_root);
	@override late final _TranslationsOnboardingRu onboarding = _TranslationsOnboardingRu._(_root);
	@override String get pressBackAgainToExit => 'Нажмите назад еще раз для выхода';
	@override String get addedToFavoritesTitle => 'Упражнение успешно добавлено в избранное!';
	@override String get removedFromFavoritesTitle => 'Упражнение успешно удалено из избранного!';
	@override String get removedFromFavorites => 'Вы можете получить доступ к другим упражнениям, которые хотите добавить, из курсов';
	@override late final _TranslationsFaqRu faq = _TranslationsFaqRu._(_root);
	@override String get full_face => 'Все лицо / Общее омоложение';
	@override String get eye_area => 'Глаза и область глаз';
	@override String get nose_area => 'Нос и область носа';
	@override String get cheeks_mid_face => 'Щеки и средняя часть лица';
	@override String get lip_area => 'Губы и область рта';
	@override String get jawline_chin => 'Линия челюсти, подбородок и второй подбородок';
	@override String get forehead_brow => 'Лоб и область бровей';
	@override String get neck_decollete => 'Шея и декольте';
	@override String get good_morning => 'Доброе утро';
	@override String get good_afternoon => 'Добрый день';
	@override String get good_evening => 'Добрый вечер';
	@override late final _TranslationsSplashRu splash = _TranslationsSplashRu._(_root);
	@override late final _TranslationsProfileRu profile = _TranslationsProfileRu._(_root);
	@override late final _TranslationsHomeRu home = _TranslationsHomeRu._(_root);
	@override late final _TranslationsCourseDetailRu courseDetail = _TranslationsCourseDetailRu._(_root);
	@override late final _TranslationsCoursesRu courses = _TranslationsCoursesRu._(_root);
	@override late final _TranslationsPersonalProgramRu personalProgram = _TranslationsPersonalProgramRu._(_root);
	@override late final _TranslationsEditProfileRu editProfile = _TranslationsEditProfileRu._(_root);
	@override late final _TranslationsNotificationsRu notifications = _TranslationsNotificationsRu._(_root);
	@override late final _TranslationsShareRu share = _TranslationsShareRu._(_root);
	@override late final _TranslationsFacialScanRu facialScan = _TranslationsFacialScanRu._(_root);
	@override late final _TranslationsAuthRu auth = _TranslationsAuthRu._(_root);
	@override String get benefits => 'Преимущества';
	@override String get minutes => 'Мин';
	@override String get cancel => 'Отмена';
	@override String get beforeBegin => 'Перед началом';
	@override String get rest => 'Отдых';
	@override String get courseCompleted => 'Курс завершен';
	@override String get courseCompletedDescription => 'Отличная работа по завершению сегодняшней сессии.';
	@override String get deleteAccount => 'Удалить аккаунт';
	@override String get deleteDialogTitle => 'Вы уверены, что хотите удалить свой аккаунт?';
	@override String get deleteDialogDescription => 'Это действие необратимо и навсегда удалит всю вашу историю упражнений и данные.';
	@override String get deleteError => 'Произошла ошибка при удалении вашего аккаунта. Пожалуйста, попробуйте снова.';
	@override String get favoriteExercises => 'Избранные упражнения';
	@override String get noFavoritesInCategory => 'Нет избранного в этой категории';
	@override String get noFavoritesAdded => 'Избранное пока не добавлено.';
	@override String get favoriteExercisesDescription => 'Чтобы установить любимые упражнения, вы можете добавить упражнения, которые вам нравятся, со страницы Мои упражнения.';
	@override String get enterInvitationCode => 'Введите код приглашения';
	@override String get bePartOfPeace => 'Станьте частью мира';
	@override String get inviteFriends => 'Введите код приглашения, полученный от друга.\nВведите его в соответствующее поле';
	@override String get twoDaysPremium => '7 дней Премиум';
	@override String get advantage => '\nчтобы воспользоваться его преимуществами.';
	@override String get send => 'Отправить';
	@override late final _TranslationsReferralCodeRu referralCode = _TranslationsReferralCodeRu._(_root);
	@override String get deleteNotifications => 'Удалить уведомления';
	@override String get deleteNotificationsDescription => 'Вы уверены, что хотите удалить все\nваши уведомления? Это действие необратимо.';
	@override String get deleteAll => 'Удалить все';
	@override String get appLanguage => 'Язык приложения';
	@override String get selectLanguage => 'Выберите предпочитаемый язык';
	@override String get save => 'Сохранить';
	@override late final _TranslationsLanguageOptionsRu languageOptions = _TranslationsLanguageOptionsRu._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceRu implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Регистрируясь в swipe, вы соглашаетесь с нашими ';
	@override String get link1 => 'Условиями обслуживания';
	@override String get text2 => '. Узнайте, как мы обрабатываем ваши данные, в нашей ';
	@override String get link2 => 'Политике конфиденциальности';
	@override String get text3 => ' и ';
	@override String get link3 => 'Политике использования файлов cookie';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServiceRu implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Условия обслуживания';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get principle => 'Yogiface — это приложение для здоровья, предоставляющее упражнения йоги для лица и руководства для поддержки мышц лица. Приложение не предоставляет медицинских, клинических, эстетических или профессиональных медицинских услуг.';
	@override String get intro => 'Настоящие Условия обслуживания («Условия») содержат правила, применимые к использованию вами мобильного приложения Yogiface («Приложение»). Используя Приложение, вы соглашаетесь с настоящими Условиями. Если вы не согласны с Условиями, вы не должны использовать Приложение.';
	@override late final _TranslationsTermsOfServiceSection1Ru section1 = _TranslationsTermsOfServiceSection1Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection2Ru section2 = _TranslationsTermsOfServiceSection2Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection3Ru section3 = _TranslationsTermsOfServiceSection3Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection4Ru section4 = _TranslationsTermsOfServiceSection4Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection5Ru section5 = _TranslationsTermsOfServiceSection5Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection6Ru section6 = _TranslationsTermsOfServiceSection6Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection7Ru section7 = _TranslationsTermsOfServiceSection7Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection12Ru section12 = _TranslationsTermsOfServiceSection12Ru._(_root);
	@override late final _TranslationsTermsOfServiceSection13Ru section13 = _TranslationsTermsOfServiceSection13Ru._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyRu implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Политика использования файлов cookie';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get intro => 'Добро пожаловать в Yogiface! Каждый раз, когда вы посещаете приложение, мы используем цифровых помощников (cookie) для улучшения и персонализации вашего опыта. Эта политика объясняет, как вы можете управлять своими предпочтениями.';
	@override late final _TranslationsCookiesPolicySection1Ru section1 = _TranslationsCookiesPolicySection1Ru._(_root);
	@override late final _TranslationsCookiesPolicySection2Ru section2 = _TranslationsCookiesPolicySection2Ru._(_root);
	@override late final _TranslationsCookiesPolicySection3Ru section3 = _TranslationsCookiesPolicySection3Ru._(_root);
	@override late final _TranslationsCookiesPolicySection4Ru section4 = _TranslationsCookiesPolicySection4Ru._(_root);
	@override late final _TranslationsCookiesPolicySection5Ru section5 = _TranslationsCookiesPolicySection5Ru._(_root);
	@override late final _TranslationsCookiesPolicySection6Ru section6 = _TranslationsCookiesPolicySection6Ru._(_root);
	@override late final _TranslationsCookiesPolicySection7Ru section7 = _TranslationsCookiesPolicySection7Ru._(_root);
	@override late final _TranslationsCookiesPolicySection8Ru section8 = _TranslationsCookiesPolicySection8Ru._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyRu implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Политика конфиденциальности';
	@override String get lastUpdated => 'Последнее обновление: 2025';
	@override String get intro => 'Эта Политика конфиденциальности объясняет принципы сбора, использования, хранения и защиты персональных данных всех пользователей, использующих мобильное приложение Yogiface («Приложение»). Используя Приложение, вы принимаете эту политику.';
	@override String get principle => 'Yogiface принимает конфиденциальность пользователей и безопасность данных как основной принцип. Все персональные данные обрабатываются в соответствии с GDPR и соответствующим законодательством.';
	@override late final _TranslationsPrivacyPolicySection1Ru section1 = _TranslationsPrivacyPolicySection1Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection2Ru section2 = _TranslationsPrivacyPolicySection2Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection3Ru section3 = _TranslationsPrivacyPolicySection3Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection4Ru section4 = _TranslationsPrivacyPolicySection4Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection5Ru section5 = _TranslationsPrivacyPolicySection5Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection6Ru section6 = _TranslationsPrivacyPolicySection6Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection8Ru section8 = _TranslationsPrivacyPolicySection8Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection10Ru section10 = _TranslationsPrivacyPolicySection10Ru._(_root);
}

// Path: onboarding
class _TranslationsOnboardingRu implements TranslationsOnboardingEn {
	_TranslationsOnboardingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'ОСНОВНАЯ ИНФОРМАЦИЯ';
	@override String get target => 'ЦЕЛЬ';
	@override String get habits => 'ПРИВЫЧКИ';
	@override String get step => 'ШАГ';
	@override String get of => 'ИЗ';
	@override String get tellUsAboutYourself => 'Расскажите нам о себе';
	@override String get shortBioDescription => 'Краткая биография помогает другим узнать вас настоящего. Пусть она будет веселой и искренней';
	@override String get enterYourFullname => 'Введите ваше полное имя';
	@override String get fullName => 'Полное имя';
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
	@override String get dontWantToMention => 'Я не хочу указывать';
	@override String get whatIsMainObjective => 'Какова основная цель?';
	@override String get reduceWrinkles => 'Уменьшить морщины';
	@override String get tightenSkin => 'Подтянуть кожу';
	@override String get liftDroopyEyelids => 'Поднять опущенные веки';
	@override String get eliminateDoubleChin => 'Устранить второй подбородок';
	@override String get brightenSkinTone => 'Осветлить тон кожи';
	@override String get allOfTheAbove => 'Все вышеперечисленное';
	@override String get whichAreaToImprove => 'Какую область вы бы хотели улучшить?';
	@override String get forehead => 'Лоб';
	@override String get eyes => 'Глаза';
	@override String get nose => 'Нос';
	@override String get cheeks => 'Щеки';
	@override String get lips => 'Губы';
	@override String get jawline => 'Линия челюсти';
	@override String get neck => 'Шея';
	@override String get fullface => 'Все лицо';
	@override String get whatFaceShapeAiming => 'К какой форме лица вы стремитесь?';
	@override String get heart => 'Сердце';
	@override String get oval => 'Овал';
	@override String get square => 'Квадрат';
	@override String get round => 'Круг';
	@override String get diamond => 'Ромб';
	@override String get whatIsYourSkinType => 'Какой у вас тип кожи?';
	@override String get normal => 'Нормальная';
	@override String get oily => 'Жирная';
	@override String get dry => 'Сухая';
	@override String get combination => 'Комбинированная';
	@override String get sensitive => 'Чувствительная';
	@override String get whichOfThemDoYouHave => 'Что из этого у вас есть?';
	@override String get acneAndPimples => 'Акне и прыщи';
	@override String get redness => 'Покраснение';
	@override String get swelling => 'Отечность';
	@override String get wrinkles => 'Морщины';
	@override String get neckLines => 'Линии шеи';
	@override String get howOftenWearMakeup => 'Как часто вы пользуетесь макияжем?';
	@override String get everyDay => 'Каждый день';
	@override String get fewDaysAWeek => 'Несколько дней в неделю';
	@override String get occasionally => 'Иногда';
	@override String get never => 'Никогда';
	@override String get haveYouHadBotox => 'Делали ли вы ботокс?';
	@override String get yes => 'Да';
	@override String get no => 'Нет';
	@override String get creatingPersonalizedProfile => 'Создание вашего персонализированного профиля';
	@override String get tailoringExperience => 'Мы адаптируем ваш опыт на основе ваших предпочтений...';
	@override String get gender => 'Пол';
	@override String get age => 'Возраст';
	@override String get weight => 'Вес';
	@override String get height => 'Рост';
	@override String get matchingPersonalities => 'ПОДБОР ЛИЧНОСТЕЙ';
}

// Path: faq
class _TranslationsFaqRu implements TranslationsFaqEn {
	_TranslationsFaqRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Часто задаваемые вопросы';
	@override late final _TranslationsFaqQuestionsRu questions = _TranslationsFaqQuestionsRu._(_root);
}

// Path: splash
class _TranslationsSplashRu implements TranslationsSplashEn {
	_TranslationsSplashRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Ru screen1 = _TranslationsSplashScreen1Ru._(_root);
	@override late final _TranslationsSplashScreen2Ru screen2 = _TranslationsSplashScreen2Ru._(_root);
	@override late final _TranslationsSplashScreen3Ru screen3 = _TranslationsSplashScreen3Ru._(_root);
}

// Path: profile
class _TranslationsProfileRu implements TranslationsProfileEn {
	_TranslationsProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Профиль';
	@override String get freeVersion => 'Бесплатная версия';
	@override String get premiumVersion => 'Премиум версия';
	@override String get error => 'Ошибка';
	@override late final _TranslationsProfileSectionsRu sections = _TranslationsProfileSectionsRu._(_root);
	@override late final _TranslationsProfileMenuRu menu = _TranslationsProfileMenuRu._(_root);
	@override String get manage => 'УПРАВЛЯТЬ';
	@override late final _TranslationsProfileLogoutDialogRu logoutDialog = _TranslationsProfileLogoutDialogRu._(_root);
}

// Path: home
class _TranslationsHomeRu implements TranslationsHomeEn {
	_TranslationsHomeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Премиум!';
	@override String get focusAreas => 'Зоны внимания';
	@override String get popularCourses => 'Популярные курсы';
	@override String get seeMore => 'Смотреть больше';
	@override late final _TranslationsHomePersonalizedRu personalized = _TranslationsHomePersonalizedRu._(_root);
	@override late final _TranslationsHomePremiumPlanRu premiumPlan = _TranslationsHomePremiumPlanRu._(_root);
	@override late final _TranslationsHomeQuickActionsRu quickActions = _TranslationsHomeQuickActionsRu._(_root);
	@override late final _TranslationsHomeTodaysExerciseRu todaysExercise = _TranslationsHomeTodaysExerciseRu._(_root);
	@override late final _TranslationsHomeCoursesRu courses = _TranslationsHomeCoursesRu._(_root);
	@override late final _TranslationsHomeBenefitsRu benefits = _TranslationsHomeBenefitsRu._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailRu implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Детали курса';
	@override String get getStarted => 'Начать';
	@override String get noExercisesFound => 'Упражнения для этой категории не найдены';
	@override late final _TranslationsCourseDetailInstructionsRu instructions = _TranslationsCourseDetailInstructionsRu._(_root);
}

// Path: courses
class _TranslationsCoursesRu implements TranslationsCoursesEn {
	_TranslationsCoursesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Все курсы';
	@override String get error => 'Ошибка загрузки упражнений';
	@override String get personalCoursesTitle => 'Персональные курсы';
}

// Path: personalProgram
class _TranslationsPersonalProgramRu implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Установите свою ежедневную цель';
	@override String get dailyGoalDescription => 'Выберите темп, который подходит вашему графику';
	@override String get personalizing => 'Персонализация вашего плана...';
	@override String get readyMessage => 'Ваша личная 30-дневная программа йоги для лица готова✨';
	@override String get minutes => 'min';
	@override String get objectiveTitle => 'Which expression bothers you most when you look in the mirror?';
	@override String get objectiveSubtitle => 'Program balance is adjusted according to facial expression';
	@override String get feelingTitle => 'How would you like to feel by doing face yoga?';
	@override String get timeTitle => 'When is it easier for you to do face yoga?';
	@override late final _TranslationsPersonalProgramObjectivesRu objectives = _TranslationsPersonalProgramObjectivesRu._(_root);
	@override late final _TranslationsPersonalProgramFeelingsRu feelings = _TranslationsPersonalProgramFeelingsRu._(_root);
	@override late final _TranslationsPersonalProgramTimesRu times = _TranslationsPersonalProgramTimesRu._(_root);
}

// Path: editProfile
class _TranslationsEditProfileRu implements TranslationsEditProfileEn {
	_TranslationsEditProfileRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Редактировать профиль';
	@override String get changePhoto => 'Изменить фото';
	@override String get fullName => 'Полное имя';
	@override String get email => 'Электронная почта';
	@override String get age => 'Возраст';
	@override String get gender => 'Пол';
	@override String get skinType => 'Тип кожи';
	@override String get focusArea => 'Зона внимания';
	@override String get focusAreaHint => 'Лоб, Глаза, Нос, Рот, Щеки...';
	@override String get save => 'Сохранить';
	@override String get saving => 'Сохранение...';
	@override String get updateSuccess => 'Профиль успешно обновлен';
	@override String get updateError => 'Произошла ошибка при обновлении профиля';
	@override String get deleteAccount => 'Удалить аккаунт';
}

// Path: notifications
class _TranslationsNotificationsRu implements TranslationsNotificationsEn {
	_TranslationsNotificationsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Уведомления';
	@override String get emptyTitle => 'Пока нет уведомлений';
	@override String get emptyDescription => 'Мы уведомим вас, когда будет важное обновление о вашем пути обучения.';
	@override String get premiumBannerTitle => 'Не упустите\nпреимущества Премиум!';
	@override String get premiumBannerDescription => 'Используйте возможности подписчика Премиум.';
	@override String get sample1Title => 'Ваша ежедневная медитация готова!';
	@override String get sample1Description => 'Найдите свое спокойствие на день';
	@override String get sample1Time => '15 мин назад';
	@override String get sample2Title => 'Новое упражнение: Дыхание океана';
	@override String get sample2Description => 'Добавлена новая дыхательная техника';
	@override String get sample2Time => '1 час назад';
	@override String get sample3Title => 'Вы достигли 7-дневной серии!';
	@override String get sample3Description => 'Продолжайте отличную работу над своим благополучием';
	@override String get sample3Time => 'Вчера';
}

// Path: share
class _TranslationsShareRu implements TranslationsShareEn {
	_TranslationsShareRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Поделиться с друзьями';
	@override String get mainTitle => 'Поделитесь миром';
	@override String get descriptionPart1 => 'Пригласите друзей дышать вместе.\nЗа каждое приглашение вы оба получаете ';
	@override String get descriptionPart2 => '1 неделю Премиум';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'ВАШ КОД ПРИГЛАШЕНИЯ';
	@override String get codeCopied => 'Код скопирован!';
	@override String get copyCode => 'Копировать код';
}

// Path: facialScan
class _TranslationsFacialScanRu implements TranslationsFacialScanEn {
	_TranslationsFacialScanRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сканирование лица';
	@override String step({required Object current, required Object total}) => 'ШАГ ${current} ИЗ ${total}';
	@override String get getStarted => 'Начать';
	@override late final _TranslationsFacialScanAnalyzingRu analyzing = _TranslationsFacialScanAnalyzingRu._(_root);
	@override late final _TranslationsFacialScanResultRu result = _TranslationsFacialScanResultRu._(_root);
	@override late final _TranslationsFacialScanInstructionsRu instructions = _TranslationsFacialScanInstructionsRu._(_root);
	@override late final _TranslationsFacialScanErrorsRu errors = _TranslationsFacialScanErrorsRu._(_root);
	@override late final _TranslationsFacialScanPositionsRu positions = _TranslationsFacialScanPositionsRu._(_root);
}

// Path: auth
class _TranslationsAuthRu implements TranslationsAuthEn {
	_TranslationsAuthRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Продолжить как гость';
	@override String signInFailed({required Object error}) => 'Вход не выполнен: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeRu implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Введите 8-значный код';
	@override String get applying => 'Применение кода...';
	@override late final _TranslationsReferralCodeSuccessRu success = _TranslationsReferralCodeSuccessRu._(_root);
	@override late final _TranslationsReferralCodeErrorsRu errors = _TranslationsReferralCodeErrorsRu._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsRu implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get english => 'Английский';
	@override String get german => 'Немецкий';
	@override String get italian => 'Итальянский';
	@override String get french => 'Французский';
	@override String get japanese => 'Японский';
	@override String get spanish => 'Испанский';
	@override String get russian => 'Русский';
	@override String get turkish => 'Турецкий';
	@override String get korean => 'Корейский';
	@override String get hindi => 'Хинди';
	@override String get portuguese => 'Португальский';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Ru implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Объем услуг';
	@override String get content => 'Yogiface предлагает пользователям руководства по йоге для лица и упражнениям. Приложение включает:';
	@override List<String> get items => [
		'Руководства по йоге для лица и упражнениям',
		'Ежедневные и еженедельные программы упражнений',
		'Целевые рекомендации для конкретных зон лица',
		'Настраиваемые планы и отслеживание прогресса',
	];
	@override String get note => 'Предоставляемый контент не является профессиональной, медицинской или эстетической консультацией, диагностикой или лечением.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Ru implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Условия использования';
	@override List<String> get items => [
		'Вам должно быть не менее 13 лет.',
		'Вы должны предоставить точную и актуальную информацию об учетной записи.',
		'Вы подтверждаете, что упражнения не являются медицинской услугой.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Ru implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Запрещенное использование';
	@override List<String> get items => [
		'Использование приложения для незаконной деятельности.',
		'Продажа, воспроизведение или распространение контента без разрешения.',
		'Несанкционированный доступ, взлом или попытки обратного проектирования.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Ru implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Учетная запись и членство';
	@override String get content => 'Вы несете ответственность за безопасность вашей учетной записи. Yogiface оставляет за собой право приостановить или закрыть учетные записи в случае использования, противоречащего Условиям.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Ru implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Премиум и платные услуги';
	@override List<String> get items => [
		'Ценообразование основано на политике App Store и Google Play.',
		'Подписки могут продлеваться автоматически; отмена производится через настройки магазина.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Ru implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Отказ от ответственности';
	@override String get content => 'Пользователи выполняют упражнения под свою ответственность. В случае возникновения проблем со здоровьем пользователям следует проконсультироваться с медицинским работником. Приложение не должно использоваться для диагностики или лечения.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Ru implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Интеллектуальная собственность';
	@override String get content => 'Дизайн, программное обеспечение, изображения и контент упражнений принадлежат Yogiface. Несанкционированное копирование или изменение исходного кода запрещено.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Ru implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Регулирующее законодательство';
	@override String get content => 'Настоящие Условия регулируются законодательством Турецкой Республики. Центральные суды Стамбула обладают юрисдикцией в отношении споров.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Ru implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Контакты';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Ru implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Что такое файлы cookie?';
	@override String get content => 'Файлы cookie — это небольшие файлы данных, размещаемые на вашем устройстве. Они помогают нам понять, как вы используете приложение, и сделать ваш опыт более плавным. Файлы cookie не содержат напрямую вашу личность; они действуют как цифровые помощники, запоминающие ваши предпочтения и привычки использования.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Ru implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Какие файлы cookie мы используем?';
	@override late final _TranslationsCookiesPolicySection2EssentialRu essential = _TranslationsCookiesPolicySection2EssentialRu._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceRu performance = _TranslationsCookiesPolicySection2PerformanceRu._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationRu personalization = _TranslationsCookiesPolicySection2PersonalizationRu._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingRu marketing = _TranslationsCookiesPolicySection2MarketingRu._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Ru implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Зачем мы используем файлы cookie?';
	@override List<String> get items => [
		'Чтобы обеспечить быструю и плавную работу приложения',
		'Чтобы уменьшить повторяющиеся действия, запоминая предпочтения пользователя',
		'Чтобы сделать опыт более личным и полезным',
		'Чтобы улучшить приложение, анализируя данные использования',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Ru implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Сторонние файлы cookie';
	@override String get content => 'Некоторые файлы cookie могут быть размещены сторонними партнерами, предоставляющими аналитические и рекламные услуги. На них распространяются собственные политики конфиденциальности и использования файлов cookie провайдеров.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Ru implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Контроль и управление файлами cookie';
	@override String get content => 'Вы можете управлять файлами cookie через настройки устройства, разрешения приложения или системные настройки. Отключение необходимых файлов cookie может привести к неправильной работе частей приложения.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Ru implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Использование данных';
	@override String get content => 'Данные, полученные с помощью файлов cookie, если они квалифицируются как персональные данные, обрабатываются в рамках правового поля в соответствии с Политикой конфиденциальности.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Ru implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Обновления политики';
	@override String get content => 'Эта политика может обновляться в зависимости от технологических и правовых изменений. Текущая версия вступает в силу сразу после публикации.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Ru implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Контакты';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Ru implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Собираемая информация';
	@override late final _TranslationsPrivacyPolicySection1Sub1Ru sub1 = _TranslationsPrivacyPolicySection1Sub1Ru._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Ru sub2 = _TranslationsPrivacyPolicySection1Sub2Ru._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Ru implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Цели использования данных';
	@override List<String> get items => [
		'Для обеспечения бесперебойной работы приложения',
		'Для персонализации и оптимизации опыта йоги для лица',
		'Для выполнения обнаружения ошибок и анализа производительности',
		'Для ответа на требования пользователей и запросы поддержки',
	];
	@override String get note => 'Важно: Данные пользователей никогда не продаются третьим лицам.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Ru implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Хранение данных';
	@override List<String> get items => [
		'Данные хранятся до тех пор, пока учетная запись пользователя активна.',
		'Когда учетная запись удаляется, персональные данные необратимо удаляются.',
		'Записи поддержки хранятся максимум 12 месяцев после завершения.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Ru implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Обмен данными';
	@override String get content => 'Ваши данные передаются только в случае юридических требований (официальные запросы), поставщикам услуг (облачная инфраструктура, аналитика) или с явного согласия пользователя.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Ru implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Файлы cookie и безопасность';
	@override String get content => 'Yogiface может использовать файлы cookie для улучшения производительности и опыта. Ваши данные защищены шифрованием SSL/TLS и регулярными проверками безопасности.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Ru implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Права пользователя';
	@override String get content => 'У вас есть право на доступ, исправление, удаление и ограничение обработки данных.';
	@override String get contact => 'Для запросов:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Ru implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Конфиденциальность детей';
	@override String get content => 'Yogiface не предназначен для лиц младше 13 лет. Любые данные, собранные у этой возрастной группы, будут удалены немедленно при обнаружении.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Ru implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Контакты';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsRu implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Ru q1 = _TranslationsFaqQuestionsQ1Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ2Ru q2 = _TranslationsFaqQuestionsQ2Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ3Ru q3 = _TranslationsFaqQuestionsQ3Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ4Ru q4 = _TranslationsFaqQuestionsQ4Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ5Ru q5 = _TranslationsFaqQuestionsQ5Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ6Ru q6 = _TranslationsFaqQuestionsQ6Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ7Ru q7 = _TranslationsFaqQuestionsQ7Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ8Ru q8 = _TranslationsFaqQuestionsQ8Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ9Ru q9 = _TranslationsFaqQuestionsQ9Ru._(_root);
	@override late final _TranslationsFaqQuestionsQ10Ru q10 = _TranslationsFaqQuestionsQ10Ru._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Ru implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сформируйте свое лицо естественно';
	@override String get description => 'Тренируйте мышцы лица с помощью всего нескольких минут ежедневных упражнений. Создайте естественную, эстетичную и неинвазивную рутину красоты.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Ru implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Персонализированный план упражнений с ИИ';
	@override String get description => 'ИИ анализирует ваши черты лица, определяет ваши потребности и рекомендует упражнения, подходящие именно вам. Он отслеживает, какие мышцы нуждаются в большей работе.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Ru implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Видимые результаты';
	@override String get description => 'При регулярном использовании контуры лица становятся более четкими, кровообращение улучшается, а кожа выглядит более живой. Маленькие шаги каждый день приносят большие изменения.';
}

// Path: profile.sections
class _TranslationsProfileSectionsRu implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'НАСТРОЙКИ УЧЕТНОЙ ЗАПИСИ';
	@override String get supportAndOther => 'ПОДДЕРЖКА И ДРУГОЕ';
}

// Path: profile.menu
class _TranslationsProfileMenuRu implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Редактировать профиль';
	@override String get notifications => 'Уведомления';
	@override String get premium => 'Премиум';
	@override String get favoriteExercises => 'Избранные упражнения';
	@override String get appLanguage => 'Язык приложения';
	@override String get shareWithFriends => 'Поделиться с друзьями';
	@override String get enterInviteCode => 'Введите код приглашения';
	@override String get rateUs => 'Оцените нас';
	@override String get faq => 'FAQ';
	@override String get logout => 'Выйти';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogRu implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вы собираетесь выйти';
	@override String get message => 'До встречи! Мы продолжим отслеживать ваши дыхательные упражнения.';
	@override String get logoutButton => 'Выйти';
	@override String get cancelButton => 'Отмена';
}

// Path: home.personalized
class _TranslationsHomePersonalizedRu implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Персонализированный\nОтчет анализа\nлица';
	@override String get description => 'Пожалуйста, проанализируйте вашу кожу,\nчтобы узнать ее тип.';
	@override String get button => 'Попробовать сейчас';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanRu implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Премиум план';
	@override String get description => 'Разблокируйте ИИ-чатбота и\nполучите все премиум-функции';
	@override String get button => 'Получить Премиум';
	@override late final _TranslationsHomePremiumPlanDialogRu dialog = _TranslationsHomePremiumPlanDialogRu._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsRu implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Быстрые действия';
	@override String get programTitle => 'Ваша личная программа';
	@override String get programSubtitle => 'Для вашего лучшего вида\nза 30 дней';
	@override String get button => 'Начать';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseRu implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Упражнение на сегодня';
	@override String get recommended => 'Рекомендуемая рутина';
	@override String get forToday => 'на сегодня';
}

// Path: home.courses
class _TranslationsHomeCoursesRu implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherRu foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherRu._(_root);
	@override late final _TranslationsHomeCoursesVMoveRu vMove = _TranslationsHomeCoursesVMoveRu._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterRu cheekLifter = _TranslationsHomeCoursesCheekLifterRu._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsRu implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningRu naturalIroning = _TranslationsHomeBenefitsNaturalIroningRu._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectRu botoxEffect = _TranslationsHomeBenefitsBotoxEffectRu._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefRu stressRelief = _TranslationsHomeBenefitsStressReliefRu._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceRu radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceRu._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingRu dePuffing = _TranslationsHomeBenefitsDePuffingRu._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsRu implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Ru instruction1 = _TranslationsCourseDetailInstructionsInstruction1Ru._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Ru instruction2 = _TranslationsCourseDetailInstructionsInstruction2Ru._(_root);
}

// Path: personalProgram.objectives
class _TranslationsPersonalProgramObjectivesRu implements TranslationsPersonalProgramObjectivesEn {
	_TranslationsPersonalProgramObjectivesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get tired => 'Tired and worn-out look';
	@override String get harsh => 'Harsh and tense expression';
	@override String get pale => 'Pale and lifeless skin';
	@override String get asymmetrical => 'Asymmetrical facial features';
	@override String get general => 'No obvious problem, I want general care';
}

// Path: personalProgram.feelings
class _TranslationsPersonalProgramFeelingsRu implements TranslationsPersonalProgramFeelingsEn {
	_TranslationsPersonalProgramFeelingsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get lightened => 'Lightened';
	@override String get revitalized => 'Revitalized';
	@override String get refreshed => 'Refreshed';
	@override String get energetic => 'More energetic';
}

// Path: personalProgram.times
class _TranslationsPersonalProgramTimesRu implements TranslationsPersonalProgramTimesEn {
	_TranslationsPersonalProgramTimesRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get morning => 'Morning';
	@override String get duringDay => 'During the day';
	@override String get evening => 'Evening';
	@override String get anytime => 'Time doesn\'t matter, a reminder is enough';
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingRu implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Анализ';
	@override String get description => 'Анализ ваших уникальных черт';
	@override String get detail => 'Определение текстуры кожи, тонуса мышц и зоны внимания для вашей персонализированной рутины.';
	@override String get aiEngineWorking => 'РАБОТА ИИ';
}

// Path: facialScan.result
class _TranslationsFacialScanResultRu implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ваш анализ готов!';
	@override String get subtitle => 'Мы создали рутину на основе ваших результатов.';
	@override String get skinType => 'ТИП КОЖИ';
	@override String get primaryGoal => 'ОСНОВНАЯ ЦЕЛЬ';
	@override String get recommended => 'Рекомендуется для вас';
	@override String get back => 'Назад';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsRu implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get front => 'Поместите лицо в рамку';
	@override String get left => 'Поверните голову влево';
	@override String get right => 'Поверните голову вправо';
	@override String get lighting => 'Убедитесь, что вы находитесь в хорошо освещенном месте для лучших результатов';
	@override String get tapToCapture => 'Нажмите кнопку камеры, чтобы сделать фото';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsRu implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'Требуется разрешение камеры для съемки фото.';
	@override String get cameraPermissionRequired => 'Требуется разрешение камеры';
	@override String get cameraPermissionMessage => 'Для сканирования лица требуется разрешение камеры. Пожалуйста, включите его в настройках приложения.';
	@override String get openSettings => 'Открыть настройки';
	@override String get cancel => 'Отмена';
	@override String get noFaceDetected => 'Лицо не обнаружено. Пожалуйста, попробуйте снова.';
	@override String get captureFailed => 'Не удалось сделать снимок. Пожалуйста, попробуйте снова.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsRu implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get front => 'СПЕРЕДИ';
	@override String get left => 'СЛЕВА';
	@override String get right => 'СПРАВА';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessRu implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Успех!';
	@override String get message => 'Реферальный код успешно применен! Вы и ваш друг получили 1 неделю премиум-доступа.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsRu implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeRu missingCode = _TranslationsReferralCodeErrorsMissingCodeRu._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatRu invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatRu._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedRu alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedRu._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralRu selfReferral = _TranslationsReferralCodeErrorsSelfReferralRu._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundRu codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundRu._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorRu genericError = _TranslationsReferralCodeErrorsGenericErrorRu._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialRu implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Строго необходимые файлы cookie';
	@override String get content => 'Необходимы для основных функций приложения. Они поддерживают основные процессы, такие как управление сеансами, безопасность и базовая навигация.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceRu implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Файлы cookie производительности и аналитики';
	@override String get content => 'Помогают нам понять, какие области используются чаще всего и какие разделы нуждаются в улучшении.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationRu implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Файлы cookie персонализации';
	@override String get content => 'Предоставляют более личный опыт, запоминая настройки, такие как язык, тема и предпочтения упражнений.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingRu implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Маркетинговые и рекламные файлы cookie';
	@override String get content => 'Могут использоваться для предоставления контента и акций, более подходящих вашим интересам, и иногда работают со сторонними сервисами.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Ru implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Данные, предоставляемые пользователем';
	@override List<String> get items => [
		'Имя, псевдоним или информация профиля',
		'Адрес электронной почты (для регистрации, покупки и поддержки)',
		'Планы упражнений, предпочтения и настройки персонализации',
		'Отзывы, запросы и сообщения поддержки',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Ru implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Автоматически собираемые данные';
	@override List<String> get items => [
		'Тип устройства, операционная система и техническая информация',
		'Приблизительные данные о местоположении (уровень города/страны)',
		'Информация об использовании, такая как продолжительность сеанса и взаимодействие с экраном',
		'Журналы производительности, ошибок и сбоев',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Ru implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Что такое YogiFace?';
	@override String get answer => 'YogiFace — это приложение для личной гигиены на основе ИИ, предлагающее упражнения йоги для лица для улучшения внешнего вида кожи путем тренировки мышц лица.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Ru implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Действительно ли приложение работает?';
	@override String get answer => 'Да. Йога для лица активирует мышцы лица, повышая упругость кожи, ускоряя кровообращение и обеспечивая более молодой вид при регулярном использовании.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Ru implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Что здесь делает искусственный интеллект?';
	@override String get answer => 'YogiFace анализирует черты лица, определяет целевые зоны и создает персонализированный план упражнений. Таким образом, каждое движение оптимизируется под личные нужды.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Ru implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Сколько времени нужно уделять каждый день?';
	@override String get answer => 'Всего 5-10 минут в день достаточно. При регулярной практике видимые изменения начинаются уже через несколько недель.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Ru implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Когда я увижу результаты?';
	@override String get answer => 'При регулярном использовании улучшение тона кожи заметно в течение 2-3 недель, а черты лица становятся более четкими в течение 4-6 недель. Результаты могут варьироваться от человека к человеку.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Ru implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Работает ли это для таких проблем, как второй подбородок или обвисание?';
	@override String get answer => 'Да. YogiFace предлагает целевые упражнения для линии челюсти, мышц щек и области шеи. При регулярном выполнении эти упражнения обеспечивают значительную подтяжку в этих зонах.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Ru implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Как мне узнать, правильно ли я делаю движения?';
	@override String get answer => 'Приложение использует ИИ для анализа угла вашего лица, выражения и паттерна движений; оно уведомляет вас о любых неправильных моментах.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Ru implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Подходит ли это для всех возрастов?';
	@override String get answer => 'Да. Йога для лица — это неинвазивный естественный метод. Любой может безопасно практиковать его с раннего возраста.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Ru implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace бесплатно?';
	@override String get answer => 'Основные упражнения бесплатны. Персональные программы, расширенный анализ лица и специальные рекомендации ИИ включены в премиум-пакет.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Ru implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get question => 'Могут ли использовать его люди, перенесшие пластическую операцию?';
	@override String get answer => 'Многие пользователи используют его безопасно, но рекомендуется проконсультироваться с врачом в период послеоперационного восстановления.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogRu implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Функция недоступна';
	@override String get message => 'Эта функция в настоящее время недоступна.';
	@override String get button => 'ОК';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherRu implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сглаживатель лба';
	@override String get description => 'Это движение снимает напряжение в мышцах лба и накопленные морщины...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveRu implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Движение "V"';
	@override String get description => 'Укрепляет нежную кожу вокруг глаз, поднимает опущенные веки и стирает признаки усталости.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterRu implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подъемник щек';
	@override String get description => 'Поднимает мышцы щек (скуловые), которые наиболее подвержены гравитации, восстанавливая овал лица.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningRu implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Естественная глажка:';
	@override String get description => 'Раскрывает горизонтальные линии на лбу и предотвращает их углубление.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectRu implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Эффект ботокса';
	@override String get description => 'Расслабляет напряженные мышцы и ломает привычку хмуриться.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefRu implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Снятие стресса';
	@override String get description => 'Снимает накопленный стресс на лбу и облегчает головные боли.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceRu implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Сияющий вид';
	@override String get description => 'Усиливает кровообращение, придавая коже сияние.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingRu implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Снятие отечности';
	@override String get description => 'Уменьшает отечность лица благодаря эффекту лимфодренажа.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Ru implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Вымойте руки и лицо';
	@override String get description => 'Чистая кожа делает массаж более эффективным.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Ru implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Ru._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Нанесите масло для лица или увлажняющий крем';
	@override String get description => 'Плавно скользите, не растягивая кожу.';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeRu implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Требуется код';
	@override String get message => 'Пожалуйста, введите реферальный код для продолжения.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatRu implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Неверный формат';
	@override String get message => 'Реферальный код должен содержать ровно 8 символов.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedRu implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Уже использован';
	@override String get message => 'Вы уже использовали реферальный код. Каждый пользователь может использовать только один код.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralRu implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Неверный код';
	@override String get message => 'Вы не можете использовать свой собственный код приглашения. Пожалуйста, используйте код друга.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundRu implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Код не найден';
	@override String get message => 'Введенный реферальный код не существует. Пожалуйста, проверьте и попробуйте снова.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorRu implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorRu._(this._root);

	final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ошибка';
	@override String get message => 'Произошла ошибка при применении реферального кода. Пожалуйста, попробуйте снова.';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Добро пожаловать ${name}',
			'welcome2' => 'Добро пожаловать',
			'get_started' => 'Начать',
			'next' => 'Далее',
			'back' => 'Назад',
			'skip' => 'Пропустить',
			'logintext' => 'Рад вас видеть. Вы можете продолжить с того места, где остановились, войдя в свою учетную запись.',
			'termOfService.text1' => 'Регистрируясь в swipe, вы соглашаетесь с нашими ',
			'termOfService.link1' => 'Условиями обслуживания',
			'termOfService.text2' => '. Узнайте, как мы обрабатываем ваши данные, в нашей ',
			'termOfService.link2' => 'Политике конфиденциальности',
			'termOfService.text3' => ' и ',
			'termOfService.link3' => 'Политике использования файлов cookie',
			'termOfService.text4' => '',
			'cookies' => 'Политика использования файлов cookie',
			'privacy' => 'Политика конфиденциальности',
			'termsOfService.title' => 'Yogiface – Условия обслуживания',
			'termsOfService.lastUpdated' => 'Последнее обновление: 2025',
			'termsOfService.principle' => 'Yogiface — это приложение для здоровья, предоставляющее упражнения йоги для лица и руководства для поддержки мышц лица. Приложение не предоставляет медицинских, клинических, эстетических или профессиональных медицинских услуг.',
			'termsOfService.intro' => 'Настоящие Условия обслуживания («Условия») содержат правила, применимые к использованию вами мобильного приложения Yogiface («Приложение»). Используя Приложение, вы соглашаетесь с настоящими Условиями. Если вы не согласны с Условиями, вы не должны использовать Приложение.',
			'termsOfService.section1.title' => '1. Объем услуг',
			'termsOfService.section1.content' => 'Yogiface предлагает пользователям руководства по йоге для лица и упражнениям. Приложение включает:',
			'termsOfService.section1.items.0' => 'Руководства по йоге для лица и упражнениям',
			'termsOfService.section1.items.1' => 'Ежедневные и еженедельные программы упражнений',
			'termsOfService.section1.items.2' => 'Целевые рекомендации для конкретных зон лица',
			'termsOfService.section1.items.3' => 'Настраиваемые планы и отслеживание прогресса',
			'termsOfService.section1.note' => 'Предоставляемый контент не является профессиональной, медицинской или эстетической консультацией, диагностикой или лечением.',
			'termsOfService.section2.title' => '2. Условия использования',
			'termsOfService.section2.items.0' => 'Вам должно быть не менее 13 лет.',
			'termsOfService.section2.items.1' => 'Вы должны предоставить точную и актуальную информацию об учетной записи.',
			'termsOfService.section2.items.2' => 'Вы подтверждаете, что упражнения не являются медицинской услугой.',
			'termsOfService.section3.title' => '3. Запрещенное использование',
			'termsOfService.section3.items.0' => 'Использование приложения для незаконной деятельности.',
			'termsOfService.section3.items.1' => 'Продажа, воспроизведение или распространение контента без разрешения.',
			'termsOfService.section3.items.2' => 'Несанкционированный доступ, взлом или попытки обратного проектирования.',
			'termsOfService.section4.title' => '4. Учетная запись и членство',
			'termsOfService.section4.content' => 'Вы несете ответственность за безопасность вашей учетной записи. Yogiface оставляет за собой право приостановить или закрыть учетные записи в случае использования, противоречащего Условиям.',
			'termsOfService.section5.title' => '5. Премиум и платные услуги',
			'termsOfService.section5.items.0' => 'Ценообразование основано на политике App Store и Google Play.',
			'termsOfService.section5.items.1' => 'Подписки могут продлеваться автоматически; отмена производится через настройки магазина.',
			'termsOfService.section6.title' => '6. Отказ от ответственности',
			'termsOfService.section6.content' => 'Пользователи выполняют упражнения под свою ответственность. В случае возникновения проблем со здоровьем пользователям следует проконсультироваться с медицинским работником. Приложение не должно использоваться для диагностики или лечения.',
			'termsOfService.section7.title' => '7. Интеллектуальная собственность',
			'termsOfService.section7.content' => 'Дизайн, программное обеспечение, изображения и контент упражнений принадлежат Yogiface. Несанкционированное копирование или изменение исходного кода запрещено.',
			'termsOfService.section12.title' => '12. Регулирующее законодательство',
			'termsOfService.section12.content' => 'Настоящие Условия регулируются законодательством Турецкой Республики. Центральные суды Стамбула обладают юрисдикцией в отношении споров.',
			'termsOfService.section13.title' => '13. Контакты',
			'termsOfService.section13.email' => '📩 Email: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Политика использования файлов cookie',
			'cookiesPolicy.lastUpdated' => 'Последнее обновление: 2025',
			'cookiesPolicy.intro' => 'Добро пожаловать в Yogiface! Каждый раз, когда вы посещаете приложение, мы используем цифровых помощников (cookie) для улучшения и персонализации вашего опыта. Эта политика объясняет, как вы можете управлять своими предпочтениями.',
			'cookiesPolicy.section1.title' => '1. Что такое файлы cookie?',
			'cookiesPolicy.section1.content' => 'Файлы cookie — это небольшие файлы данных, размещаемые на вашем устройстве. Они помогают нам понять, как вы используете приложение, и сделать ваш опыт более плавным. Файлы cookie не содержат напрямую вашу личность; они действуют как цифровые помощники, запоминающие ваши предпочтения и привычки использования.',
			'cookiesPolicy.section2.title' => '2. Какие файлы cookie мы используем?',
			'cookiesPolicy.section2.essential.title' => 'Строго необходимые файлы cookie',
			'cookiesPolicy.section2.essential.content' => 'Необходимы для основных функций приложения. Они поддерживают основные процессы, такие как управление сеансами, безопасность и базовая навигация.',
			'cookiesPolicy.section2.performance.title' => 'Файлы cookie производительности и аналитики',
			'cookiesPolicy.section2.performance.content' => 'Помогают нам понять, какие области используются чаще всего и какие разделы нуждаются в улучшении.',
			'cookiesPolicy.section2.personalization.title' => 'Файлы cookie персонализации',
			'cookiesPolicy.section2.personalization.content' => 'Предоставляют более личный опыт, запоминая настройки, такие как язык, тема и предпочтения упражнений.',
			'cookiesPolicy.section2.marketing.title' => 'Маркетинговые и рекламные файлы cookie',
			'cookiesPolicy.section2.marketing.content' => 'Могут использоваться для предоставления контента и акций, более подходящих вашим интересам, и иногда работают со сторонними сервисами.',
			'cookiesPolicy.section3.title' => '3. Зачем мы используем файлы cookie?',
			'cookiesPolicy.section3.items.0' => 'Чтобы обеспечить быструю и плавную работу приложения',
			'cookiesPolicy.section3.items.1' => 'Чтобы уменьшить повторяющиеся действия, запоминая предпочтения пользователя',
			'cookiesPolicy.section3.items.2' => 'Чтобы сделать опыт более личным и полезным',
			'cookiesPolicy.section3.items.3' => 'Чтобы улучшить приложение, анализируя данные использования',
			'cookiesPolicy.section4.title' => '4. Сторонние файлы cookie',
			'cookiesPolicy.section4.content' => 'Некоторые файлы cookie могут быть размещены сторонними партнерами, предоставляющими аналитические и рекламные услуги. На них распространяются собственные политики конфиденциальности и использования файлов cookie провайдеров.',
			'cookiesPolicy.section5.title' => '5. Контроль и управление файлами cookie',
			'cookiesPolicy.section5.content' => 'Вы можете управлять файлами cookie через настройки устройства, разрешения приложения или системные настройки. Отключение необходимых файлов cookie может привести к неправильной работе частей приложения.',
			'cookiesPolicy.section6.title' => '6. Использование данных',
			'cookiesPolicy.section6.content' => 'Данные, полученные с помощью файлов cookie, если они квалифицируются как персональные данные, обрабатываются в рамках правового поля в соответствии с Политикой конфиденциальности.',
			'cookiesPolicy.section7.title' => '7. Обновления политики',
			'cookiesPolicy.section7.content' => 'Эта политика может обновляться в зависимости от технологических и правовых изменений. Текущая версия вступает в силу сразу после публикации.',
			'cookiesPolicy.section8.title' => '8. Контакты',
			'cookiesPolicy.section8.email' => '📩 Email: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Политика конфиденциальности',
			'privacyPolicy.lastUpdated' => 'Последнее обновление: 2025',
			'privacyPolicy.intro' => 'Эта Политика конфиденциальности объясняет принципы сбора, использования, хранения и защиты персональных данных всех пользователей, использующих мобильное приложение Yogiface («Приложение»). Используя Приложение, вы принимаете эту политику.',
			'privacyPolicy.principle' => 'Yogiface принимает конфиденциальность пользователей и безопасность данных как основной принцип. Все персональные данные обрабатываются в соответствии с GDPR и соответствующим законодательством.',
			'privacyPolicy.section1.title' => '1. Собираемая информация',
			'privacyPolicy.section1.sub1.title' => '1.1. Данные, предоставляемые пользователем',
			'privacyPolicy.section1.sub1.items.0' => 'Имя, псевдоним или информация профиля',
			'privacyPolicy.section1.sub1.items.1' => 'Адрес электронной почты (для регистрации, покупки и поддержки)',
			'privacyPolicy.section1.sub1.items.2' => 'Планы упражнений, предпочтения и настройки персонализации',
			'privacyPolicy.section1.sub1.items.3' => 'Отзывы, запросы и сообщения поддержки',
			'privacyPolicy.section1.sub2.title' => '1.2. Автоматически собираемые данные',
			'privacyPolicy.section1.sub2.items.0' => 'Тип устройства, операционная система и техническая информация',
			'privacyPolicy.section1.sub2.items.1' => 'Приблизительные данные о местоположении (уровень города/страны)',
			'privacyPolicy.section1.sub2.items.2' => 'Информация об использовании, такая как продолжительность сеанса и взаимодействие с экраном',
			'privacyPolicy.section1.sub2.items.3' => 'Журналы производительности, ошибок и сбоев',
			'privacyPolicy.section2.title' => '2. Цели использования данных',
			'privacyPolicy.section2.items.0' => 'Для обеспечения бесперебойной работы приложения',
			'privacyPolicy.section2.items.1' => 'Для персонализации и оптимизации опыта йоги для лица',
			'privacyPolicy.section2.items.2' => 'Для выполнения обнаружения ошибок и анализа производительности',
			'privacyPolicy.section2.items.3' => 'Для ответа на требования пользователей и запросы поддержки',
			'privacyPolicy.section2.note' => 'Важно: Данные пользователей никогда не продаются третьим лицам.',
			'privacyPolicy.section3.title' => '3. Хранение данных',
			'privacyPolicy.section3.items.0' => 'Данные хранятся до тех пор, пока учетная запись пользователя активна.',
			'privacyPolicy.section3.items.1' => 'Когда учетная запись удаляется, персональные данные необратимо удаляются.',
			'privacyPolicy.section3.items.2' => 'Записи поддержки хранятся максимум 12 месяцев после завершения.',
			'privacyPolicy.section4.title' => '4. Обмен данными',
			'privacyPolicy.section4.content' => 'Ваши данные передаются только в случае юридических требований (официальные запросы), поставщикам услуг (облачная инфраструктура, аналитика) или с явного согласия пользователя.',
			'privacyPolicy.section5.title' => '5. Файлы cookie и безопасность',
			'privacyPolicy.section5.content' => 'Yogiface может использовать файлы cookie для улучшения производительности и опыта. Ваши данные защищены шифрованием SSL/TLS и регулярными проверками безопасности.',
			'privacyPolicy.section6.title' => '6. Права пользователя',
			'privacyPolicy.section6.content' => 'У вас есть право на доступ, исправление, удаление и ограничение обработки данных.',
			'privacyPolicy.section6.contact' => 'Для запросов:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Конфиденциальность детей',
			'privacyPolicy.section8.content' => 'Yogiface не предназначен для лиц младше 13 лет. Любые данные, собранные у этой возрастной группы, будут удалены немедленно при обнаружении.',
			'privacyPolicy.section10.title' => '10. Контакты',
			'privacyPolicy.section10.email' => '📩 Email: support@fly-work.com',
			'onboarding.basicInformation' => 'ОСНОВНАЯ ИНФОРМАЦИЯ',
			'onboarding.target' => 'ЦЕЛЬ',
			'onboarding.habits' => 'ПРИВЫЧКИ',
			'onboarding.step' => 'ШАГ',
			'onboarding.of' => 'ИЗ',
			'onboarding.tellUsAboutYourself' => 'Расскажите нам о себе',
			'onboarding.shortBioDescription' => 'Краткая биография помогает другим узнать вас настоящего. Пусть она будет веселой и искренней',
			'onboarding.enterYourFullname' => 'Введите ваше полное имя',
			'onboarding.fullName' => 'Полное имя',
			'onboarding.male' => 'Мужской',
			'onboarding.female' => 'Женский',
			'onboarding.dontWantToMention' => 'Я не хочу указывать',
			'onboarding.whatIsMainObjective' => 'Какова основная цель?',
			'onboarding.reduceWrinkles' => 'Уменьшить морщины',
			'onboarding.tightenSkin' => 'Подтянуть кожу',
			'onboarding.liftDroopyEyelids' => 'Поднять опущенные веки',
			'onboarding.eliminateDoubleChin' => 'Устранить второй подбородок',
			'onboarding.brightenSkinTone' => 'Осветлить тон кожи',
			'onboarding.allOfTheAbove' => 'Все вышеперечисленное',
			'onboarding.whichAreaToImprove' => 'Какую область вы бы хотели улучшить?',
			'onboarding.forehead' => 'Лоб',
			'onboarding.eyes' => 'Глаза',
			'onboarding.nose' => 'Нос',
			'onboarding.cheeks' => 'Щеки',
			'onboarding.lips' => 'Губы',
			'onboarding.jawline' => 'Линия челюсти',
			'onboarding.neck' => 'Шея',
			'onboarding.fullface' => 'Все лицо',
			'onboarding.whatFaceShapeAiming' => 'К какой форме лица вы стремитесь?',
			'onboarding.heart' => 'Сердце',
			'onboarding.oval' => 'Овал',
			'onboarding.square' => 'Квадрат',
			'onboarding.round' => 'Круг',
			'onboarding.diamond' => 'Ромб',
			'onboarding.whatIsYourSkinType' => 'Какой у вас тип кожи?',
			'onboarding.normal' => 'Нормальная',
			'onboarding.oily' => 'Жирная',
			'onboarding.dry' => 'Сухая',
			'onboarding.combination' => 'Комбинированная',
			'onboarding.sensitive' => 'Чувствительная',
			'onboarding.whichOfThemDoYouHave' => 'Что из этого у вас есть?',
			'onboarding.acneAndPimples' => 'Акне и прыщи',
			'onboarding.redness' => 'Покраснение',
			'onboarding.swelling' => 'Отечность',
			'onboarding.wrinkles' => 'Морщины',
			'onboarding.neckLines' => 'Линии шеи',
			'onboarding.howOftenWearMakeup' => 'Как часто вы пользуетесь макияжем?',
			'onboarding.everyDay' => 'Каждый день',
			'onboarding.fewDaysAWeek' => 'Несколько дней в неделю',
			'onboarding.occasionally' => 'Иногда',
			'onboarding.never' => 'Никогда',
			'onboarding.haveYouHadBotox' => 'Делали ли вы ботокс?',
			'onboarding.yes' => 'Да',
			'onboarding.no' => 'Нет',
			'onboarding.creatingPersonalizedProfile' => 'Создание вашего персонализированного профиля',
			'onboarding.tailoringExperience' => 'Мы адаптируем ваш опыт на основе ваших предпочтений...',
			'onboarding.gender' => 'Пол',
			'onboarding.age' => 'Возраст',
			'onboarding.weight' => 'Вес',
			'onboarding.height' => 'Рост',
			'onboarding.matchingPersonalities' => 'ПОДБОР ЛИЧНОСТЕЙ',
			'pressBackAgainToExit' => 'Нажмите назад еще раз для выхода',
			'addedToFavoritesTitle' => 'Упражнение успешно добавлено в избранное!',
			'removedFromFavoritesTitle' => 'Упражнение успешно удалено из избранного!',
			'removedFromFavorites' => 'Вы можете получить доступ к другим упражнениям, которые хотите добавить, из курсов',
			'faq.title' => 'Часто задаваемые вопросы',
			'faq.questions.q1.question' => 'Что такое YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace — это приложение для личной гигиены на основе ИИ, предлагающее упражнения йоги для лица для улучшения внешнего вида кожи путем тренировки мышц лица.',
			'faq.questions.q2.question' => 'Действительно ли приложение работает?',
			'faq.questions.q2.answer' => 'Да. Йога для лица активирует мышцы лица, повышая упругость кожи, ускоряя кровообращение и обеспечивая более молодой вид при регулярном использовании.',
			'faq.questions.q3.question' => 'Что здесь делает искусственный интеллект?',
			'faq.questions.q3.answer' => 'YogiFace анализирует черты лица, определяет целевые зоны и создает персонализированный план упражнений. Таким образом, каждое движение оптимизируется под личные нужды.',
			'faq.questions.q4.question' => 'Сколько времени нужно уделять каждый день?',
			'faq.questions.q4.answer' => 'Всего 5-10 минут в день достаточно. При регулярной практике видимые изменения начинаются уже через несколько недель.',
			'faq.questions.q5.question' => 'Когда я увижу результаты?',
			'faq.questions.q5.answer' => 'При регулярном использовании улучшение тона кожи заметно в течение 2-3 недель, а черты лица становятся более четкими в течение 4-6 недель. Результаты могут варьироваться от человека к человеку.',
			'faq.questions.q6.question' => 'Работает ли это для таких проблем, как второй подбородок или обвисание?',
			'faq.questions.q6.answer' => 'Да. YogiFace предлагает целевые упражнения для линии челюсти, мышц щек и области шеи. При регулярном выполнении эти упражнения обеспечивают значительную подтяжку в этих зонах.',
			'faq.questions.q7.question' => 'Как мне узнать, правильно ли я делаю движения?',
			'faq.questions.q7.answer' => 'Приложение использует ИИ для анализа угла вашего лица, выражения и паттерна движений; оно уведомляет вас о любых неправильных моментах.',
			'faq.questions.q8.question' => 'Подходит ли это для всех возрастов?',
			'faq.questions.q8.answer' => 'Да. Йога для лица — это неинвазивный естественный метод. Любой может безопасно практиковать его с раннего возраста.',
			'faq.questions.q9.question' => 'YogiFace бесплатно?',
			'faq.questions.q9.answer' => 'Основные упражнения бесплатны. Персональные программы, расширенный анализ лица и специальные рекомендации ИИ включены в премиум-пакет.',
			'faq.questions.q10.question' => 'Могут ли использовать его люди, перенесшие пластическую операцию?',
			'faq.questions.q10.answer' => 'Многие пользователи используют его безопасно, но рекомендуется проконсультироваться с врачом в период послеоперационного восстановления.',
			'full_face' => 'Все лицо / Общее омоложение',
			'eye_area' => 'Глаза и область глаз',
			'nose_area' => 'Нос и область носа',
			'cheeks_mid_face' => 'Щеки и средняя часть лица',
			'lip_area' => 'Губы и область рта',
			'jawline_chin' => 'Линия челюсти, подбородок и второй подбородок',
			'forehead_brow' => 'Лоб и область бровей',
			'neck_decollete' => 'Шея и декольте',
			'good_morning' => 'Доброе утро',
			'good_afternoon' => 'Добрый день',
			'good_evening' => 'Добрый вечер',
			'splash.screen1.title' => 'Сформируйте свое лицо естественно',
			'splash.screen1.description' => 'Тренируйте мышцы лица с помощью всего нескольких минут ежедневных упражнений. Создайте естественную, эстетичную и неинвазивную рутину красоты.',
			'splash.screen2.title' => 'Персонализированный план упражнений с ИИ',
			'splash.screen2.description' => 'ИИ анализирует ваши черты лица, определяет ваши потребности и рекомендует упражнения, подходящие именно вам. Он отслеживает, какие мышцы нуждаются в большей работе.',
			'splash.screen3.title' => 'Видимые результаты',
			'splash.screen3.description' => 'При регулярном использовании контуры лица становятся более четкими, кровообращение улучшается, а кожа выглядит более живой. Маленькие шаги каждый день приносят большие изменения.',
			'profile.title' => 'Профиль',
			'profile.freeVersion' => 'Бесплатная версия',
			'profile.premiumVersion' => 'Премиум версия',
			'profile.error' => 'Ошибка',
			'profile.sections.accountSettings' => 'НАСТРОЙКИ УЧЕТНОЙ ЗАПИСИ',
			'profile.sections.supportAndOther' => 'ПОДДЕРЖКА И ДРУГОЕ',
			'profile.menu.editProfile' => 'Редактировать профиль',
			'profile.menu.notifications' => 'Уведомления',
			'profile.menu.premium' => 'Премиум',
			'profile.menu.favoriteExercises' => 'Избранные упражнения',
			'profile.menu.appLanguage' => 'Язык приложения',
			'profile.menu.shareWithFriends' => 'Поделиться с друзьями',
			'profile.menu.enterInviteCode' => 'Введите код приглашения',
			'profile.menu.rateUs' => 'Оцените нас',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Выйти',
			'profile.manage' => 'УПРАВЛЯТЬ',
			'profile.logoutDialog.title' => 'Вы собираетесь выйти',
			'profile.logoutDialog.message' => 'До встречи! Мы продолжим отслеживать ваши дыхательные упражнения.',
			'profile.logoutDialog.logoutButton' => 'Выйти',
			'profile.logoutDialog.cancelButton' => 'Отмена',
			'home.premium' => 'Премиум!',
			'home.focusAreas' => 'Зоны внимания',
			'home.popularCourses' => 'Популярные курсы',
			'home.seeMore' => 'Смотреть больше',
			'home.personalized.title' => 'Персонализированный\nОтчет анализа\nлица',
			'home.personalized.description' => 'Пожалуйста, проанализируйте вашу кожу,\nчтобы узнать ее тип.',
			'home.personalized.button' => 'Попробовать сейчас',
			'home.premiumPlan.title' => 'Премиум план',
			'home.premiumPlan.description' => 'Разблокируйте ИИ-чатбота и\nполучите все премиум-функции',
			'home.premiumPlan.button' => 'Получить Премиум',
			'home.premiumPlan.dialog.title' => 'Функция недоступна',
			'home.premiumPlan.dialog.message' => 'Эта функция в настоящее время недоступна.',
			'home.premiumPlan.dialog.button' => 'ОК',
			'home.quickActions.title' => 'Быстрые действия',
			'home.quickActions.programTitle' => 'Ваша личная программа',
			'home.quickActions.programSubtitle' => 'Для вашего лучшего вида\nза 30 дней',
			'home.quickActions.button' => 'Начать',
			'home.todaysExercise.title' => 'Упражнение на сегодня',
			'home.todaysExercise.recommended' => 'Рекомендуемая рутина',
			'home.todaysExercise.forToday' => 'на сегодня',
			'home.courses.foreheadSmoother.title' => 'Сглаживатель лба',
			'home.courses.foreheadSmoother.description' => 'Это движение снимает напряжение в мышцах лба и накопленные морщины...',
			'home.courses.vMove.title' => 'Движение "V"',
			'home.courses.vMove.description' => 'Укрепляет нежную кожу вокруг глаз, поднимает опущенные веки и стирает признаки усталости.',
			'home.courses.cheekLifter.title' => 'Подъемник щек',
			'home.courses.cheekLifter.description' => 'Поднимает мышцы щек (скуловые), которые наиболее подвержены гравитации, восстанавливая овал лица.',
			'home.benefits.naturalIroning.title' => 'Естественная глажка:',
			'home.benefits.naturalIroning.description' => 'Раскрывает горизонтальные линии на лбу и предотвращает их углубление.',
			'home.benefits.botoxEffect.title' => 'Эффект ботокса',
			'home.benefits.botoxEffect.description' => 'Расслабляет напряженные мышцы и ломает привычку хмуриться.',
			'home.benefits.stressRelief.title' => 'Снятие стресса',
			'home.benefits.stressRelief.description' => 'Снимает накопленный стресс на лбу и облегчает головные боли.',
			'home.benefits.radiantAppearance.title' => 'Сияющий вид',
			'home.benefits.radiantAppearance.description' => 'Усиливает кровообращение, придавая коже сияние.',
			'home.benefits.dePuffing.title' => 'Снятие отечности',
			'home.benefits.dePuffing.description' => 'Уменьшает отечность лица благодаря эффекту лимфодренажа.',
			'courseDetail.title' => 'Детали курса',
			'courseDetail.getStarted' => 'Начать',
			'courseDetail.noExercisesFound' => 'Упражнения для этой категории не найдены',
			'courseDetail.instructions.instruction1.title' => 'Вымойте руки и лицо',
			'courseDetail.instructions.instruction1.description' => 'Чистая кожа делает массаж более эффективным.',
			'courseDetail.instructions.instruction2.title' => 'Нанесите масло для лица или увлажняющий крем',
			'courseDetail.instructions.instruction2.description' => 'Плавно скользите, не растягивая кожу.',
			'courses.title' => 'Все курсы',
			'courses.error' => 'Ошибка загрузки упражнений',
			'courses.personalCoursesTitle' => 'Персональные курсы',
			'personalProgram.dailyGoalTitle' => 'Установите свою ежедневную цель',
			'personalProgram.dailyGoalDescription' => 'Выберите темп, который подходит вашему графику',
			'personalProgram.personalizing' => 'Персонализация вашего плана...',
			'personalProgram.readyMessage' => 'Ваша личная 30-дневная программа йоги для лица готова✨',
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
			'editProfile.title' => 'Редактировать профиль',
			'editProfile.changePhoto' => 'Изменить фото',
			'editProfile.fullName' => 'Полное имя',
			'editProfile.email' => 'Электронная почта',
			'editProfile.age' => 'Возраст',
			'editProfile.gender' => 'Пол',
			'editProfile.skinType' => 'Тип кожи',
			'editProfile.focusArea' => 'Зона внимания',
			'editProfile.focusAreaHint' => 'Лоб, Глаза, Нос, Рот, Щеки...',
			'editProfile.save' => 'Сохранить',
			'editProfile.saving' => 'Сохранение...',
			'editProfile.updateSuccess' => 'Профиль успешно обновлен',
			'editProfile.updateError' => 'Произошла ошибка при обновлении профиля',
			'editProfile.deleteAccount' => 'Удалить аккаунт',
			'notifications.title' => 'Уведомления',
			'notifications.emptyTitle' => 'Пока нет уведомлений',
			'notifications.emptyDescription' => 'Мы уведомим вас, когда будет важное обновление о вашем пути обучения.',
			'notifications.premiumBannerTitle' => 'Не упустите\nпреимущества Премиум!',
			'notifications.premiumBannerDescription' => 'Используйте возможности подписчика Премиум.',
			'notifications.sample1Title' => 'Ваша ежедневная медитация готова!',
			'notifications.sample1Description' => 'Найдите свое спокойствие на день',
			'notifications.sample1Time' => '15 мин назад',
			'notifications.sample2Title' => 'Новое упражнение: Дыхание океана',
			'notifications.sample2Description' => 'Добавлена новая дыхательная техника',
			'notifications.sample2Time' => '1 час назад',
			'notifications.sample3Title' => 'Вы достигли 7-дневной серии!',
			'notifications.sample3Description' => 'Продолжайте отличную работу над своим благополучием',
			'notifications.sample3Time' => 'Вчера',
			'share.title' => 'Поделиться с друзьями',
			'share.mainTitle' => 'Поделитесь миром',
			'share.descriptionPart1' => 'Пригласите друзей дышать вместе.\nЗа каждое приглашение вы оба получаете ',
			'share.descriptionPart2' => '1 неделю Премиум',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'ВАШ КОД ПРИГЛАШЕНИЯ',
			'share.codeCopied' => 'Код скопирован!',
			'share.copyCode' => 'Копировать код',
			'facialScan.title' => 'Сканирование лица',
			'facialScan.step' => ({required Object current, required Object total}) => 'ШАГ ${current} ИЗ ${total}',
			'facialScan.getStarted' => 'Начать',
			'facialScan.analyzing.title' => 'Анализ',
			'facialScan.analyzing.description' => 'Анализ ваших уникальных черт',
			'facialScan.analyzing.detail' => 'Определение текстуры кожи, тонуса мышц и зоны внимания для вашей персонализированной рутины.',
			'facialScan.analyzing.aiEngineWorking' => 'РАБОТА ИИ',
			'facialScan.result.title' => 'Ваш анализ готов!',
			'facialScan.result.subtitle' => 'Мы создали рутину на основе ваших результатов.',
			'facialScan.result.skinType' => 'ТИП КОЖИ',
			'facialScan.result.primaryGoal' => 'ОСНОВНАЯ ЦЕЛЬ',
			'facialScan.result.recommended' => 'Рекомендуется для вас',
			'facialScan.result.back' => 'Назад',
			'facialScan.instructions.front' => 'Поместите лицо в рамку',
			'facialScan.instructions.left' => 'Поверните голову влево',
			'facialScan.instructions.right' => 'Поверните голову вправо',
			'facialScan.instructions.lighting' => 'Убедитесь, что вы находитесь в хорошо освещенном месте для лучших результатов',
			'facialScan.instructions.tapToCapture' => 'Нажмите кнопку камеры, чтобы сделать фото',
			'facialScan.errors.cameraPermission' => 'Требуется разрешение камеры для съемки фото.',
			'facialScan.errors.cameraPermissionRequired' => 'Требуется разрешение камеры',
			'facialScan.errors.cameraPermissionMessage' => 'Для сканирования лица требуется разрешение камеры. Пожалуйста, включите его в настройках приложения.',
			'facialScan.errors.openSettings' => 'Открыть настройки',
			'facialScan.errors.cancel' => 'Отмена',
			'facialScan.errors.noFaceDetected' => 'Лицо не обнаружено. Пожалуйста, попробуйте снова.',
			'facialScan.errors.captureFailed' => 'Не удалось сделать снимок. Пожалуйста, попробуйте снова.',
			'facialScan.positions.front' => 'СПЕРЕДИ',
			'facialScan.positions.left' => 'СЛЕВА',
			'facialScan.positions.right' => 'СПРАВА',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Продолжить как гость',
			'auth.signInFailed' => ({required Object error}) => 'Вход не выполнен: ${error}',
			'benefits' => 'Преимущества',
			'minutes' => 'Мин',
			'cancel' => 'Отмена',
			'beforeBegin' => 'Перед началом',
			'rest' => 'Отдых',
			'courseCompleted' => 'Курс завершен',
			'courseCompletedDescription' => 'Отличная работа по завершению сегодняшней сессии.',
			'deleteAccount' => 'Удалить аккаунт',
			'deleteDialogTitle' => 'Вы уверены, что хотите удалить свой аккаунт?',
			'deleteDialogDescription' => 'Это действие необратимо и навсегда удалит всю вашу историю упражнений и данные.',
			'deleteError' => 'Произошла ошибка при удалении вашего аккаунта. Пожалуйста, попробуйте снова.',
			'favoriteExercises' => 'Избранные упражнения',
			'noFavoritesInCategory' => 'Нет избранного в этой категории',
			'noFavoritesAdded' => 'Избранное пока не добавлено.',
			'favoriteExercisesDescription' => 'Чтобы установить любимые упражнения, вы можете добавить упражнения, которые вам нравятся, со страницы Мои упражнения.',
			'enterInvitationCode' => 'Введите код приглашения',
			'bePartOfPeace' => 'Станьте частью мира',
			'inviteFriends' => 'Введите код приглашения, полученный от друга.\nВведите его в соответствующее поле',
			'twoDaysPremium' => '7 дней Премиум',
			'advantage' => '\nчтобы воспользоваться его преимуществами.',
			'send' => 'Отправить',
			'referralCode.inputPlaceholder' => 'Введите 8-значный код',
			'referralCode.applying' => 'Применение кода...',
			'referralCode.success.title' => 'Успех!',
			'referralCode.success.message' => 'Реферальный код успешно применен! Вы и ваш друг получили 1 неделю премиум-доступа.',
			'referralCode.errors.missingCode.title' => 'Требуется код',
			'referralCode.errors.missingCode.message' => 'Пожалуйста, введите реферальный код для продолжения.',
			'referralCode.errors.invalidFormat.title' => 'Неверный формат',
			'referralCode.errors.invalidFormat.message' => 'Реферальный код должен содержать ровно 8 символов.',
			'referralCode.errors.alreadyUsed.title' => 'Уже использован',
			'referralCode.errors.alreadyUsed.message' => 'Вы уже использовали реферальный код. Каждый пользователь может использовать только один код.',
			'referralCode.errors.selfReferral.title' => 'Неверный код',
			'referralCode.errors.selfReferral.message' => 'Вы не можете использовать свой собственный код приглашения. Пожалуйста, используйте код друга.',
			'referralCode.errors.codeNotFound.title' => 'Код не найден',
			'referralCode.errors.codeNotFound.message' => 'Введенный реферальный код не существует. Пожалуйста, проверьте и попробуйте снова.',
			'referralCode.errors.genericError.title' => 'Ошибка',
			'referralCode.errors.genericError.message' => 'Произошла ошибка при применении реферального кода. Пожалуйста, попробуйте снова.',
			'deleteNotifications' => 'Удалить уведомления',
			'deleteNotificationsDescription' => 'Вы уверены, что хотите удалить все\nваши уведомления? Это действие необратимо.',
			'deleteAll' => 'Удалить все',
			'appLanguage' => 'Язык приложения',
			'selectLanguage' => 'Выберите предпочитаемый язык',
			'save' => 'Сохранить',
			'languageOptions.english' => 'Английский',
			'languageOptions.german' => 'Немецкий',
			'languageOptions.italian' => 'Итальянский',
			'languageOptions.french' => 'Французский',
			'languageOptions.japanese' => 'Японский',
			'languageOptions.spanish' => 'Испанский',
			'languageOptions.russian' => 'Русский',
			'languageOptions.turkish' => 'Турецкий',
			'languageOptions.korean' => 'Корейский',
			'languageOptions.hindi' => 'Хинди',
			'languageOptions.portuguese' => 'Португальский',
			_ => null,
		};
	}
}
