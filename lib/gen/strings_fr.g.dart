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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bienvenue ${name}';
	@override String get welcome2 => 'Bienvenue';
	@override String get get_started => 'Commencer';
	@override String get next => 'Suivant';
	@override String get back => 'Retour';
	@override String get skip => 'Passer';
	@override String get logintext => 'Je suis heureux de vous voir. Vous pouvez continuer là où vous vous êtes arrêté en vous connectant à votre compte.';
	@override late final _TranslationsTermOfServiceFr termOfService = _TranslationsTermOfServiceFr._(_root);
	@override String get cookies => 'Politique relative aux cookies';
	@override String get privacy => 'Politique de confidentialité';
	@override late final _TranslationsTermsOfServiceFr termsOfService = _TranslationsTermsOfServiceFr._(_root);
	@override late final _TranslationsCookiesPolicyFr cookiesPolicy = _TranslationsCookiesPolicyFr._(_root);
	@override late final _TranslationsPrivacyPolicyFr privacyPolicy = _TranslationsPrivacyPolicyFr._(_root);
	@override late final _TranslationsOnboardingFr onboarding = _TranslationsOnboardingFr._(_root);
	@override String get pressBackAgainToExit => 'Appuyez à nouveau sur retour pour quitter';
	@override String get addedToFavoritesTitle => 'Exercice ajouté avec succès aux favoris !';
	@override String get removedFromFavoritesTitle => 'Exercice supprimé avec succès des favoris !';
	@override String get removedFromFavorites => 'Vous pouvez accéder à d\'autres exercices que vous souhaitez ajouter à partir des cours';
	@override late final _TranslationsFaqFr faq = _TranslationsFaqFr._(_root);
	@override String get full_face => 'Visage complet / Revitalisation générale';
	@override String get eye_area => 'Yeux et zone oculaire';
	@override String get nose_area => 'Nez et zone nasale';
	@override String get cheeks_mid_face => 'Joues et milieu du visage';
	@override String get lip_area => 'Lèvres et zone buccale';
	@override String get jawline_chin => 'Ligne de mâchoire, menton et double menton';
	@override String get forehead_brow => 'Front et zone des sourcils';
	@override String get neck_decollete => 'Cou et décolleté';
	@override String get good_morning => 'Bonjour';
	@override String get good_afternoon => 'Bon après-midi';
	@override String get good_evening => 'Bonsoir';
	@override late final _TranslationsSplashFr splash = _TranslationsSplashFr._(_root);
	@override late final _TranslationsProfileFr profile = _TranslationsProfileFr._(_root);
	@override late final _TranslationsHomeFr home = _TranslationsHomeFr._(_root);
	@override late final _TranslationsCourseDetailFr courseDetail = _TranslationsCourseDetailFr._(_root);
	@override late final _TranslationsCoursesFr courses = _TranslationsCoursesFr._(_root);
	@override late final _TranslationsPersonalProgramFr personalProgram = _TranslationsPersonalProgramFr._(_root);
	@override late final _TranslationsEditProfileFr editProfile = _TranslationsEditProfileFr._(_root);
	@override late final _TranslationsNotificationsFr notifications = _TranslationsNotificationsFr._(_root);
	@override late final _TranslationsShareFr share = _TranslationsShareFr._(_root);
	@override late final _TranslationsFacialScanFr facialScan = _TranslationsFacialScanFr._(_root);
	@override late final _TranslationsAuthFr auth = _TranslationsAuthFr._(_root);
	@override String get benefits => 'Avantages';
	@override String get minutes => 'Min';
	@override String get cancel => 'Annuler';
	@override String get beforeBegin => 'Avant de commencer';
	@override String get rest => 'Repos';
	@override String get courseCompleted => 'Cours terminé';
	@override String get courseCompletedDescription => 'Excellent travail pour avoir terminé la session d\'aujourd\'hui.';
	@override String get deleteAccount => 'Supprimer le compte';
	@override String get deleteDialogTitle => 'Êtes-vous sûr de vouloir supprimer votre compte ?';
	@override String get deleteDialogDescription => 'Cette action est irréversible et supprimera définitivement tout votre historique d\'exercices et vos données.';
	@override String get deleteError => 'Une erreur s\'est produite lors de la suppression de votre compte. Veuillez réessayer.';
	@override String get favoriteExercises => 'Exercices favoris';
	@override String get noFavoritesInCategory => 'Aucun favori dans cette catégorie';
	@override String get noFavoritesAdded => 'Aucun favori ajouté pour le moment.';
	@override String get favoriteExercisesDescription => 'Pour définir vos exercices favoris, vous pouvez ajouter les exercices que vous aimez depuis la page Mes exercices.';
	@override String get enterInvitationCode => 'Saisir le code d\'invitation';
	@override String get bePartOfPeace => 'Faites partie de la paix';
	@override String get inviteFriends => 'Entrez le code d\'invitation reçu d\'un ami.\nTapez-le dans le champ désigné';
	@override String get twoDaysPremium => '7 jours Premium';
	@override String get advantage => '\npour profiter de ses avantages.';
	@override String get send => 'Envoyer';
	@override late final _TranslationsReferralCodeFr referralCode = _TranslationsReferralCodeFr._(_root);
	@override String get deleteNotifications => 'Supprimer les notifications';
	@override String get deleteNotificationsDescription => 'Êtes-vous sûr de vouloir supprimer toutes\nvos notifications ? Cette action est irréversible et ne peut pas être annulée.';
	@override String get deleteAll => 'Tout supprimer';
	@override String get appLanguage => 'Langue de l\'application';
	@override String get selectLanguage => 'Sélectionnez votre langue préférée';
	@override String get save => 'Enregistrer';
	@override late final _TranslationsLanguageOptionsFr languageOptions = _TranslationsLanguageOptionsFr._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceFr implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'En vous inscrivant à swipe, vous acceptez nos ';
	@override String get link1 => 'Conditions d\'utilisation';
	@override String get text2 => '. Découvrez comment nous traitons vos données dans notre ';
	@override String get link2 => 'Politique de confidentialité';
	@override String get text3 => ' et ';
	@override String get link3 => 'Politique relative aux cookies';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServiceFr implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Conditions d\'utilisation';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get principle => 'Yogiface est une application de bien-être qui propose des exercices de yoga facial et du contenu guidé visant à soutenir les muscles faciaux. L\'application ne fournit pas de services médicaux, cliniques, esthétiques ou de santé professionnels.';
	@override String get intro => 'Ces Conditions d\'utilisation ("Conditions") contiennent les règles applicables à votre utilisation de l\'application mobile Yogiface ("Application"). En utilisant l\'Application, vous acceptez ces Conditions. Si vous n\'acceptez pas les Conditions, vous ne devez pas utiliser l\'Application.';
	@override late final _TranslationsTermsOfServiceSection1Fr section1 = _TranslationsTermsOfServiceSection1Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection2Fr section2 = _TranslationsTermsOfServiceSection2Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection3Fr section3 = _TranslationsTermsOfServiceSection3Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection4Fr section4 = _TranslationsTermsOfServiceSection4Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection5Fr section5 = _TranslationsTermsOfServiceSection5Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection6Fr section6 = _TranslationsTermsOfServiceSection6Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection7Fr section7 = _TranslationsTermsOfServiceSection7Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection12Fr section12 = _TranslationsTermsOfServiceSection12Fr._(_root);
	@override late final _TranslationsTermsOfServiceSection13Fr section13 = _TranslationsTermsOfServiceSection13Fr._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyFr implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Politique relative aux cookies';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get intro => 'Bienvenue sur Yogiface ! Chaque fois que vous visitez l\'application, nous utilisons des assistants numériques (cookies) pour améliorer et personnaliser votre expérience. Cette politique explique comment vous pouvez gérer vos préférences.';
	@override late final _TranslationsCookiesPolicySection1Fr section1 = _TranslationsCookiesPolicySection1Fr._(_root);
	@override late final _TranslationsCookiesPolicySection2Fr section2 = _TranslationsCookiesPolicySection2Fr._(_root);
	@override late final _TranslationsCookiesPolicySection3Fr section3 = _TranslationsCookiesPolicySection3Fr._(_root);
	@override late final _TranslationsCookiesPolicySection4Fr section4 = _TranslationsCookiesPolicySection4Fr._(_root);
	@override late final _TranslationsCookiesPolicySection5Fr section5 = _TranslationsCookiesPolicySection5Fr._(_root);
	@override late final _TranslationsCookiesPolicySection6Fr section6 = _TranslationsCookiesPolicySection6Fr._(_root);
	@override late final _TranslationsCookiesPolicySection7Fr section7 = _TranslationsCookiesPolicySection7Fr._(_root);
	@override late final _TranslationsCookiesPolicySection8Fr section8 = _TranslationsCookiesPolicySection8Fr._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyFr implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Politique de confidentialité';
	@override String get lastUpdated => 'Dernière mise à jour : 2025';
	@override String get intro => 'Cette Politique de confidentialité explique les principes concernant la collecte, l\'utilisation, le stockage et la protection des données personnelles de tous les utilisateurs qui utilisent l\'application mobile Yogiface ("App"). En utilisant l\'App, vous acceptez cette politique.';
	@override String get principle => 'Yogiface adopte la confidentialité des utilisateurs et la sécurité des données comme principe fondamental. Toutes les données personnelles sont traitées conformément au RGPD et à la législation pertinente.';
	@override late final _TranslationsPrivacyPolicySection1Fr section1 = _TranslationsPrivacyPolicySection1Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection2Fr section2 = _TranslationsPrivacyPolicySection2Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection3Fr section3 = _TranslationsPrivacyPolicySection3Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection4Fr section4 = _TranslationsPrivacyPolicySection4Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection5Fr section5 = _TranslationsPrivacyPolicySection5Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection6Fr section6 = _TranslationsPrivacyPolicySection6Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection8Fr section8 = _TranslationsPrivacyPolicySection8Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection10Fr section10 = _TranslationsPrivacyPolicySection10Fr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingFr implements TranslationsOnboardingEn {
	_TranslationsOnboardingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'INFORMATIONS DE BASE';
	@override String get target => 'OBJECTIF';
	@override String get habits => 'HABITUDES';
	@override String get step => 'ÉTAPE';
	@override String get of => 'SUR';
	@override String get tellUsAboutYourself => 'Parlez-nous de vous';
	@override String get shortBioDescription => 'Une courte biographie aide les autres à vous connaître vraiment. Gardez-la amusante et authentique';
	@override String get enterYourFullname => 'Entrez votre nom complet';
	@override String get fullName => 'Nom complet';
	@override String get male => 'Homme';
	@override String get female => 'Femme';
	@override String get dontWantToMention => 'Je ne veux pas le mentionner';
	@override String get whatIsMainObjective => 'Quel est l\'objectif principal ?';
	@override String get reduceWrinkles => 'Réduire les rides';
	@override String get tightenSkin => 'Raffermir la peau';
	@override String get liftDroopyEyelids => 'Soulever les paupières tombantes';
	@override String get eliminateDoubleChin => 'Éliminer le double menton';
	@override String get brightenSkinTone => 'Éclaircir le teint';
	@override String get allOfTheAbove => 'Tout ce qui précède';
	@override String get whichAreaToImprove => 'Quelle zone souhaitez-vous améliorer ?';
	@override String get forehead => 'Front';
	@override String get eyes => 'Yeux';
	@override String get nose => 'Nez';
	@override String get cheeks => 'Joues';
	@override String get lips => 'Lèvres';
	@override String get jawline => 'Ligne de mâchoire';
	@override String get neck => 'Cou';
	@override String get fullface => 'Visage complet';
	@override String get whatFaceShapeAiming => 'Quelle forme de visage visez-vous ?';
	@override String get heart => 'Cœur';
	@override String get oval => 'Ovale';
	@override String get square => 'Carré';
	@override String get round => 'Rond';
	@override String get diamond => 'Diamant';
	@override String get whatIsYourSkinType => 'Quel est votre type de peau ?';
	@override String get normal => 'Normale';
	@override String get oily => 'Grasse';
	@override String get dry => 'Sèche';
	@override String get combination => 'Mixte';
	@override String get sensitive => 'Sensible';
	@override String get whichOfThemDoYouHave => 'Lequel avez-vous ?';
	@override String get acneAndPimples => 'Acné et boutons';
	@override String get redness => 'Rougeurs';
	@override String get swelling => 'Gonflement';
	@override String get wrinkles => 'Rides';
	@override String get neckLines => 'Lignes du cou';
	@override String get howOftenWearMakeup => 'À quelle fréquence vous maquillez-vous ?';
	@override String get everyDay => 'Tous les jours';
	@override String get fewDaysAWeek => 'Quelques jours par semaine';
	@override String get occasionally => 'Occasionnellement';
	@override String get never => 'Jamais';
	@override String get haveYouHadBotox => 'Avez-vous eu du Botox ?';
	@override String get yes => 'Oui';
	@override String get no => 'Non';
	@override String get creatingPersonalizedProfile => 'Création de votre profil personnalisé';
	@override String get tailoringExperience => 'Nous adaptons votre expérience en fonction de vos préférences...';
	@override String get gender => 'Genre';
	@override String get age => 'Âge';
	@override String get weight => 'Poids';
	@override String get height => 'Taille';
	@override String get matchingPersonalities => 'CORRESPONDANCE DES PERSONNALITÉS';
}

