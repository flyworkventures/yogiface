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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Willkommen ${name}';
	@override String get welcome2 => 'Willkommen';
	@override String get get_started => 'Loslegen';
	@override String get next => 'Weiter';
	@override String get back => 'Zurück';
	@override String get skip => 'Überspringen';
	@override String get logintext => 'Ich freue mich, Sie zu sehen. Sie können dort weitermachen, wo Sie aufgehört haben, indem Sie sich in Ihr Konto einloggen.';
	@override late final _TranslationsTermOfServiceDe termOfService = _TranslationsTermOfServiceDe._(_root);
	@override String get cookies => 'Cookie-Richtlinie';
	@override String get privacy => 'Datenschutzrichtlinie';
	@override late final _TranslationsTermsOfServiceDe termsOfService = _TranslationsTermsOfServiceDe._(_root);
	@override late final _TranslationsCookiesPolicyDe cookiesPolicy = _TranslationsCookiesPolicyDe._(_root);
	@override late final _TranslationsPrivacyPolicyDe privacyPolicy = _TranslationsPrivacyPolicyDe._(_root);
	@override late final _TranslationsOnboardingDe onboarding = _TranslationsOnboardingDe._(_root);
	@override String get pressBackAgainToExit => 'Drücken Sie erneut zurück, um zu beenden';
	@override String get addedToFavoritesTitle => 'Übung erfolgreich zu Favoriten hinzugefügt!';
	@override String get removedFromFavoritesTitle => 'Übung erfolgreich aus Favoriten entfernt!';
	@override String get removedFromFavorites => 'Sie können auf andere Übungen, die Sie hinzufügen möchten, über Kurse zugreifen';
	@override late final _TranslationsFaqDe faq = _TranslationsFaqDe._(_root);
	@override String get full_face => 'Ganzes Gesicht / Allgemeine Revitalisierung';
	@override String get eye_area => 'Augen & Augenbereich';
	@override String get nose_area => 'Nase & Nasenbereich';
	@override String get cheeks_mid_face => 'Wangen & Mittelgesicht';
	@override String get lip_area => 'Lippen & Mundbereich';
	@override String get jawline_chin => 'Kieferlinie, Kinn & Doppelkinn';
	@override String get forehead_brow => 'Stirn & Augenbrauenbereich';
	@override String get neck_decollete => 'Hals & Dekolleté';
	@override String get good_morning => 'Guten Morgen';
	@override String get good_afternoon => 'Guten Tag';
	@override String get good_evening => 'Guten Abend';
	@override late final _TranslationsSplashDe splash = _TranslationsSplashDe._(_root);
	@override late final _TranslationsProfileDe profile = _TranslationsProfileDe._(_root);
	@override late final _TranslationsHomeDe home = _TranslationsHomeDe._(_root);
	@override late final _TranslationsCourseDetailDe courseDetail = _TranslationsCourseDetailDe._(_root);
	@override late final _TranslationsCoursesDe courses = _TranslationsCoursesDe._(_root);
	@override late final _TranslationsPersonalProgramDe personalProgram = _TranslationsPersonalProgramDe._(_root);
	@override late final _TranslationsEditProfileDe editProfile = _TranslationsEditProfileDe._(_root);
	@override late final _TranslationsNotificationsDe notifications = _TranslationsNotificationsDe._(_root);
	@override late final _TranslationsShareDe share = _TranslationsShareDe._(_root);
	@override late final _TranslationsFacialScanDe facialScan = _TranslationsFacialScanDe._(_root);
	@override late final _TranslationsAuthDe auth = _TranslationsAuthDe._(_root);
	@override String get benefits => 'Vorteile';
	@override String get minutes => 'Min';
	@override String get cancel => 'Abbrechen';
	@override String get beforeBegin => 'Bevor Sie beginnen';
	@override String get rest => 'Ruhe';
	@override String get courseCompleted => 'Kurs abgeschlossen';
	@override String get courseCompletedDescription => 'Großartige Arbeit beim Abschluss der heutigen Sitzung.';
	@override String get deleteAccount => 'Konto löschen';
	@override String get deleteDialogTitle => 'Sind Sie sicher, dass Sie Ihr Konto löschen möchten?';
	@override String get deleteDialogDescription => 'Diese Aktion ist irreversibel und löscht dauerhaft alle Ihre Übungshistorie und Daten.';
	@override String get deleteError => 'Beim Löschen Ihres Kontos ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';
	@override String get favoriteExercises => 'Lieblingsübungen';
	@override String get noFavoritesInCategory => 'Keine Favoriten in dieser Kategorie';
	@override String get noFavoritesAdded => 'Noch keine Favoriten hinzugefügt.';
	@override String get favoriteExercisesDescription => 'Um Ihre Lieblingsübungen festzulegen, können Sie die Übungen, die Ihnen gefallen, von der Seite Meine Übungen hinzufügen.';
	@override String get enterInvitationCode => 'Einladungscode eingeben';
	@override String get bePartOfPeace => 'Sei Teil des Friedens';
	@override String get inviteFriends => 'Gib den Einladungscode ein, den du von einem Freund erhalten hast.\nTippe ihn in das vorgesehene Feld';
	@override String get twoDaysPremium => '7 Tage Premium';
	@override String get advantage => '\num die Vorteile zu genießen.';
	@override String get send => 'Senden';
	@override late final _TranslationsReferralCodeDe referralCode = _TranslationsReferralCodeDe._(_root);
	@override String get deleteNotifications => 'Benachrichtigungen löschen';
	@override String get deleteNotificationsDescription => 'Sind Sie sicher, dass Sie alle\nIhre Benachrichtigungen löschen möchten? Diese Aktion ist irreversibel und kann nicht rückgängig gemacht werden.';
	@override String get deleteAll => 'Alle löschen';
	@override String get appLanguage => 'App-Sprache';
	@override String get selectLanguage => 'Wählen Sie Ihre bevorzugte Sprache';
	@override String get save => 'Speichern';
	@override late final _TranslationsLanguageOptionsDe languageOptions = _TranslationsLanguageOptionsDe._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceDe implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Durch die Anmeldung bei Swipe stimmen Sie unseren ';
	@override String get link1 => 'Nutzungsbedingungen';
	@override String get text2 => ' zu. Erfahren Sie, wie wir Ihre Daten in unserer ';
	@override String get link2 => 'Datenschutzrichtlinie';
	@override String get text3 => ' und ';
	@override String get link3 => 'Cookie-Richtlinie';
	@override String get text4 => ' verarbeiten';
}

// Path: termsOfService
class _TranslationsTermsOfServiceDe implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Nutzungsbedingungen';
	@override String get lastUpdated => 'Zuletzt aktualisiert: 2025';
	@override String get principle => 'Yogiface ist eine Wellness-Anwendung, die Gesichtsyoga-Übungen und geführte Inhalte zur Unterstützung der Gesichtsmuskulatur bietet. Die Anwendung bietet keine medizinischen, klinischen, ästhetischen oder professionellen Gesundheitsdienste.';
	@override String get intro => 'Diese Nutzungsbedingungen ("Bedingungen") enthalten die Regeln für Ihre Nutzung der Yogiface-Mobilanwendung ("Anwendung"). Durch die Nutzung der Anwendung stimmen Sie diesen Bedingungen zu. Wenn Sie den Bedingungen nicht zustimmen, sollten Sie die Anwendung nicht nutzen.';
	@override late final _TranslationsTermsOfServiceSection1De section1 = _TranslationsTermsOfServiceSection1De._(_root);
	@override late final _TranslationsTermsOfServiceSection2De section2 = _TranslationsTermsOfServiceSection2De._(_root);
	@override late final _TranslationsTermsOfServiceSection3De section3 = _TranslationsTermsOfServiceSection3De._(_root);
	@override late final _TranslationsTermsOfServiceSection4De section4 = _TranslationsTermsOfServiceSection4De._(_root);
	@override late final _TranslationsTermsOfServiceSection5De section5 = _TranslationsTermsOfServiceSection5De._(_root);
	@override late final _TranslationsTermsOfServiceSection6De section6 = _TranslationsTermsOfServiceSection6De._(_root);
	@override late final _TranslationsTermsOfServiceSection7De section7 = _TranslationsTermsOfServiceSection7De._(_root);
	@override late final _TranslationsTermsOfServiceSection12De section12 = _TranslationsTermsOfServiceSection12De._(_root);
	@override late final _TranslationsTermsOfServiceSection13De section13 = _TranslationsTermsOfServiceSection13De._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyDe implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Cookie-Richtlinie';
	@override String get lastUpdated => 'Zuletzt aktualisiert: 2025';
	@override String get intro => 'Willkommen bei Yogiface! Bei jedem Besuch der App verwenden wir digitale Helfer (Cookies), um Ihr Erlebnis zu verbessern und zu personalisieren. Diese Richtlinie erklärt, wie Sie Ihre Präferenzen verwalten können.';
	@override late final _TranslationsCookiesPolicySection1De section1 = _TranslationsCookiesPolicySection1De._(_root);
	@override late final _TranslationsCookiesPolicySection2De section2 = _TranslationsCookiesPolicySection2De._(_root);
	@override late final _TranslationsCookiesPolicySection3De section3 = _TranslationsCookiesPolicySection3De._(_root);
	@override late final _TranslationsCookiesPolicySection4De section4 = _TranslationsCookiesPolicySection4De._(_root);
	@override late final _TranslationsCookiesPolicySection5De section5 = _TranslationsCookiesPolicySection5De._(_root);
	@override late final _TranslationsCookiesPolicySection6De section6 = _TranslationsCookiesPolicySection6De._(_root);
	@override late final _TranslationsCookiesPolicySection7De section7 = _TranslationsCookiesPolicySection7De._(_root);
	@override late final _TranslationsCookiesPolicySection8De section8 = _TranslationsCookiesPolicySection8De._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyDe implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Datenschutzrichtlinie';
	@override String get lastUpdated => 'Zuletzt aktualisiert: 2025';
	@override String get intro => 'Diese Datenschutzrichtlinie erklärt die Grundsätze bezüglich der Erfassung, Nutzung, Speicherung und des Schutzes personenbezogener Daten aller Benutzer, die die Yogiface-Mobilanwendung ("App") nutzen. Durch die Nutzung der App akzeptieren Sie diese Richtlinie.';
	@override String get principle => 'Yogiface übernimmt Benutzerdatenschutz und Datensicherheit als Grundprinzip. Alle personenbezogenen Daten werden in Übereinstimmung mit der DSGVO und den einschlägigen Rechtsvorschriften verarbeitet.';
	@override late final _TranslationsPrivacyPolicySection1De section1 = _TranslationsPrivacyPolicySection1De._(_root);
	@override late final _TranslationsPrivacyPolicySection2De section2 = _TranslationsPrivacyPolicySection2De._(_root);
	@override late final _TranslationsPrivacyPolicySection3De section3 = _TranslationsPrivacyPolicySection3De._(_root);
	@override late final _TranslationsPrivacyPolicySection4De section4 = _TranslationsPrivacyPolicySection4De._(_root);
	@override late final _TranslationsPrivacyPolicySection5De section5 = _TranslationsPrivacyPolicySection5De._(_root);
	@override late final _TranslationsPrivacyPolicySection6De section6 = _TranslationsPrivacyPolicySection6De._(_root);
	@override late final _TranslationsPrivacyPolicySection8De section8 = _TranslationsPrivacyPolicySection8De._(_root);
	@override late final _TranslationsPrivacyPolicySection10De section10 = _TranslationsPrivacyPolicySection10De._(_root);
}

