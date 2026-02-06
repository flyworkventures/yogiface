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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bienvenido ${name}';
	@override String get welcome2 => 'Bienvenido';
	@override String get get_started => 'Comenzar';
	@override String get next => 'Siguiente';
	@override String get back => 'Atrás';
	@override String get skip => 'Saltar';
	@override String get logintext => 'Me alegra verte. Puedes continuar donde lo dejaste iniciando sesión en tu cuenta.';
	@override late final _TranslationsTermOfServiceEs termOfService = _TranslationsTermOfServiceEs._(_root);
	@override String get cookies => 'Política de cookies';
	@override String get privacy => 'Política de privacidad';
	@override late final _TranslationsTermsOfServiceEs termsOfService = _TranslationsTermsOfServiceEs._(_root);
	@override late final _TranslationsCookiesPolicyEs cookiesPolicy = _TranslationsCookiesPolicyEs._(_root);
	@override late final _TranslationsPrivacyPolicyEs privacyPolicy = _TranslationsPrivacyPolicyEs._(_root);
	@override late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
	@override String get pressBackAgainToExit => 'Presiona atrás nuevamente para salir';
	@override String get addedToFavoritesTitle => '¡Ejercicio agregado exitosamente a favoritos!';
	@override String get removedFromFavoritesTitle => '¡Ejercicio eliminado exitosamente de favoritos!';
	@override String get removedFromFavorites => 'Puedes acceder a otros ejercicios que desees agregar desde los cursos';
	@override late final _TranslationsFaqEs faq = _TranslationsFaqEs._(_root);
	@override String get full_face => 'Cara completa / Revitalización general';
	@override String get eye_area => 'Ojos y área ocular';
	@override String get nose_area => 'Nariz y área nasal';
	@override String get cheeks_mid_face => 'Mejillas y cara media';
	@override String get lip_area => 'Labios y área bucal';
	@override String get jawline_chin => 'Línea de mandíbula, mentón y papada';
	@override String get forehead_brow => 'Frente y área de cejas';
	@override String get neck_decollete => 'Cuello y escote';
	@override String get good_morning => 'Buenos días';
	@override String get good_afternoon => 'Buenas tardes';
	@override String get good_evening => 'Buenas noches';
	@override late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	@override late final _TranslationsProfileEs profile = _TranslationsProfileEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsCourseDetailEs courseDetail = _TranslationsCourseDetailEs._(_root);
	@override late final _TranslationsCoursesEs courses = _TranslationsCoursesEs._(_root);
	@override late final _TranslationsPersonalProgramEs personalProgram = _TranslationsPersonalProgramEs._(_root);
	@override late final _TranslationsEditProfileEs editProfile = _TranslationsEditProfileEs._(_root);
	@override late final _TranslationsNotificationsEs notifications = _TranslationsNotificationsEs._(_root);
	@override late final _TranslationsShareEs share = _TranslationsShareEs._(_root);
	@override late final _TranslationsFacialScanEs facialScan = _TranslationsFacialScanEs._(_root);
	@override late final _TranslationsAuthEs auth = _TranslationsAuthEs._(_root);
	@override String get benefits => 'Beneficios';
	@override String get minutes => 'Min';
	@override String get cancel => 'Cancelar';
	@override String get beforeBegin => 'Antes de comenzar';
	@override String get rest => 'Descanso';
	@override String get courseCompleted => 'Curso completado';
	@override String get courseCompletedDescription => 'Excelente trabajo al completar la sesión de hoy.';
	@override String get deleteAccount => 'Eliminar cuenta';
	@override String get deleteDialogTitle => '¿Estás seguro de que quieres eliminar tu cuenta?';
	@override String get deleteDialogDescription => 'Esta acción es irreversible y eliminará permanentemente todo tu historial de ejercicios y datos.';
	@override String get deleteError => 'Ocurrió un error al eliminar tu cuenta. Por favor intenta de nuevo.';
	@override String get favoriteExercises => 'Ejercicios favoritos';
	@override String get noFavoritesInCategory => 'No hay favoritos en esta categoría';
	@override String get noFavoritesAdded => 'Aún no se han agregado favoritos.';
	@override String get favoriteExercisesDescription => 'Para establecer tus ejercicios favoritos, puedes agregar los ejercicios que te gusten desde la página Mis ejercicios.';
	@override String get enterInvitationCode => 'Ingresar código de invitación';
	@override String get bePartOfPeace => 'Sé parte de la paz';
	@override String get inviteFriends => 'Ingresa el código de invitación que recibiste de un amigo.\nEscríbelo en el campo designado';
	@override String get twoDaysPremium => '2 días Premium';
	@override String get advantage => '\npara disfrutar de sus beneficios.';
	@override String get send => 'Enviar';
	@override String get deleteNotifications => 'Eliminar notificaciones';
	@override String get deleteNotificationsDescription => '¿Estás seguro de que quieres eliminar todas\ntus notificaciones? Esta acción es irreversible y no se puede deshacer.';
	@override String get deleteAll => 'Eliminar todo';
	@override String get appLanguage => 'Idioma de la aplicación';
	@override String get selectLanguage => 'Selecciona tu idioma preferido';
	@override String get save => 'Guardar';
	@override late final _TranslationsLanguageOptionsEs languageOptions = _TranslationsLanguageOptionsEs._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceEs implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Al registrarte en swipe, aceptas nuestros ';
	@override String get link1 => 'Términos de servicio';
	@override String get text2 => '. Descubre cómo procesamos tus datos en nuestra ';
	@override String get link2 => 'Política de privacidad';
	@override String get text3 => ' y ';
	@override String get link3 => 'Política de cookies';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServiceEs implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Términos de servicio';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get principle => 'Yogiface es una aplicación de bienestar que proporciona ejercicios de yoga facial y contenido guiado destinado a apoyar los músculos faciales. La aplicación no proporciona servicios médicos, clínicos, estéticos o de salud profesionales.';
	@override String get intro => 'Estos Términos de servicio ("Términos") contienen las reglas aplicables a tu uso de la aplicación móvil Yogiface ("Aplicación"). Al usar la Aplicación, aceptas estos Términos. Si no aceptas los Términos, no debes usar la Aplicación.';
	@override late final _TranslationsTermsOfServiceSection1Es section1 = _TranslationsTermsOfServiceSection1Es._(_root);
	@override late final _TranslationsTermsOfServiceSection2Es section2 = _TranslationsTermsOfServiceSection2Es._(_root);
	@override late final _TranslationsTermsOfServiceSection3Es section3 = _TranslationsTermsOfServiceSection3Es._(_root);
	@override late final _TranslationsTermsOfServiceSection4Es section4 = _TranslationsTermsOfServiceSection4Es._(_root);
	@override late final _TranslationsTermsOfServiceSection5Es section5 = _TranslationsTermsOfServiceSection5Es._(_root);
	@override late final _TranslationsTermsOfServiceSection6Es section6 = _TranslationsTermsOfServiceSection6Es._(_root);
	@override late final _TranslationsTermsOfServiceSection7Es section7 = _TranslationsTermsOfServiceSection7Es._(_root);
	@override late final _TranslationsTermsOfServiceSection12Es section12 = _TranslationsTermsOfServiceSection12Es._(_root);
	@override late final _TranslationsTermsOfServiceSection13Es section13 = _TranslationsTermsOfServiceSection13Es._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyEs implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Política de cookies';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get intro => '¡Bienvenido a Yogiface! Cada vez que visitas la aplicación, usamos asistentes digitales (cookies) para mejorar y personalizar tu experiencia. Esta política explica cómo puedes gestionar tus preferencias.';
	@override late final _TranslationsCookiesPolicySection1Es section1 = _TranslationsCookiesPolicySection1Es._(_root);
	@override late final _TranslationsCookiesPolicySection2Es section2 = _TranslationsCookiesPolicySection2Es._(_root);
	@override late final _TranslationsCookiesPolicySection3Es section3 = _TranslationsCookiesPolicySection3Es._(_root);
	@override late final _TranslationsCookiesPolicySection4Es section4 = _TranslationsCookiesPolicySection4Es._(_root);
	@override late final _TranslationsCookiesPolicySection5Es section5 = _TranslationsCookiesPolicySection5Es._(_root);
	@override late final _TranslationsCookiesPolicySection6Es section6 = _TranslationsCookiesPolicySection6Es._(_root);
	@override late final _TranslationsCookiesPolicySection7Es section7 = _TranslationsCookiesPolicySection7Es._(_root);
	@override late final _TranslationsCookiesPolicySection8Es section8 = _TranslationsCookiesPolicySection8Es._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyEs implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Política de privacidad';
	@override String get lastUpdated => 'Última actualización: 2025';
	@override String get intro => 'Esta Política de privacidad explica los principios relacionados con la recopilación, uso, almacenamiento y protección de datos personales de todos los usuarios que usan la aplicación móvil Yogiface ("App"). Al usar la App, aceptas esta política.';
	@override String get principle => 'Yogiface adopta la privacidad del usuario y la seguridad de datos como principio fundamental. Todos los datos personales se procesan de acuerdo con el RGPD y la legislación pertinente.';
	@override late final _TranslationsPrivacyPolicySection1Es section1 = _TranslationsPrivacyPolicySection1Es._(_root);
	@override late final _TranslationsPrivacyPolicySection2Es section2 = _TranslationsPrivacyPolicySection2Es._(_root);
	@override late final _TranslationsPrivacyPolicySection3Es section3 = _TranslationsPrivacyPolicySection3Es._(_root);
	@override late final _TranslationsPrivacyPolicySection4Es section4 = _TranslationsPrivacyPolicySection4Es._(_root);
	@override late final _TranslationsPrivacyPolicySection5Es section5 = _TranslationsPrivacyPolicySection5Es._(_root);
	@override late final _TranslationsPrivacyPolicySection6Es section6 = _TranslationsPrivacyPolicySection6Es._(_root);
	@override late final _TranslationsPrivacyPolicySection8Es section8 = _TranslationsPrivacyPolicySection8Es._(_root);
	@override late final _TranslationsPrivacyPolicySection10Es section10 = _TranslationsPrivacyPolicySection10Es._(_root);
}