// Path: faq
class _TranslationsFaqFr implements TranslationsFaqEn {
	_TranslationsFaqFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Questions fréquemment posées';
	@override late final _TranslationsFaqQuestionsFr questions = _TranslationsFaqQuestionsFr._(_root);
}

// Path: splash
class _TranslationsSplashFr implements TranslationsSplashEn {
	_TranslationsSplashFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Fr screen1 = _TranslationsSplashScreen1Fr._(_root);
	@override late final _TranslationsSplashScreen2Fr screen2 = _TranslationsSplashScreen2Fr._(_root);
	@override late final _TranslationsSplashScreen3Fr screen3 = _TranslationsSplashScreen3Fr._(_root);
}

// Path: profile
class _TranslationsProfileFr implements TranslationsProfileEn {
	_TranslationsProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get freeVersion => 'Version gratuite';
	@override String get error => 'Erreur';
	@override late final _TranslationsProfileSectionsFr sections = _TranslationsProfileSectionsFr._(_root);
	@override late final _TranslationsProfileMenuFr menu = _TranslationsProfileMenuFr._(_root);
	@override String get manage => 'GÉRER';
	@override late final _TranslationsProfileLogoutDialogFr logoutDialog = _TranslationsProfileLogoutDialogFr._(_root);
}

// Path: home
class _TranslationsHomeFr implements TranslationsHomeEn {
	_TranslationsHomeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium !';
	@override String get focusAreas => 'Zones de focus';
	@override String get popularCourses => 'Cours populaires';
	@override String get seeMore => 'Voir plus';
	@override late final _TranslationsHomePersonalizedFr personalized = _TranslationsHomePersonalizedFr._(_root);
	@override late final _TranslationsHomePremiumPlanFr premiumPlan = _TranslationsHomePremiumPlanFr._(_root);
	@override late final _TranslationsHomeQuickActionsFr quickActions = _TranslationsHomeQuickActionsFr._(_root);
	@override late final _TranslationsHomeTodaysExerciseFr todaysExercise = _TranslationsHomeTodaysExerciseFr._(_root);
	@override late final _TranslationsHomeCoursesFr courses = _TranslationsHomeCoursesFr._(_root);
	@override late final _TranslationsHomeBenefitsFr benefits = _TranslationsHomeBenefitsFr._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailFr implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Détails du cours';
	@override String get getStarted => 'Commencer';
	@override String get noExercisesFound => 'Aucun exercice trouvé pour cette catégorie';
	@override late final _TranslationsCourseDetailInstructionsFr instructions = _TranslationsCourseDetailInstructionsFr._(_root);
}

// Path: courses
class _TranslationsCoursesFr implements TranslationsCoursesEn {
	_TranslationsCoursesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tous les cours';
	@override String get error => 'Erreur lors du chargement des exercices';
	@override String get personalCoursesTitle => 'Cours personnels';
}

// Path: personalProgram
class _TranslationsPersonalProgramFr implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Définissez votre objectif quotidien';
	@override String get dailyGoalDescription => 'Choisissez un rythme qui correspond à votre emploi du temps';
	@override String get personalizing => 'Personnalisation de votre plan...';
	@override String get readyMessage => 'Votre programme personnel de yoga facial de 30 jours est prêt✨';
	@override String get minutes => 'Min';
	@override String get objectiveTitle => 'Quelle expression vous dérange le plus lorsque vous vous regardez dans le miroir ?';
	@override String get objectiveSubtitle => 'L\'équilibre du programme est ajusté en fonction de l\'expression faciale';
	@override String get feelingTitle => 'Comment aimeriez-vous vous sentir en faisant du yoga facial ?';
	@override String get timeTitle => 'Quand est-il plus facile pour vous de faire du yoga facial ?';
	@override late final _TranslationsPersonalProgramObjectivesFr objectives = _TranslationsPersonalProgramObjectivesFr._(_root);
	@override late final _TranslationsPersonalProgramFeelingsFr feelings = _TranslationsPersonalProgramFeelingsFr._(_root);
	@override late final _TranslationsPersonalProgramTimesFr times = _TranslationsPersonalProgramTimesFr._(_root);
}

// Path: editProfile
class _TranslationsEditProfileFr implements TranslationsEditProfileEn {
	_TranslationsEditProfileFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifier le profil';
	@override String get changePhoto => 'Changer la photo';
	@override String get fullName => 'Nom complet';
	@override String get email => 'E-mail';
	@override String get age => 'Âge';
	@override String get gender => 'Genre';
	@override String get skinType => 'Type de peau';
	@override String get focusArea => 'Zone de focus';
	@override String get focusAreaHint => 'Front, Yeux, Nez, Bouche, Joues...';
	@override String get save => 'Enregistrer';
	@override String get saving => 'Enregistrement...';
	@override String get updateSuccess => 'Profil mis à jour avec succès';
	@override String get updateError => 'Une erreur s\'est produite lors de la mise à jour du profil';
	@override String get deleteAccount => 'Supprimer le compte';
}

// Path: notifications
class _TranslationsNotificationsFr implements TranslationsNotificationsEn {
	_TranslationsNotificationsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifications';
	@override String get emptyTitle => 'Pas encore de notifications';
	@override String get emptyDescription => 'Nous vous informerons lorsqu\'il y aura une mise à jour importante concernant votre parcours d\'apprentissage.';
	@override String get premiumBannerTitle => 'Ne manquez pas les\navantages Premium !';
	@override String get premiumBannerDescription => 'Profitez des opportunités en tant qu\'abonné Premium.';
	@override String get sample1Title => 'Votre méditation quotidienne est prête !';
	@override String get sample1Description => 'Trouvez votre calme pour la journée';
	@override String get sample1Time => 'Il y a 15 min';
	@override String get sample2Title => 'Nouvel exercice : Respiration océanique';
	@override String get sample2Description => 'Une nouvelle technique de respiration a été ajoutée';
	@override String get sample2Time => 'Il y a 1 heure';
	@override String get sample3Title => 'Vous avez atteint une série de 7 jours !';
	@override String get sample3Description => 'Continuez votre excellent travail sur votre bien-être';
	@override String get sample3Time => 'Hier';
}

// Path: share
class _TranslationsShareFr implements TranslationsShareEn {
	_TranslationsShareFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Partager avec des amis';
	@override String get mainTitle => 'Partagez la paix';
	@override String get descriptionPart1 => 'Invitez vos amis à respirer ensemble.\nPour chaque invitation, vous obtenez tous les deux ';
	@override String get descriptionPart2 => '1 semaine Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'VOTRE CODE DE PARRAINAGE';
	@override String get codeCopied => 'Code copié !';
	@override String get copyCode => 'Copier le code';
}