// Path: onboarding
class _TranslationsOnboardingDe implements TranslationsOnboardingEn {
	_TranslationsOnboardingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'GRUNDINFORMATIONEN';
	@override String get target => 'ZIEL';
	@override String get habits => 'GEWOHNHEITEN';
	@override String get step => 'SCHRITT';
	@override String get of => 'VON';
	@override String get tellUsAboutYourself => 'Erzählen Sie uns von sich';
	@override String get shortBioDescription => 'Eine kurze Biografie hilft anderen, Sie wirklich kennenzulernen. Halten Sie es lustig und authentisch';
	@override String get enterYourFullname => 'Geben Sie Ihren vollständigen Namen ein';
	@override String get fullName => 'Vollständiger Name';
	@override String get male => 'Männlich';
	@override String get female => 'Weiblich';
	@override String get dontWantToMention => 'Ich möchte es nicht erwähnen';
	@override String get whatIsMainObjective => 'Was ist das Hauptziel?';
	@override String get reduceWrinkles => 'Falten reduzieren';
	@override String get tightenSkin => 'Haut straffen';
	@override String get liftDroopyEyelids => 'Hängende Augenlider anheben';
	@override String get eliminateDoubleChin => 'Doppelkinn beseitigen';
	@override String get brightenSkinTone => 'Hautton aufhellen';
	@override String get allOfTheAbove => 'Alle oben genannten';
	@override String get whichAreaToImprove => 'Welchen Bereich möchten Sie verbessern?';
	@override String get forehead => 'Stirn';
	@override String get eyes => 'Augen';
	@override String get nose => 'Nase';
	@override String get cheeks => 'Wangen';
	@override String get lips => 'Lippen';
	@override String get jawline => 'Kieferlinie';
	@override String get neck => 'Hals';
	@override String get fullface => 'Ganzes Gesicht';
	@override String get whatFaceShapeAiming => 'Welche Gesichtsform streben Sie an?';
	@override String get heart => 'Herz';
	@override String get oval => 'Oval';
	@override String get square => 'Quadratisch';
	@override String get round => 'Rund';
	@override String get diamond => 'Diamant';
	@override String get whatIsYourSkinType => 'Was ist Ihr Hauttyp?';
	@override String get normal => 'Normal';
	@override String get oily => 'Ölig';
	@override String get dry => 'Trocken';
	@override String get combination => 'Kombination';
	@override String get sensitive => 'Empfindlich';
	@override String get whichOfThemDoYouHave => 'Welche davon haben Sie?';
	@override String get acneAndPimples => 'Akne und Pickel';
	@override String get redness => 'Rötungen';
	@override String get swelling => 'Schwellungen';
	@override String get wrinkles => 'Falten';
	@override String get neckLines => 'Halslinien';
	@override String get howOftenWearMakeup => 'Wie oft tragen Sie Make-up?';
	@override String get everyDay => 'Jeden Tag';
	@override String get fewDaysAWeek => 'Ein paar Tage pro Woche';
	@override String get occasionally => 'Gelegentlich';
	@override String get never => 'Nie';
	@override String get haveYouHadBotox => 'Hatten Sie Botox?';
	@override String get yes => 'Ja';
	@override String get no => 'Nein';
	@override String get creatingPersonalizedProfile => 'Ihr personalisiertes Profil wird erstellt';
	@override String get tailoringExperience => 'Wir passen Ihr Erlebnis basierend auf Ihren Präferenzen an...';
	@override String get gender => 'Geschlecht';
	@override String get age => 'Alter';
	@override String get weight => 'Gewicht';
	@override String get height => 'Größe';
	@override String get matchingPersonalities => 'PERSÖNLICHKEITEN ABGLEICHEN';
}

// Path: faq
class _TranslationsFaqDe implements TranslationsFaqEn {
	_TranslationsFaqDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Häufig gestellte Fragen';
	@override late final _TranslationsFaqQuestionsDe questions = _TranslationsFaqQuestionsDe._(_root);
}

// Path: splash
class _TranslationsSplashDe implements TranslationsSplashEn {
	_TranslationsSplashDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1De screen1 = _TranslationsSplashScreen1De._(_root);
	@override late final _TranslationsSplashScreen2De screen2 = _TranslationsSplashScreen2De._(_root);
	@override late final _TranslationsSplashScreen3De screen3 = _TranslationsSplashScreen3De._(_root);
}

// Path: profile
class _TranslationsProfileDe implements TranslationsProfileEn {
	_TranslationsProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil';
	@override String get freeVersion => 'Kostenlose Version';
	@override String get error => 'Fehler';
	@override late final _TranslationsProfileSectionsDe sections = _TranslationsProfileSectionsDe._(_root);
	@override late final _TranslationsProfileMenuDe menu = _TranslationsProfileMenuDe._(_root);
	@override String get manage => 'VERWALTEN';
	@override late final _TranslationsProfileLogoutDialogDe logoutDialog = _TranslationsProfileLogoutDialogDe._(_root);
}

// Path: home
class _TranslationsHomeDe implements TranslationsHomeEn {
	_TranslationsHomeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get focusAreas => 'Fokusbereiche';
	@override String get popularCourses => 'Beliebte Kurse';
	@override String get seeMore => 'Mehr sehen';
	@override late final _TranslationsHomePersonalizedDe personalized = _TranslationsHomePersonalizedDe._(_root);
	@override late final _TranslationsHomePremiumPlanDe premiumPlan = _TranslationsHomePremiumPlanDe._(_root);
	@override late final _TranslationsHomeQuickActionsDe quickActions = _TranslationsHomeQuickActionsDe._(_root);
	@override late final _TranslationsHomeTodaysExerciseDe todaysExercise = _TranslationsHomeTodaysExerciseDe._(_root);
	@override late final _TranslationsHomeCoursesDe courses = _TranslationsHomeCoursesDe._(_root);
	@override late final _TranslationsHomeBenefitsDe benefits = _TranslationsHomeBenefitsDe._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailDe implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kursdetails';
	@override String get getStarted => 'Loslegen';
	@override String get noExercisesFound => 'Keine Übungen für diese Kategorie gefunden';
	@override late final _TranslationsCourseDetailInstructionsDe instructions = _TranslationsCourseDetailInstructionsDe._(_root);
}

// Path: courses
class _TranslationsCoursesDe implements TranslationsCoursesEn {
	_TranslationsCoursesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alle Kurse';
	@override String get error => 'Fehler beim Laden der Übungen';
	@override String get personalCoursesTitle => 'Persönliche Kurse';
}

// Path: personalProgram
class _TranslationsPersonalProgramDe implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Setzen Sie Ihr tägliches Ziel';
	@override String get dailyGoalDescription => 'Wählen Sie ein Tempo, das zu Ihrem Zeitplan passt';
	@override String get personalizing => 'Ihr Plan wird personalisiert...';
	@override String get readyMessage => 'Ihr persönliches 30-Tage-Gesichtsyoga-Programm ist bereit✨';
	@override String get minutes => 'Min';
}

// Path: editProfile
class _TranslationsEditProfileDe implements TranslationsEditProfileEn {
	_TranslationsEditProfileDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profil bearbeiten';
	@override String get changePhoto => 'Foto ändern';
	@override String get fullName => 'Vollständiger Name';
	@override String get email => 'E-Mail';
	@override String get age => 'Alter';
	@override String get gender => 'Geschlecht';
	@override String get skinType => 'Hauttyp';
	@override String get focusArea => 'Fokusbereich';
	@override String get focusAreaHint => 'Stirn, Augen, Nase, Mund, Wangen...';
	@override String get save => 'Speichern';
	@override String get saving => 'Wird gespeichert...';
	@override String get updateSuccess => 'Profil erfolgreich aktualisiert';
	@override String get updateError => 'Beim Aktualisieren des Profils ist ein Fehler aufgetreten';
	@override String get deleteAccount => 'Konto löschen';
}

// Path: notifications
class _TranslationsNotificationsDe implements TranslationsNotificationsEn {
	_TranslationsNotificationsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Benachrichtigungen';
	@override String get emptyTitle => 'Noch keine Benachrichtigungen';
	@override String get emptyDescription => 'Wir benachrichtigen Sie, wenn es ein wichtiges Update zu Ihrer Lernreise gibt.';
	@override String get premiumBannerTitle => 'Verpassen Sie nicht die\nPremium-Vorteile!';
	@override String get premiumBannerDescription => 'Nutzen Sie die Möglichkeiten als Premium-Abonnent.';
	@override String get sample1Title => 'Ihre tägliche Meditation ist bereit!';
	@override String get sample1Description => 'Finden Sie Ihre Ruhe für den Tag';
	@override String get sample1Time => 'Vor 15 Min.';
	@override String get sample2Title => 'Neue Übung: Ozeanatmung';
	@override String get sample2Description => 'Eine neue Atemtechnik wurde hinzugefügt';
	@override String get sample2Time => 'Vor 1 Stunde';
	@override String get sample3Title => 'Sie haben eine 7-Tage-Serie erreicht!';
	@override String get sample3Description => 'Machen Sie weiter so mit Ihrem Wohlbefinden';
	@override String get sample3Time => 'Gestern';
}

// Path: share
class _TranslationsShareDe implements TranslationsShareEn {
	_TranslationsShareDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mit Freunden teilen';
	@override String get mainTitle => 'Teilen Sie den Frieden';
	@override String get descriptionPart1 => 'Laden Sie Ihre Freunde ein, gemeinsam zu atmen.\nFür jede Einladung erhalten Sie beide ';
	@override String get descriptionPart2 => '1 Woche Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'IHR EMPFEHLUNGSCODE';
	@override String get codeCopied => 'Code kopiert!';
	@override String get copyCode => 'Code kopieren';
}