// Path: onboarding
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'INFORMACIÓN BÁSICA';
	@override String get target => 'OBJETIVO';
	@override String get habits => 'HÁBITOS';
	@override String get step => 'PASO';
	@override String get of => 'DE';
	@override String get tellUsAboutYourself => 'Cuéntanos sobre ti';
	@override String get shortBioDescription => 'Una biografía corta ayuda a otros a conocerte realmente. Manténla divertida y genuina';
	@override String get enterYourFullname => 'Ingresa tu nombre completo';
	@override String get fullName => 'Nombre completo';
	@override String get male => 'Masculino';
	@override String get female => 'Femenino';
	@override String get dontWantToMention => 'No quiero mencionarlo';
	@override String get whatIsMainObjective => '¿Cuál es el objetivo principal?';
	@override String get reduceWrinkles => 'Reducir arrugas';
	@override String get tightenSkin => 'Tensar la piel';
	@override String get liftDroopyEyelids => 'Levantar párpados caídos';
	@override String get eliminateDoubleChin => 'Eliminar papada';
	@override String get brightenSkinTone => 'Iluminar el tono de piel';
	@override String get allOfTheAbove => 'Todo lo anterior';
	@override String get whichAreaToImprove => '¿Qué área te gustaría mejorar?';
	@override String get forehead => 'Frente';
	@override String get eyes => 'Ojos';
	@override String get nose => 'Nariz';
	@override String get cheeks => 'Mejillas';
	@override String get lips => 'Labios';
	@override String get jawline => 'Línea de mandíbula';
	@override String get neck => 'Cuello';
	@override String get fullface => 'Cara completa';
	@override String get whatFaceShapeAiming => '¿Qué forma de cara buscas?';
	@override String get heart => 'Corazón';
	@override String get oval => 'Ovalada';
	@override String get square => 'Cuadrada';
	@override String get round => 'Redonda';
	@override String get diamond => 'Diamante';
	@override String get whatIsYourSkinType => '¿Cuál es tu tipo de piel?';
	@override String get normal => 'Normal';
	@override String get oily => 'Grasa';
	@override String get dry => 'Seca';
	@override String get combination => 'Mixta';
	@override String get sensitive => 'Sensible';
	@override String get whichOfThemDoYouHave => '¿Cuál de estos tienes?';
	@override String get acneAndPimples => 'Acné y espinillas';
	@override String get redness => 'Enrojecimiento';
	@override String get swelling => 'Hinchazón';
	@override String get wrinkles => 'Arrugas';
	@override String get neckLines => 'Líneas del cuello';
	@override String get howOftenWearMakeup => '¿Con qué frecuencia te maquillas?';
	@override String get everyDay => 'Todos los días';
	@override String get fewDaysAWeek => 'Algunos días a la semana';
	@override String get occasionally => 'Ocasionalmente';
	@override String get never => 'Nunca';
	@override String get haveYouHadBotox => '¿Te has puesto Botox?';
	@override String get yes => 'Sí';
	@override String get no => 'No';
	@override String get creatingPersonalizedProfile => 'Creando tu perfil personalizado';
	@override String get tailoringExperience => 'Estamos adaptando tu experiencia según tus preferencias...';
	@override String get gender => 'Género';
	@override String get age => 'Edad';
	@override String get weight => 'Peso';
	@override String get height => 'Altura';
	@override String get matchingPersonalities => 'EMPAREJANDO PERSONALIDADES';
}

// Path: faq
class _TranslationsFaqEs implements TranslationsFaqEn {
	_TranslationsFaqEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Preguntas frecuentes';
	@override late final _TranslationsFaqQuestionsEs questions = _TranslationsFaqQuestionsEs._(_root);
}

// Path: splash
class _TranslationsSplashEs implements TranslationsSplashEn {
	_TranslationsSplashEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Es screen1 = _TranslationsSplashScreen1Es._(_root);
	@override late final _TranslationsSplashScreen2Es screen2 = _TranslationsSplashScreen2Es._(_root);
	@override late final _TranslationsSplashScreen3Es screen3 = _TranslationsSplashScreen3Es._(_root);
}

// Path: profile
class _TranslationsProfileEs implements TranslationsProfileEn {
	_TranslationsProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get freeVersion => 'Versión gratuita';
	@override String get error => 'Error';
	@override late final _TranslationsProfileSectionsEs sections = _TranslationsProfileSectionsEs._(_root);
	@override late final _TranslationsProfileMenuEs menu = _TranslationsProfileMenuEs._(_root);
	@override String get manage => 'GESTIONAR';
	@override late final _TranslationsProfileLogoutDialogEs logoutDialog = _TranslationsProfileLogoutDialogEs._(_root);
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get premium => '¡Premium!';
	@override String get focusAreas => 'Áreas de enfoque';
	@override String get popularCourses => 'Cursos populares';
	@override String get seeMore => 'Ver más';
	@override late final _TranslationsHomePersonalizedEs personalized = _TranslationsHomePersonalizedEs._(_root);
	@override late final _TranslationsHomePremiumPlanEs premiumPlan = _TranslationsHomePremiumPlanEs._(_root);
	@override late final _TranslationsHomeQuickActionsEs quickActions = _TranslationsHomeQuickActionsEs._(_root);
	@override late final _TranslationsHomeTodaysExerciseEs todaysExercise = _TranslationsHomeTodaysExerciseEs._(_root);
	@override late final _TranslationsHomeCoursesEs courses = _TranslationsHomeCoursesEs._(_root);
	@override late final _TranslationsHomeBenefitsEs benefits = _TranslationsHomeBenefitsEs._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailEs implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalles del curso';
	@override String get getStarted => 'Comenzar';
	@override String get noExercisesFound => 'No se encontraron ejercicios para esta categoría';
	@override late final _TranslationsCourseDetailInstructionsEs instructions = _TranslationsCourseDetailInstructionsEs._(_root);
}

// Path: courses
class _TranslationsCoursesEs implements TranslationsCoursesEn {
	_TranslationsCoursesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Todos los cursos';
	@override String get error => 'Error al cargar ejercicios';
	@override String get personalCoursesTitle => 'Cursos personales';
}

// Path: personalProgram
class _TranslationsPersonalProgramEs implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Establece tu objetivo diario';
	@override String get dailyGoalDescription => 'Elige un ritmo que se ajuste a tu horario';
	@override String get personalizing => 'Personalizando tu plan...';
	@override String get readyMessage => 'Tu programa personal de yoga facial de 30 días está listo✨';
	@override String get minutes => 'Min';
}

// Path: editProfile
class _TranslationsEditProfileEs implements TranslationsEditProfileEn {
	_TranslationsEditProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar perfil';
	@override String get changePhoto => 'Cambiar foto';
	@override String get fullName => 'Nombre completo';
	@override String get email => 'Correo electrónico';
	@override String get age => 'Edad';
	@override String get gender => 'Género';
	@override String get skinType => 'Tipo de piel';
	@override String get focusArea => 'Área de enfoque';
	@override String get focusAreaHint => 'Frente, Ojos, Nariz, Boca, Mejillas...';
	@override String get save => 'Guardar';
	@override String get saving => 'Guardando...';
	@override String get updateSuccess => 'Perfil actualizado exitosamente';
	@override String get updateError => 'Ocurrió un error al actualizar el perfil';
	@override String get deleteAccount => 'Eliminar cuenta';
}