// Path: facialScan
class _TranslationsFacialScanFr implements TranslationsFacialScanEn {
	_TranslationsFacialScanFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scan facial';
	@override String step({required Object current, required Object total}) => 'ÉTAPE ${current} SUR ${total}';
	@override String get getStarted => 'Commencer';
	@override late final _TranslationsFacialScanAnalyzingFr analyzing = _TranslationsFacialScanAnalyzingFr._(_root);
	@override late final _TranslationsFacialScanResultFr result = _TranslationsFacialScanResultFr._(_root);
	@override late final _TranslationsFacialScanInstructionsFr instructions = _TranslationsFacialScanInstructionsFr._(_root);
	@override late final _TranslationsFacialScanErrorsFr errors = _TranslationsFacialScanErrorsFr._(_root);
	@override late final _TranslationsFacialScanPositionsFr positions = _TranslationsFacialScanPositionsFr._(_root);
}

// Path: auth
class _TranslationsAuthFr implements TranslationsAuthEn {
	_TranslationsAuthFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continuer en tant qu\'invité';
	@override String signInFailed({required Object error}) => 'Échec de la connexion : ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeFr implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Entrez le code à 8 caractères';
	@override String get applying => 'Application du code...';
	@override late final _TranslationsReferralCodeSuccessFr success = _TranslationsReferralCodeSuccessFr._(_root);
	@override late final _TranslationsReferralCodeErrorsFr errors = _TranslationsReferralCodeErrorsFr._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsFr implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get english => 'Anglais';
	@override String get german => 'Allemand';
	@override String get italian => 'Italien';
	@override String get french => 'Français';
	@override String get japanese => 'Japonais';
	@override String get spanish => 'Espagnol';
	@override String get russian => 'Russe';
	@override String get turkish => 'Turc';
	@override String get korean => 'Coréen';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugais';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Fr implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Portée du service';
	@override String get content => 'Yogiface offre aux utilisateurs une expérience guidée de yoga facial et d\'exercices. L\'application comprend :';
	@override List<String> get items => [
		'Guides de yoga facial et d\'exercices',
		'Routines d\'exercices quotidiennes et hebdomadaires',
		'Recommandations ciblées pour des zones faciales spécifiques',
		'Plans personnalisables et suivi des progrès',
	];
	@override String get note => 'Le contenu fourni ne constitue pas un conseil, un diagnostic ou un traitement professionnel, médical ou esthétique.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Fr implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Conditions d\'utilisation';
	@override List<String> get items => [
		'Vous devez avoir au moins 13 ans.',
		'Vous devez fournir des informations de compte exactes et à jour.',
		'Vous reconnaissez que les exercices ne sont pas un service médical.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Fr implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Utilisations interdites';
	@override List<String> get items => [
		'Utiliser l\'application pour des activités illégales.',
		'Vendre, reproduire ou distribuer du contenu sans autorisation.',
		'Accès non autorisé, piratage ou tentatives de rétro-ingénierie.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Fr implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Compte et adhésion';
	@override String get content => 'Vous êtes responsable de la sécurité de votre compte. Yogiface se réserve le droit de suspendre ou de fermer les comptes en cas d\'utilisation contraire aux Conditions.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Fr implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Services Premium et payants';
	@override List<String> get items => [
		'Les prix sont basés sur les politiques de l\'App Store et de Google Play.',
		'Les abonnements peuvent se renouveler automatiquement ; les annulations se font via les paramètres du magasin.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Fr implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Clause de non-responsabilité';
	@override String get content => 'Les utilisateurs effectuent les exercices à leurs propres risques. En cas de problèmes de santé, les utilisateurs doivent consulter un professionnel de la santé. L\'application ne doit pas être utilisée pour le diagnostic ou le traitement.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Fr implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Propriété intellectuelle';
	@override String get content => 'La conception, le logiciel, les images et le contenu des exercices appartiennent à Yogiface. La copie non autorisée ou la modification du code source est interdite.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Fr implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Droit applicable';
	@override String get content => 'Ces Conditions sont régies par les lois de la République de Turquie. Les tribunaux centraux d\'Istanbul ont compétence sur les litiges.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Fr implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Contact';
	@override String get email => '📩 Email : support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Fr implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Que sont les cookies ?';
	@override String get content => 'Les cookies sont de petits fichiers de données placés sur votre appareil. Ils nous aident à comprendre comment vous utilisez l\'application et rendent votre expérience plus fluide. Les cookies ne contiennent pas directement votre identité ; ils agissent comme des assistants numériques qui se souviennent de vos préférences et habitudes d\'utilisation.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Fr implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Quels cookies utilisons-nous ?';
	@override late final _TranslationsCookiesPolicySection2EssentialFr essential = _TranslationsCookiesPolicySection2EssentialFr._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceFr performance = _TranslationsCookiesPolicySection2PerformanceFr._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationFr personalization = _TranslationsCookiesPolicySection2PersonalizationFr._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingFr marketing = _TranslationsCookiesPolicySection2MarketingFr._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Fr implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Pourquoi utilisons-nous des cookies ?';
	@override List<String> get items => [
		'Pour garantir que l\'application fonctionne rapidement et en douceur',
		'Pour réduire les actions répétitives en mémorisant les préférences de l\'utilisateur',
		'Pour rendre l\'expérience plus personnelle et utile',
		'Pour améliorer l\'application en analysant les données d\'utilisation',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Fr implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cookies tiers';
	@override String get content => 'Certains cookies peuvent être placés par des partenaires tiers fournissant des services d\'analyse et de publicité. Ceux-ci sont soumis aux politiques de confidentialité et de cookies des fournisseurs.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Fr implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Contrôle et gestion des cookies';
	@override String get content => 'Vous pouvez gérer les cookies via les paramètres de l\'appareil, les autorisations de l\'application ou les paramètres système. La désactivation des cookies nécessaires peut entraîner un dysfonctionnement de certaines parties de l\'application.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Fr implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Utilisation des données';
	@override String get content => 'Les données obtenues via les cookies, si elles sont qualifiées de données personnelles, sont traitées dans le cadre juridique conformément à la Politique de confidentialité.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Fr implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Mises à jour de la politique';
	@override String get content => 'Cette politique peut être mise à jour en fonction des changements technologiques et juridiques. La version actuelle entre en vigueur dès sa publication.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Fr implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Contact';
	@override String get email => '📩 Email : support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Fr implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Informations collectées';
	@override late final _TranslationsPrivacyPolicySection1Sub1Fr sub1 = _TranslationsPrivacyPolicySection1Sub1Fr._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Fr sub2 = _TranslationsPrivacyPolicySection1Sub2Fr._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Fr implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Finalités d\'utilisation des données';
	@override List<String> get items => [
		'Pour assurer le fonctionnement ininterrompu de l\'application',
		'Pour personnaliser et optimiser l\'expérience de yoga facial',
		'Pour effectuer la détection d\'erreurs et l\'analyse des performances',
		'Pour répondre aux demandes des utilisateurs et aux demandes de support',
	];
	@override String get note => 'Important : les données des utilisateurs ne sont jamais vendues à des tiers.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Fr implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Conservation des données';
	@override List<String> get items => [
		'Les données sont stockées tant que le compte utilisateur est actif.',
		'Lorsqu\'un compte est supprimé, les données personnelles sont supprimées de manière irréversible.',
		'Les enregistrements de support sont conservés pendant un maximum de 12 mois après l\'achèvement.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Fr implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Partage des données';
	@override String get content => 'Vos données ne sont partagées qu\'en cas d\'exigences légales (demandes officielles), de fournisseurs de services (infrastructure cloud, analyse) ou avec le consentement explicite de l\'utilisateur.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Fr implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookies et sécurité';
	@override String get content => 'Yogiface peut utiliser des cookies pour améliorer les performances et l\'expérience. Vos données sont protégées par un cryptage SSL/TLS et des audits de sécurité réguliers.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Fr implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Droits de l\'utilisateur';
	@override String get content => 'Vous avez le droit d\'accéder, de corriger, de supprimer et de restreindre le traitement des données.';
	@override String get contact => 'Pour les demandes :';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Fr implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Confidentialité des enfants';
	@override String get content => 'Yogiface n\'est pas destiné aux personnes de moins de 13 ans. Toutes les données collectées auprès de ce groupe d\'âge seront supprimées immédiatement si elles sont détectées.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Fr implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Contact';
	@override String get email => '📩 Email : support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsFr implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Fr q1 = _TranslationsFaqQuestionsQ1Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ2Fr q2 = _TranslationsFaqQuestionsQ2Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ3Fr q3 = _TranslationsFaqQuestionsQ3Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ4Fr q4 = _TranslationsFaqQuestionsQ4Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ5Fr q5 = _TranslationsFaqQuestionsQ5Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ6Fr q6 = _TranslationsFaqQuestionsQ6Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ7Fr q7 = _TranslationsFaqQuestionsQ7Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ8Fr q8 = _TranslationsFaqQuestionsQ8Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ9Fr q9 = _TranslationsFaqQuestionsQ9Fr._(_root);
	@override late final _TranslationsFaqQuestionsQ10Fr q10 = _TranslationsFaqQuestionsQ10Fr._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Fr implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sculptez votre visage naturellement';
	@override String get description => 'Travaillez vos muscles faciaux avec seulement quelques minutes d\'exercices faciaux quotidiens. Créez une routine de beauté naturelle, esthétique et non invasive.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Fr implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan d\'exercices personnalisé avec l\'IA';
	@override String get description => 'L\'IA analyse vos caractéristiques faciales, détermine vos besoins et recommande des exercices adaptés à vous. Elle suit quels muscles ont besoin de plus de travail.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Fr implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Résultats visibles';
	@override String get description => 'Avec une utilisation régulière, les contours du visage deviennent plus définis, la circulation s\'améliore et la peau paraît plus éclatante. De petits pas chaque jour apportent de grands changements.';
}

// Path: profile.sections
class _TranslationsProfileSectionsFr implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'PARAMÈTRES DU COMPTE';
	@override String get supportAndOther => 'SUPPORT ET AUTRE';
}

// Path: profile.menu
class _TranslationsProfileMenuFr implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Modifier le profil';
	@override String get notifications => 'Notifications';
	@override String get premium => 'Premium';
	@override String get favoriteExercises => 'Exercices favoris';
	@override String get appLanguage => 'Langue de l\'application';
	@override String get shareWithFriends => 'Partager avec des amis';
	@override String get enterInviteCode => 'Entrer le code d\'invitation';
	@override String get rateUs => 'Évaluez-nous';
	@override String get faq => 'FAQ';
	@override String get logout => 'Se déconnecter';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogFr implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vous êtes sur le point de vous déconnecter';
	@override String get message => 'À bientôt ! Nous continuerons à suivre vos exercices de respiration.';
	@override String get logoutButton => 'Se déconnecter';
	@override String get cancelButton => 'Annuler';
}

// Path: home.personalized
class _TranslationsHomePersonalizedFr implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rapport d\'analyse\nfaciale\npersonnalisé';
	@override String get description => 'Veuillez analyser votre peau\npour découvrir son type.';
	@override String get button => 'Essayez maintenant';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanFr implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan Premium';
	@override String get description => 'Débloquez votre chatbot IA et\nobtenez toutes les fonctionnalités premium';
	@override String get button => 'Obtenir Premium';
	@override late final _TranslationsHomePremiumPlanDialogFr dialog = _TranslationsHomePremiumPlanDialogFr._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsFr implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Actions rapides';
	@override String get programTitle => 'Votre programme personnel';
	@override String get programSubtitle => 'Pour votre meilleur look\nen 30 jours';
	@override String get button => 'Commencer';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseFr implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exercice du jour';
	@override String get recommended => 'Routine recommandée';
	@override String get forToday => 'pour aujourd\'hui';
}

// Path: home.courses
class _TranslationsHomeCoursesFr implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherFr foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherFr._(_root);
	@override late final _TranslationsHomeCoursesVMoveFr vMove = _TranslationsHomeCoursesVMoveFr._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterFr cheekLifter = _TranslationsHomeCoursesCheekLifterFr._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsFr implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningFr naturalIroning = _TranslationsHomeBenefitsNaturalIroningFr._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectFr botoxEffect = _TranslationsHomeBenefitsBotoxEffectFr._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefFr stressRelief = _TranslationsHomeBenefitsStressReliefFr._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceFr radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceFr._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingFr dePuffing = _TranslationsHomeBenefitsDePuffingFr._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsFr implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Fr instruction1 = _TranslationsCourseDetailInstructionsInstruction1Fr._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Fr instruction2 = _TranslationsCourseDetailInstructionsInstruction2Fr._(_root);
}

// Path: personalProgram.objectives
class _TranslationsPersonalProgramObjectivesFr implements TranslationsPersonalProgramObjectivesEn {
	_TranslationsPersonalProgramObjectivesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get tired => 'Apparence fatiguée et usée';
	@override String get harsh => 'Expression dure et tendue';
	@override String get pale => 'Peau pâle et sans vie';
	@override String get asymmetrical => 'Traits du visage asymétriques';
	@override String get general => 'Pas de problème évident, je veux des soins généraux';
}

// Path: personalProgram.feelings
class _TranslationsPersonalProgramFeelingsFr implements TranslationsPersonalProgramFeelingsEn {
	_TranslationsPersonalProgramFeelingsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get lightened => 'Allégé';
	@override String get revitalized => 'Revitalisé';
	@override String get refreshed => 'Rafraîchi';
	@override String get energetic => 'Plus énergique';
}

// Path: personalProgram.times
class _TranslationsPersonalProgramTimesFr implements TranslationsPersonalProgramTimesEn {
	_TranslationsPersonalProgramTimesFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get morning => 'Matin';
	@override String get duringDay => 'Pendant la journée';
	@override String get evening => 'Soir';
	@override String get anytime => 'L\'heure n\'a pas d\'importance, un rappel suffit';
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingFr implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse en cours';
	@override String get description => 'Analyse de vos caractéristiques uniques';
	@override String get detail => 'Détection de la texture de la peau, du tonus musculaire et de la zone de focus pour votre routine personnalisée.';
	@override String get aiEngineWorking => 'MOTEUR IA EN FONCTIONNEMENT';
}

// Path: facialScan.result
class _TranslationsFacialScanResultFr implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Votre analyse est prête !';
	@override String get subtitle => 'Nous avons créé une routine basée sur vos résultats.';
	@override String get skinType => 'TYPE DE PEAU';
	@override String get primaryGoal => 'OBJECTIF PRINCIPAL';
	@override String get recommended => 'Recommandé pour vous';
	@override String get back => 'Retour';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsFr implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get front => 'Positionnez votre visage dans le cadre';
	@override String get left => 'Tournez votre tête vers la gauche';
	@override String get right => 'Tournez votre tête vers la droite';
	@override String get lighting => 'Assurez-vous d\'être dans un environnement bien éclairé pour de meilleurs résultats';
	@override String get tapToCapture => 'Appuyez sur le bouton de l\'appareil photo pour prendre une photo';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsFr implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'L\'autorisation de la caméra est requise pour prendre des photos.';
	@override String get cameraPermissionRequired => 'Autorisation de caméra requise';
	@override String get cameraPermissionMessage => 'L\'autorisation de la caméra est requise pour le scan facial. Veuillez l\'activer dans les paramètres de l\'application.';
	@override String get openSettings => 'Ouvrir les paramètres';
	@override String get cancel => 'Annuler';
	@override String get noFaceDetected => 'Aucun visage détecté. Veuillez réessayer.';
	@override String get captureFailed => 'Échec de la capture de l\'image. Veuillez réessayer.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsFr implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get front => 'AVANT';
	@override String get left => 'GAUCHE';
	@override String get right => 'DROITE';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessFr implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Succès !';
	@override String get message => 'Code de parrainage appliqué avec succès ! Vous et votre ami avez reçu 1 semaine de premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsFr implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeFr missingCode = _TranslationsReferralCodeErrorsMissingCodeFr._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatFr invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatFr._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedFr alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedFr._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralFr selfReferral = _TranslationsReferralCodeErrorsSelfReferralFr._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundFr codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundFr._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorFr genericError = _TranslationsReferralCodeErrorsGenericErrorFr._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialFr implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies strictement nécessaires';
	@override String get content => 'Requis pour les fonctions de base de l\'application. Ils prennent en charge les processus essentiels tels que la gestion des sessions, la sécurité et la navigation de base.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceFr implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de performance et d\'analyse';
	@override String get content => 'Nous aide à comprendre quelles zones sont les plus fréquemment utilisées et quelles sections nécessitent des améliorations.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationFr implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de personnalisation';
	@override String get content => 'Offre une expérience plus personnelle en mémorisant des paramètres tels que la langue, le thème et les préférences d\'exercice.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingFr implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de marketing et de publicité';
	@override String get content => 'Peut être utilisé pour fournir du contenu et des promotions plus adaptés à vos intérêts et fonctionne parfois avec des services tiers.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Fr implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Données fournies par l\'utilisateur';
	@override List<String> get items => [
		'Nom, surnom ou informations de profil',
		'Adresse e-mail (pour l\'inscription, l\'achat et le support)',
		'Plans d\'exercices, préférences et paramètres de personnalisation',
		'Commentaires, demandes et messages de support',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Fr implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Données collectées automatiquement';
	@override List<String> get items => [
		'Type d\'appareil, système d\'exploitation et informations techniques',
		'Données de localisation approximatives (niveau ville/pays)',
		'Informations d\'utilisation telles que la durée de session et les interactions à l\'écran',
		'Journaux de performances, d\'erreurs et de plantages',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Fr implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Qu\'est-ce que YogiFace ?';
	@override String get answer => 'YogiFace est une application de soins personnels alimentée par l\'IA qui propose des exercices de yoga facial pour améliorer l\'apparence de la peau en travaillant les muscles faciaux.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Fr implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'L\'application fonctionne-t-elle vraiment ?';
	@override String get answer => 'Oui. Le yoga facial active les muscles faciaux pour augmenter la fermeté de la peau, accélérer la circulation et fournir une apparence plus jeune avec une utilisation régulière.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Fr implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Que fait l\'intelligence artificielle ici ?';
	@override String get answer => 'YogiFace analyse les caractéristiques faciales, identifie les zones cibles et crée un plan d\'exercices personnalisé. De cette façon, chaque mouvement est optimisé en fonction des besoins personnels.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Fr implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Combien de temps dois-je consacrer chaque jour ?';
	@override String get answer => 'Seulement 5 à 10 minutes par jour suffisent. Avec une pratique régulière, des changements visibles commencent en quelques semaines.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Fr implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quand verrai-je des résultats ?';
	@override String get answer => 'Avec une utilisation régulière, une amélioration du teint est visible en 2-3 semaines, et les traits du visage deviennent plus définis en 4-6 semaines. Les résultats peuvent varier d\'une personne à l\'autre.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Fr implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Cela fonctionne-t-il pour des problèmes comme le double menton ou l\'affaissement ?';
	@override String get answer => 'Oui. YogiFace propose des exercices ciblés pour la ligne de mâchoire, les muscles des joues et la zone du cou. Lorsqu\'ils sont effectués régulièrement, ces exercices assurent un raffermissement significatif dans ces zones.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Fr implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Comment savoir si je fais les mouvements correctement ?';
	@override String get answer => 'L\'application utilise l\'IA pour analyser l\'angle de votre visage, l\'expression et le modèle de mouvement ; elle vous informe de tout point incorrect.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Fr implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Est-ce adapté à tous les âges ?';
	@override String get answer => 'Oui. Le yoga facial est une méthode naturelle non invasive. Tout le monde peut le pratiquer en toute sécurité dès le plus jeune âge.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Fr implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace est-il gratuit ?';
	@override String get answer => 'Les exercices de base sont gratuits. Les programmes personnels, l\'analyse faciale avancée et les recommandations IA spéciales sont inclus dans le forfait premium.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Fr implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Les personnes ayant subi une chirurgie esthétique peuvent-elles l\'utiliser ?';
	@override String get answer => 'De nombreux utilisateurs l\'utilisent en toute sécurité, mais il est recommandé de consulter un médecin pendant la période de récupération post-opératoire.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogFr implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fonctionnalité non disponible';
	@override String get message => 'Cette fonctionnalité n\'est actuellement pas disponible.';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherFr implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Le lisseur de front';
	@override String get description => 'Ce mouvement libère la tension dans les muscles du front et les rides d\'expression accumulées...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveFr implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Le mouvement "V"';
	@override String get description => 'Renforce la peau délicate autour des yeux, soulève les paupières tombantes et efface les signes de fatigue.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterFr implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Le releveur de joues';
	@override String get description => 'Soulève les muscles des joues (Zygomatique) qui sont les plus sujets à la gravité, restaurant l\'ovale du visage.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningFr implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lissage naturel :';
	@override String get description => 'Ouvre les lignes horizontales sur le front et les empêche de s\'approfondir.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectFr implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effet Botox';
	@override String get description => 'Détend les muscles tendus et brise l\'habitude de froncer les sourcils.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefFr implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Soulagement du stress';
	@override String get description => 'Soulage le stress accumulé sur le front et atténue les maux de tête.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceFr implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Apparence radieuse';
	@override String get description => 'Stimule la circulation sanguine pour donner à la peau un éclat.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingFr implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dégonflement';
	@override String get description => 'Réduit le gonflement facial grâce à son effet de drainage lymphatique.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Fr implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lavez vos mains et votre visage';
	@override String get description => 'Une peau propre permet au massage d\'être plus efficace.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Fr implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Fr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Appliquez de l\'huile pour le visage ou une crème hydratante';
	@override String get description => 'Glissez en douceur sans tirer votre peau.';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeFr implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code requis';
	@override String get message => 'Veuillez entrer un code de parrainage pour continuer.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatFr implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Format invalide';
	@override String get message => 'Le code de parrainage doit contenir exactement 8 caractères.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedFr implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Déjà utilisé';
	@override String get message => 'Vous avez déjà utilisé un code de parrainage. Chaque utilisateur ne peut utiliser qu\'un seul code.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralFr implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code invalide';
	@override String get message => 'Vous ne pouvez pas utiliser votre propre code d\'invitation. Veuillez utiliser un code d\'un ami.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundFr implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code non trouvé';
	@override String get message => 'Le code de parrainage que vous avez saisi n\'existe pas. Veuillez vérifier et réessayer.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorFr implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorFr._(this._root);

	final TranslationsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erreur';
	@override String get message => 'Une erreur s\'est produite lors de l\'application du code de parrainage. Veuillez réessayer.';
}

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bienvenue ${name}',
			'welcome2' => 'Bienvenue',
			'get_started' => 'Commencer',
			'next' => 'Suivant',
			'back' => 'Retour',
			'skip' => 'Passer',
			'logintext' => 'Je suis heureux de vous voir. Vous pouvez continuer là où vous vous êtes arrêté en vous connectant à votre compte.',
			'termOfService.text1' => 'En vous inscrivant à swipe, vous acceptez nos ',
			'termOfService.link1' => 'Conditions d\'utilisation',
			'termOfService.text2' => '. Découvrez comment nous traitons vos données dans notre ',
			'termOfService.link2' => 'Politique de confidentialité',
			'termOfService.text3' => ' et ',
			'termOfService.link3' => 'Politique relative aux cookies',
			'termOfService.text4' => '',
			'cookies' => 'Politique relative aux cookies',
			'privacy' => 'Politique de confidentialité',
			'termsOfService.title' => 'Yogiface – Conditions d\'utilisation',
			'termsOfService.lastUpdated' => 'Dernière mise à jour : 2025',
			'termsOfService.principle' => 'Yogiface est une application de bien-être qui propose des exercices de yoga facial et du contenu guidé visant à soutenir les muscles faciaux. L\'application ne fournit pas de services médicaux, cliniques, esthétiques ou de santé professionnels.',
			'termsOfService.intro' => 'Ces Conditions d\'utilisation ("Conditions") contiennent les règles applicables à votre utilisation de l\'application mobile Yogiface ("Application"). En utilisant l\'Application, vous acceptez ces Conditions. Si vous n\'acceptez pas les Conditions, vous ne devez pas utiliser l\'Application.',
			'termsOfService.section1.title' => '1. Portée du service',
			'termsOfService.section1.content' => 'Yogiface offre aux utilisateurs une expérience guidée de yoga facial et d\'exercices. L\'application comprend :',
			'termsOfService.section1.items.0' => 'Guides de yoga facial et d\'exercices',
			'termsOfService.section1.items.1' => 'Routines d\'exercices quotidiennes et hebdomadaires',
			'termsOfService.section1.items.2' => 'Recommandations ciblées pour des zones faciales spécifiques',
			'termsOfService.section1.items.3' => 'Plans personnalisables et suivi des progrès',
			'termsOfService.section1.note' => 'Le contenu fourni ne constitue pas un conseil, un diagnostic ou un traitement professionnel, médical ou esthétique.',
			'termsOfService.section2.title' => '2. Conditions d\'utilisation',
			'termsOfService.section2.items.0' => 'Vous devez avoir au moins 13 ans.',
			'termsOfService.section2.items.1' => 'Vous devez fournir des informations de compte exactes et à jour.',
			'termsOfService.section2.items.2' => 'Vous reconnaissez que les exercices ne sont pas un service médical.',
			'termsOfService.section3.title' => '3. Utilisations interdites',
			'termsOfService.section3.items.0' => 'Utiliser l\'application pour des activités illégales.',
			'termsOfService.section3.items.1' => 'Vendre, reproduire ou distribuer du contenu sans autorisation.',
			'termsOfService.section3.items.2' => 'Accès non autorisé, piratage ou tentatives de rétro-ingénierie.',
			'termsOfService.section4.title' => '4. Compte et adhésion',
			'termsOfService.section4.content' => 'Vous êtes responsable de la sécurité de votre compte. Yogiface se réserve le droit de suspendre ou de fermer les comptes en cas d\'utilisation contraire aux Conditions.',
			'termsOfService.section5.title' => '5. Services Premium et payants',
			'termsOfService.section5.items.0' => 'Les prix sont basés sur les politiques de l\'App Store et de Google Play.',
			'termsOfService.section5.items.1' => 'Les abonnements peuvent se renouveler automatiquement ; les annulations se font via les paramètres du magasin.',
			'termsOfService.section6.title' => '6. Clause de non-responsabilité',
			'termsOfService.section6.content' => 'Les utilisateurs effectuent les exercices à leurs propres risques. En cas de problèmes de santé, les utilisateurs doivent consulter un professionnel de la santé. L\'application ne doit pas être utilisée pour le diagnostic ou le traitement.',
			'termsOfService.section7.title' => '7. Propriété intellectuelle',
			'termsOfService.section7.content' => 'La conception, le logiciel, les images et le contenu des exercices appartiennent à Yogiface. La copie non autorisée ou la modification du code source est interdite.',
			'termsOfService.section12.title' => '12. Droit applicable',
			'termsOfService.section12.content' => 'Ces Conditions sont régies par les lois de la République de Turquie. Les tribunaux centraux d\'Istanbul ont compétence sur les litiges.',
			'termsOfService.section13.title' => '13. Contact',
			'termsOfService.section13.email' => '📩 Email : support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Politique relative aux cookies',
			'cookiesPolicy.lastUpdated' => 'Dernière mise à jour : 2025',
			'cookiesPolicy.intro' => 'Bienvenue sur Yogiface ! Chaque fois que vous visitez l\'application, nous utilisons des assistants numériques (cookies) pour améliorer et personnaliser votre expérience. Cette politique explique comment vous pouvez gérer vos préférences.',
			'cookiesPolicy.section1.title' => '1. Que sont les cookies ?',
			'cookiesPolicy.section1.content' => 'Les cookies sont de petits fichiers de données placés sur votre appareil. Ils nous aident à comprendre comment vous utilisez l\'application et rendent votre expérience plus fluide. Les cookies ne contiennent pas directement votre identité ; ils agissent comme des assistants numériques qui se souviennent de vos préférences et habitudes d\'utilisation.',
			'cookiesPolicy.section2.title' => '2. Quels cookies utilisons-nous ?',
			'cookiesPolicy.section2.essential.title' => 'Cookies strictement nécessaires',
			'cookiesPolicy.section2.essential.content' => 'Requis pour les fonctions de base de l\'application. Ils prennent en charge les processus essentiels tels que la gestion des sessions, la sécurité et la navigation de base.',
			'cookiesPolicy.section2.performance.title' => 'Cookies de performance et d\'analyse',
			'cookiesPolicy.section2.performance.content' => 'Nous aide à comprendre quelles zones sont les plus fréquemment utilisées et quelles sections nécessitent des améliorations.',
			'cookiesPolicy.section2.personalization.title' => 'Cookies de personnalisation',
			'cookiesPolicy.section2.personalization.content' => 'Offre une expérience plus personnelle en mémorisant des paramètres tels que la langue, le thème et les préférences d\'exercice.',
			'cookiesPolicy.section2.marketing.title' => 'Cookies de marketing et de publicité',
			'cookiesPolicy.section2.marketing.content' => 'Peut être utilisé pour fournir du contenu et des promotions plus adaptés à vos intérêts et fonctionne parfois avec des services tiers.',
			'cookiesPolicy.section3.title' => '3. Pourquoi utilisons-nous des cookies ?',
			'cookiesPolicy.section3.items.0' => 'Pour garantir que l\'application fonctionne rapidement et en douceur',
			'cookiesPolicy.section3.items.1' => 'Pour réduire les actions répétitives en mémorisant les préférences de l\'utilisateur',
			'cookiesPolicy.section3.items.2' => 'Pour rendre l\'expérience plus personnelle et utile',
			'cookiesPolicy.section3.items.3' => 'Pour améliorer l\'application en analysant les données d\'utilisation',
			'cookiesPolicy.section4.title' => '4. Cookies tiers',
			'cookiesPolicy.section4.content' => 'Certains cookies peuvent être placés par des partenaires tiers fournissant des services d\'analyse et de publicité. Ceux-ci sont soumis aux politiques de confidentialité et de cookies des fournisseurs.',
			'cookiesPolicy.section5.title' => '5. Contrôle et gestion des cookies',
			'cookiesPolicy.section5.content' => 'Vous pouvez gérer les cookies via les paramètres de l\'appareil, les autorisations de l\'application ou les paramètres système. La désactivation des cookies nécessaires peut entraîner un dysfonctionnement de certaines parties de l\'application.',
			'cookiesPolicy.section6.title' => '6. Utilisation des données',
			'cookiesPolicy.section6.content' => 'Les données obtenues via les cookies, si elles sont qualifiées de données personnelles, sont traitées dans le cadre juridique conformément à la Politique de confidentialité.',
			'cookiesPolicy.section7.title' => '7. Mises à jour de la politique',
			'cookiesPolicy.section7.content' => 'Cette politique peut être mise à jour en fonction des changements technologiques et juridiques. La version actuelle entre en vigueur dès sa publication.',
			'cookiesPolicy.section8.title' => '8. Contact',
			'cookiesPolicy.section8.email' => '📩 Email : support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Politique de confidentialité',
			'privacyPolicy.lastUpdated' => 'Dernière mise à jour : 2025',
			'privacyPolicy.intro' => 'Cette Politique de confidentialité explique les principes concernant la collecte, l\'utilisation, le stockage et la protection des données personnelles de tous les utilisateurs qui utilisent l\'application mobile Yogiface ("App"). En utilisant l\'App, vous acceptez cette politique.',
			'privacyPolicy.principle' => 'Yogiface adopte la confidentialité des utilisateurs et la sécurité des données comme principe fondamental. Toutes les données personnelles sont traitées conformément au RGPD et à la législation pertinente.',
			'privacyPolicy.section1.title' => '1. Informations collectées',
			'privacyPolicy.section1.sub1.title' => '1.1. Données fournies par l\'utilisateur',
			'privacyPolicy.section1.sub1.items.0' => 'Nom, surnom ou informations de profil',
			'privacyPolicy.section1.sub1.items.1' => 'Adresse e-mail (pour l\'inscription, l\'achat et le support)',
			'privacyPolicy.section1.sub1.items.2' => 'Plans d\'exercices, préférences et paramètres de personnalisation',
			'privacyPolicy.section1.sub1.items.3' => 'Commentaires, demandes et messages de support',
			'privacyPolicy.section1.sub2.title' => '1.2. Données collectées automatiquement',
			'privacyPolicy.section1.sub2.items.0' => 'Type d\'appareil, système d\'exploitation et informations techniques',
			'privacyPolicy.section1.sub2.items.1' => 'Données de localisation approximatives (niveau ville/pays)',
			'privacyPolicy.section1.sub2.items.2' => 'Informations d\'utilisation telles que la durée de session et les interactions à l\'écran',
			'privacyPolicy.section1.sub2.items.3' => 'Journaux de performances, d\'erreurs et de plantages',
			'privacyPolicy.section2.title' => '2. Finalités d\'utilisation des données',
			'privacyPolicy.section2.items.0' => 'Pour assurer le fonctionnement ininterrompu de l\'application',
			'privacyPolicy.section2.items.1' => 'Pour personnaliser et optimiser l\'expérience de yoga facial',
			'privacyPolicy.section2.items.2' => 'Pour effectuer la détection d\'erreurs et l\'analyse des performances',
			'privacyPolicy.section2.items.3' => 'Pour répondre aux demandes des utilisateurs et aux demandes de support',
			'privacyPolicy.section2.note' => 'Important : les données des utilisateurs ne sont jamais vendues à des tiers.',
			'privacyPolicy.section3.title' => '3. Conservation des données',
			'privacyPolicy.section3.items.0' => 'Les données sont stockées tant que le compte utilisateur est actif.',
			'privacyPolicy.section3.items.1' => 'Lorsqu\'un compte est supprimé, les données personnelles sont supprimées de manière irréversible.',
			'privacyPolicy.section3.items.2' => 'Les enregistrements de support sont conservés pendant un maximum de 12 mois après l\'achèvement.',
			'privacyPolicy.section4.title' => '4. Partage des données',
			'privacyPolicy.section4.content' => 'Vos données ne sont partagées qu\'en cas d\'exigences légales (demandes officielles), de fournisseurs de services (infrastructure cloud, analyse) ou avec le consentement explicite de l\'utilisateur.',
			'privacyPolicy.section5.title' => '5. Cookies et sécurité',
			'privacyPolicy.section5.content' => 'Yogiface peut utiliser des cookies pour améliorer les performances et l\'expérience. Vos données sont protégées par un cryptage SSL/TLS et des audits de sécurité réguliers.',
			'privacyPolicy.section6.title' => '6. Droits de l\'utilisateur',
			'privacyPolicy.section6.content' => 'Vous avez le droit d\'accéder, de corriger, de supprimer et de restreindre le traitement des données.',
			'privacyPolicy.section6.contact' => 'Pour les demandes :',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Confidentialité des enfants',
			'privacyPolicy.section8.content' => 'Yogiface n\'est pas destiné aux personnes de moins de 13 ans. Toutes les données collectées auprès de ce groupe d\'âge seront supprimées immédiatement si elles sont détectées.',
			'privacyPolicy.section10.title' => '10. Contact',
			'privacyPolicy.section10.email' => '📩 Email : support@fly-work.com',
			'onboarding.basicInformation' => 'INFORMATIONS DE BASE',
			'onboarding.target' => 'OBJECTIF',
			'onboarding.habits' => 'HABITUDES',
			'onboarding.step' => 'ÉTAPE',
			'onboarding.of' => 'SUR',
			'onboarding.tellUsAboutYourself' => 'Parlez-nous de vous',
			'onboarding.shortBioDescription' => 'Une courte biographie aide les autres à vous connaître vraiment. Gardez-la amusante et authentique',
			'onboarding.enterYourFullname' => 'Entrez votre nom complet',
			'onboarding.fullName' => 'Nom complet',
			'onboarding.male' => 'Homme',
			'onboarding.female' => 'Femme',
			'onboarding.dontWantToMention' => 'Je ne veux pas le mentionner',
			'onboarding.whatIsMainObjective' => 'Quel est l\'objectif principal ?',
			'onboarding.reduceWrinkles' => 'Réduire les rides',
			'onboarding.tightenSkin' => 'Raffermir la peau',
			'onboarding.liftDroopyEyelids' => 'Soulever les paupières tombantes',
			'onboarding.eliminateDoubleChin' => 'Éliminer le double menton',
			'onboarding.brightenSkinTone' => 'Éclaircir le teint',
			'onboarding.allOfTheAbove' => 'Tout ce qui précède',
			'onboarding.whichAreaToImprove' => 'Quelle zone souhaitez-vous améliorer ?',
			'onboarding.forehead' => 'Front',
			'onboarding.eyes' => 'Yeux',
			'onboarding.nose' => 'Nez',
			'onboarding.cheeks' => 'Joues',
			'onboarding.lips' => 'Lèvres',
			'onboarding.jawline' => 'Ligne de mâchoire',
			'onboarding.neck' => 'Cou',
			'onboarding.fullface' => 'Visage complet',
			'onboarding.whatFaceShapeAiming' => 'Quelle forme de visage visez-vous ?',
			'onboarding.heart' => 'Cœur',
			'onboarding.oval' => 'Ovale',
			'onboarding.square' => 'Carré',
			'onboarding.round' => 'Rond',
			'onboarding.diamond' => 'Diamant',
			'onboarding.whatIsYourSkinType' => 'Quel est votre type de peau ?',
			'onboarding.normal' => 'Normale',
			'onboarding.oily' => 'Grasse',
			'onboarding.dry' => 'Sèche',
			'onboarding.combination' => 'Mixte',
			'onboarding.sensitive' => 'Sensible',
			'onboarding.whichOfThemDoYouHave' => 'Lequel avez-vous ?',
			'onboarding.acneAndPimples' => 'Acné et boutons',
			'onboarding.redness' => 'Rougeurs',
			'onboarding.swelling' => 'Gonflement',
			'onboarding.wrinkles' => 'Rides',
			'onboarding.neckLines' => 'Lignes du cou',
			'onboarding.howOftenWearMakeup' => 'À quelle fréquence vous maquillez-vous ?',
			'onboarding.everyDay' => 'Tous les jours',
			'onboarding.fewDaysAWeek' => 'Quelques jours par semaine',
			'onboarding.occasionally' => 'Occasionnellement',
			'onboarding.never' => 'Jamais',
			'onboarding.haveYouHadBotox' => 'Avez-vous eu du Botox ?',
			'onboarding.yes' => 'Oui',
			'onboarding.no' => 'Non',
			'onboarding.creatingPersonalizedProfile' => 'Création de votre profil personnalisé',
			'onboarding.tailoringExperience' => 'Nous adaptons votre expérience en fonction de vos préférences...',
			'onboarding.gender' => 'Genre',
			'onboarding.age' => 'Âge',
			'onboarding.weight' => 'Poids',
			'onboarding.height' => 'Taille',
			'onboarding.matchingPersonalities' => 'CORRESPONDANCE DES PERSONNALITÉS',
			'pressBackAgainToExit' => 'Appuyez à nouveau sur retour pour quitter',
			'addedToFavoritesTitle' => 'Exercice ajouté avec succès aux favoris !',
			'removedFromFavoritesTitle' => 'Exercice supprimé avec succès des favoris !',
			'removedFromFavorites' => 'Vous pouvez accéder à d\'autres exercices que vous souhaitez ajouter à partir des cours',
			'faq.title' => 'Questions fréquemment posées',
			'faq.questions.q1.question' => 'Qu\'est-ce que YogiFace ?',
			'faq.questions.q1.answer' => 'YogiFace est une application de soins personnels alimentée par l\'IA qui propose des exercices de yoga facial pour améliorer l\'apparence de la peau en travaillant les muscles faciaux.',
			'faq.questions.q2.question' => 'L\'application fonctionne-t-elle vraiment ?',
			'faq.questions.q2.answer' => 'Oui. Le yoga facial active les muscles faciaux pour augmenter la fermeté de la peau, accélérer la circulation et fournir une apparence plus jeune avec une utilisation régulière.',
			'faq.questions.q3.question' => 'Que fait l\'intelligence artificielle ici ?',
			'faq.questions.q3.answer' => 'YogiFace analyse les caractéristiques faciales, identifie les zones cibles et crée un plan d\'exercices personnalisé. De cette façon, chaque mouvement est optimisé en fonction des besoins personnels.',
			'faq.questions.q4.question' => 'Combien de temps dois-je consacrer chaque jour ?',
			'faq.questions.q4.answer' => 'Seulement 5 à 10 minutes par jour suffisent. Avec une pratique régulière, des changements visibles commencent en quelques semaines.',
			'faq.questions.q5.question' => 'Quand verrai-je des résultats ?',
			'faq.questions.q5.answer' => 'Avec une utilisation régulière, une amélioration du teint est visible en 2-3 semaines, et les traits du visage deviennent plus définis en 4-6 semaines. Les résultats peuvent varier d\'une personne à l\'autre.',
			'faq.questions.q6.question' => 'Cela fonctionne-t-il pour des problèmes comme le double menton ou l\'affaissement ?',
			'faq.questions.q6.answer' => 'Oui. YogiFace propose des exercices ciblés pour la ligne de mâchoire, les muscles des joues et la zone du cou. Lorsqu\'ils sont effectués régulièrement, ces exercices assurent un raffermissement significatif dans ces zones.',
			'faq.questions.q7.question' => 'Comment savoir si je fais les mouvements correctement ?',
			'faq.questions.q7.answer' => 'L\'application utilise l\'IA pour analyser l\'angle de votre visage, l\'expression et le modèle de mouvement ; elle vous informe de tout point incorrect.',
			'faq.questions.q8.question' => 'Est-ce adapté à tous les âges ?',
			'faq.questions.q8.answer' => 'Oui. Le yoga facial est une méthode naturelle non invasive. Tout le monde peut le pratiquer en toute sécurité dès le plus jeune âge.',
			'faq.questions.q9.question' => 'YogiFace est-il gratuit ?',
			'faq.questions.q9.answer' => 'Les exercices de base sont gratuits. Les programmes personnels, l\'analyse faciale avancée et les recommandations IA spéciales sont inclus dans le forfait premium.',
			'faq.questions.q10.question' => 'Les personnes ayant subi une chirurgie esthétique peuvent-elles l\'utiliser ?',
			'faq.questions.q10.answer' => 'De nombreux utilisateurs l\'utilisent en toute sécurité, mais il est recommandé de consulter un médecin pendant la période de récupération post-opératoire.',
			'full_face' => 'Visage complet / Revitalisation générale',
			'eye_area' => 'Yeux et zone oculaire',
			'nose_area' => 'Nez et zone nasale',
			'cheeks_mid_face' => 'Joues et milieu du visage',
			'lip_area' => 'Lèvres et zone buccale',
			'jawline_chin' => 'Ligne de mâchoire, menton et double menton',
			'forehead_brow' => 'Front et zone des sourcils',
			'neck_decollete' => 'Cou et décolleté',
			'good_morning' => 'Bonjour',
			'good_afternoon' => 'Bon après-midi',
			'good_evening' => 'Bonsoir',
			'splash.screen1.title' => 'Sculptez votre visage naturellement',
			'splash.screen1.description' => 'Travaillez vos muscles faciaux avec seulement quelques minutes d\'exercices faciaux quotidiens. Créez une routine de beauté naturelle, esthétique et non invasive.',
			'splash.screen2.title' => 'Plan d\'exercices personnalisé avec l\'IA',
			'splash.screen2.description' => 'L\'IA analyse vos caractéristiques faciales, détermine vos besoins et recommande des exercices adaptés à vous. Elle suit quels muscles ont besoin de plus de travail.',
			'splash.screen3.title' => 'Résultats visibles',
			'splash.screen3.description' => 'Avec une utilisation régulière, les contours du visage deviennent plus définis, la circulation s\'améliore et la peau paraît plus éclatante. De petits pas chaque jour apportent de grands changements.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Version gratuite',
			'profile.error' => 'Erreur',
			'profile.sections.accountSettings' => 'PARAMÈTRES DU COMPTE',
			'profile.sections.supportAndOther' => 'SUPPORT ET AUTRE',
			'profile.menu.editProfile' => 'Modifier le profil',
			'profile.menu.notifications' => 'Notifications',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Exercices favoris',
			'profile.menu.appLanguage' => 'Langue de l\'application',
			'profile.menu.shareWithFriends' => 'Partager avec des amis',
			'profile.menu.enterInviteCode' => 'Entrer le code d\'invitation',
			'profile.menu.rateUs' => 'Évaluez-nous',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Se déconnecter',
			'profile.manage' => 'GÉRER',
			'profile.logoutDialog.title' => 'Vous êtes sur le point de vous déconnecter',
			'profile.logoutDialog.message' => 'À bientôt ! Nous continuerons à suivre vos exercices de respiration.',
			'profile.logoutDialog.logoutButton' => 'Se déconnecter',
			'profile.logoutDialog.cancelButton' => 'Annuler',
			'home.premium' => 'Premium !',
			'home.focusAreas' => 'Zones de focus',
			'home.popularCourses' => 'Cours populaires',
			'home.seeMore' => 'Voir plus',
			'home.personalized.title' => 'Rapport d\'analyse\nfaciale\npersonnalisé',
			'home.personalized.description' => 'Veuillez analyser votre peau\npour découvrir son type.',
			'home.personalized.button' => 'Essayez maintenant',
			'home.premiumPlan.title' => 'Plan Premium',
			'home.premiumPlan.description' => 'Débloquez votre chatbot IA et\nobtenez toutes les fonctionnalités premium',
			'home.premiumPlan.button' => 'Obtenir Premium',
			'home.premiumPlan.dialog.title' => 'Fonctionnalité non disponible',
			'home.premiumPlan.dialog.message' => 'Cette fonctionnalité n\'est actuellement pas disponible.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Actions rapides',
			'home.quickActions.programTitle' => 'Votre programme personnel',
			'home.quickActions.programSubtitle' => 'Pour votre meilleur look\nen 30 jours',
			'home.quickActions.button' => 'Commencer',
			'home.todaysExercise.title' => 'Exercice du jour',
			'home.todaysExercise.recommended' => 'Routine recommandée',
			'home.todaysExercise.forToday' => 'pour aujourd\'hui',
			'home.courses.foreheadSmoother.title' => 'Le lisseur de front',
			'home.courses.foreheadSmoother.description' => 'Ce mouvement libère la tension dans les muscles du front et les rides d\'expression accumulées...',
			'home.courses.vMove.title' => 'Le mouvement "V"',
			'home.courses.vMove.description' => 'Renforce la peau délicate autour des yeux, soulève les paupières tombantes et efface les signes de fatigue.',
			'home.courses.cheekLifter.title' => 'Le releveur de joues',
			'home.courses.cheekLifter.description' => 'Soulève les muscles des joues (Zygomatique) qui sont les plus sujets à la gravité, restaurant l\'ovale du visage.',
			'home.benefits.naturalIroning.title' => 'Lissage naturel :',
			'home.benefits.naturalIroning.description' => 'Ouvre les lignes horizontales sur le front et les empêche de s\'approfondir.',
			'home.benefits.botoxEffect.title' => 'Effet Botox',
			'home.benefits.botoxEffect.description' => 'Détend les muscles tendus et brise l\'habitude de froncer les sourcils.',
			'home.benefits.stressRelief.title' => 'Soulagement du stress',
			'home.benefits.stressRelief.description' => 'Soulage le stress accumulé sur le front et atténue les maux de tête.',
			'home.benefits.radiantAppearance.title' => 'Apparence radieuse',
			'home.benefits.radiantAppearance.description' => 'Stimule la circulation sanguine pour donner à la peau un éclat.',
			'home.benefits.dePuffing.title' => 'Dégonflement',
			'home.benefits.dePuffing.description' => 'Réduit le gonflement facial grâce à son effet de drainage lymphatique.',
			'courseDetail.title' => 'Détails du cours',
			'courseDetail.getStarted' => 'Commencer',
			'courseDetail.noExercisesFound' => 'Aucun exercice trouvé pour cette catégorie',
			'courseDetail.instructions.instruction1.title' => 'Lavez vos mains et votre visage',
			'courseDetail.instructions.instruction1.description' => 'Une peau propre permet au massage d\'être plus efficace.',
			'courseDetail.instructions.instruction2.title' => 'Appliquez de l\'huile pour le visage ou une crème hydratante',
			'courseDetail.instructions.instruction2.description' => 'Glissez en douceur sans tirer votre peau.',
			'courses.title' => 'Tous les cours',
			'courses.error' => 'Erreur lors du chargement des exercices',
			'courses.personalCoursesTitle' => 'Cours personnels',
			'personalProgram.dailyGoalTitle' => 'Définissez votre objectif quotidien',
			'personalProgram.dailyGoalDescription' => 'Choisissez un rythme qui correspond à votre emploi du temps',
			'personalProgram.personalizing' => 'Personnalisation de votre plan...',
			'personalProgram.readyMessage' => 'Votre programme personnel de yoga facial de 30 jours est prêt✨',
			'personalProgram.minutes' => 'Min',
			'personalProgram.objectiveTitle' => 'Quelle expression vous dérange le plus lorsque vous vous regardez dans le miroir ?',
			'personalProgram.objectiveSubtitle' => 'L\'équilibre du programme est ajusté en fonction de l\'expression faciale',
			'personalProgram.feelingTitle' => 'Comment aimeriez-vous vous sentir en faisant du yoga facial ?',
			'personalProgram.timeTitle' => 'Quand est-il plus facile pour vous de faire du yoga facial ?',
			'personalProgram.objectives.tired' => 'Apparence fatiguée et usée',
			'personalProgram.objectives.harsh' => 'Expression dure et tendue',
			'personalProgram.objectives.pale' => 'Peau pâle et sans vie',
			'personalProgram.objectives.asymmetrical' => 'Traits du visage asymétriques',
			'personalProgram.objectives.general' => 'Pas de problème évident, je veux des soins généraux',
			'personalProgram.feelings.lightened' => 'Allégé',
			'personalProgram.feelings.revitalized' => 'Revitalisé',
			'personalProgram.feelings.refreshed' => 'Rafraîchi',
			'personalProgram.feelings.energetic' => 'Plus énergique',
			'personalProgram.times.morning' => 'Matin',
			'personalProgram.times.duringDay' => 'Pendant la journée',
			'personalProgram.times.evening' => 'Soir',
			'personalProgram.times.anytime' => 'L\'heure n\'a pas d\'importance, un rappel suffit',
			'editProfile.title' => 'Modifier le profil',
			'editProfile.changePhoto' => 'Changer la photo',
			'editProfile.fullName' => 'Nom complet',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Âge',
			'editProfile.gender' => 'Genre',
			'editProfile.skinType' => 'Type de peau',
			'editProfile.focusArea' => 'Zone de focus',
			'editProfile.focusAreaHint' => 'Front, Yeux, Nez, Bouche, Joues...',
			'editProfile.save' => 'Enregistrer',
			'editProfile.saving' => 'Enregistrement...',
			'editProfile.updateSuccess' => 'Profil mis à jour avec succès',
			'editProfile.updateError' => 'Une erreur s\'est produite lors de la mise à jour du profil',
			'editProfile.deleteAccount' => 'Supprimer le compte',
			'notifications.title' => 'Notifications',
			'notifications.emptyTitle' => 'Pas encore de notifications',
			'notifications.emptyDescription' => 'Nous vous informerons lorsqu\'il y aura une mise à jour importante concernant votre parcours d\'apprentissage.',
			'notifications.premiumBannerTitle' => 'Ne manquez pas les\navantages Premium !',
			'notifications.premiumBannerDescription' => 'Profitez des opportunités en tant qu\'abonné Premium.',
			'notifications.sample1Title' => 'Votre méditation quotidienne est prête !',
			'notifications.sample1Description' => 'Trouvez votre calme pour la journée',
			'notifications.sample1Time' => 'Il y a 15 min',
			'notifications.sample2Title' => 'Nouvel exercice : Respiration océanique',
			'notifications.sample2Description' => 'Une nouvelle technique de respiration a été ajoutée',
			'notifications.sample2Time' => 'Il y a 1 heure',
			'notifications.sample3Title' => 'Vous avez atteint une série de 7 jours !',
			'notifications.sample3Description' => 'Continuez votre excellent travail sur votre bien-être',
			'notifications.sample3Time' => 'Hier',
			'share.title' => 'Partager avec des amis',
			'share.mainTitle' => 'Partagez la paix',
			'share.descriptionPart1' => 'Invitez vos amis à respirer ensemble.\nPour chaque invitation, vous obtenez tous les deux ',
			'share.descriptionPart2' => '1 semaine Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'VOTRE CODE DE PARRAINAGE',
			'share.codeCopied' => 'Code copié !',
			'share.copyCode' => 'Copier le code',
			'facialScan.title' => 'Scan facial',
			'facialScan.step' => ({required Object current, required Object total}) => 'ÉTAPE ${current} SUR ${total}',
			'facialScan.getStarted' => 'Commencer',
			'facialScan.analyzing.title' => 'Analyse en cours',
			'facialScan.analyzing.description' => 'Analyse de vos caractéristiques uniques',
			'facialScan.analyzing.detail' => 'Détection de la texture de la peau, du tonus musculaire et de la zone de focus pour votre routine personnalisée.',
			'facialScan.analyzing.aiEngineWorking' => 'MOTEUR IA EN FONCTIONNEMENT',
			'facialScan.result.title' => 'Votre analyse est prête !',
			'facialScan.result.subtitle' => 'Nous avons créé une routine basée sur vos résultats.',
			'facialScan.result.skinType' => 'TYPE DE PEAU',
			'facialScan.result.primaryGoal' => 'OBJECTIF PRINCIPAL',
			'facialScan.result.recommended' => 'Recommandé pour vous',
			'facialScan.result.back' => 'Retour',
			'facialScan.instructions.front' => 'Positionnez votre visage dans le cadre',
			'facialScan.instructions.left' => 'Tournez votre tête vers la gauche',
			'facialScan.instructions.right' => 'Tournez votre tête vers la droite',
			'facialScan.instructions.lighting' => 'Assurez-vous d\'être dans un environnement bien éclairé pour de meilleurs résultats',
			'facialScan.instructions.tapToCapture' => 'Appuyez sur le bouton de l\'appareil photo pour prendre une photo',
			'facialScan.errors.cameraPermission' => 'L\'autorisation de la caméra est requise pour prendre des photos.',
			'facialScan.errors.cameraPermissionRequired' => 'Autorisation de caméra requise',
			'facialScan.errors.cameraPermissionMessage' => 'L\'autorisation de la caméra est requise pour le scan facial. Veuillez l\'activer dans les paramètres de l\'application.',
			'facialScan.errors.openSettings' => 'Ouvrir les paramètres',
			'facialScan.errors.cancel' => 'Annuler',
			'facialScan.errors.noFaceDetected' => 'Aucun visage détecté. Veuillez réessayer.',
			'facialScan.errors.captureFailed' => 'Échec de la capture de l\'image. Veuillez réessayer.',
			'facialScan.positions.front' => 'AVANT',
			'facialScan.positions.left' => 'GAUCHE',
			'facialScan.positions.right' => 'DROITE',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continuer en tant qu\'invité',
			'auth.signInFailed' => ({required Object error}) => 'Échec de la connexion : ${error}',
			'benefits' => 'Avantages',
			'minutes' => 'Min',
			'cancel' => 'Annuler',
			'beforeBegin' => 'Avant de commencer',
			'rest' => 'Repos',
			'courseCompleted' => 'Cours terminé',
			'courseCompletedDescription' => 'Excellent travail pour avoir terminé la session d\'aujourd\'hui.',
			'deleteAccount' => 'Supprimer le compte',
			'deleteDialogTitle' => 'Êtes-vous sûr de vouloir supprimer votre compte ?',
			'deleteDialogDescription' => 'Cette action est irréversible et supprimera définitivement tout votre historique d\'exercices et vos données.',
			'deleteError' => 'Une erreur s\'est produite lors de la suppression de votre compte. Veuillez réessayer.',
			'favoriteExercises' => 'Exercices favoris',
			'noFavoritesInCategory' => 'Aucun favori dans cette catégorie',
			'noFavoritesAdded' => 'Aucun favori ajouté pour le moment.',
			'favoriteExercisesDescription' => 'Pour définir vos exercices favoris, vous pouvez ajouter les exercices que vous aimez depuis la page Mes exercices.',
			'enterInvitationCode' => 'Saisir le code d\'invitation',
			'bePartOfPeace' => 'Faites partie de la paix',
			'inviteFriends' => 'Entrez le code d\'invitation reçu d\'un ami.\nTapez-le dans le champ désigné',
			'twoDaysPremium' => '7 jours Premium',
			'advantage' => '\npour profiter de ses avantages.',
			'send' => 'Envoyer',
			'referralCode.inputPlaceholder' => 'Entrez le code à 8 caractères',
			'referralCode.applying' => 'Application du code...',
			'referralCode.success.title' => 'Succès !',
			'referralCode.success.message' => 'Code de parrainage appliqué avec succès ! Vous et votre ami avez reçu 1 semaine de premium.',
			'referralCode.errors.missingCode.title' => 'Code requis',
			'referralCode.errors.missingCode.message' => 'Veuillez entrer un code de parrainage pour continuer.',
			'referralCode.errors.invalidFormat.title' => 'Format invalide',
			'referralCode.errors.invalidFormat.message' => 'Le code de parrainage doit contenir exactement 8 caractères.',
			'referralCode.errors.alreadyUsed.title' => 'Déjà utilisé',
			'referralCode.errors.alreadyUsed.message' => 'Vous avez déjà utilisé un code de parrainage. Chaque utilisateur ne peut utiliser qu\'un seul code.',
			'referralCode.errors.selfReferral.title' => 'Code invalide',
			'referralCode.errors.selfReferral.message' => 'Vous ne pouvez pas utiliser votre propre code d\'invitation. Veuillez utiliser un code d\'un ami.',
			'referralCode.errors.codeNotFound.title' => 'Code non trouvé',
			'referralCode.errors.codeNotFound.message' => 'Le code de parrainage que vous avez saisi n\'existe pas. Veuillez vérifier et réessayer.',
			'referralCode.errors.genericError.title' => 'Erreur',
			'referralCode.errors.genericError.message' => 'Une erreur s\'est produite lors de l\'application du code de parrainage. Veuillez réessayer.',
			'deleteNotifications' => 'Supprimer les notifications',
			'deleteNotificationsDescription' => 'Êtes-vous sûr de vouloir supprimer toutes\nvos notifications ? Cette action est irréversible et ne peut pas être annulée.',
			'deleteAll' => 'Tout supprimer',
			'appLanguage' => 'Langue de l\'application',
			'selectLanguage' => 'Sélectionnez votre langue préférée',
			'save' => 'Enregistrer',
			'languageOptions.english' => 'Anglais',
			'languageOptions.german' => 'Allemand',
			'languageOptions.italian' => 'Italien',
			'languageOptions.french' => 'Français',
			'languageOptions.japanese' => 'Japonais',
			'languageOptions.spanish' => 'Espagnol',
			'languageOptions.russian' => 'Russe',
			'languageOptions.turkish' => 'Turc',
			'languageOptions.korean' => 'Coréen',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugais',
			_ => null,
		};
	}
}