// Path: facialScan
class _TranslationsFacialScanDe implements TranslationsFacialScanEn {
	_TranslationsFacialScanDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesichtsscan';
	@override String step({required Object current, required Object total}) => 'SCHRITT ${current} VON ${total}';
	@override String get getStarted => 'Loslegen';
	@override late final _TranslationsFacialScanAnalyzingDe analyzing = _TranslationsFacialScanAnalyzingDe._(_root);
	@override late final _TranslationsFacialScanResultDe result = _TranslationsFacialScanResultDe._(_root);
	@override late final _TranslationsFacialScanInstructionsDe instructions = _TranslationsFacialScanInstructionsDe._(_root);
	@override late final _TranslationsFacialScanErrorsDe errors = _TranslationsFacialScanErrorsDe._(_root);
	@override late final _TranslationsFacialScanPositionsDe positions = _TranslationsFacialScanPositionsDe._(_root);
}

// Path: auth
class _TranslationsAuthDe implements TranslationsAuthEn {
	_TranslationsAuthDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Als Gast fortfahren';
	@override String signInFailed({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodeDe implements TranslationsReferralCodeEn {
	_TranslationsReferralCodeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => '8-stelligen Code eingeben';
	@override String get applying => 'Code wird angewendet...';
	@override late final _TranslationsReferralCodeSuccessDe success = _TranslationsReferralCodeSuccessDe._(_root);
	@override late final _TranslationsReferralCodeErrorsDe errors = _TranslationsReferralCodeErrorsDe._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsDe implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get english => 'Englisch';
	@override String get german => 'Deutsch';
	@override String get italian => 'Italienisch';
	@override String get french => 'Französisch';
	@override String get japanese => 'Japanisch';
	@override String get spanish => 'Spanisch';
	@override String get russian => 'Russisch';
	@override String get turkish => 'Türkisch';
	@override String get korean => 'Koreanisch';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portugiesisch';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1De implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Umfang der Dienstleistung';
	@override String get content => 'Yogiface bietet Benutzern ein geführtes Gesichtsyoga- und Übungserlebnis. Die Anwendung umfasst:';
	@override List<String> get items => [
		'Gesichtsyoga- und Übungsanleitungen',
		'Tägliche und wöchentliche Übungsroutinen',
		'Gezielte Empfehlungen für bestimmte Gesichtsbereiche',
		'Anpassbare Pläne und Fortschrittsverfolgung',
	];
	@override String get note => 'Die bereitgestellten Inhalte stellen keine professionelle, medizinische oder ästhetische Beratung, Diagnose oder Behandlung dar.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2De implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Nutzungsbedingungen';
	@override List<String> get items => [
		'Sie müssen mindestens 13 Jahre alt sein.',
		'Sie müssen genaue und aktuelle Kontoinformationen angeben.',
		'Sie erkennen an, dass die Übungen kein medizinischer Service sind.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3De implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Verbotene Nutzung';
	@override List<String> get items => [
		'Nutzung der App für illegale Aktivitäten.',
		'Verkauf, Vervielfältigung oder Verbreitung von Inhalten ohne Genehmigung.',
		'Unbefugter Zugriff, Hacking oder Reverse-Engineering-Versuche.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4De implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Konto und Mitgliedschaft';
	@override String get content => 'Sie sind für die Sicherheit Ihres Kontos verantwortlich. Yogiface behält sich das Recht vor, Konten bei Nutzung entgegen den Bedingungen zu sperren oder zu schließen.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5De implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Premium und kostenpflichtige Dienste';
	@override List<String> get items => [
		'Die Preisgestaltung basiert auf den Richtlinien von App Store und Google Play.',
		'Abonnements können sich automatisch verlängern; Kündigungen erfolgen über die Store-Einstellungen.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6De implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Haftungsausschluss';
	@override String get content => 'Benutzer führen Übungen auf eigene Verantwortung durch. Bei gesundheitlichen Problemen sollten Benutzer einen Arzt konsultieren. Die App sollte nicht zur Diagnose oder Behandlung verwendet werden.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7De implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Geistiges Eigentum';
	@override String get content => 'Design, Software, Bilder und Übungsinhalte gehören Yogiface. Unbefugtes Kopieren oder Ändern des Quellcodes ist verboten.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12De implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Anwendbares Recht';
	@override String get content => 'Diese Bedingungen unterliegen den Gesetzen der Republik Türkei. Die Zentralgerichte von Istanbul haben die Zuständigkeit für Streitigkeiten.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13De implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Kontakt';
	@override String get email => '📩 E-Mail: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1De implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Was sind Cookies?';
	@override String get content => 'Cookies sind kleine Datendateien, die auf Ihrem Gerät platziert werden. Sie helfen uns zu verstehen, wie Sie die App nutzen, und machen Ihr Erlebnis reibungsloser. Cookies enthalten nicht direkt Ihre Identität; sie fungieren als digitale Helfer, die sich Ihre Präferenzen und Nutzungsgewohnheiten merken.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2De implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Welche Cookies verwenden wir?';
	@override late final _TranslationsCookiesPolicySection2EssentialDe essential = _TranslationsCookiesPolicySection2EssentialDe._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceDe performance = _TranslationsCookiesPolicySection2PerformanceDe._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationDe personalization = _TranslationsCookiesPolicySection2PersonalizationDe._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingDe marketing = _TranslationsCookiesPolicySection2MarketingDe._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3De implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Warum verwenden wir Cookies?';
	@override List<String> get items => [
		'Um sicherzustellen, dass die App schnell und reibungslos läuft',
		'Um wiederholte Aktionen zu reduzieren, indem Benutzerpräferenzen gespeichert werden',
		'Um das Erlebnis persönlicher und nützlicher zu gestalten',
		'Um die App durch Analyse von Nutzungsdaten zu verbessern',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4De implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cookies von Drittanbietern';
	@override String get content => 'Einige Cookies können von Drittanbieter-Partnern platziert werden, die Analyse- und Werbedienste bereitstellen. Diese unterliegen den eigenen Datenschutz- und Cookie-Richtlinien der Anbieter.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5De implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookie-Kontrolle und -Verwaltung';
	@override String get content => 'Sie können Cookies über Geräteeinstellungen, App-Berechtigungen oder Systemeinstellungen verwalten. Das Deaktivieren notwendiger Cookies kann dazu führen, dass Teile der App nicht richtig funktionieren.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6De implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Verwendung von Daten';
	@override String get content => 'Über Cookies erhaltene Daten werden, wenn sie als personenbezogene Daten qualifiziert sind, im rechtlichen Rahmen gemäß der Datenschutzrichtlinie verarbeitet.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7De implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Richtlinien-Updates';
	@override String get content => 'Diese Richtlinie kann je nach technologischen und rechtlichen Änderungen aktualisiert werden. Die aktuelle Version tritt in Kraft, sobald sie veröffentlicht wird.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8De implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Kontakt';
	@override String get email => '📩 E-Mail: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1De implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Erfasste Informationen';
	@override late final _TranslationsPrivacyPolicySection1Sub1De sub1 = _TranslationsPrivacyPolicySection1Sub1De._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2De sub2 = _TranslationsPrivacyPolicySection1Sub2De._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2De implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Zwecke der Datennutzung';
	@override List<String> get items => [
		'Um den ununterbrochenen Betrieb der App sicherzustellen',
		'Um das Gesichtsyoga-Erlebnis zu personalisieren und zu optimieren',
		'Um Fehlererkennungen und Leistungsanalysen durchzuführen',
		'Um auf Benutzeranforderungen und Support-Anfragen zu reagieren',
	];
	@override String get note => 'Wichtig: Benutzerdaten werden niemals an Dritte verkauft.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3De implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Datenspeicherung';
	@override List<String> get items => [
		'Daten werden gespeichert, solange das Benutzerkonto aktiv ist.',
		'Wenn ein Konto gelöscht wird, werden personenbezogene Daten unwiderruflich entfernt.',
		'Support-Aufzeichnungen werden maximal 12 Monate nach Abschluss aufbewahrt.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4De implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Datenweitergabe';
	@override String get content => 'Ihre Daten werden nur bei gesetzlichen Anforderungen (offizielle Anfragen), Dienstleistern (Cloud-Infrastruktur, Analytik) oder mit ausdrücklicher Zustimmung des Benutzers weitergegeben.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5De implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookies und Sicherheit';
	@override String get content => 'Yogiface kann Cookies zur Leistungs- und Erlebnisverbesserung verwenden. Ihre Daten werden durch SSL/TLS-Verschlüsselung und regelmäßige Sicherheitsüberprüfungen geschützt.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6De implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Benutzerrechte';
	@override String get content => 'Sie haben das Recht auf Zugriff, Berichtigung, Löschung und Einschränkung der Datenverarbeitung.';
	@override String get contact => 'Für Anfragen:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8De implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Datenschutz für Kinder';
	@override String get content => 'Yogiface ist nicht für Personen unter 13 Jahren bestimmt. Alle von dieser Altersgruppe erfassten Daten werden sofort gelöscht, wenn sie erkannt werden.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10De implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Kontakt';
	@override String get email => '📩 E-Mail: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsDe implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1De q1 = _TranslationsFaqQuestionsQ1De._(_root);
	@override late final _TranslationsFaqQuestionsQ2De q2 = _TranslationsFaqQuestionsQ2De._(_root);
	@override late final _TranslationsFaqQuestionsQ3De q3 = _TranslationsFaqQuestionsQ3De._(_root);
	@override late final _TranslationsFaqQuestionsQ4De q4 = _TranslationsFaqQuestionsQ4De._(_root);
	@override late final _TranslationsFaqQuestionsQ5De q5 = _TranslationsFaqQuestionsQ5De._(_root);
	@override late final _TranslationsFaqQuestionsQ6De q6 = _TranslationsFaqQuestionsQ6De._(_root);
	@override late final _TranslationsFaqQuestionsQ7De q7 = _TranslationsFaqQuestionsQ7De._(_root);
	@override late final _TranslationsFaqQuestionsQ8De q8 = _TranslationsFaqQuestionsQ8De._(_root);
	@override late final _TranslationsFaqQuestionsQ9De q9 = _TranslationsFaqQuestionsQ9De._(_root);
	@override late final _TranslationsFaqQuestionsQ10De q10 = _TranslationsFaqQuestionsQ10De._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1De implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Formen Sie Ihr Gesicht auf natürliche Weise';
	@override String get description => 'Trainieren Sie Ihre Gesichtsmuskulatur mit nur wenigen Minuten täglicher Gesichtsübungen. Erstellen Sie eine natürliche, ästhetische und nicht-invasive Schönheitsroutine.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2De implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalisierter Übungsplan mit KI';
	@override String get description => 'KI analysiert Ihre Gesichtsmerkmale, bestimmt Ihre Bedürfnisse und empfiehlt auf Sie zugeschnittene Übungen. Sie verfolgt, welche Muskeln mehr Arbeit benötigen.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3De implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sichtbare Ergebnisse';
	@override String get description => 'Bei regelmäßiger Anwendung werden Gesichtskonturen definierter, die Durchblutung verbessert sich und die Haut erscheint lebendiger. Kleine Schritte jeden Tag bringen große Veränderungen.';
}

// Path: profile.sections
class _TranslationsProfileSectionsDe implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'KONTOEINSTELLUNGEN';
	@override String get supportAndOther => 'SUPPORT & SONSTIGES';
}

// Path: profile.menu
class _TranslationsProfileMenuDe implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Profil bearbeiten';
	@override String get notifications => 'Benachrichtigungen';
	@override String get premium => 'Premium';
	@override String get favoriteExercises => 'Lieblingsübungen';
	@override String get appLanguage => 'App-Sprache';
	@override String get shareWithFriends => 'Mit Freunden teilen';
	@override String get enterInviteCode => 'Einladungscode eingeben';
	@override String get rateUs => 'Bewerten Sie uns';
	@override String get faq => 'FAQ';
	@override String get logout => 'Abmelden';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogDe implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sie sind dabei, sich abzumelden';
	@override String get message => 'Bis bald! Wir werden Ihre Atemübungen weiter verfolgen.';
	@override String get logoutButton => 'Abmelden';
	@override String get cancelButton => 'Abbrechen';
}

// Path: home.personalized
class _TranslationsHomePersonalizedDe implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalisierter\nGesichtsanalyse\nBericht';
	@override String get description => 'Bitte analysieren Sie Ihre Haut,\num herauszufinden, welcher Typ sie ist.';
	@override String get button => 'Jetzt ausprobieren';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanDe implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Premium-Plan';
	@override String get description => 'Schalten Sie Ihren KI-Chatbot frei &\nerhalten Sie alle Premium-Funktionen';
	@override String get button => 'Premium erhalten';
	@override late final _TranslationsHomePremiumPlanDialogDe dialog = _TranslationsHomePremiumPlanDialogDe._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsDe implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Schnellaktionen';
	@override String get programTitle => 'Ihr persönliches Programm';
	@override String get programSubtitle => 'Für Ihr bestes Aussehen\nin 30 Tagen';
	@override String get button => 'Loslegen';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseDe implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Heutige Übung';
	@override String get recommended => 'Empfohlene Routine';
	@override String get forToday => 'für heute';
}

// Path: home.courses
class _TranslationsHomeCoursesDe implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherDe foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherDe._(_root);
	@override late final _TranslationsHomeCoursesVMoveDe vMove = _TranslationsHomeCoursesVMoveDe._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterDe cheekLifter = _TranslationsHomeCoursesCheekLifterDe._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsDe implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningDe naturalIroning = _TranslationsHomeBenefitsNaturalIroningDe._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectDe botoxEffect = _TranslationsHomeBenefitsBotoxEffectDe._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefDe stressRelief = _TranslationsHomeBenefitsStressReliefDe._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceDe radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceDe._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingDe dePuffing = _TranslationsHomeBenefitsDePuffingDe._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsDe implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1De instruction1 = _TranslationsCourseDetailInstructionsInstruction1De._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2De instruction2 = _TranslationsCourseDetailInstructionsInstruction2De._(_root);
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingDe implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wird analysiert';
	@override String get description => 'Ihre einzigartigen Merkmale werden analysiert';
	@override String get detail => 'Hauttextur, Muskeltonus und Fokusbereich für Ihre personalisierte Routine werden erkannt.';
	@override String get aiEngineWorking => 'KI-ENGINE ARBEITET';
}

// Path: facialScan.result
class _TranslationsFacialScanResultDe implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ihre Analyse ist fertig!';
	@override String get subtitle => 'Wir haben eine Routine basierend auf Ihren Ergebnissen erstellt.';
	@override String get skinType => 'HAUTTYP';
	@override String get primaryGoal => 'HAUPTZIEL';
	@override String get recommended => 'Für Sie empfohlen';
	@override String get back => 'Zurück';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsDe implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get front => 'Positionieren Sie Ihr Gesicht im Rahmen';
	@override String get left => 'Drehen Sie Ihren Kopf nach links';
	@override String get right => 'Drehen Sie Ihren Kopf nach rechts';
	@override String get lighting => 'Stellen Sie sicher, dass Sie sich in einer gut beleuchteten Umgebung befinden, um bessere Ergebnisse zu erzielen';
	@override String get tapToCapture => 'Tippen Sie auf die Kamera-Schaltfläche, um ein Foto aufzunehmen';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsDe implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'Kameraberechtigung ist erforderlich, um Fotos aufzunehmen.';
	@override String get cameraPermissionRequired => 'Kameraberechtigung erforderlich';
	@override String get cameraPermissionMessage => 'Kameraberechtigung ist für das Gesichtsscannen erforderlich. Bitte aktivieren Sie sie in den App-Einstellungen.';
	@override String get openSettings => 'Einstellungen öffnen';
	@override String get cancel => 'Abbrechen';
	@override String get noFaceDetected => 'Kein Gesicht erkannt. Bitte versuchen Sie es erneut.';
	@override String get captureFailed => 'Bild konnte nicht aufgenommen werden. Bitte versuchen Sie es erneut.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsDe implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get front => 'VORNE';
	@override String get left => 'LINKS';
	@override String get right => 'RECHTS';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessDe implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erfolg!';
	@override String get message => 'Empfehlungscode erfolgreich angewendet! Sowohl du als auch dein Freund haben 1 Woche Premium erhalten.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsDe implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodeDe missingCode = _TranslationsReferralCodeErrorsMissingCodeDe._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatDe invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatDe._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedDe alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedDe._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralDe selfReferral = _TranslationsReferralCodeErrorsSelfReferralDe._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundDe codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundDe._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorDe genericError = _TranslationsReferralCodeErrorsGenericErrorDe._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialDe implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unbedingt erforderliche Cookies';
	@override String get content => 'Erforderlich für grundlegende App-Funktionen. Sie unterstützen Kernprozesse wie Sitzungsverwaltung, Sicherheit und grundlegende Navigation.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceDe implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Leistungs- und Analyse-Cookies';
	@override String get content => 'Hilft uns zu verstehen, welche Bereiche am häufigsten genutzt werden und welche Abschnitte verbessert werden müssen.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationDe implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Personalisierungs-Cookies';
	@override String get content => 'Bietet ein persönlicheres Erlebnis, indem Einstellungen wie Sprache, Theme und Übungspräferenzen gespeichert werden.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingDe implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Marketing- und Werbe-Cookies';
	@override String get content => 'Kann verwendet werden, um Inhalte und Werbeaktionen bereitzustellen, die besser zu Ihren Interessen passen, und funktioniert manchmal mit Drittanbieterdiensten.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1De implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Vom Benutzer bereitgestellte Daten';
	@override List<String> get items => [
		'Name, Spitzname oder Profilinformationen',
		'E-Mail-Adresse (für Registrierung, Kauf und Support)',
		'Übungspläne, Präferenzen und Personalisierungseinstellungen',
		'Feedback, Anfragen und Support-Nachrichten',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2De implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Automatisch erfasste Daten';
	@override List<String> get items => [
		'Gerätetyp, Betriebssystem und technische Informationen',
		'Ungefähre Standortdaten (Stadt-/Länderebene)',
		'Nutzungsinformationen wie Sitzungsdauer und Bildschirminteraktionen',
		'Leistungs-, Fehler- und Absturzprotokolle',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1De implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Was ist YogiFace?';
	@override String get answer => 'YogiFace ist eine KI-gestützte persönliche Pflege-App, die Gesichtsyoga-Übungen anbietet, um das Hautbild durch Training der Gesichtsmuskulatur zu verbessern.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2De implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Funktioniert die App wirklich?';
	@override String get answer => 'Ja. Gesichtsyoga aktiviert die Gesichtsmuskulatur, um die Hautfestigkeit zu erhöhen, die Durchblutung zu beschleunigen und bei regelmäßiger Anwendung ein jugendlicheres Aussehen zu verleihen.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3De implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Was macht die künstliche Intelligenz hier?';
	@override String get answer => 'YogiFace analysiert Gesichtsmerkmale, identifiziert Zielbereiche und erstellt einen personalisierten Übungsplan. Auf diese Weise wird jede Bewegung entsprechend den persönlichen Bedürfnissen optimiert.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4De implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Wie viel Zeit muss ich jeden Tag aufwenden?';
	@override String get answer => 'Nur 5-10 Minuten pro Tag sind ausreichend. Bei regelmäßiger Praxis beginnen sichtbare Veränderungen innerhalb weniger Wochen.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5De implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Wann werde ich Ergebnisse sehen?';
	@override String get answer => 'Bei regelmäßiger Anwendung ist eine Verbesserung des Hauttons innerhalb von 2-3 Wochen sichtbar, und Gesichtszüge werden innerhalb von 4-6 Wochen definierter. Die Ergebnisse können von Person zu Person variieren.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6De implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Funktioniert es bei Problemen wie Doppelkinn oder Erschlaffung?';
	@override String get answer => 'Ja. YogiFace bietet gezielte Übungen für die Kieferlinie, Wangenmuskulatur und den Halsbereich. Bei regelmäßiger Durchführung sorgen diese Übungen für eine deutliche Straffung in diesen Bereichen.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7De implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Woher weiß ich, ob ich die Bewegungen richtig mache?';
	@override String get answer => 'Die App verwendet KI, um Ihren Gesichtswinkel, Ausdruck und Bewegungsmuster zu analysieren; sie benachrichtigt Sie über falsche Punkte.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8De implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Ist es für alle Altersgruppen geeignet?';
	@override String get answer => 'Ja. Gesichtsyoga ist eine nicht-invasive natürliche Methode. Jeder kann es von jungem Alter an sicher praktizieren.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9De implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Ist YogiFace kostenlos?';
	@override String get answer => 'Grundübungen sind kostenlos. Persönliche Programme, erweiterte Gesichtsanalyse und spezielle KI-Empfehlungen sind im Premium-Paket enthalten.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10De implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get question => 'Können Menschen, die sich einer kosmetischen Operation unterzogen haben, es verwenden?';
	@override String get answer => 'Viele Benutzer verwenden es sicher, aber es wird empfohlen, während der postoperativen Erholungsphase einen Arzt zu konsultieren.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogDe implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funktion nicht verfügbar';
	@override String get message => 'Diese Funktion ist derzeit nicht verfügbar.';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherDe implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Der Stirnglätter';
	@override String get description => 'Diese Bewegung löst Spannungen in den Stirnmuskeln und angesammelten Stirnrunzeln...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveDe implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Die "V"-Bewegung';
	@override String get description => 'Stärkt die empfindliche Haut um die Augen, hebt hängende Augenlider und löscht Zeichen der Müdigkeit.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterDe implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Der Wangenheber';
	@override String get description => 'Hebt die Wangenmuskeln (Zygomaticus), die am anfälligsten für die Schwerkraft sind, und stellt das Gesichtsoval wieder her.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningDe implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Natürliches Glätten:';
	@override String get description => 'Öffnet horizontale Linien auf der Stirn und verhindert deren Vertiefung.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectDe implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Botox-Effekt';
	@override String get description => 'Entspannt angespannte Muskeln und bricht die Gewohnheit des Stirnrunzelns.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefDe implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stressabbau';
	@override String get description => 'Lindert angesammelten Stress auf der Stirn und lindert Kopfschmerzen.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceDe implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Strahlendes Aussehen';
	@override String get description => 'Fördert die Durchblutung, um der Haut ein Leuchten zu verleihen.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingDe implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Entpuffung';
	@override String get description => 'Reduziert Gesichtsschwellungen durch seine lymphatische Drainage-Wirkung.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1De implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Waschen Sie Ihre Hände und Ihr Gesicht';
	@override String get description => 'Eine saubere Haut ermöglicht eine effektivere Massage.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2De implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2De._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gesichtsöl oder Feuchtigkeitscreme auftragen';
	@override String get description => 'Gleiten Sie sanft, ohne Ihre Haut zu ziehen.';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodeDe implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodeDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code erforderlich';
	@override String get message => 'Bitte gib einen Empfehlungscode ein, um fortzufahren.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatDe implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültiges Format';
	@override String get message => 'Der Empfehlungscode muss genau 8 Zeichen lang sein.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedDe implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bereits verwendet';
	@override String get message => 'Du hast bereits einen Empfehlungscode verwendet. Jeder Benutzer kann nur einen Code verwenden.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralDe implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ungültiger Code';
	@override String get message => 'Du kannst deinen eigenen Einladungscode nicht verwenden. Bitte verwende einen Code von einem Freund.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundDe implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code nicht gefunden';
	@override String get message => 'Der eingegebene Empfehlungscode existiert nicht. Bitte überprüfe ihn und versuche es erneut.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorDe implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fehler';
	@override String get message => 'Beim Anwenden des Empfehlungscodes ist ein Fehler aufgetreten. Bitte versuche es erneut.';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Willkommen ${name}',
			'welcome2' => 'Willkommen',
			'get_started' => 'Loslegen',
			'next' => 'Weiter',
			'back' => 'Zurück',
			'skip' => 'Überspringen',
			'logintext' => 'Ich freue mich, Sie zu sehen. Sie können dort weitermachen, wo Sie aufgehört haben, indem Sie sich in Ihr Konto einloggen.',
			'termOfService.text1' => 'Durch die Anmeldung bei Swipe stimmen Sie unseren ',
			'termOfService.link1' => 'Nutzungsbedingungen',
			'termOfService.text2' => ' zu. Erfahren Sie, wie wir Ihre Daten in unserer ',
			'termOfService.link2' => 'Datenschutzrichtlinie',
			'termOfService.text3' => ' und ',
			'termOfService.link3' => 'Cookie-Richtlinie',
			'termOfService.text4' => ' verarbeiten',
			'cookies' => 'Cookie-Richtlinie',
			'privacy' => 'Datenschutzrichtlinie',
			'termsOfService.title' => 'Yogiface – Nutzungsbedingungen',
			'termsOfService.lastUpdated' => 'Zuletzt aktualisiert: 2025',
			'termsOfService.principle' => 'Yogiface ist eine Wellness-Anwendung, die Gesichtsyoga-Übungen und geführte Inhalte zur Unterstützung der Gesichtsmuskulatur bietet. Die Anwendung bietet keine medizinischen, klinischen, ästhetischen oder professionellen Gesundheitsdienste.',
			'termsOfService.intro' => 'Diese Nutzungsbedingungen ("Bedingungen") enthalten die Regeln für Ihre Nutzung der Yogiface-Mobilanwendung ("Anwendung"). Durch die Nutzung der Anwendung stimmen Sie diesen Bedingungen zu. Wenn Sie den Bedingungen nicht zustimmen, sollten Sie die Anwendung nicht nutzen.',
			'termsOfService.section1.title' => '1. Umfang der Dienstleistung',
			'termsOfService.section1.content' => 'Yogiface bietet Benutzern ein geführtes Gesichtsyoga- und Übungserlebnis. Die Anwendung umfasst:',
			'termsOfService.section1.items.0' => 'Gesichtsyoga- und Übungsanleitungen',
			'termsOfService.section1.items.1' => 'Tägliche und wöchentliche Übungsroutinen',
			'termsOfService.section1.items.2' => 'Gezielte Empfehlungen für bestimmte Gesichtsbereiche',
			'termsOfService.section1.items.3' => 'Anpassbare Pläne und Fortschrittsverfolgung',
			'termsOfService.section1.note' => 'Die bereitgestellten Inhalte stellen keine professionelle, medizinische oder ästhetische Beratung, Diagnose oder Behandlung dar.',
			'termsOfService.section2.title' => '2. Nutzungsbedingungen',
			'termsOfService.section2.items.0' => 'Sie müssen mindestens 13 Jahre alt sein.',
			'termsOfService.section2.items.1' => 'Sie müssen genaue und aktuelle Kontoinformationen angeben.',
			'termsOfService.section2.items.2' => 'Sie erkennen an, dass die Übungen kein medizinischer Service sind.',
			'termsOfService.section3.title' => '3. Verbotene Nutzung',
			'termsOfService.section3.items.0' => 'Nutzung der App für illegale Aktivitäten.',
			'termsOfService.section3.items.1' => 'Verkauf, Vervielfältigung oder Verbreitung von Inhalten ohne Genehmigung.',
			'termsOfService.section3.items.2' => 'Unbefugter Zugriff, Hacking oder Reverse-Engineering-Versuche.',
			'termsOfService.section4.title' => '4. Konto und Mitgliedschaft',
			'termsOfService.section4.content' => 'Sie sind für die Sicherheit Ihres Kontos verantwortlich. Yogiface behält sich das Recht vor, Konten bei Nutzung entgegen den Bedingungen zu sperren oder zu schließen.',
			'termsOfService.section5.title' => '5. Premium und kostenpflichtige Dienste',
			'termsOfService.section5.items.0' => 'Die Preisgestaltung basiert auf den Richtlinien von App Store und Google Play.',
			'termsOfService.section5.items.1' => 'Abonnements können sich automatisch verlängern; Kündigungen erfolgen über die Store-Einstellungen.',
			'termsOfService.section6.title' => '6. Haftungsausschluss',
			'termsOfService.section6.content' => 'Benutzer führen Übungen auf eigene Verantwortung durch. Bei gesundheitlichen Problemen sollten Benutzer einen Arzt konsultieren. Die App sollte nicht zur Diagnose oder Behandlung verwendet werden.',
			'termsOfService.section7.title' => '7. Geistiges Eigentum',
			'termsOfService.section7.content' => 'Design, Software, Bilder und Übungsinhalte gehören Yogiface. Unbefugtes Kopieren oder Ändern des Quellcodes ist verboten.',
			'termsOfService.section12.title' => '12. Anwendbares Recht',
			'termsOfService.section12.content' => 'Diese Bedingungen unterliegen den Gesetzen der Republik Türkei. Die Zentralgerichte von Istanbul haben die Zuständigkeit für Streitigkeiten.',
			'termsOfService.section13.title' => '13. Kontakt',
			'termsOfService.section13.email' => '📩 E-Mail: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Cookie-Richtlinie',
			'cookiesPolicy.lastUpdated' => 'Zuletzt aktualisiert: 2025',
			'cookiesPolicy.intro' => 'Willkommen bei Yogiface! Bei jedem Besuch der App verwenden wir digitale Helfer (Cookies), um Ihr Erlebnis zu verbessern und zu personalisieren. Diese Richtlinie erklärt, wie Sie Ihre Präferenzen verwalten können.',
			'cookiesPolicy.section1.title' => '1. Was sind Cookies?',
			'cookiesPolicy.section1.content' => 'Cookies sind kleine Datendateien, die auf Ihrem Gerät platziert werden. Sie helfen uns zu verstehen, wie Sie die App nutzen, und machen Ihr Erlebnis reibungsloser. Cookies enthalten nicht direkt Ihre Identität; sie fungieren als digitale Helfer, die sich Ihre Präferenzen und Nutzungsgewohnheiten merken.',
			'cookiesPolicy.section2.title' => '2. Welche Cookies verwenden wir?',
			'cookiesPolicy.section2.essential.title' => 'Unbedingt erforderliche Cookies',
			'cookiesPolicy.section2.essential.content' => 'Erforderlich für grundlegende App-Funktionen. Sie unterstützen Kernprozesse wie Sitzungsverwaltung, Sicherheit und grundlegende Navigation.',
			'cookiesPolicy.section2.performance.title' => 'Leistungs- und Analyse-Cookies',
			'cookiesPolicy.section2.performance.content' => 'Hilft uns zu verstehen, welche Bereiche am häufigsten genutzt werden und welche Abschnitte verbessert werden müssen.',
			'cookiesPolicy.section2.personalization.title' => 'Personalisierungs-Cookies',
			'cookiesPolicy.section2.personalization.content' => 'Bietet ein persönlicheres Erlebnis, indem Einstellungen wie Sprache, Theme und Übungspräferenzen gespeichert werden.',
			'cookiesPolicy.section2.marketing.title' => 'Marketing- und Werbe-Cookies',
			'cookiesPolicy.section2.marketing.content' => 'Kann verwendet werden, um Inhalte und Werbeaktionen bereitzustellen, die besser zu Ihren Interessen passen, und funktioniert manchmal mit Drittanbieterdiensten.',
			'cookiesPolicy.section3.title' => '3. Warum verwenden wir Cookies?',
			'cookiesPolicy.section3.items.0' => 'Um sicherzustellen, dass die App schnell und reibungslos läuft',
			'cookiesPolicy.section3.items.1' => 'Um wiederholte Aktionen zu reduzieren, indem Benutzerpräferenzen gespeichert werden',
			'cookiesPolicy.section3.items.2' => 'Um das Erlebnis persönlicher und nützlicher zu gestalten',
			'cookiesPolicy.section3.items.3' => 'Um die App durch Analyse von Nutzungsdaten zu verbessern',
			'cookiesPolicy.section4.title' => '4. Cookies von Drittanbietern',
			'cookiesPolicy.section4.content' => 'Einige Cookies können von Drittanbieter-Partnern platziert werden, die Analyse- und Werbedienste bereitstellen. Diese unterliegen den eigenen Datenschutz- und Cookie-Richtlinien der Anbieter.',
			'cookiesPolicy.section5.title' => '5. Cookie-Kontrolle und -Verwaltung',
			'cookiesPolicy.section5.content' => 'Sie können Cookies über Geräteeinstellungen, App-Berechtigungen oder Systemeinstellungen verwalten. Das Deaktivieren notwendiger Cookies kann dazu führen, dass Teile der App nicht richtig funktionieren.',
			'cookiesPolicy.section6.title' => '6. Verwendung von Daten',
			'cookiesPolicy.section6.content' => 'Über Cookies erhaltene Daten werden, wenn sie als personenbezogene Daten qualifiziert sind, im rechtlichen Rahmen gemäß der Datenschutzrichtlinie verarbeitet.',
			'cookiesPolicy.section7.title' => '7. Richtlinien-Updates',
			'cookiesPolicy.section7.content' => 'Diese Richtlinie kann je nach technologischen und rechtlichen Änderungen aktualisiert werden. Die aktuelle Version tritt in Kraft, sobald sie veröffentlicht wird.',
			'cookiesPolicy.section8.title' => '8. Kontakt',
			'cookiesPolicy.section8.email' => '📩 E-Mail: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Datenschutzrichtlinie',
			'privacyPolicy.lastUpdated' => 'Zuletzt aktualisiert: 2025',
			'privacyPolicy.intro' => 'Diese Datenschutzrichtlinie erklärt die Grundsätze bezüglich der Erfassung, Nutzung, Speicherung und des Schutzes personenbezogener Daten aller Benutzer, die die Yogiface-Mobilanwendung ("App") nutzen. Durch die Nutzung der App akzeptieren Sie diese Richtlinie.',
			'privacyPolicy.principle' => 'Yogiface übernimmt Benutzerdatenschutz und Datensicherheit als Grundprinzip. Alle personenbezogenen Daten werden in Übereinstimmung mit der DSGVO und den einschlägigen Rechtsvorschriften verarbeitet.',
			'privacyPolicy.section1.title' => '1. Erfasste Informationen',
			'privacyPolicy.section1.sub1.title' => '1.1. Vom Benutzer bereitgestellte Daten',
			'privacyPolicy.section1.sub1.items.0' => 'Name, Spitzname oder Profilinformationen',
			'privacyPolicy.section1.sub1.items.1' => 'E-Mail-Adresse (für Registrierung, Kauf und Support)',
			'privacyPolicy.section1.sub1.items.2' => 'Übungspläne, Präferenzen und Personalisierungseinstellungen',
			'privacyPolicy.section1.sub1.items.3' => 'Feedback, Anfragen und Support-Nachrichten',
			'privacyPolicy.section1.sub2.title' => '1.2. Automatisch erfasste Daten',
			'privacyPolicy.section1.sub2.items.0' => 'Gerätetyp, Betriebssystem und technische Informationen',
			'privacyPolicy.section1.sub2.items.1' => 'Ungefähre Standortdaten (Stadt-/Länderebene)',
			'privacyPolicy.section1.sub2.items.2' => 'Nutzungsinformationen wie Sitzungsdauer und Bildschirminteraktionen',
			'privacyPolicy.section1.sub2.items.3' => 'Leistungs-, Fehler- und Absturzprotokolle',
			'privacyPolicy.section2.title' => '2. Zwecke der Datennutzung',
			'privacyPolicy.section2.items.0' => 'Um den ununterbrochenen Betrieb der App sicherzustellen',
			'privacyPolicy.section2.items.1' => 'Um das Gesichtsyoga-Erlebnis zu personalisieren und zu optimieren',
			'privacyPolicy.section2.items.2' => 'Um Fehlererkennungen und Leistungsanalysen durchzuführen',
			'privacyPolicy.section2.items.3' => 'Um auf Benutzeranforderungen und Support-Anfragen zu reagieren',
			'privacyPolicy.section2.note' => 'Wichtig: Benutzerdaten werden niemals an Dritte verkauft.',
			'privacyPolicy.section3.title' => '3. Datenspeicherung',
			'privacyPolicy.section3.items.0' => 'Daten werden gespeichert, solange das Benutzerkonto aktiv ist.',
			'privacyPolicy.section3.items.1' => 'Wenn ein Konto gelöscht wird, werden personenbezogene Daten unwiderruflich entfernt.',
			'privacyPolicy.section3.items.2' => 'Support-Aufzeichnungen werden maximal 12 Monate nach Abschluss aufbewahrt.',
			'privacyPolicy.section4.title' => '4. Datenweitergabe',
			'privacyPolicy.section4.content' => 'Ihre Daten werden nur bei gesetzlichen Anforderungen (offizielle Anfragen), Dienstleistern (Cloud-Infrastruktur, Analytik) oder mit ausdrücklicher Zustimmung des Benutzers weitergegeben.',
			'privacyPolicy.section5.title' => '5. Cookies und Sicherheit',
			'privacyPolicy.section5.content' => 'Yogiface kann Cookies zur Leistungs- und Erlebnisverbesserung verwenden. Ihre Daten werden durch SSL/TLS-Verschlüsselung und regelmäßige Sicherheitsüberprüfungen geschützt.',
			'privacyPolicy.section6.title' => '6. Benutzerrechte',
			'privacyPolicy.section6.content' => 'Sie haben das Recht auf Zugriff, Berichtigung, Löschung und Einschränkung der Datenverarbeitung.',
			'privacyPolicy.section6.contact' => 'Für Anfragen:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Datenschutz für Kinder',
			'privacyPolicy.section8.content' => 'Yogiface ist nicht für Personen unter 13 Jahren bestimmt. Alle von dieser Altersgruppe erfassten Daten werden sofort gelöscht, wenn sie erkannt werden.',
			'privacyPolicy.section10.title' => '10. Kontakt',
			'privacyPolicy.section10.email' => '📩 E-Mail: support@fly-work.com',
			'onboarding.basicInformation' => 'GRUNDINFORMATIONEN',
			'onboarding.target' => 'ZIEL',
			'onboarding.habits' => 'GEWOHNHEITEN',
			'onboarding.step' => 'SCHRITT',
			'onboarding.of' => 'VON',
			'onboarding.tellUsAboutYourself' => 'Erzählen Sie uns von sich',
			'onboarding.shortBioDescription' => 'Eine kurze Biografie hilft anderen, Sie wirklich kennenzulernen. Halten Sie es lustig und authentisch',
			'onboarding.enterYourFullname' => 'Geben Sie Ihren vollständigen Namen ein',
			'onboarding.fullName' => 'Vollständiger Name',
			'onboarding.male' => 'Männlich',
			'onboarding.female' => 'Weiblich',
			'onboarding.dontWantToMention' => 'Ich möchte es nicht erwähnen',
			'onboarding.whatIsMainObjective' => 'Was ist das Hauptziel?',
			'onboarding.reduceWrinkles' => 'Falten reduzieren',
			'onboarding.tightenSkin' => 'Haut straffen',
			'onboarding.liftDroopyEyelids' => 'Hängende Augenlider anheben',
			'onboarding.eliminateDoubleChin' => 'Doppelkinn beseitigen',
			'onboarding.brightenSkinTone' => 'Hautton aufhellen',
			'onboarding.allOfTheAbove' => 'Alle oben genannten',
			'onboarding.whichAreaToImprove' => 'Welchen Bereich möchten Sie verbessern?',
			'onboarding.forehead' => 'Stirn',
			'onboarding.eyes' => 'Augen',
			'onboarding.nose' => 'Nase',
			'onboarding.cheeks' => 'Wangen',
			'onboarding.lips' => 'Lippen',
			'onboarding.jawline' => 'Kieferlinie',
			'onboarding.neck' => 'Hals',
			'onboarding.fullface' => 'Ganzes Gesicht',
			'onboarding.whatFaceShapeAiming' => 'Welche Gesichtsform streben Sie an?',
			'onboarding.heart' => 'Herz',
			'onboarding.oval' => 'Oval',
			'onboarding.square' => 'Quadratisch',
			'onboarding.round' => 'Rund',
			'onboarding.diamond' => 'Diamant',
			'onboarding.whatIsYourSkinType' => 'Was ist Ihr Hauttyp?',
			'onboarding.normal' => 'Normal',
			'onboarding.oily' => 'Ölig',
			'onboarding.dry' => 'Trocken',
			'onboarding.combination' => 'Kombination',
			'onboarding.sensitive' => 'Empfindlich',
			'onboarding.whichOfThemDoYouHave' => 'Welche davon haben Sie?',
			'onboarding.acneAndPimples' => 'Akne und Pickel',
			'onboarding.redness' => 'Rötungen',
			'onboarding.swelling' => 'Schwellungen',
			'onboarding.wrinkles' => 'Falten',
			'onboarding.neckLines' => 'Halslinien',
			'onboarding.howOftenWearMakeup' => 'Wie oft tragen Sie Make-up?',
			'onboarding.everyDay' => 'Jeden Tag',
			'onboarding.fewDaysAWeek' => 'Ein paar Tage pro Woche',
			'onboarding.occasionally' => 'Gelegentlich',
			'onboarding.never' => 'Nie',
			'onboarding.haveYouHadBotox' => 'Hatten Sie Botox?',
			'onboarding.yes' => 'Ja',
			'onboarding.no' => 'Nein',
			'onboarding.creatingPersonalizedProfile' => 'Ihr personalisiertes Profil wird erstellt',
			'onboarding.tailoringExperience' => 'Wir passen Ihr Erlebnis basierend auf Ihren Präferenzen an...',
			'onboarding.gender' => 'Geschlecht',
			'onboarding.age' => 'Alter',
			'onboarding.weight' => 'Gewicht',
			'onboarding.height' => 'Größe',
			'onboarding.matchingPersonalities' => 'PERSÖNLICHKEITEN ABGLEICHEN',
			'pressBackAgainToExit' => 'Drücken Sie erneut zurück, um zu beenden',
			'addedToFavoritesTitle' => 'Übung erfolgreich zu Favoriten hinzugefügt!',
			'removedFromFavoritesTitle' => 'Übung erfolgreich aus Favoriten entfernt!',
			'removedFromFavorites' => 'Sie können auf andere Übungen, die Sie hinzufügen möchten, über Kurse zugreifen',
			'faq.title' => 'Häufig gestellte Fragen',
			'faq.questions.q1.question' => 'Was ist YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace ist eine KI-gestützte persönliche Pflege-App, die Gesichtsyoga-Übungen anbietet, um das Hautbild durch Training der Gesichtsmuskulatur zu verbessern.',
			'faq.questions.q2.question' => 'Funktioniert die App wirklich?',
			'faq.questions.q2.answer' => 'Ja. Gesichtsyoga aktiviert die Gesichtsmuskulatur, um die Hautfestigkeit zu erhöhen, die Durchblutung zu beschleunigen und bei regelmäßiger Anwendung ein jugendlicheres Aussehen zu verleihen.',
			'faq.questions.q3.question' => 'Was macht die künstliche Intelligenz hier?',
			'faq.questions.q3.answer' => 'YogiFace analysiert Gesichtsmerkmale, identifiziert Zielbereiche und erstellt einen personalisierten Übungsplan. Auf diese Weise wird jede Bewegung entsprechend den persönlichen Bedürfnissen optimiert.',
			'faq.questions.q4.question' => 'Wie viel Zeit muss ich jeden Tag aufwenden?',
			'faq.questions.q4.answer' => 'Nur 5-10 Minuten pro Tag sind ausreichend. Bei regelmäßiger Praxis beginnen sichtbare Veränderungen innerhalb weniger Wochen.',
			'faq.questions.q5.question' => 'Wann werde ich Ergebnisse sehen?',
			'faq.questions.q5.answer' => 'Bei regelmäßiger Anwendung ist eine Verbesserung des Hauttons innerhalb von 2-3 Wochen sichtbar, und Gesichtszüge werden innerhalb von 4-6 Wochen definierter. Die Ergebnisse können von Person zu Person variieren.',
			'faq.questions.q6.question' => 'Funktioniert es bei Problemen wie Doppelkinn oder Erschlaffung?',
			'faq.questions.q6.answer' => 'Ja. YogiFace bietet gezielte Übungen für die Kieferlinie, Wangenmuskulatur und den Halsbereich. Bei regelmäßiger Durchführung sorgen diese Übungen für eine deutliche Straffung in diesen Bereichen.',
			'faq.questions.q7.question' => 'Woher weiß ich, ob ich die Bewegungen richtig mache?',
			'faq.questions.q7.answer' => 'Die App verwendet KI, um Ihren Gesichtswinkel, Ausdruck und Bewegungsmuster zu analysieren; sie benachrichtigt Sie über falsche Punkte.',
			'faq.questions.q8.question' => 'Ist es für alle Altersgruppen geeignet?',
			'faq.questions.q8.answer' => 'Ja. Gesichtsyoga ist eine nicht-invasive natürliche Methode. Jeder kann es von jungem Alter an sicher praktizieren.',
			'faq.questions.q9.question' => 'Ist YogiFace kostenlos?',
			'faq.questions.q9.answer' => 'Grundübungen sind kostenlos. Persönliche Programme, erweiterte Gesichtsanalyse und spezielle KI-Empfehlungen sind im Premium-Paket enthalten.',
			'faq.questions.q10.question' => 'Können Menschen, die sich einer kosmetischen Operation unterzogen haben, es verwenden?',
			'faq.questions.q10.answer' => 'Viele Benutzer verwenden es sicher, aber es wird empfohlen, während der postoperativen Erholungsphase einen Arzt zu konsultieren.',
			'full_face' => 'Ganzes Gesicht / Allgemeine Revitalisierung',
			'eye_area' => 'Augen & Augenbereich',
			'nose_area' => 'Nase & Nasenbereich',
			'cheeks_mid_face' => 'Wangen & Mittelgesicht',
			'lip_area' => 'Lippen & Mundbereich',
			'jawline_chin' => 'Kieferlinie, Kinn & Doppelkinn',
			'forehead_brow' => 'Stirn & Augenbrauenbereich',
			'neck_decollete' => 'Hals & Dekolleté',
			'good_morning' => 'Guten Morgen',
			'good_afternoon' => 'Guten Tag',
			'good_evening' => 'Guten Abend',
			'splash.screen1.title' => 'Formen Sie Ihr Gesicht auf natürliche Weise',
			'splash.screen1.description' => 'Trainieren Sie Ihre Gesichtsmuskulatur mit nur wenigen Minuten täglicher Gesichtsübungen. Erstellen Sie eine natürliche, ästhetische und nicht-invasive Schönheitsroutine.',
			'splash.screen2.title' => 'Personalisierter Übungsplan mit KI',
			'splash.screen2.description' => 'KI analysiert Ihre Gesichtsmerkmale, bestimmt Ihre Bedürfnisse und empfiehlt auf Sie zugeschnittene Übungen. Sie verfolgt, welche Muskeln mehr Arbeit benötigen.',
			'splash.screen3.title' => 'Sichtbare Ergebnisse',
			'splash.screen3.description' => 'Bei regelmäßiger Anwendung werden Gesichtskonturen definierter, die Durchblutung verbessert sich und die Haut erscheint lebendiger. Kleine Schritte jeden Tag bringen große Veränderungen.',
			'profile.title' => 'Profil',
			'profile.freeVersion' => 'Kostenlose Version',
			'profile.error' => 'Fehler',
			'profile.sections.accountSettings' => 'KONTOEINSTELLUNGEN',
			'profile.sections.supportAndOther' => 'SUPPORT & SONSTIGES',
			'profile.menu.editProfile' => 'Profil bearbeiten',
			'profile.menu.notifications' => 'Benachrichtigungen',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Lieblingsübungen',
			'profile.menu.appLanguage' => 'App-Sprache',
			'profile.menu.shareWithFriends' => 'Mit Freunden teilen',
			'profile.menu.enterInviteCode' => 'Einladungscode eingeben',
			'profile.menu.rateUs' => 'Bewerten Sie uns',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Abmelden',
			'profile.manage' => 'VERWALTEN',
			'profile.logoutDialog.title' => 'Sie sind dabei, sich abzumelden',
			'profile.logoutDialog.message' => 'Bis bald! Wir werden Ihre Atemübungen weiter verfolgen.',
			'profile.logoutDialog.logoutButton' => 'Abmelden',
			'profile.logoutDialog.cancelButton' => 'Abbrechen',
			'home.premium' => 'Premium!',
			'home.focusAreas' => 'Fokusbereiche',
			'home.popularCourses' => 'Beliebte Kurse',
			'home.seeMore' => 'Mehr sehen',
			'home.personalized.title' => 'Personalisierter\nGesichtsanalyse\nBericht',
			'home.personalized.description' => 'Bitte analysieren Sie Ihre Haut,\num herauszufinden, welcher Typ sie ist.',
			'home.personalized.button' => 'Jetzt ausprobieren',
			'home.premiumPlan.title' => 'Premium-Plan',
			'home.premiumPlan.description' => 'Schalten Sie Ihren KI-Chatbot frei &\nerhalten Sie alle Premium-Funktionen',
			'home.premiumPlan.button' => 'Premium erhalten',
			'home.premiumPlan.dialog.title' => 'Funktion nicht verfügbar',
			'home.premiumPlan.dialog.message' => 'Diese Funktion ist derzeit nicht verfügbar.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Schnellaktionen',
			'home.quickActions.programTitle' => 'Ihr persönliches Programm',
			'home.quickActions.programSubtitle' => 'Für Ihr bestes Aussehen\nin 30 Tagen',
			'home.quickActions.button' => 'Loslegen',
			'home.todaysExercise.title' => 'Heutige Übung',
			'home.todaysExercise.recommended' => 'Empfohlene Routine',
			'home.todaysExercise.forToday' => 'für heute',
			'home.courses.foreheadSmoother.title' => 'Der Stirnglätter',
			'home.courses.foreheadSmoother.description' => 'Diese Bewegung löst Spannungen in den Stirnmuskeln und angesammelten Stirnrunzeln...',
			'home.courses.vMove.title' => 'Die "V"-Bewegung',
			'home.courses.vMove.description' => 'Stärkt die empfindliche Haut um die Augen, hebt hängende Augenlider und löscht Zeichen der Müdigkeit.',
			'home.courses.cheekLifter.title' => 'Der Wangenheber',
			'home.courses.cheekLifter.description' => 'Hebt die Wangenmuskeln (Zygomaticus), die am anfälligsten für die Schwerkraft sind, und stellt das Gesichtsoval wieder her.',
			'home.benefits.naturalIroning.title' => 'Natürliches Glätten:',
			'home.benefits.naturalIroning.description' => 'Öffnet horizontale Linien auf der Stirn und verhindert deren Vertiefung.',
			'home.benefits.botoxEffect.title' => 'Botox-Effekt',
			'home.benefits.botoxEffect.description' => 'Entspannt angespannte Muskeln und bricht die Gewohnheit des Stirnrunzelns.',
			'home.benefits.stressRelief.title' => 'Stressabbau',
			'home.benefits.stressRelief.description' => 'Lindert angesammelten Stress auf der Stirn und lindert Kopfschmerzen.',
			'home.benefits.radiantAppearance.title' => 'Strahlendes Aussehen',
			'home.benefits.radiantAppearance.description' => 'Fördert die Durchblutung, um der Haut ein Leuchten zu verleihen.',
			'home.benefits.dePuffing.title' => 'Entpuffung',
			'home.benefits.dePuffing.description' => 'Reduziert Gesichtsschwellungen durch seine lymphatische Drainage-Wirkung.',
			'courseDetail.title' => 'Kursdetails',
			'courseDetail.getStarted' => 'Loslegen',
			'courseDetail.noExercisesFound' => 'Keine Übungen für diese Kategorie gefunden',
			'courseDetail.instructions.instruction1.title' => 'Waschen Sie Ihre Hände und Ihr Gesicht',
			'courseDetail.instructions.instruction1.description' => 'Eine saubere Haut ermöglicht eine effektivere Massage.',
			'courseDetail.instructions.instruction2.title' => 'Gesichtsöl oder Feuchtigkeitscreme auftragen',
			'courseDetail.instructions.instruction2.description' => 'Gleiten Sie sanft, ohne Ihre Haut zu ziehen.',
			'courses.title' => 'Alle Kurse',
			'courses.error' => 'Fehler beim Laden der Übungen',
			'courses.personalCoursesTitle' => 'Persönliche Kurse',
			'personalProgram.dailyGoalTitle' => 'Setzen Sie Ihr tägliches Ziel',
			'personalProgram.dailyGoalDescription' => 'Wählen Sie ein Tempo, das zu Ihrem Zeitplan passt',
			'personalProgram.personalizing' => 'Ihr Plan wird personalisiert...',
			'personalProgram.readyMessage' => 'Ihr persönliches 30-Tage-Gesichtsyoga-Programm ist bereit✨',
			'personalProgram.minutes' => 'Min',
			'editProfile.title' => 'Profil bearbeiten',
			'editProfile.changePhoto' => 'Foto ändern',
			'editProfile.fullName' => 'Vollständiger Name',
			'editProfile.email' => 'E-Mail',
			'editProfile.age' => 'Alter',
			'editProfile.gender' => 'Geschlecht',
			'editProfile.skinType' => 'Hauttyp',
			'editProfile.focusArea' => 'Fokusbereich',
			'editProfile.focusAreaHint' => 'Stirn, Augen, Nase, Mund, Wangen...',
			'editProfile.save' => 'Speichern',
			'editProfile.saving' => 'Wird gespeichert...',
			'editProfile.updateSuccess' => 'Profil erfolgreich aktualisiert',
			'editProfile.updateError' => 'Beim Aktualisieren des Profils ist ein Fehler aufgetreten',
			'editProfile.deleteAccount' => 'Konto löschen',
			'notifications.title' => 'Benachrichtigungen',
			'notifications.emptyTitle' => 'Noch keine Benachrichtigungen',
			'notifications.emptyDescription' => 'Wir benachrichtigen Sie, wenn es ein wichtiges Update zu Ihrer Lernreise gibt.',
			'notifications.premiumBannerTitle' => 'Verpassen Sie nicht die\nPremium-Vorteile!',
			'notifications.premiumBannerDescription' => 'Nutzen Sie die Möglichkeiten als Premium-Abonnent.',
			'notifications.sample1Title' => 'Ihre tägliche Meditation ist bereit!',
			'notifications.sample1Description' => 'Finden Sie Ihre Ruhe für den Tag',
			'notifications.sample1Time' => 'Vor 15 Min.',
			'notifications.sample2Title' => 'Neue Übung: Ozeanatmung',
			'notifications.sample2Description' => 'Eine neue Atemtechnik wurde hinzugefügt',
			'notifications.sample2Time' => 'Vor 1 Stunde',
			'notifications.sample3Title' => 'Sie haben eine 7-Tage-Serie erreicht!',
			'notifications.sample3Description' => 'Machen Sie weiter so mit Ihrem Wohlbefinden',
			'notifications.sample3Time' => 'Gestern',
			'share.title' => 'Mit Freunden teilen',
			'share.mainTitle' => 'Teilen Sie den Frieden',
			'share.descriptionPart1' => 'Laden Sie Ihre Freunde ein, gemeinsam zu atmen.\nFür jede Einladung erhalten Sie beide ',
			'share.descriptionPart2' => '1 Woche Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'IHR EMPFEHLUNGSCODE',
			'share.codeCopied' => 'Code kopiert!',
			'share.copyCode' => 'Code kopieren',
			'facialScan.title' => 'Gesichtsscan',
			'facialScan.step' => ({required Object current, required Object total}) => 'SCHRITT ${current} VON ${total}',
			'facialScan.getStarted' => 'Loslegen',
			'facialScan.analyzing.title' => 'Wird analysiert',
			'facialScan.analyzing.description' => 'Ihre einzigartigen Merkmale werden analysiert',
			'facialScan.analyzing.detail' => 'Hauttextur, Muskeltonus und Fokusbereich für Ihre personalisierte Routine werden erkannt.',
			'facialScan.analyzing.aiEngineWorking' => 'KI-ENGINE ARBEITET',
			'facialScan.result.title' => 'Ihre Analyse ist fertig!',
			'facialScan.result.subtitle' => 'Wir haben eine Routine basierend auf Ihren Ergebnissen erstellt.',
			'facialScan.result.skinType' => 'HAUTTYP',
			'facialScan.result.primaryGoal' => 'HAUPTZIEL',
			'facialScan.result.recommended' => 'Für Sie empfohlen',
			'facialScan.result.back' => 'Zurück',
			'facialScan.instructions.front' => 'Positionieren Sie Ihr Gesicht im Rahmen',
			'facialScan.instructions.left' => 'Drehen Sie Ihren Kopf nach links',
			'facialScan.instructions.right' => 'Drehen Sie Ihren Kopf nach rechts',
			'facialScan.instructions.lighting' => 'Stellen Sie sicher, dass Sie sich in einer gut beleuchteten Umgebung befinden, um bessere Ergebnisse zu erzielen',
			'facialScan.instructions.tapToCapture' => 'Tippen Sie auf die Kamera-Schaltfläche, um ein Foto aufzunehmen',
			'facialScan.errors.cameraPermission' => 'Kameraberechtigung ist erforderlich, um Fotos aufzunehmen.',
			'facialScan.errors.cameraPermissionRequired' => 'Kameraberechtigung erforderlich',
			'facialScan.errors.cameraPermissionMessage' => 'Kameraberechtigung ist für das Gesichtsscannen erforderlich. Bitte aktivieren Sie sie in den App-Einstellungen.',
			'facialScan.errors.openSettings' => 'Einstellungen öffnen',
			'facialScan.errors.cancel' => 'Abbrechen',
			'facialScan.errors.noFaceDetected' => 'Kein Gesicht erkannt. Bitte versuchen Sie es erneut.',
			'facialScan.errors.captureFailed' => 'Bild konnte nicht aufgenommen werden. Bitte versuchen Sie es erneut.',
			'facialScan.positions.front' => 'VORNE',
			'facialScan.positions.left' => 'LINKS',
			'facialScan.positions.right' => 'RECHTS',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Als Gast fortfahren',
			'auth.signInFailed' => ({required Object error}) => 'Anmeldung fehlgeschlagen: ${error}',
			'benefits' => 'Vorteile',
			'minutes' => 'Min',
			'cancel' => 'Abbrechen',
			'beforeBegin' => 'Bevor Sie beginnen',
			'rest' => 'Ruhe',
			'courseCompleted' => 'Kurs abgeschlossen',
			'courseCompletedDescription' => 'Großartige Arbeit beim Abschluss der heutigen Sitzung.',
			'deleteAccount' => 'Konto löschen',
			'deleteDialogTitle' => 'Sind Sie sicher, dass Sie Ihr Konto löschen möchten?',
			'deleteDialogDescription' => 'Diese Aktion ist irreversibel und löscht dauerhaft alle Ihre Übungshistorie und Daten.',
			'deleteError' => 'Beim Löschen Ihres Kontos ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.',
			'favoriteExercises' => 'Lieblingsübungen',
			'noFavoritesInCategory' => 'Keine Favoriten in dieser Kategorie',
			'noFavoritesAdded' => 'Noch keine Favoriten hinzugefügt.',
			'favoriteExercisesDescription' => 'Um Ihre Lieblingsübungen festzulegen, können Sie die Übungen, die Ihnen gefallen, von der Seite Meine Übungen hinzufügen.',
			'enterInvitationCode' => 'Einladungscode eingeben',
			'bePartOfPeace' => 'Sei Teil des Friedens',
			'inviteFriends' => 'Gib den Einladungscode ein, den du von einem Freund erhalten hast.\nTippe ihn in das vorgesehene Feld',
			'twoDaysPremium' => '7 Tage Premium',
			'advantage' => '\num die Vorteile zu genießen.',
			'send' => 'Senden',
			'referralCode.inputPlaceholder' => '8-stelligen Code eingeben',
			'referralCode.applying' => 'Code wird angewendet...',
			'referralCode.success.title' => 'Erfolg!',
			'referralCode.success.message' => 'Empfehlungscode erfolgreich angewendet! Sowohl du als auch dein Freund haben 1 Woche Premium erhalten.',
			'referralCode.errors.missingCode.title' => 'Code erforderlich',
			'referralCode.errors.missingCode.message' => 'Bitte gib einen Empfehlungscode ein, um fortzufahren.',
			'referralCode.errors.invalidFormat.title' => 'Ungültiges Format',
			'referralCode.errors.invalidFormat.message' => 'Der Empfehlungscode muss genau 8 Zeichen lang sein.',
			'referralCode.errors.alreadyUsed.title' => 'Bereits verwendet',
			'referralCode.errors.alreadyUsed.message' => 'Du hast bereits einen Empfehlungscode verwendet. Jeder Benutzer kann nur einen Code verwenden.',
			'referralCode.errors.selfReferral.title' => 'Ungültiger Code',
			'referralCode.errors.selfReferral.message' => 'Du kannst deinen eigenen Einladungscode nicht verwenden. Bitte verwende einen Code von einem Freund.',
			'referralCode.errors.codeNotFound.title' => 'Code nicht gefunden',
			'referralCode.errors.codeNotFound.message' => 'Der eingegebene Empfehlungscode existiert nicht. Bitte überprüfe ihn und versuche es erneut.',
			'referralCode.errors.genericError.title' => 'Fehler',
			'referralCode.errors.genericError.message' => 'Beim Anwenden des Empfehlungscodes ist ein Fehler aufgetreten. Bitte versuche es erneut.',
			'deleteNotifications' => 'Benachrichtigungen löschen',
			'deleteNotificationsDescription' => 'Sind Sie sicher, dass Sie alle\nIhre Benachrichtigungen löschen möchten? Diese Aktion ist irreversibel und kann nicht rückgängig gemacht werden.',
			'deleteAll' => 'Alle löschen',
			'appLanguage' => 'App-Sprache',
			'selectLanguage' => 'Wählen Sie Ihre bevorzugte Sprache',
			'save' => 'Speichern',
			'languageOptions.english' => 'Englisch',
			'languageOptions.german' => 'Deutsch',
			'languageOptions.italian' => 'Italienisch',
			'languageOptions.french' => 'Französisch',
			'languageOptions.japanese' => 'Japanisch',
			'languageOptions.spanish' => 'Spanisch',
			'languageOptions.russian' => 'Russisch',
			'languageOptions.turkish' => 'Türkisch',
			'languageOptions.korean' => 'Koreanisch',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portugiesisch',
			_ => null,
		};
	}
}