// Path: notifications
class _TranslationsNotificationsEs implements TranslationsNotificationsEn {
	_TranslationsNotificationsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificaciones';
	@override String get emptyTitle => 'Aún no hay notificaciones';
	@override String get emptyDescription => 'Te notificaremos cuando haya una actualización importante sobre tu viaje de aprendizaje.';
	@override String get premiumBannerTitle => '¡No te pierdas los\nbeneficios Premium!';
	@override String get premiumBannerDescription => 'Aprovecha las oportunidades como suscriptor Premium.';
	@override String get sample1Title => '¡Tu meditación diaria está lista!';
	@override String get sample1Description => 'Encuentra tu calma para el día';
	@override String get sample1Time => 'Hace 15 min';
	@override String get sample2Title => 'Nuevo ejercicio: Respiración oceánica';
	@override String get sample2Description => 'Se ha agregado una nueva técnica de respiración';
	@override String get sample2Time => 'Hace 1 hora';
	@override String get sample3Title => '¡Has alcanzado una racha de 7 días!';
	@override String get sample3Description => 'Sigue con el increíble trabajo en tu bienestar';
	@override String get sample3Time => 'Ayer';
}

// Path: share
class _TranslationsShareEs implements TranslationsShareEn {
	_TranslationsShareEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartir con amigos';
	@override String get mainTitle => 'Comparte la paz';
	@override String get descriptionPart1 => 'Invita a tus amigos a respirar juntos.\nPor cada invitación, ambos obtienen ';
	@override String get descriptionPart2 => '1 semana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'TU CÓDIGO DE REFERENCIA';
	@override String get codeCopied => '¡Código copiado!';
	@override String get copyCode => 'Copiar código';
}

// Path: facialScan
class _TranslationsFacialScanEs implements TranslationsFacialScanEn {
	_TranslationsFacialScanEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Escaneo facial';
	@override String step({required Object current, required Object total}) => 'PASO ${current} DE ${total}';
	@override String get getStarted => 'Comenzar';
	@override late final _TranslationsFacialScanAnalyzingEs analyzing = _TranslationsFacialScanAnalyzingEs._(_root);
	@override late final _TranslationsFacialScanResultEs result = _TranslationsFacialScanResultEs._(_root);
	@override late final _TranslationsFacialScanInstructionsEs instructions = _TranslationsFacialScanInstructionsEs._(_root);
	@override late final _TranslationsFacialScanErrorsEs errors = _TranslationsFacialScanErrorsEs._(_root);
	@override late final _TranslationsFacialScanPositionsEs positions = _TranslationsFacialScanPositionsEs._(_root);
}

// Path: auth
class _TranslationsAuthEs implements TranslationsAuthEn {
	_TranslationsAuthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continuar como invitado';
	@override String signInFailed({required Object error}) => 'Error al iniciar sesión: ${error}';
}

// Path: languageOptions
class _TranslationsLanguageOptionsEs implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglés';
	@override String get german => 'Alemán';
	@override String get italian => 'Italiano';
	@override String get french => 'Francés';
	@override String get japanese => 'Japonés';
	@override String get spanish => 'Español';
	@override String get russian => 'Ruso';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugués';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Es implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Alcance del servicio';
	@override String get content => 'Yogiface ofrece a los usuarios una experiencia guiada de yoga facial y ejercicios. La aplicación incluye:';
	@override List<String> get items => [
		'Guías de yoga facial y ejercicios',
		'Rutinas de ejercicios diarias y semanales',
		'Recomendaciones específicas para áreas faciales específicas',
		'Planes personalizables y seguimiento del progreso',
	];
	@override String get note => 'El contenido proporcionado no constituye asesoramiento, diagnóstico o tratamiento profesional, médico o estético.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Es implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Condiciones de uso';
	@override List<String> get items => [
		'Debes tener al menos 13 años.',
		'Debes proporcionar información de cuenta precisa y actualizada.',
		'Reconoces que los ejercicios no son un servicio médico.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Es implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Usos prohibidos';
	@override List<String> get items => [
		'Usar la aplicación para actividades ilegales.',
		'Vender, reproducir o distribuir contenido sin permiso.',
		'Acceso no autorizado, piratería o intentos de ingeniería inversa.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Es implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cuenta y membresía';
	@override String get content => 'Eres responsable de la seguridad de tu cuenta. Yogiface se reserva el derecho de suspender o cerrar cuentas en caso de uso contrario a los Términos.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Es implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Servicios Premium y de pago';
	@override List<String> get items => [
		'Los precios se basan en las políticas de App Store y Google Play.',
		'Las suscripciones pueden renovarse automáticamente; las cancelaciones se realizan a través de la configuración de la tienda.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Es implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Descargo de responsabilidad';
	@override String get content => 'Los usuarios realizan ejercicios bajo su propia responsabilidad. En caso de problemas de salud, los usuarios deben consultar a un profesional de la salud. La aplicación no debe usarse para diagnóstico o tratamiento.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Es implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Propiedad intelectual';
	@override String get content => 'El diseño, software, imágenes y contenido de ejercicios pertenecen a Yogiface. La copia no autorizada o modificación del código fuente está prohibida.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Es implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Ley aplicable';
	@override String get content => 'Estos Términos se rigen por las leyes de la República de Turquía. Los tribunales centrales de Estambul tienen jurisdicción sobre las disputas.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Es implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Contacto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Es implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1. ¿Qué son las cookies?';
	@override String get content => 'Las cookies son pequeños archivos de datos colocados en tu dispositivo. Nos ayudan a entender cómo usas la aplicación y hacen tu experiencia más fluida. Las cookies no contienen directamente tu identidad; actúan como asistentes digitales que recuerdan tus preferencias y hábitos de uso.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Es implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '2. ¿Qué cookies usamos?';
	@override late final _TranslationsCookiesPolicySection2EssentialEs essential = _TranslationsCookiesPolicySection2EssentialEs._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceEs performance = _TranslationsCookiesPolicySection2PerformanceEs._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationEs personalization = _TranslationsCookiesPolicySection2PersonalizationEs._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingEs marketing = _TranslationsCookiesPolicySection2MarketingEs._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Es implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '3. ¿Por qué usamos cookies?';
	@override List<String> get items => [
		'Para asegurar que la aplicación funcione rápida y fluidamente',
		'Para reducir acciones repetitivas al recordar las preferencias del usuario',
		'Para hacer la experiencia más personal y útil',
		'Para mejorar la aplicación analizando datos de uso',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Es implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cookies de terceros';
	@override String get content => 'Algunas cookies pueden ser colocadas por socios de terceros que proporcionan servicios analíticos y publicitarios. Estos están sujetos a las políticas de privacidad y cookies de los proveedores.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Es implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Control y gestión de cookies';
	@override String get content => 'Puedes gestionar las cookies a través de la configuración del dispositivo, permisos de la aplicación o configuración del sistema. Desactivar las cookies necesarias puede causar que partes de la aplicación no funcionen correctamente.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Es implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Uso de datos';
	@override String get content => 'Los datos obtenidos a través de cookies, si se califican como datos personales, se procesan dentro del marco legal según la Política de privacidad.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Es implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Actualizaciones de la política';
	@override String get content => 'Esta política puede actualizarse dependiendo de cambios tecnológicos y legales. La versión actual entra en vigencia tan pronto como se publica.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Es implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Contacto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Es implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Información recopilada';
	@override late final _TranslationsPrivacyPolicySection1Sub1Es sub1 = _TranslationsPrivacyPolicySection1Sub1Es._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Es sub2 = _TranslationsPrivacyPolicySection1Sub2Es._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Es implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Propósitos de uso de datos';
	@override List<String> get items => [
		'Para asegurar el funcionamiento ininterrumpido de la aplicación',
		'Para personalizar y optimizar la experiencia de yoga facial',
		'Para realizar detección de errores y análisis de rendimiento',
		'Para responder a demandas de usuarios y solicitudes de soporte',
	];
	@override String get note => 'Importante: Los datos de usuario nunca se venden a terceros.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Es implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Retención de datos';
	@override List<String> get items => [
		'Los datos se almacenan mientras la cuenta de usuario esté activa.',
		'Cuando se elimina una cuenta, los datos personales se eliminan de forma irreversible.',
		'Los registros de soporte se conservan durante un máximo de 12 meses después de la finalización.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Es implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Compartir datos';
	@override String get content => 'Tus datos solo se comparten en caso de requisitos legales (solicitudes oficiales), proveedores de servicios (infraestructura en la nube, análisis) o con consentimiento explícito del usuario.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Es implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookies y seguridad';
	@override String get content => 'Yogiface puede usar cookies para mejorar el rendimiento y la experiencia. Tus datos están protegidos por cifrado SSL/TLS y auditorías de seguridad regulares.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Es implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Derechos del usuario';
	@override String get content => 'Tienes derecho a acceder, corregir, eliminar y restringir el procesamiento de datos.';
	@override String get contact => 'Para solicitudes:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Es implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Privacidad de los niños';
	@override String get content => 'Yogiface no está destinado a personas menores de 13 años. Cualquier dato recopilado de este grupo de edad se eliminará inmediatamente si se detecta.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Es implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Contacto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsEs implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Es q1 = _TranslationsFaqQuestionsQ1Es._(_root);
	@override late final _TranslationsFaqQuestionsQ2Es q2 = _TranslationsFaqQuestionsQ2Es._(_root);
	@override late final _TranslationsFaqQuestionsQ3Es q3 = _TranslationsFaqQuestionsQ3Es._(_root);
	@override late final _TranslationsFaqQuestionsQ4Es q4 = _TranslationsFaqQuestionsQ4Es._(_root);
	@override late final _TranslationsFaqQuestionsQ5Es q5 = _TranslationsFaqQuestionsQ5Es._(_root);
	@override late final _TranslationsFaqQuestionsQ6Es q6 = _TranslationsFaqQuestionsQ6Es._(_root);
	@override late final _TranslationsFaqQuestionsQ7Es q7 = _TranslationsFaqQuestionsQ7Es._(_root);
	@override late final _TranslationsFaqQuestionsQ8Es q8 = _TranslationsFaqQuestionsQ8Es._(_root);
	@override late final _TranslationsFaqQuestionsQ9Es q9 = _TranslationsFaqQuestionsQ9Es._(_root);
	@override late final _TranslationsFaqQuestionsQ10Es q10 = _TranslationsFaqQuestionsQ10Es._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Es implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Moldea tu cara naturalmente';
	@override String get description => 'Trabaja tus músculos faciales con solo unos minutos de ejercicios faciales diarios. Crea una rutina de belleza natural, estética y no invasiva.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Es implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan de ejercicios personalizado con IA';
	@override String get description => 'La IA analiza tus características faciales, determina tus necesidades y recomienda ejercicios adaptados a ti. Rastrea qué músculos necesitan más trabajo.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Es implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resultados visibles';
	@override String get description => 'Con uso regular, los contornos faciales se vuelven más definidos, la circulación mejora y la piel se ve más vibrante. Pequeños pasos cada día traen grandes cambios.';
}

// Path: profile.sections
class _TranslationsProfileSectionsEs implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'CONFIGURACIÓN DE CUENTA';
	@override String get supportAndOther => 'SOPORTE Y OTROS';
}

// Path: profile.menu
class _TranslationsProfileMenuEs implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Editar perfil';
	@override String get notifications => 'Notificaciones';
	@override String get premium => 'Premium';
	@override String get favoriteExercises => 'Ejercicios favoritos';
	@override String get appLanguage => 'Idioma de la aplicación';
	@override String get shareWithFriends => 'Compartir con amigos';
	@override String get enterInviteCode => 'Ingresar código de invitación';
	@override String get rateUs => 'Califícanos';
	@override String get faq => 'FAQ';
	@override String get logout => 'Cerrar sesión';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogEs implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estás a punto de cerrar sesión';
	@override String get message => '¡Nos vemos de nuevo! Seguiremos rastreando tus ejercicios de respiración.';
	@override String get logoutButton => 'Cerrar sesión';
	@override String get cancelButton => 'Cancelar';
}

// Path: home.personalized
class _TranslationsHomePersonalizedEs implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informe de\nanálisis facial\npersonalizado';
	@override String get description => 'Por favor analiza tu piel\npara descubrir qué tipo es.';
	@override String get button => 'Pruébalo ahora';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanEs implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan Premium';
	@override String get description => 'Desbloquea tu chatbot de IA y\nobtén todas las funciones premium';
	@override String get button => 'Obtener Premium';
	@override late final _TranslationsHomePremiumPlanDialogEs dialog = _TranslationsHomePremiumPlanDialogEs._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsEs implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acciones rápidas';
	@override String get programTitle => 'Tu programa personal';
	@override String get programSubtitle => 'Para tu mejor aspecto\nen 30 días';
	@override String get button => 'Comenzar';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseEs implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ejercicio de hoy';
	@override String get recommended => 'Rutina recomendada';
	@override String get forToday => 'para hoy';
}

// Path: home.courses
class _TranslationsHomeCoursesEs implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherEs foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherEs._(_root);
	@override late final _TranslationsHomeCoursesVMoveEs vMove = _TranslationsHomeCoursesVMoveEs._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterEs cheekLifter = _TranslationsHomeCoursesCheekLifterEs._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsEs implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningEs naturalIroning = _TranslationsHomeBenefitsNaturalIroningEs._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectEs botoxEffect = _TranslationsHomeBenefitsBotoxEffectEs._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefEs stressRelief = _TranslationsHomeBenefitsStressReliefEs._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceEs radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceEs._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingEs dePuffing = _TranslationsHomeBenefitsDePuffingEs._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsEs implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Es instruction1 = _TranslationsCourseDetailInstructionsInstruction1Es._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Es instruction2 = _TranslationsCourseDetailInstructionsInstruction2Es._(_root);
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingEs implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analizando';
	@override String get description => 'Analizando tus características únicas';
	@override String get detail => 'Detectando textura de piel, tono muscular y área de enfoque para tu rutina personalizada.';
	@override String get aiEngineWorking => 'MOTOR DE IA TRABAJANDO';
}

// Path: facialScan.result
class _TranslationsFacialScanResultEs implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Tu análisis está listo!';
	@override String get subtitle => 'Hemos creado una rutina basada en tus resultados.';
	@override String get skinType => 'TIPO DE PIEL';
	@override String get primaryGoal => 'OBJETIVO PRINCIPAL';
	@override String get recommended => 'Recomendado para ti';
	@override String get back => 'Atrás';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsEs implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get front => 'Posiciona tu cara dentro del marco';
	@override String get left => 'Gira tu cabeza hacia la izquierda';
	@override String get right => 'Gira tu cabeza hacia la derecha';
	@override String get lighting => 'Asegúrate de estar en un ambiente bien iluminado para mejores resultados';
	@override String get tapToCapture => 'Toca el botón de la cámara para tomar una foto';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsEs implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'Se requiere permiso de cámara para tomar fotos.';
	@override String get cameraPermissionRequired => 'Permiso de cámara requerido';
	@override String get cameraPermissionMessage => 'Se requiere permiso de cámara para el escaneo facial. Por favor habilítalo en la configuración de la aplicación.';
	@override String get openSettings => 'Abrir configuración';
	@override String get cancel => 'Cancelar';
	@override String get noFaceDetected => 'No se detectó ninguna cara. Por favor intenta de nuevo.';
	@override String get captureFailed => 'Error al capturar la imagen. Por favor intenta de nuevo.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsEs implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get front => 'FRENTE';
	@override String get left => 'IZQUIERDA';
	@override String get right => 'DERECHA';
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialEs implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies estrictamente necesarias';
	@override String get content => 'Requeridas para las funciones básicas de la aplicación. Apoyan procesos fundamentales como la gestión de sesiones, seguridad y navegación básica.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceEs implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de rendimiento y análisis';
	@override String get content => 'Nos ayuda a entender qué áreas se usan con más frecuencia y qué secciones necesitan mejoras.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationEs implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de personalización';
	@override String get content => 'Proporciona una experiencia más personal al recordar configuraciones como idioma, tema y preferencias de ejercicio.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingEs implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de marketing y publicidad';
	@override String get content => 'Puede usarse para proporcionar contenido y promociones más adecuados a tus intereses y a veces funciona con servicios de terceros.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Es implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Datos proporcionados por el usuario';
	@override List<String> get items => [
		'Nombre, apodo o información de perfil',
		'Dirección de correo electrónico (para registro, compra y soporte)',
		'Planes de ejercicio, preferencias y configuración de personalización',
		'Comentarios, solicitudes y mensajes de soporte',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Es implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Datos recopilados automáticamente';
	@override List<String> get items => [
		'Tipo de dispositivo, sistema operativo e información técnica',
		'Datos de ubicación aproximados (nivel ciudad/país)',
		'Información de uso como duración de sesión e interacciones en pantalla',
		'Registros de rendimiento, errores y fallos',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Es implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Qué es YogiFace?';
	@override String get answer => 'YogiFace es una aplicación de cuidado personal impulsada por IA que ofrece ejercicios de yoga facial para mejorar la apariencia de la piel trabajando los músculos faciales.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Es implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿La aplicación realmente funciona?';
	@override String get answer => 'Sí. El yoga facial activa los músculos faciales para aumentar la firmeza de la piel, acelerar la circulación y proporcionar una apariencia más juvenil con uso regular.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Es implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Qué hace la inteligencia artificial aquí?';
	@override String get answer => 'YogiFace analiza las características faciales, identifica áreas objetivo y crea un plan de ejercicios personalizado. De esta manera, cada movimiento se optimiza según las necesidades personales.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Es implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cuánto tiempo necesito dedicar cada día?';
	@override String get answer => 'Solo 5-10 minutos al día son suficientes. Con práctica regular, los cambios visibles comienzan en unas pocas semanas.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Es implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cuándo veré resultados?';
	@override String get answer => 'Con uso regular, la mejora en el tono de piel es visible en 2-3 semanas, y las características faciales se vuelven más definidas en 4-6 semanas. Los resultados pueden variar de persona a persona.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Es implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Funciona para problemas como papada o flacidez?';
	@override String get answer => 'Sí. YogiFace ofrece ejercicios específicos para la línea de mandíbula, músculos de las mejillas y área del cuello. Cuando se hacen regularmente, estos ejercicios proporcionan un tensado significativo en estas áreas.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Es implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Cómo sé si estoy haciendo los movimientos correctamente?';
	@override String get answer => 'La aplicación usa IA para analizar el ángulo de tu cara, expresión y patrón de movimiento; te notifica sobre cualquier punto incorrecto.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Es implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Es adecuado para todas las edades?';
	@override String get answer => 'Sí. El yoga facial es un método natural no invasivo. Todos pueden practicarlo de forma segura desde una edad temprana.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Es implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿YogiFace es gratis?';
	@override String get answer => 'Los ejercicios básicos son gratuitos. Los programas personales, análisis facial avanzado y recomendaciones especiales de IA están incluidos en el paquete premium.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Es implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get question => '¿Las personas que se han sometido a cirugía estética pueden usarlo?';
	@override String get answer => 'Muchos usuarios lo usan de forma segura, pero se recomienda consultar a un médico durante el período de recuperación postoperatoria.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogEs implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Función no disponible';
	@override String get message => 'Esta función no está disponible actualmente.';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherEs implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El alisador de frente';
	@override String get description => 'Este movimiento libera la tensión en los músculos de la frente y las líneas de expresión acumuladas...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveEs implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El movimiento "V"';
	@override String get description => 'Fortalece la piel delicada alrededor de los ojos, levanta los párpados caídos y borra signos de fatiga.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterEs implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'El elevador de mejillas';
	@override String get description => 'Levanta los músculos de las mejillas (Cigomático) que son más propensos a la gravedad, restaurando el óvalo facial.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningEs implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alisado natural:';
	@override String get description => 'Abre las líneas horizontales en la frente y evita que se profundicen.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectEs implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efecto Botox';
	@override String get description => 'Relaja los músculos tensos y rompe el hábito de fruncir el ceño.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefEs implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alivio del estrés';
	@override String get description => 'Alivia el estrés acumulado en la frente y alivia los dolores de cabeza.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceEs implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apariencia radiante';
	@override String get description => 'Aumenta la circulación sanguínea para dar a la piel un brillo.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingEs implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Deshinchado';
	@override String get description => 'Reduce la hinchazón facial a través de su efecto de drenaje linfático.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Es implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lava tus manos y cara';
	@override String get description => 'Una piel limpia permite que el masaje sea más efectivo.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Es implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aplica aceite facial o crema hidratante';
	@override String get description => 'Desliza suavemente sin tirar de tu piel.';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bienvenido ${name}',
			'welcome2' => 'Bienvenido',
			'get_started' => 'Comenzar',
			'next' => 'Siguiente',
			'back' => 'Atrás',
			'skip' => 'Saltar',
			'logintext' => 'Me alegra verte. Puedes continuar donde lo dejaste iniciando sesión en tu cuenta.',
			'termOfService.text1' => 'Al registrarte en swipe, aceptas nuestros ',
			'termOfService.link1' => 'Términos de servicio',
			'termOfService.text2' => '. Descubre cómo procesamos tus datos en nuestra ',
			'termOfService.link2' => 'Política de privacidad',
			'termOfService.text3' => ' y ',
			'termOfService.link3' => 'Política de cookies',
			'termOfService.text4' => '',
			'cookies' => 'Política de cookies',
			'privacy' => 'Política de privacidad',
			'termsOfService.title' => 'Yogiface – Términos de servicio',
			'termsOfService.lastUpdated' => 'Última actualización: 2025',
			'termsOfService.principle' => 'Yogiface es una aplicación de bienestar que proporciona ejercicios de yoga facial y contenido guiado destinado a apoyar los músculos faciales. La aplicación no proporciona servicios médicos, clínicos, estéticos o de salud profesionales.',
			'termsOfService.intro' => 'Estos Términos de servicio ("Términos") contienen las reglas aplicables a tu uso de la aplicación móvil Yogiface ("Aplicación"). Al usar la Aplicación, aceptas estos Términos. Si no aceptas los Términos, no debes usar la Aplicación.',
			'termsOfService.section1.title' => '1. Alcance del servicio',
			'termsOfService.section1.content' => 'Yogiface ofrece a los usuarios una experiencia guiada de yoga facial y ejercicios. La aplicación incluye:',
			'termsOfService.section1.items.0' => 'Guías de yoga facial y ejercicios',
			'termsOfService.section1.items.1' => 'Rutinas de ejercicios diarias y semanales',
			'termsOfService.section1.items.2' => 'Recomendaciones específicas para áreas faciales específicas',
			'termsOfService.section1.items.3' => 'Planes personalizables y seguimiento del progreso',
			'termsOfService.section1.note' => 'El contenido proporcionado no constituye asesoramiento, diagnóstico o tratamiento profesional, médico o estético.',
			'termsOfService.section2.title' => '2. Condiciones de uso',
			'termsOfService.section2.items.0' => 'Debes tener al menos 13 años.',
			'termsOfService.section2.items.1' => 'Debes proporcionar información de cuenta precisa y actualizada.',
			'termsOfService.section2.items.2' => 'Reconoces que los ejercicios no son un servicio médico.',
			'termsOfService.section3.title' => '3. Usos prohibidos',
			'termsOfService.section3.items.0' => 'Usar la aplicación para actividades ilegales.',
			'termsOfService.section3.items.1' => 'Vender, reproducir o distribuir contenido sin permiso.',
			'termsOfService.section3.items.2' => 'Acceso no autorizado, piratería o intentos de ingeniería inversa.',
			'termsOfService.section4.title' => '4. Cuenta y membresía',
			'termsOfService.section4.content' => 'Eres responsable de la seguridad de tu cuenta. Yogiface se reserva el derecho de suspender o cerrar cuentas en caso de uso contrario a los Términos.',
			'termsOfService.section5.title' => '5. Servicios Premium y de pago',
			'termsOfService.section5.items.0' => 'Los precios se basan en las políticas de App Store y Google Play.',
			'termsOfService.section5.items.1' => 'Las suscripciones pueden renovarse automáticamente; las cancelaciones se realizan a través de la configuración de la tienda.',
			'termsOfService.section6.title' => '6. Descargo de responsabilidad',
			'termsOfService.section6.content' => 'Los usuarios realizan ejercicios bajo su propia responsabilidad. En caso de problemas de salud, los usuarios deben consultar a un profesional de la salud. La aplicación no debe usarse para diagnóstico o tratamiento.',
			'termsOfService.section7.title' => '7. Propiedad intelectual',
			'termsOfService.section7.content' => 'El diseño, software, imágenes y contenido de ejercicios pertenecen a Yogiface. La copia no autorizada o modificación del código fuente está prohibida.',
			'termsOfService.section12.title' => '12. Ley aplicable',
			'termsOfService.section12.content' => 'Estos Términos se rigen por las leyes de la República de Turquía. Los tribunales centrales de Estambul tienen jurisdicción sobre las disputas.',
			'termsOfService.section13.title' => '13. Contacto',
			'termsOfService.section13.email' => '📩 Email: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Política de cookies',
			'cookiesPolicy.lastUpdated' => 'Última actualización: 2025',
			'cookiesPolicy.intro' => '¡Bienvenido a Yogiface! Cada vez que visitas la aplicación, usamos asistentes digitales (cookies) para mejorar y personalizar tu experiencia. Esta política explica cómo puedes gestionar tus preferencias.',
			'cookiesPolicy.section1.title' => '1. ¿Qué son las cookies?',
			'cookiesPolicy.section1.content' => 'Las cookies son pequeños archivos de datos colocados en tu dispositivo. Nos ayudan a entender cómo usas la aplicación y hacen tu experiencia más fluida. Las cookies no contienen directamente tu identidad; actúan como asistentes digitales que recuerdan tus preferencias y hábitos de uso.',
			'cookiesPolicy.section2.title' => '2. ¿Qué cookies usamos?',
			'cookiesPolicy.section2.essential.title' => 'Cookies estrictamente necesarias',
			'cookiesPolicy.section2.essential.content' => 'Requeridas para las funciones básicas de la aplicación. Apoyan procesos fundamentales como la gestión de sesiones, seguridad y navegación básica.',
			'cookiesPolicy.section2.performance.title' => 'Cookies de rendimiento y análisis',
			'cookiesPolicy.section2.performance.content' => 'Nos ayuda a entender qué áreas se usan con más frecuencia y qué secciones necesitan mejoras.',
			'cookiesPolicy.section2.personalization.title' => 'Cookies de personalización',
			'cookiesPolicy.section2.personalization.content' => 'Proporciona una experiencia más personal al recordar configuraciones como idioma, tema y preferencias de ejercicio.',
			'cookiesPolicy.section2.marketing.title' => 'Cookies de marketing y publicidad',
			'cookiesPolicy.section2.marketing.content' => 'Puede usarse para proporcionar contenido y promociones más adecuados a tus intereses y a veces funciona con servicios de terceros.',
			'cookiesPolicy.section3.title' => '3. ¿Por qué usamos cookies?',
			'cookiesPolicy.section3.items.0' => 'Para asegurar que la aplicación funcione rápida y fluidamente',
			'cookiesPolicy.section3.items.1' => 'Para reducir acciones repetitivas al recordar las preferencias del usuario',
			'cookiesPolicy.section3.items.2' => 'Para hacer la experiencia más personal y útil',
			'cookiesPolicy.section3.items.3' => 'Para mejorar la aplicación analizando datos de uso',
			'cookiesPolicy.section4.title' => '4. Cookies de terceros',
			'cookiesPolicy.section4.content' => 'Algunas cookies pueden ser colocadas por socios de terceros que proporcionan servicios analíticos y publicitarios. Estos están sujetos a las políticas de privacidad y cookies de los proveedores.',
			'cookiesPolicy.section5.title' => '5. Control y gestión de cookies',
			'cookiesPolicy.section5.content' => 'Puedes gestionar las cookies a través de la configuración del dispositivo, permisos de la aplicación o configuración del sistema. Desactivar las cookies necesarias puede causar que partes de la aplicación no funcionen correctamente.',
			'cookiesPolicy.section6.title' => '6. Uso de datos',
			'cookiesPolicy.section6.content' => 'Los datos obtenidos a través de cookies, si se califican como datos personales, se procesan dentro del marco legal según la Política de privacidad.',
			'cookiesPolicy.section7.title' => '7. Actualizaciones de la política',
			'cookiesPolicy.section7.content' => 'Esta política puede actualizarse dependiendo de cambios tecnológicos y legales. La versión actual entra en vigencia tan pronto como se publica.',
			'cookiesPolicy.section8.title' => '8. Contacto',
			'cookiesPolicy.section8.email' => '📩 Email: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Política de privacidad',
			'privacyPolicy.lastUpdated' => 'Última actualización: 2025',
			'privacyPolicy.intro' => 'Esta Política de privacidad explica los principios relacionados con la recopilación, uso, almacenamiento y protección de datos personales de todos los usuarios que usan la aplicación móvil Yogiface ("App"). Al usar la App, aceptas esta política.',
			'privacyPolicy.principle' => 'Yogiface adopta la privacidad del usuario y la seguridad de datos como principio fundamental. Todos los datos personales se procesan de acuerdo con el RGPD y la legislación pertinente.',
			'privacyPolicy.section1.title' => '1. Información recopilada',
			'privacyPolicy.section1.sub1.title' => '1.1. Datos proporcionados por el usuario',
			'privacyPolicy.section1.sub1.items.0' => 'Nombre, apodo o información de perfil',
			'privacyPolicy.section1.sub1.items.1' => 'Dirección de correo electrónico (para registro, compra y soporte)',
			'privacyPolicy.section1.sub1.items.2' => 'Planes de ejercicio, preferencias y configuración de personalización',
			'privacyPolicy.section1.sub1.items.3' => 'Comentarios, solicitudes y mensajes de soporte',
			'privacyPolicy.section1.sub2.title' => '1.2. Datos recopilados automáticamente',
			'privacyPolicy.section1.sub2.items.0' => 'Tipo de dispositivo, sistema operativo e información técnica',
			'privacyPolicy.section1.sub2.items.1' => 'Datos de ubicación aproximados (nivel ciudad/país)',
			'privacyPolicy.section1.sub2.items.2' => 'Información de uso como duración de sesión e interacciones en pantalla',
			'privacyPolicy.section1.sub2.items.3' => 'Registros de rendimiento, errores y fallos',
			'privacyPolicy.section2.title' => '2. Propósitos de uso de datos',
			'privacyPolicy.section2.items.0' => 'Para asegurar el funcionamiento ininterrumpido de la aplicación',
			'privacyPolicy.section2.items.1' => 'Para personalizar y optimizar la experiencia de yoga facial',
			'privacyPolicy.section2.items.2' => 'Para realizar detección de errores y análisis de rendimiento',
			'privacyPolicy.section2.items.3' => 'Para responder a demandas de usuarios y solicitudes de soporte',
			'privacyPolicy.section2.note' => 'Importante: Los datos de usuario nunca se venden a terceros.',
			'privacyPolicy.section3.title' => '3. Retención de datos',
			'privacyPolicy.section3.items.0' => 'Los datos se almacenan mientras la cuenta de usuario esté activa.',
			'privacyPolicy.section3.items.1' => 'Cuando se elimina una cuenta, los datos personales se eliminan de forma irreversible.',
			'privacyPolicy.section3.items.2' => 'Los registros de soporte se conservan durante un máximo de 12 meses después de la finalización.',
			'privacyPolicy.section4.title' => '4. Compartir datos',
			'privacyPolicy.section4.content' => 'Tus datos solo se comparten en caso de requisitos legales (solicitudes oficiales), proveedores de servicios (infraestructura en la nube, análisis) o con consentimiento explícito del usuario.',
			'privacyPolicy.section5.title' => '5. Cookies y seguridad',
			'privacyPolicy.section5.content' => 'Yogiface puede usar cookies para mejorar el rendimiento y la experiencia. Tus datos están protegidos por cifrado SSL/TLS y auditorías de seguridad regulares.',
			'privacyPolicy.section6.title' => '6. Derechos del usuario',
			'privacyPolicy.section6.content' => 'Tienes derecho a acceder, corregir, eliminar y restringir el procesamiento de datos.',
			'privacyPolicy.section6.contact' => 'Para solicitudes:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Privacidad de los niños',
			'privacyPolicy.section8.content' => 'Yogiface no está destinado a personas menores de 13 años. Cualquier dato recopilado de este grupo de edad se eliminará inmediatamente si se detecta.',
			'privacyPolicy.section10.title' => '10. Contacto',
			'privacyPolicy.section10.email' => '📩 Email: support@fly-work.com',
			'onboarding.basicInformation' => 'INFORMACIÓN BÁSICA',
			'onboarding.target' => 'OBJETIVO',
			'onboarding.habits' => 'HÁBITOS',
			'onboarding.step' => 'PASO',
			'onboarding.of' => 'DE',
			'onboarding.tellUsAboutYourself' => 'Cuéntanos sobre ti',
			'onboarding.shortBioDescription' => 'Una biografía corta ayuda a otros a conocerte realmente. Manténla divertida y genuina',
			'onboarding.enterYourFullname' => 'Ingresa tu nombre completo',
			'onboarding.fullName' => 'Nombre completo',
			'onboarding.male' => 'Masculino',
			'onboarding.female' => 'Femenino',
			'onboarding.dontWantToMention' => 'No quiero mencionarlo',
			'onboarding.whatIsMainObjective' => '¿Cuál es el objetivo principal?',
			'onboarding.reduceWrinkles' => 'Reducir arrugas',
			'onboarding.tightenSkin' => 'Tensar la piel',
			'onboarding.liftDroopyEyelids' => 'Levantar párpados caídos',
			'onboarding.eliminateDoubleChin' => 'Eliminar papada',
			'onboarding.brightenSkinTone' => 'Iluminar el tono de piel',
			'onboarding.allOfTheAbove' => 'Todo lo anterior',
			'onboarding.whichAreaToImprove' => '¿Qué área te gustaría mejorar?',
			'onboarding.forehead' => 'Frente',
			'onboarding.eyes' => 'Ojos',
			'onboarding.nose' => 'Nariz',
			'onboarding.cheeks' => 'Mejillas',
			'onboarding.lips' => 'Labios',
			'onboarding.jawline' => 'Línea de mandíbula',
			'onboarding.neck' => 'Cuello',
			'onboarding.fullface' => 'Cara completa',
			'onboarding.whatFaceShapeAiming' => '¿Qué forma de cara buscas?',
			'onboarding.heart' => 'Corazón',
			'onboarding.oval' => 'Ovalada',
			'onboarding.square' => 'Cuadrada',
			'onboarding.round' => 'Redonda',
			'onboarding.diamond' => 'Diamante',
			'onboarding.whatIsYourSkinType' => '¿Cuál es tu tipo de piel?',
			'onboarding.normal' => 'Normal',
			'onboarding.oily' => 'Grasa',
			'onboarding.dry' => 'Seca',
			'onboarding.combination' => 'Mixta',
			'onboarding.sensitive' => 'Sensible',
			'onboarding.whichOfThemDoYouHave' => '¿Cuál de estos tienes?',
			'onboarding.acneAndPimples' => 'Acné y espinillas',
			'onboarding.redness' => 'Enrojecimiento',
			'onboarding.swelling' => 'Hinchazón',
			'onboarding.wrinkles' => 'Arrugas',
			'onboarding.neckLines' => 'Líneas del cuello',
			'onboarding.howOftenWearMakeup' => '¿Con qué frecuencia te maquillas?',
			'onboarding.everyDay' => 'Todos los días',
			'onboarding.fewDaysAWeek' => 'Algunos días a la semana',
			'onboarding.occasionally' => 'Ocasionalmente',
			'onboarding.never' => 'Nunca',
			'onboarding.haveYouHadBotox' => '¿Te has puesto Botox?',
			'onboarding.yes' => 'Sí',
			'onboarding.no' => 'No',
			'onboarding.creatingPersonalizedProfile' => 'Creando tu perfil personalizado',
			'onboarding.tailoringExperience' => 'Estamos adaptando tu experiencia según tus preferencias...',
			'onboarding.gender' => 'Género',
			'onboarding.age' => 'Edad',
			'onboarding.weight' => 'Peso',
			'onboarding.height' => 'Altura',
			'onboarding.matchingPersonalities' => 'EMPAREJANDO PERSONALIDADES',
			'pressBackAgainToExit' => 'Presiona atrás nuevamente para salir',
			'addedToFavoritesTitle' => '¡Ejercicio agregado exitosamente a favoritos!',
			'removedFromFavoritesTitle' => '¡Ejercicio eliminado exitosamente de favoritos!',
			'removedFromFavorites' => 'Puedes acceder a otros ejercicios que desees agregar desde los cursos',
			'faq.title' => 'Preguntas frecuentes',
			'faq.questions.q1.question' => '¿Qué es YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace es una aplicación de cuidado personal impulsada por IA que ofrece ejercicios de yoga facial para mejorar la apariencia de la piel trabajando los músculos faciales.',
			'faq.questions.q2.question' => '¿La aplicación realmente funciona?',
			'faq.questions.q2.answer' => 'Sí. El yoga facial activa los músculos faciales para aumentar la firmeza de la piel, acelerar la circulación y proporcionar una apariencia más juvenil con uso regular.',
			'faq.questions.q3.question' => '¿Qué hace la inteligencia artificial aquí?',
			'faq.questions.q3.answer' => 'YogiFace analiza las características faciales, identifica áreas objetivo y crea un plan de ejercicios personalizado. De esta manera, cada movimiento se optimiza según las necesidades personales.',
			'faq.questions.q4.question' => '¿Cuánto tiempo necesito dedicar cada día?',
			'faq.questions.q4.answer' => 'Solo 5-10 minutos al día son suficientes. Con práctica regular, los cambios visibles comienzan en unas pocas semanas.',
			'faq.questions.q5.question' => '¿Cuándo veré resultados?',
			'faq.questions.q5.answer' => 'Con uso regular, la mejora en el tono de piel es visible en 2-3 semanas, y las características faciales se vuelven más definidas en 4-6 semanas. Los resultados pueden variar de persona a persona.',
			'faq.questions.q6.question' => '¿Funciona para problemas como papada o flacidez?',
			'faq.questions.q6.answer' => 'Sí. YogiFace ofrece ejercicios específicos para la línea de mandíbula, músculos de las mejillas y área del cuello. Cuando se hacen regularmente, estos ejercicios proporcionan un tensado significativo en estas áreas.',
			'faq.questions.q7.question' => '¿Cómo sé si estoy haciendo los movimientos correctamente?',
			'faq.questions.q7.answer' => 'La aplicación usa IA para analizar el ángulo de tu cara, expresión y patrón de movimiento; te notifica sobre cualquier punto incorrecto.',
			'faq.questions.q8.question' => '¿Es adecuado para todas las edades?',
			'faq.questions.q8.answer' => 'Sí. El yoga facial es un método natural no invasivo. Todos pueden practicarlo de forma segura desde una edad temprana.',
			'faq.questions.q9.question' => '¿YogiFace es gratis?',
			'faq.questions.q9.answer' => 'Los ejercicios básicos son gratuitos. Los programas personales, análisis facial avanzado y recomendaciones especiales de IA están incluidos en el paquete premium.',
			'faq.questions.q10.question' => '¿Las personas que se han sometido a cirugía estética pueden usarlo?',
			'faq.questions.q10.answer' => 'Muchos usuarios lo usan de forma segura, pero se recomienda consultar a un médico durante el período de recuperación postoperatoria.',
			'full_face' => 'Cara completa / Revitalización general',
			'eye_area' => 'Ojos y área ocular',
			'nose_area' => 'Nariz y área nasal',
			'cheeks_mid_face' => 'Mejillas y cara media',
			'lip_area' => 'Labios y área bucal',
			'jawline_chin' => 'Línea de mandíbula, mentón y papada',
			'forehead_brow' => 'Frente y área de cejas',
			'neck_decollete' => 'Cuello y escote',
			'good_morning' => 'Buenos días',
			'good_afternoon' => 'Buenas tardes',
			'good_evening' => 'Buenas noches',
			'splash.screen1.title' => 'Moldea tu cara naturalmente',
			'splash.screen1.description' => 'Trabaja tus músculos faciales con solo unos minutos de ejercicios faciales diarios. Crea una rutina de belleza natural, estética y no invasiva.',
			'splash.screen2.title' => 'Plan de ejercicios personalizado con IA',
			'splash.screen2.description' => 'La IA analiza tus características faciales, determina tus necesidades y recomienda ejercicios adaptados a ti. Rastrea qué músculos necesitan más trabajo.',
			'splash.screen3.title' => 'Resultados visibles',
			'splash.screen3.description' => 'Con uso regular, los contornos faciales se vuelven más definidos, la circulación mejora y la piel se ve más vibrante. Pequeños pasos cada día traen grandes cambios.',
			'profile.title' => 'Perfil',
			'profile.freeVersion' => 'Versión gratuita',
			'profile.error' => 'Error',
			'profile.sections.accountSettings' => 'CONFIGURACIÓN DE CUENTA',
			'profile.sections.supportAndOther' => 'SOPORTE Y OTROS',
			'profile.menu.editProfile' => 'Editar perfil',
			'profile.menu.notifications' => 'Notificaciones',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Ejercicios favoritos',
			'profile.menu.appLanguage' => 'Idioma de la aplicación',
			'profile.menu.shareWithFriends' => 'Compartir con amigos',
			'profile.menu.enterInviteCode' => 'Ingresar código de invitación',
			'profile.menu.rateUs' => 'Califícanos',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Cerrar sesión',
			'profile.manage' => 'GESTIONAR',
			'profile.logoutDialog.title' => 'Estás a punto de cerrar sesión',
			'profile.logoutDialog.message' => '¡Nos vemos de nuevo! Seguiremos rastreando tus ejercicios de respiración.',
			'profile.logoutDialog.logoutButton' => 'Cerrar sesión',
			'profile.logoutDialog.cancelButton' => 'Cancelar',
			'home.premium' => '¡Premium!',
			'home.focusAreas' => 'Áreas de enfoque',
			'home.popularCourses' => 'Cursos populares',
			'home.seeMore' => 'Ver más',
			'home.personalized.title' => 'Informe de\nanálisis facial\npersonalizado',
			'home.personalized.description' => 'Por favor analiza tu piel\npara descubrir qué tipo es.',
			'home.personalized.button' => 'Pruébalo ahora',
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Desbloquea tu chatbot de IA y\nobtén todas las funciones premium',
			'home.premiumPlan.button' => 'Obtener Premium',
			'home.premiumPlan.dialog.title' => 'Función no disponible',
			'home.premiumPlan.dialog.message' => 'Esta función no está disponible actualmente.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Acciones rápidas',
			'home.quickActions.programTitle' => 'Tu programa personal',
			'home.quickActions.programSubtitle' => 'Para tu mejor aspecto\nen 30 días',
			'home.quickActions.button' => 'Comenzar',
			'home.todaysExercise.title' => 'Ejercicio de hoy',
			'home.todaysExercise.recommended' => 'Rutina recomendada',
			'home.todaysExercise.forToday' => 'para hoy',
			'home.courses.foreheadSmoother.title' => 'El alisador de frente',
			'home.courses.foreheadSmoother.description' => 'Este movimiento libera la tensión en los músculos de la frente y las líneas de expresión acumuladas...',
			'home.courses.vMove.title' => 'El movimiento "V"',
			'home.courses.vMove.description' => 'Fortalece la piel delicada alrededor de los ojos, levanta los párpados caídos y borra signos de fatiga.',
			'home.courses.cheekLifter.title' => 'El elevador de mejillas',
			'home.courses.cheekLifter.description' => 'Levanta los músculos de las mejillas (Cigomático) que son más propensos a la gravedad, restaurando el óvalo facial.',
			'home.benefits.naturalIroning.title' => 'Alisado natural:',
			'home.benefits.naturalIroning.description' => 'Abre las líneas horizontales en la frente y evita que se profundicen.',
			'home.benefits.botoxEffect.title' => 'Efecto Botox',
			'home.benefits.botoxEffect.description' => 'Relaja los músculos tensos y rompe el hábito de fruncir el ceño.',
			'home.benefits.stressRelief.title' => 'Alivio del estrés',
			'home.benefits.stressRelief.description' => 'Alivia el estrés acumulado en la frente y alivia los dolores de cabeza.',
			'home.benefits.radiantAppearance.title' => 'Apariencia radiante',
			'home.benefits.radiantAppearance.description' => 'Aumenta la circulación sanguínea para dar a la piel un brillo.',
			'home.benefits.dePuffing.title' => 'Deshinchado',
			'home.benefits.dePuffing.description' => 'Reduce la hinchazón facial a través de su efecto de drenaje linfático.',
			'courseDetail.title' => 'Detalles del curso',
			'courseDetail.getStarted' => 'Comenzar',
			'courseDetail.noExercisesFound' => 'No se encontraron ejercicios para esta categoría',
			'courseDetail.instructions.instruction1.title' => 'Lava tus manos y cara',
			'courseDetail.instructions.instruction1.description' => 'Una piel limpia permite que el masaje sea más efectivo.',
			'courseDetail.instructions.instruction2.title' => 'Aplica aceite facial o crema hidratante',
			'courseDetail.instructions.instruction2.description' => 'Desliza suavemente sin tirar de tu piel.',
			'courses.title' => 'Todos los cursos',
			'courses.error' => 'Error al cargar ejercicios',
			'courses.personalCoursesTitle' => 'Cursos personales',
			'personalProgram.dailyGoalTitle' => 'Establece tu objetivo diario',
			'personalProgram.dailyGoalDescription' => 'Elige un ritmo que se ajuste a tu horario',
			'personalProgram.personalizing' => 'Personalizando tu plan...',
			'personalProgram.readyMessage' => 'Tu programa personal de yoga facial de 30 días está listo✨',
			'personalProgram.minutes' => 'Min',
			'editProfile.title' => 'Editar perfil',
			'editProfile.changePhoto' => 'Cambiar foto',
			'editProfile.fullName' => 'Nombre completo',
			'editProfile.email' => 'Correo electrónico',
			'editProfile.age' => 'Edad',
			'editProfile.gender' => 'Género',
			'editProfile.skinType' => 'Tipo de piel',
			'editProfile.focusArea' => 'Área de enfoque',
			'editProfile.focusAreaHint' => 'Frente, Ojos, Nariz, Boca, Mejillas...',
			'editProfile.save' => 'Guardar',
			'editProfile.saving' => 'Guardando...',
			'editProfile.updateSuccess' => 'Perfil actualizado exitosamente',
			'editProfile.updateError' => 'Ocurrió un error al actualizar el perfil',
			'editProfile.deleteAccount' => 'Eliminar cuenta',
			'notifications.title' => 'Notificaciones',
			'notifications.emptyTitle' => 'Aún no hay notificaciones',
			'notifications.emptyDescription' => 'Te notificaremos cuando haya una actualización importante sobre tu viaje de aprendizaje.',
			'notifications.premiumBannerTitle' => '¡No te pierdas los\nbeneficios Premium!',
			'notifications.premiumBannerDescription' => 'Aprovecha las oportunidades como suscriptor Premium.',
			'notifications.sample1Title' => '¡Tu meditación diaria está lista!',
			'notifications.sample1Description' => 'Encuentra tu calma para el día',
			'notifications.sample1Time' => 'Hace 15 min',
			'notifications.sample2Title' => 'Nuevo ejercicio: Respiración oceánica',
			'notifications.sample2Description' => 'Se ha agregado una nueva técnica de respiración',
			'notifications.sample2Time' => 'Hace 1 hora',
			'notifications.sample3Title' => '¡Has alcanzado una racha de 7 días!',
			'notifications.sample3Description' => 'Sigue con el increíble trabajo en tu bienestar',
			'notifications.sample3Time' => 'Ayer',
			'share.title' => 'Compartir con amigos',
			'share.mainTitle' => 'Comparte la paz',
			'share.descriptionPart1' => 'Invita a tus amigos a respirar juntos.\nPor cada invitación, ambos obtienen ',
			'share.descriptionPart2' => '1 semana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'TU CÓDIGO DE REFERENCIA',
			'share.codeCopied' => '¡Código copiado!',
			'share.copyCode' => 'Copiar código',
			'facialScan.title' => 'Escaneo facial',
			'facialScan.step' => ({required Object current, required Object total}) => 'PASO ${current} DE ${total}',
			'facialScan.getStarted' => 'Comenzar',
			'facialScan.analyzing.title' => 'Analizando',
			'facialScan.analyzing.description' => 'Analizando tus características únicas',
			'facialScan.analyzing.detail' => 'Detectando textura de piel, tono muscular y área de enfoque para tu rutina personalizada.',
			'facialScan.analyzing.aiEngineWorking' => 'MOTOR DE IA TRABAJANDO',
			'facialScan.result.title' => '¡Tu análisis está listo!',
			'facialScan.result.subtitle' => 'Hemos creado una rutina basada en tus resultados.',
			'facialScan.result.skinType' => 'TIPO DE PIEL',
			'facialScan.result.primaryGoal' => 'OBJETIVO PRINCIPAL',
			'facialScan.result.recommended' => 'Recomendado para ti',
			'facialScan.result.back' => 'Atrás',
			'facialScan.instructions.front' => 'Posiciona tu cara dentro del marco',
			'facialScan.instructions.left' => 'Gira tu cabeza hacia la izquierda',
			'facialScan.instructions.right' => 'Gira tu cabeza hacia la derecha',
			'facialScan.instructions.lighting' => 'Asegúrate de estar en un ambiente bien iluminado para mejores resultados',
			'facialScan.instructions.tapToCapture' => 'Toca el botón de la cámara para tomar una foto',
			'facialScan.errors.cameraPermission' => 'Se requiere permiso de cámara para tomar fotos.',
			'facialScan.errors.cameraPermissionRequired' => 'Permiso de cámara requerido',
			'facialScan.errors.cameraPermissionMessage' => 'Se requiere permiso de cámara para el escaneo facial. Por favor habilítalo en la configuración de la aplicación.',
			'facialScan.errors.openSettings' => 'Abrir configuración',
			'facialScan.errors.cancel' => 'Cancelar',
			'facialScan.errors.noFaceDetected' => 'No se detectó ninguna cara. Por favor intenta de nuevo.',
			'facialScan.errors.captureFailed' => 'Error al capturar la imagen. Por favor intenta de nuevo.',
			'facialScan.positions.front' => 'FRENTE',
			'facialScan.positions.left' => 'IZQUIERDA',
			'facialScan.positions.right' => 'DERECHA',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continuar como invitado',
			'auth.signInFailed' => ({required Object error}) => 'Error al iniciar sesión: ${error}',
			'benefits' => 'Beneficios',
			'minutes' => 'Min',
			'cancel' => 'Cancelar',
			'beforeBegin' => 'Antes de comenzar',
			'rest' => 'Descanso',
			'courseCompleted' => 'Curso completado',
			'courseCompletedDescription' => 'Excelente trabajo al completar la sesión de hoy.',
			'deleteAccount' => 'Eliminar cuenta',
			'deleteDialogTitle' => '¿Estás seguro de que quieres eliminar tu cuenta?',
			'deleteDialogDescription' => 'Esta acción es irreversible y eliminará permanentemente todo tu historial de ejercicios y datos.',
			'deleteError' => 'Ocurrió un error al eliminar tu cuenta. Por favor intenta de nuevo.',
			'favoriteExercises' => 'Ejercicios favoritos',
			'noFavoritesInCategory' => 'No hay favoritos en esta categoría',
			'noFavoritesAdded' => 'Aún no se han agregado favoritos.',
			'favoriteExercisesDescription' => 'Para establecer tus ejercicios favoritos, puedes agregar los ejercicios que te gusten desde la página Mis ejercicios.',
			'enterInvitationCode' => 'Ingresar código de invitación',
			'bePartOfPeace' => 'Sé parte de la paz',
			'inviteFriends' => 'Ingresa el código de invitación que recibiste de un amigo.\nEscríbelo en el campo designado',
			'twoDaysPremium' => '2 días Premium',
			'advantage' => '\npara disfrutar de sus beneficios.',
			'send' => 'Enviar',
			'deleteNotifications' => 'Eliminar notificaciones',
			'deleteNotificationsDescription' => '¿Estás seguro de que quieres eliminar todas\ntus notificaciones? Esta acción es irreversible y no se puede deshacer.',
			'deleteAll' => 'Eliminar todo',
			'appLanguage' => 'Idioma de la aplicación',
			'selectLanguage' => 'Selecciona tu idioma preferido',
			'save' => 'Guardar',
			'languageOptions.english' => 'Inglés',
			'languageOptions.german' => 'Alemán',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francés',
			'languageOptions.japanese' => 'Japonés',
			'languageOptions.spanish' => 'Español',
			'languageOptions.russian' => 'Ruso',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugués',
			_ => null,
		};
	}
}
