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
class TranslationsIt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Benvenuto ${name}';
	@override String get welcome2 => 'Benvenuto';
	@override String get get_started => 'Inizia';
	@override String get next => 'Avanti';
	@override String get back => 'Indietro';
	@override String get skip => 'Salta';
	@override String get logintext => 'Sono felice di vederti. Puoi continuare da dove hai lasciato accedendo al tuo account.';
	@override late final _TranslationsTermOfServiceIt termOfService = _TranslationsTermOfServiceIt._(_root);
	@override String get cookies => 'Informativa sui cookie';
	@override String get privacy => 'Informativa sulla privacy';
	@override late final _TranslationsTermsOfServiceIt termsOfService = _TranslationsTermsOfServiceIt._(_root);
	@override late final _TranslationsCookiesPolicyIt cookiesPolicy = _TranslationsCookiesPolicyIt._(_root);
	@override late final _TranslationsPrivacyPolicyIt privacyPolicy = _TranslationsPrivacyPolicyIt._(_root);
	@override late final _TranslationsOnboardingIt onboarding = _TranslationsOnboardingIt._(_root);
	@override String get pressBackAgainToExit => 'Premi di nuovo indietro per uscire';
	@override String get addedToFavoritesTitle => 'Esercizio aggiunto con successo ai preferiti!';
	@override String get removedFromFavoritesTitle => 'Esercizio rimosso con successo dai preferiti!';
	@override String get removedFromFavorites => 'Puoi accedere ad altri esercizi che desideri aggiungere dai corsi';
	@override late final _TranslationsFaqIt faq = _TranslationsFaqIt._(_root);
	@override String get full_face => 'Viso completo / Rivitalizzazione generale';
	@override String get eye_area => 'Occhi e area oculare';
	@override String get nose_area => 'Naso e area nasale';
	@override String get cheeks_mid_face => 'Guance e viso centrale';
	@override String get lip_area => 'Labbra e area della bocca';
	@override String get jawline_chin => 'Linea della mascella, mento e doppio mento';
	@override String get forehead_brow => 'Fronte e area delle sopracciglia';
	@override String get neck_decollete => 'Collo e décolleté';
	@override String get good_morning => 'Buongiorno';
	@override String get good_afternoon => 'Buon pomeriggio';
	@override String get good_evening => 'Buonasera';
	@override late final _TranslationsSplashIt splash = _TranslationsSplashIt._(_root);
	@override late final _TranslationsProfileIt profile = _TranslationsProfileIt._(_root);
	@override late final _TranslationsHomeIt home = _TranslationsHomeIt._(_root);
	@override late final _TranslationsCourseDetailIt courseDetail = _TranslationsCourseDetailIt._(_root);
	@override late final _TranslationsCoursesIt courses = _TranslationsCoursesIt._(_root);
	@override late final _TranslationsPersonalProgramIt personalProgram = _TranslationsPersonalProgramIt._(_root);
	@override late final _TranslationsEditProfileIt editProfile = _TranslationsEditProfileIt._(_root);
	@override late final _TranslationsNotificationsIt notifications = _TranslationsNotificationsIt._(_root);
	@override late final _TranslationsShareIt share = _TranslationsShareIt._(_root);
	@override late final _TranslationsFacialScanIt facialScan = _TranslationsFacialScanIt._(_root);
	@override late final _TranslationsAuthIt auth = _TranslationsAuthIt._(_root);
	@override String get benefits => 'Vantaggi';
	@override String get minutes => 'Min';
	@override String get cancel => 'Annulla';
	@override String get beforeBegin => 'Prima di iniziare';
	@override String get rest => 'Riposo';
	@override String get courseCompleted => 'Corso completato';
	@override String get courseCompletedDescription => 'Ottimo lavoro per aver completato la sessione di oggi.';
	@override String get deleteAccount => 'Elimina account';
	@override String get deleteDialogTitle => 'Sei sicuro di voler eliminare il tuo account?';
	@override String get deleteDialogDescription => 'Questa azione è irreversibile ed eliminerà permanentemente tutta la cronologia degli esercizi e i dati.';
	@override String get deleteError => 'Si è verificato un errore durante l\'eliminazione del tuo account. Riprova.';
	@override String get favoriteExercises => 'Esercizi preferiti';
	@override String get noFavoritesInCategory => 'Nessun preferito in questa categoria';
	@override String get noFavoritesAdded => 'Nessun preferito aggiunto ancora.';
	@override String get favoriteExercisesDescription => 'Per impostare i tuoi esercizi preferiti, puoi aggiungere gli esercizi che ti piacciono dalla pagina I miei esercizi.';
	@override String get enterInvitationCode => 'Inserisci codice invito';
	@override String get bePartOfPeace => 'Fai parte della pace';
	@override String get inviteFriends => 'Inserisci il codice di invito che hai ricevuto da un amico.\nDigitalo nel campo designato';
	@override String get twoDaysPremium => '2 giorni Premium';
	@override String get advantage => '\nper godere dei suoi vantaggi.';
	@override String get send => 'Invia';
	@override String get deleteNotifications => 'Elimina notifiche';
	@override String get deleteNotificationsDescription => 'Sei sicuro di voler eliminare tutte\nle tue notifiche? Questa azione è irreversibile e non può essere annullata.';
	@override String get deleteAll => 'Elimina tutto';
	@override String get appLanguage => 'Lingua dell\'app';
	@override String get selectLanguage => 'Seleziona la tua lingua preferita';
	@override String get save => 'Salva';
	@override late final _TranslationsLanguageOptionsIt languageOptions = _TranslationsLanguageOptionsIt._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceIt implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Iscrivendoti a swipe, accetti i nostri ';
	@override String get link1 => 'Termini di servizio';
	@override String get text2 => '. Scopri come elaboriamo i tuoi dati nella nostra ';
	@override String get link2 => 'Informativa sulla privacy';
	@override String get text3 => ' e ';
	@override String get link3 => 'Informativa sui cookie';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServiceIt implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Termini di servizio';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get principle => 'Yogiface è un\'applicazione di benessere che fornisce esercizi di yoga facciale e contenuti guidati volti a supportare i muscoli facciali. L\'applicazione non fornisce servizi medici, clinici, estetici o sanitari professionali.';
	@override String get intro => 'Questi Termini di servizio ("Termini") contengono le regole applicabili all\'uso dell\'applicazione mobile Yogiface ("Applicazione"). Utilizzando l\'Applicazione, accetti questi Termini. Se non accetti i Termini, non dovresti utilizzare l\'Applicazione.';
	@override late final _TranslationsTermsOfServiceSection1It section1 = _TranslationsTermsOfServiceSection1It._(_root);
	@override late final _TranslationsTermsOfServiceSection2It section2 = _TranslationsTermsOfServiceSection2It._(_root);
	@override late final _TranslationsTermsOfServiceSection3It section3 = _TranslationsTermsOfServiceSection3It._(_root);
	@override late final _TranslationsTermsOfServiceSection4It section4 = _TranslationsTermsOfServiceSection4It._(_root);
	@override late final _TranslationsTermsOfServiceSection5It section5 = _TranslationsTermsOfServiceSection5It._(_root);
	@override late final _TranslationsTermsOfServiceSection6It section6 = _TranslationsTermsOfServiceSection6It._(_root);
	@override late final _TranslationsTermsOfServiceSection7It section7 = _TranslationsTermsOfServiceSection7It._(_root);
	@override late final _TranslationsTermsOfServiceSection12It section12 = _TranslationsTermsOfServiceSection12It._(_root);
	@override late final _TranslationsTermsOfServiceSection13It section13 = _TranslationsTermsOfServiceSection13It._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyIt implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Informativa sui cookie';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get intro => 'Benvenuto su Yogiface! Ogni volta che visiti l\'app, utilizziamo assistenti digitali (cookie) per migliorare e personalizzare la tua esperienza. Questa politica spiega come puoi gestire le tue preferenze.';
	@override late final _TranslationsCookiesPolicySection1It section1 = _TranslationsCookiesPolicySection1It._(_root);
	@override late final _TranslationsCookiesPolicySection2It section2 = _TranslationsCookiesPolicySection2It._(_root);
	@override late final _TranslationsCookiesPolicySection3It section3 = _TranslationsCookiesPolicySection3It._(_root);
	@override late final _TranslationsCookiesPolicySection4It section4 = _TranslationsCookiesPolicySection4It._(_root);
	@override late final _TranslationsCookiesPolicySection5It section5 = _TranslationsCookiesPolicySection5It._(_root);
	@override late final _TranslationsCookiesPolicySection6It section6 = _TranslationsCookiesPolicySection6It._(_root);
	@override late final _TranslationsCookiesPolicySection7It section7 = _TranslationsCookiesPolicySection7It._(_root);
	@override late final _TranslationsCookiesPolicySection8It section8 = _TranslationsCookiesPolicySection8It._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyIt implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Informativa sulla privacy';
	@override String get lastUpdated => 'Ultimo aggiornamento: 2025';
	@override String get intro => 'Questa Informativa sulla privacy spiega i principi relativi alla raccolta, all\'uso, alla conservazione e alla protezione dei dati personali di tutti gli utenti che utilizzano l\'applicazione mobile Yogiface ("App"). Utilizzando l\'App, accetti questa politica.';
	@override String get principle => 'Yogiface adotta la privacy degli utenti e la sicurezza dei dati come principio fondamentale. Tutti i dati personali vengono elaborati in conformità con il GDPR e la legislazione pertinente.';
	@override late final _TranslationsPrivacyPolicySection1It section1 = _TranslationsPrivacyPolicySection1It._(_root);
	@override late final _TranslationsPrivacyPolicySection2It section2 = _TranslationsPrivacyPolicySection2It._(_root);
	@override late final _TranslationsPrivacyPolicySection3It section3 = _TranslationsPrivacyPolicySection3It._(_root);
	@override late final _TranslationsPrivacyPolicySection4It section4 = _TranslationsPrivacyPolicySection4It._(_root);
	@override late final _TranslationsPrivacyPolicySection5It section5 = _TranslationsPrivacyPolicySection5It._(_root);
	@override late final _TranslationsPrivacyPolicySection6It section6 = _TranslationsPrivacyPolicySection6It._(_root);
	@override late final _TranslationsPrivacyPolicySection8It section8 = _TranslationsPrivacyPolicySection8It._(_root);
	@override late final _TranslationsPrivacyPolicySection10It section10 = _TranslationsPrivacyPolicySection10It._(_root);
}

// Path: onboarding
class _TranslationsOnboardingIt implements TranslationsOnboardingEn {
	_TranslationsOnboardingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'INFORMAZIONI DI BASE';
	@override String get target => 'OBIETTIVO';
	@override String get habits => 'ABITUDINI';
	@override String get step => 'PASSO';
	@override String get of => 'DI';
	@override String get tellUsAboutYourself => 'Parlaci di te';
	@override String get shortBioDescription => 'Una breve biografia aiuta gli altri a conoscerti davvero. Mantienila divertente e genuina';
	@override String get enterYourFullname => 'Inserisci il tuo nome completo';
	@override String get fullName => 'Nome completo';
	@override String get male => 'Maschio';
	@override String get female => 'Femmina';
	@override String get dontWantToMention => 'Non voglio menzionarlo';
	@override String get whatIsMainObjective => 'Qual è l\'obiettivo principale?';
	@override String get reduceWrinkles => 'Ridurre le rughe';
	@override String get tightenSkin => 'Rassodare la pelle';
	@override String get liftDroopyEyelids => 'Sollevare le palpebre cadenti';
	@override String get eliminateDoubleChin => 'Eliminare il doppio mento';
	@override String get brightenSkinTone => 'Illuminare il tono della pelle';
	@override String get allOfTheAbove => 'Tutto quanto sopra';
	@override String get whichAreaToImprove => 'Quale area vorresti migliorare?';
	@override String get forehead => 'Fronte';
	@override String get eyes => 'Occhi';
	@override String get nose => 'Naso';
	@override String get cheeks => 'Guance';
	@override String get lips => 'Labbra';
	@override String get jawline => 'Linea della mascella';
	@override String get neck => 'Collo';
	@override String get fullface => 'Viso completo';
	@override String get whatFaceShapeAiming => 'Quale forma del viso stai cercando?';
	@override String get heart => 'Cuore';
	@override String get oval => 'Ovale';
	@override String get square => 'Quadrato';
	@override String get round => 'Rotondo';
	@override String get diamond => 'Diamante';
	@override String get whatIsYourSkinType => 'Qual è il tuo tipo di pelle?';
	@override String get normal => 'Normale';
	@override String get oily => 'Grassa';
	@override String get dry => 'Secca';
	@override String get combination => 'Mista';
	@override String get sensitive => 'Sensibile';
	@override String get whichOfThemDoYouHave => 'Quale di questi hai?';
	@override String get acneAndPimples => 'Acne e brufoli';
	@override String get redness => 'Rossore';
	@override String get swelling => 'Gonfiore';
	@override String get wrinkles => 'Rughe';
	@override String get neckLines => 'Linee del collo';
	@override String get howOftenWearMakeup => 'Quanto spesso ti trucchi?';
	@override String get everyDay => 'Ogni giorno';
	@override String get fewDaysAWeek => 'Alcuni giorni alla settimana';
	@override String get occasionally => 'Occasionalmente';
	@override String get never => 'Mai';
	@override String get haveYouHadBotox => 'Hai fatto il Botox?';
	@override String get yes => 'Sì';
	@override String get no => 'No';
	@override String get creatingPersonalizedProfile => 'Creazione del tuo profilo personalizzato';
	@override String get tailoringExperience => 'Stiamo personalizzando la tua esperienza in base alle tue preferenze...';
	@override String get gender => 'Genere';
	@override String get age => 'Età';
	@override String get weight => 'Peso';
	@override String get height => 'Altezza';
	@override String get matchingPersonalities => 'ABBINAMENTO PERSONALITÀ';
}

// Path: faq
class _TranslationsFaqIt implements TranslationsFaqEn {
	_TranslationsFaqIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Domande frequenti';
	@override late final _TranslationsFaqQuestionsIt questions = _TranslationsFaqQuestionsIt._(_root);
}

// Path: splash
class _TranslationsSplashIt implements TranslationsSplashEn {
	_TranslationsSplashIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1It screen1 = _TranslationsSplashScreen1It._(_root);
	@override late final _TranslationsSplashScreen2It screen2 = _TranslationsSplashScreen2It._(_root);
	@override late final _TranslationsSplashScreen3It screen3 = _TranslationsSplashScreen3It._(_root);
}

// Path: profile
class _TranslationsProfileIt implements TranslationsProfileEn {
	_TranslationsProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profilo';
	@override String get freeVersion => 'Versione gratuita';
	@override String get error => 'Errore';
	@override late final _TranslationsProfileSectionsIt sections = _TranslationsProfileSectionsIt._(_root);
	@override late final _TranslationsProfileMenuIt menu = _TranslationsProfileMenuIt._(_root);
	@override String get manage => 'GESTISCI';
	@override late final _TranslationsProfileLogoutDialogIt logoutDialog = _TranslationsProfileLogoutDialogIt._(_root);
}

// Path: home
class _TranslationsHomeIt implements TranslationsHomeEn {
	_TranslationsHomeIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get focusAreas => 'Aree di focus';
	@override String get popularCourses => 'Corsi popolari';
	@override String get seeMore => 'Vedi altro';
	@override late final _TranslationsHomePersonalizedIt personalized = _TranslationsHomePersonalizedIt._(_root);
	@override late final _TranslationsHomePremiumPlanIt premiumPlan = _TranslationsHomePremiumPlanIt._(_root);
	@override late final _TranslationsHomeQuickActionsIt quickActions = _TranslationsHomeQuickActionsIt._(_root);
	@override late final _TranslationsHomeTodaysExerciseIt todaysExercise = _TranslationsHomeTodaysExerciseIt._(_root);
	@override late final _TranslationsHomeCoursesIt courses = _TranslationsHomeCoursesIt._(_root);
	@override late final _TranslationsHomeBenefitsIt benefits = _TranslationsHomeBenefitsIt._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailIt implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Dettagli del corso';
	@override String get getStarted => 'Inizia';
	@override String get noExercisesFound => 'Nessun esercizio trovato per questa categoria';
	@override late final _TranslationsCourseDetailInstructionsIt instructions = _TranslationsCourseDetailInstructionsIt._(_root);
}

// Path: courses
class _TranslationsCoursesIt implements TranslationsCoursesEn {
	_TranslationsCoursesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tutti i corsi';
	@override String get error => 'Errore nel caricamento degli esercizi';
	@override String get personalCoursesTitle => 'Corsi personali';
}

// Path: personalProgram
class _TranslationsPersonalProgramIt implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Imposta il tuo obiettivo giornaliero';
	@override String get dailyGoalDescription => 'Scegli un ritmo che si adatta al tuo programma';
	@override String get personalizing => 'Personalizzazione del tuo piano...';
	@override String get readyMessage => 'Il tuo programma personale di yoga facciale di 30 giorni è pronto✨';
	@override String get minutes => 'Min';
}

// Path: editProfile
class _TranslationsEditProfileIt implements TranslationsEditProfileEn {
	_TranslationsEditProfileIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modifica profilo';
	@override String get changePhoto => 'Cambia foto';
	@override String get fullName => 'Nome completo';
	@override String get email => 'E-mail';
	@override String get age => 'Età';
	@override String get gender => 'Genere';
	@override String get skinType => 'Tipo di pelle';
	@override String get focusArea => 'Area di focus';
	@override String get focusAreaHint => 'Fronte, Occhi, Naso, Bocca, Guance...';
	@override String get save => 'Salva';
	@override String get saving => 'Salvataggio...';
	@override String get updateSuccess => 'Profilo aggiornato con successo';
	@override String get updateError => 'Si è verificato un errore durante l\'aggiornamento del profilo';
	@override String get deleteAccount => 'Elimina account';
}

// Path: notifications
class _TranslationsNotificationsIt implements TranslationsNotificationsEn {
	_TranslationsNotificationsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifiche';
	@override String get emptyTitle => 'Nessuna notifica ancora';
	@override String get emptyDescription => 'Ti avviseremo quando ci sarà un aggiornamento importante sul tuo percorso di apprendimento.';
	@override String get premiumBannerTitle => 'Non perdere i\nvantaggi Premium!';
	@override String get premiumBannerDescription => 'Approfitta delle opportunità come abbonato Premium.';
	@override String get sample1Title => 'La tua meditazione giornaliera è pronta!';
	@override String get sample1Description => 'Trova la tua calma per la giornata';
	@override String get sample1Time => '15 min fa';
	@override String get sample2Title => 'Nuovo esercizio: Respiro dell\'oceano';
	@override String get sample2Description => 'È stata aggiunta una nuova tecnica di respirazione';
	@override String get sample2Time => '1 ora fa';
	@override String get sample3Title => 'Hai raggiunto una serie di 7 giorni!';
	@override String get sample3Description => 'Continua così con il tuo benessere';
	@override String get sample3Time => 'Ieri';
}

// Path: share
class _TranslationsShareIt implements TranslationsShareEn {
	_TranslationsShareIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Condividi con gli amici';
	@override String get mainTitle => 'Condividi la pace';
	@override String get descriptionPart1 => 'Invita i tuoi amici a respirare insieme.\nPer ogni invito, entrambi ottenete ';
	@override String get descriptionPart2 => '1 settimana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'IL TUO CODICE DI RIFERIMENTO';
	@override String get codeCopied => 'Codice copiato!';
	@override String get copyCode => 'Copia codice';
}

// Path: facialScan
class _TranslationsFacialScanIt implements TranslationsFacialScanEn {
	_TranslationsFacialScanIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Scansione facciale';
	@override String step({required Object current, required Object total}) => 'PASSO ${current} DI ${total}';
	@override String get getStarted => 'Inizia';
	@override late final _TranslationsFacialScanAnalyzingIt analyzing = _TranslationsFacialScanAnalyzingIt._(_root);
	@override late final _TranslationsFacialScanResultIt result = _TranslationsFacialScanResultIt._(_root);
	@override late final _TranslationsFacialScanInstructionsIt instructions = _TranslationsFacialScanInstructionsIt._(_root);
	@override late final _TranslationsFacialScanErrorsIt errors = _TranslationsFacialScanErrorsIt._(_root);
	@override late final _TranslationsFacialScanPositionsIt positions = _TranslationsFacialScanPositionsIt._(_root);
}

// Path: auth
class _TranslationsAuthIt implements TranslationsAuthEn {
	_TranslationsAuthIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continua come ospite';
	@override String signInFailed({required Object error}) => 'Accesso non riuscito: ${error}';
}

// Path: languageOptions
class _TranslationsLanguageOptionsIt implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglese';
	@override String get german => 'Tedesco';
	@override String get italian => 'Italiano';
	@override String get french => 'Francese';
	@override String get japanese => 'Giapponese';
	@override String get spanish => 'Spagnolo';
	@override String get russian => 'Russo';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Portoghese';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1It implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Ambito del servizio';
	@override String get content => 'Yogiface offre agli utenti un\'esperienza guidata di yoga facciale ed esercizi. L\'applicazione include:';
	@override List<String> get items => [
		'Guide di yoga facciale ed esercizi',
		'Routine di esercizi giornaliere e settimanali',
		'Raccomandazioni mirate per aree facciali specifiche',
		'Piani personalizzabili e monitoraggio dei progressi',
	];
	@override String get note => 'Il contenuto fornito non costituisce consulenza, diagnosi o trattamento professionale, medico o estetico.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2It implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Condizioni d\'uso';
	@override List<String> get items => [
		'Devi avere almeno 13 anni.',
		'Devi fornire informazioni sull\'account accurate e aggiornate.',
		'Riconosci che gli esercizi non sono un servizio medico.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3It implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Usi vietati';
	@override List<String> get items => [
		'Utilizzare l\'app per attività illegali.',
		'Vendere, riprodurre o distribuire contenuti senza autorizzazione.',
		'Accesso non autorizzato, hacking o tentativi di reverse engineering.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4It implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Account e iscrizione';
	@override String get content => 'Sei responsabile della sicurezza del tuo account. Yogiface si riserva il diritto di sospendere o chiudere gli account in caso di utilizzo contrario ai Termini.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5It implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Servizi Premium e a pagamento';
	@override List<String> get items => [
		'I prezzi si basano sulle politiche di App Store e Google Play.',
		'Gli abbonamenti possono rinnovarsi automaticamente; le cancellazioni vengono effettuate tramite le impostazioni dello store.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6It implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Disclaimer';
	@override String get content => 'Gli utenti eseguono gli esercizi a proprio rischio. In caso di problemi di salute, gli utenti dovrebbero consultare un professionista sanitario. L\'app non deve essere utilizzata per diagnosi o trattamento.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7It implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Proprietà intellettuale';
	@override String get content => 'Design, software, immagini e contenuti degli esercizi appartengono a Yogiface. È vietata la copia non autorizzata o la modifica del codice sorgente.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12It implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Legge applicabile';
	@override String get content => 'Questi Termini sono regolati dalle leggi della Repubblica di Turchia. I tribunali centrali di Istanbul hanno giurisdizione sulle controversie.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13It implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Contatto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1It implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Cosa sono i cookie?';
	@override String get content => 'I cookie sono piccoli file di dati posizionati sul tuo dispositivo. Ci aiutano a capire come utilizzi l\'app e rendono la tua esperienza più fluida. I cookie non contengono direttamente la tua identità; fungono da assistenti digitali che ricordano le tue preferenze e abitudini di utilizzo.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2It implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Quali cookie utilizziamo?';
	@override late final _TranslationsCookiesPolicySection2EssentialIt essential = _TranslationsCookiesPolicySection2EssentialIt._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceIt performance = _TranslationsCookiesPolicySection2PerformanceIt._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationIt personalization = _TranslationsCookiesPolicySection2PersonalizationIt._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingIt marketing = _TranslationsCookiesPolicySection2MarketingIt._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3It implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Perché utilizziamo i cookie?';
	@override List<String> get items => [
		'Per garantire che l\'app funzioni in modo rapido e fluido',
		'Per ridurre le azioni ripetitive ricordando le preferenze dell\'utente',
		'Per rendere l\'esperienza più personale e utile',
		'Per migliorare l\'app analizzando i dati di utilizzo',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4It implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cookie di terze parti';
	@override String get content => 'Alcuni cookie possono essere posizionati da partner di terze parti che forniscono servizi analitici e pubblicitari. Questi sono soggetti alle politiche sulla privacy e sui cookie dei fornitori.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5It implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Controllo e gestione dei cookie';
	@override String get content => 'Puoi gestire i cookie tramite le impostazioni del dispositivo, le autorizzazioni dell\'app o le impostazioni di sistema. La disabilitazione dei cookie necessari può causare il malfunzionamento di parti dell\'app.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6It implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Uso dei dati';
	@override String get content => 'I dati ottenuti tramite cookie, se qualificati come dati personali, vengono elaborati nel quadro legale ai sensi dell\'Informativa sulla privacy.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7It implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Aggiornamenti della politica';
	@override String get content => 'Questa politica può essere aggiornata a seconda dei cambiamenti tecnologici e legali. La versione corrente diventa effettiva non appena viene pubblicata.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8It implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Contatto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1It implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Informazioni raccolte';
	@override late final _TranslationsPrivacyPolicySection1Sub1It sub1 = _TranslationsPrivacyPolicySection1Sub1It._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2It sub2 = _TranslationsPrivacyPolicySection1Sub2It._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2It implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Scopi di utilizzo dei dati';
	@override List<String> get items => [
		'Per garantire il funzionamento ininterrotto dell\'app',
		'Per personalizzare e ottimizzare l\'esperienza di yoga facciale',
		'Per eseguire rilevamento degli errori e analisi delle prestazioni',
		'Per rispondere alle richieste degli utenti e alle richieste di supporto',
	];
	@override String get note => 'Importante: i dati degli utenti non vengono mai venduti a terzi.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3It implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Conservazione dei dati';
	@override List<String> get items => [
		'I dati vengono conservati finché l\'account utente è attivo.',
		'Quando un account viene eliminato, i dati personali vengono rimossi in modo irreversibile.',
		'I record di supporto vengono conservati per un massimo di 12 mesi dopo il completamento.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4It implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Condivisione dei dati';
	@override String get content => 'I tuoi dati vengono condivisi solo in caso di requisiti legali (richieste ufficiali), fornitori di servizi (infrastruttura cloud, analisi) o con esplicito consenso dell\'utente.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5It implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookie e sicurezza';
	@override String get content => 'Yogiface può utilizzare cookie per migliorare le prestazioni e l\'esperienza. I tuoi dati sono protetti da crittografia SSL/TLS e controlli di sicurezza regolari.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6It implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Diritti dell\'utente';
	@override String get content => 'Hai il diritto di accedere, correggere, eliminare e limitare l\'elaborazione dei dati.';
	@override String get contact => 'Per richieste:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8It implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Privacy dei bambini';
	@override String get content => 'Yogiface non è destinato a persone di età inferiore a 13 anni. Tutti i dati raccolti da questa fascia di età verranno eliminati immediatamente se rilevati.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10It implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Contatto';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsIt implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1It q1 = _TranslationsFaqQuestionsQ1It._(_root);
	@override late final _TranslationsFaqQuestionsQ2It q2 = _TranslationsFaqQuestionsQ2It._(_root);
	@override late final _TranslationsFaqQuestionsQ3It q3 = _TranslationsFaqQuestionsQ3It._(_root);
	@override late final _TranslationsFaqQuestionsQ4It q4 = _TranslationsFaqQuestionsQ4It._(_root);
	@override late final _TranslationsFaqQuestionsQ5It q5 = _TranslationsFaqQuestionsQ5It._(_root);
	@override late final _TranslationsFaqQuestionsQ6It q6 = _TranslationsFaqQuestionsQ6It._(_root);
	@override late final _TranslationsFaqQuestionsQ7It q7 = _TranslationsFaqQuestionsQ7It._(_root);
	@override late final _TranslationsFaqQuestionsQ8It q8 = _TranslationsFaqQuestionsQ8It._(_root);
	@override late final _TranslationsFaqQuestionsQ9It q9 = _TranslationsFaqQuestionsQ9It._(_root);
	@override late final _TranslationsFaqQuestionsQ10It q10 = _TranslationsFaqQuestionsQ10It._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1It implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Modella il tuo viso naturalmente';
	@override String get description => 'Lavora i muscoli facciali con solo pochi minuti di esercizi facciali giornalieri. Crea una routine di bellezza naturale, estetica e non invasiva.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2It implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Piano di esercizi personalizzato con l\'IA';
	@override String get description => 'L\'IA analizza le tue caratteristiche facciali, determina le tue esigenze e raccomanda esercizi su misura per te. Tiene traccia di quali muscoli hanno bisogno di più lavoro.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3It implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Risultati visibili';
	@override String get description => 'Con un uso regolare, i contorni facciali diventano più definiti, la circolazione migliora e la pelle appare più vibrante. Piccoli passi ogni giorno portano grandi cambiamenti.';
}

// Path: profile.sections
class _TranslationsProfileSectionsIt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'IMPOSTAZIONI ACCOUNT';
	@override String get supportAndOther => 'SUPPORTO E ALTRO';
}

// Path: profile.menu
class _TranslationsProfileMenuIt implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Modifica profilo';
	@override String get notifications => 'Notifiche';
	@override String get premium => 'Premium';
	@override String get favoriteExercises => 'Esercizi preferiti';
	@override String get appLanguage => 'Lingua dell\'app';
	@override String get shareWithFriends => 'Condividi con gli amici';
	@override String get enterInviteCode => 'Inserisci codice invito';
	@override String get rateUs => 'Valutaci';
	@override String get faq => 'FAQ';
	@override String get logout => 'Esci';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogIt implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stai per uscire';
	@override String get message => 'Ci vediamo di nuovo! Continueremo a monitorare i tuoi esercizi di respirazione.';
	@override String get logoutButton => 'Esci';
	@override String get cancelButton => 'Annulla';
}

// Path: home.personalized
class _TranslationsHomePersonalizedIt implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rapporto di\nanalisi facciale\npersonalizzato';
	@override String get description => 'Analizza la tua pelle\nper scoprire che tipo è.';
	@override String get button => 'Prova ora';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanIt implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Piano Premium';
	@override String get description => 'Sblocca il tuo chatbot AI e\nottieni tutte le funzionalità premium';
	@override String get button => 'Ottieni Premium';
	@override late final _TranslationsHomePremiumPlanDialogIt dialog = _TranslationsHomePremiumPlanDialogIt._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsIt implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Azioni rapide';
	@override String get programTitle => 'Il tuo programma personale';
	@override String get programSubtitle => 'Per il tuo aspetto migliore\nin 30 giorni';
	@override String get button => 'Inizia';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExerciseIt implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExerciseIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esercizio di oggi';
	@override String get recommended => 'Routine consigliata';
	@override String get forToday => 'per oggi';
}

// Path: home.courses
class _TranslationsHomeCoursesIt implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherIt foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherIt._(_root);
	@override late final _TranslationsHomeCoursesVMoveIt vMove = _TranslationsHomeCoursesVMoveIt._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterIt cheekLifter = _TranslationsHomeCoursesCheekLifterIt._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsIt implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningIt naturalIroning = _TranslationsHomeBenefitsNaturalIroningIt._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectIt botoxEffect = _TranslationsHomeBenefitsBotoxEffectIt._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefIt stressRelief = _TranslationsHomeBenefitsStressReliefIt._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearanceIt radiantAppearance = _TranslationsHomeBenefitsRadiantAppearanceIt._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingIt dePuffing = _TranslationsHomeBenefitsDePuffingIt._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsIt implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1It instruction1 = _TranslationsCourseDetailInstructionsInstruction1It._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2It instruction2 = _TranslationsCourseDetailInstructionsInstruction2It._(_root);
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingIt implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisi in corso';
	@override String get description => 'Analisi delle tue caratteristiche uniche';
	@override String get detail => 'Rilevamento della texture della pelle, del tono muscolare e dell\'area di focus per la tua routine personalizzata.';
	@override String get aiEngineWorking => 'MOTORE AI IN FUNZIONE';
}

// Path: facialScan.result
class _TranslationsFacialScanResultIt implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'La tua analisi è pronta!';
	@override String get subtitle => 'Abbiamo creato una routine basata sui tuoi risultati.';
	@override String get skinType => 'TIPO DI PELLE';
	@override String get primaryGoal => 'OBIETTIVO PRINCIPALE';
	@override String get recommended => 'Consigliato per te';
	@override String get back => 'Indietro';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsIt implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get front => 'Posiziona il viso all\'interno della cornice';
	@override String get left => 'Gira la testa a sinistra';
	@override String get right => 'Gira la testa a destra';
	@override String get lighting => 'Assicurati di essere in un ambiente ben illuminato per risultati migliori';
	@override String get tapToCapture => 'Tocca il pulsante della fotocamera per scattare una foto';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsIt implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'È richiesta l\'autorizzazione della fotocamera per scattare foto.';
	@override String get cameraPermissionRequired => 'Autorizzazione fotocamera richiesta';
	@override String get cameraPermissionMessage => 'L\'autorizzazione della fotocamera è richiesta per la scansione facciale. Abilitala nelle impostazioni dell\'app.';
	@override String get openSettings => 'Apri impostazioni';
	@override String get cancel => 'Annulla';
	@override String get noFaceDetected => 'Nessun viso rilevato. Riprova.';
	@override String get captureFailed => 'Impossibile acquisire l\'immagine. Riprova.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsIt implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get front => 'FRONTE';
	@override String get left => 'SINISTRA';
	@override String get right => 'DESTRA';
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialIt implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookie strettamente necessari';
	@override String get content => 'Richiesti per le funzioni di base dell\'app. Supportano processi fondamentali come la gestione delle sessioni, la sicurezza e la navigazione di base.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceIt implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookie di prestazioni e analisi';
	@override String get content => 'Ci aiuta a capire quali aree vengono utilizzate più frequentemente e quali sezioni necessitano di miglioramenti.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationIt implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookie di personalizzazione';
	@override String get content => 'Fornisce un\'esperienza più personale ricordando impostazioni come lingua, tema e preferenze di esercizio.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingIt implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookie di marketing e pubblicità';
	@override String get content => 'Può essere utilizzato per fornire contenuti e promozioni più adatti ai tuoi interessi e talvolta funziona con servizi di terze parti.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1It implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Dati forniti dall\'utente';
	@override List<String> get items => [
		'Nome, nickname o informazioni del profilo',
		'Indirizzo email (per registrazione, acquisto e supporto)',
		'Piani di esercizio, preferenze e impostazioni di personalizzazione',
		'Feedback, richieste e messaggi di supporto',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2It implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Dati raccolti automaticamente';
	@override List<String> get items => [
		'Tipo di dispositivo, sistema operativo e informazioni tecniche',
		'Dati di posizione approssimativi (livello città/paese)',
		'Informazioni sull\'utilizzo come durata della sessione e interazioni con lo schermo',
		'Log di prestazioni, errori e arresti anomali',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1It implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Cos\'è YogiFace?';
	@override String get answer => 'YogiFace è un\'app di cura personale basata sull\'intelligenza artificiale che offre esercizi di yoga facciale per migliorare l\'aspetto della pelle lavorando sui muscoli facciali.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2It implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'L\'app funziona davvero?';
	@override String get answer => 'Sì. Lo yoga facciale attiva i muscoli facciali per aumentare la compattezza della pelle, accelerare la circolazione e fornire un aspetto più giovane con un uso regolare.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3It implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Cosa fa qui l\'intelligenza artificiale?';
	@override String get answer => 'YogiFace analizza le caratteristiche facciali, identifica le aree target e crea un piano di esercizi personalizzato. In questo modo, ogni movimento è ottimizzato in base alle esigenze personali.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4It implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quanto tempo devo dedicare ogni giorno?';
	@override String get answer => 'Solo 5-10 minuti al giorno sono sufficienti. Con una pratica regolare, i cambiamenti visibili iniziano entro poche settimane.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5It implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quando vedrò i risultati?';
	@override String get answer => 'Con un uso regolare, il miglioramento del tono della pelle è visibile entro 2-3 settimane e le caratteristiche facciali diventano più definite entro 4-6 settimane. I risultati possono variare da persona a persona.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6It implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Funziona per problemi come il doppio mento o il cedimento?';
	@override String get answer => 'Sì. YogiFace offre esercizi mirati per la linea della mascella, i muscoli delle guance e l\'area del collo. Se eseguiti regolarmente, questi esercizi forniscono un rassodamento significativo in queste aree.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7It implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Come faccio a sapere se sto facendo i movimenti correttamente?';
	@override String get answer => 'L\'app utilizza l\'intelligenza artificiale per analizzare l\'angolazione del viso, l\'espressione e il modello di movimento; ti avvisa di eventuali punti errati.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8It implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'È adatto a tutte le età?';
	@override String get answer => 'Sì. Lo yoga facciale è un metodo naturale non invasivo. Tutti possono praticarlo in sicurezza fin dalla giovane età.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9It implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace è gratuito?';
	@override String get answer => 'Gli esercizi di base sono gratuiti. Programmi personali, analisi facciale avanzata e raccomandazioni AI speciali sono inclusi nel pacchetto premium.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10It implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Le persone che hanno subito un intervento di chirurgia estetica possono usarlo?';
	@override String get answer => 'Molti utenti lo usano in sicurezza, ma si consiglia di consultare un medico durante il periodo di recupero post-operatorio.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogIt implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Funzione non disponibile';
	@override String get message => 'Questa funzione non è attualmente disponibile.';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherIt implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il levigatore della fronte';
	@override String get description => 'Questo movimento rilascia la tensione nei muscoli della fronte e le rughe di espressione accumulate...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMoveIt implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMoveIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il movimento "V"';
	@override String get description => 'Rafforza la pelle delicata intorno agli occhi, solleva le palpebre cadenti e cancella i segni di stanchezza.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterIt implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Il sollevatore delle guance';
	@override String get description => 'Solleva i muscoli delle guance (Zigomatico) che sono più soggetti alla gravità, ripristinando l\'ovale del viso.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningIt implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Stiratura naturale:';
	@override String get description => 'Apre le linee orizzontali sulla fronte e impedisce loro di approfondirsi.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectIt implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Effetto Botox';
	@override String get description => 'Rilassa i muscoli tesi e rompe l\'abitudine di aggrottare le sopracciglia.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefIt implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sollievo dallo stress';
	@override String get description => 'Allevia lo stress accumulato sulla fronte e allevia il mal di testa.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearanceIt implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearanceIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aspetto radioso';
	@override String get description => 'Aumenta la circolazione sanguigna per dare alla pelle una luminosità.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingIt implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingIt._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sgonfiamento';
	@override String get description => 'Riduce il gonfiore facciale attraverso il suo effetto di drenaggio linfatico.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1It implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lava le mani e il viso';
	@override String get description => 'Una pelle pulita consente al massaggio di essere più efficace.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2It implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2It._(this._root);

	final TranslationsIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Applica olio per il viso o crema idratante';
	@override String get description => 'Scivola dolcemente senza tirare la pelle.';
}

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Benvenuto ${name}',
			'welcome2' => 'Benvenuto',
			'get_started' => 'Inizia',
			'next' => 'Avanti',
			'back' => 'Indietro',
			'skip' => 'Salta',
			'logintext' => 'Sono felice di vederti. Puoi continuare da dove hai lasciato accedendo al tuo account.',
			'termOfService.text1' => 'Iscrivendoti a swipe, accetti i nostri ',
			'termOfService.link1' => 'Termini di servizio',
			'termOfService.text2' => '. Scopri come elaboriamo i tuoi dati nella nostra ',
			'termOfService.link2' => 'Informativa sulla privacy',
			'termOfService.text3' => ' e ',
			'termOfService.link3' => 'Informativa sui cookie',
			'termOfService.text4' => '',
			'cookies' => 'Informativa sui cookie',
			'privacy' => 'Informativa sulla privacy',
			'termsOfService.title' => 'Yogiface – Termini di servizio',
			'termsOfService.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'termsOfService.principle' => 'Yogiface è un\'applicazione di benessere che fornisce esercizi di yoga facciale e contenuti guidati volti a supportare i muscoli facciali. L\'applicazione non fornisce servizi medici, clinici, estetici o sanitari professionali.',
			'termsOfService.intro' => 'Questi Termini di servizio ("Termini") contengono le regole applicabili all\'uso dell\'applicazione mobile Yogiface ("Applicazione"). Utilizzando l\'Applicazione, accetti questi Termini. Se non accetti i Termini, non dovresti utilizzare l\'Applicazione.',
			'termsOfService.section1.title' => '1. Ambito del servizio',
			'termsOfService.section1.content' => 'Yogiface offre agli utenti un\'esperienza guidata di yoga facciale ed esercizi. L\'applicazione include:',
			'termsOfService.section1.items.0' => 'Guide di yoga facciale ed esercizi',
			'termsOfService.section1.items.1' => 'Routine di esercizi giornaliere e settimanali',
			'termsOfService.section1.items.2' => 'Raccomandazioni mirate per aree facciali specifiche',
			'termsOfService.section1.items.3' => 'Piani personalizzabili e monitoraggio dei progressi',
			'termsOfService.section1.note' => 'Il contenuto fornito non costituisce consulenza, diagnosi o trattamento professionale, medico o estetico.',
			'termsOfService.section2.title' => '2. Condizioni d\'uso',
			'termsOfService.section2.items.0' => 'Devi avere almeno 13 anni.',
			'termsOfService.section2.items.1' => 'Devi fornire informazioni sull\'account accurate e aggiornate.',
			'termsOfService.section2.items.2' => 'Riconosci che gli esercizi non sono un servizio medico.',
			'termsOfService.section3.title' => '3. Usi vietati',
			'termsOfService.section3.items.0' => 'Utilizzare l\'app per attività illegali.',
			'termsOfService.section3.items.1' => 'Vendere, riprodurre o distribuire contenuti senza autorizzazione.',
			'termsOfService.section3.items.2' => 'Accesso non autorizzato, hacking o tentativi di reverse engineering.',
			'termsOfService.section4.title' => '4. Account e iscrizione',
			'termsOfService.section4.content' => 'Sei responsabile della sicurezza del tuo account. Yogiface si riserva il diritto di sospendere o chiudere gli account in caso di utilizzo contrario ai Termini.',
			'termsOfService.section5.title' => '5. Servizi Premium e a pagamento',
			'termsOfService.section5.items.0' => 'I prezzi si basano sulle politiche di App Store e Google Play.',
			'termsOfService.section5.items.1' => 'Gli abbonamenti possono rinnovarsi automaticamente; le cancellazioni vengono effettuate tramite le impostazioni dello store.',
			'termsOfService.section6.title' => '6. Disclaimer',
			'termsOfService.section6.content' => 'Gli utenti eseguono gli esercizi a proprio rischio. In caso di problemi di salute, gli utenti dovrebbero consultare un professionista sanitario. L\'app non deve essere utilizzata per diagnosi o trattamento.',
			'termsOfService.section7.title' => '7. Proprietà intellettuale',
			'termsOfService.section7.content' => 'Design, software, immagini e contenuti degli esercizi appartengono a Yogiface. È vietata la copia non autorizzata o la modifica del codice sorgente.',
			'termsOfService.section12.title' => '12. Legge applicabile',
			'termsOfService.section12.content' => 'Questi Termini sono regolati dalle leggi della Repubblica di Turchia. I tribunali centrali di Istanbul hanno giurisdizione sulle controversie.',
			'termsOfService.section13.title' => '13. Contatto',
			'termsOfService.section13.email' => '📩 Email: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Informativa sui cookie',
			'cookiesPolicy.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'cookiesPolicy.intro' => 'Benvenuto su Yogiface! Ogni volta che visiti l\'app, utilizziamo assistenti digitali (cookie) per migliorare e personalizzare la tua esperienza. Questa politica spiega come puoi gestire le tue preferenze.',
			'cookiesPolicy.section1.title' => '1. Cosa sono i cookie?',
			'cookiesPolicy.section1.content' => 'I cookie sono piccoli file di dati posizionati sul tuo dispositivo. Ci aiutano a capire come utilizzi l\'app e rendono la tua esperienza più fluida. I cookie non contengono direttamente la tua identità; fungono da assistenti digitali che ricordano le tue preferenze e abitudini di utilizzo.',
			'cookiesPolicy.section2.title' => '2. Quali cookie utilizziamo?',
			'cookiesPolicy.section2.essential.title' => 'Cookie strettamente necessari',
			'cookiesPolicy.section2.essential.content' => 'Richiesti per le funzioni di base dell\'app. Supportano processi fondamentali come la gestione delle sessioni, la sicurezza e la navigazione di base.',
			'cookiesPolicy.section2.performance.title' => 'Cookie di prestazioni e analisi',
			'cookiesPolicy.section2.performance.content' => 'Ci aiuta a capire quali aree vengono utilizzate più frequentemente e quali sezioni necessitano di miglioramenti.',
			'cookiesPolicy.section2.personalization.title' => 'Cookie di personalizzazione',
			'cookiesPolicy.section2.personalization.content' => 'Fornisce un\'esperienza più personale ricordando impostazioni come lingua, tema e preferenze di esercizio.',
			'cookiesPolicy.section2.marketing.title' => 'Cookie di marketing e pubblicità',
			'cookiesPolicy.section2.marketing.content' => 'Può essere utilizzato per fornire contenuti e promozioni più adatti ai tuoi interessi e talvolta funziona con servizi di terze parti.',
			'cookiesPolicy.section3.title' => '3. Perché utilizziamo i cookie?',
			'cookiesPolicy.section3.items.0' => 'Per garantire che l\'app funzioni in modo rapido e fluido',
			'cookiesPolicy.section3.items.1' => 'Per ridurre le azioni ripetitive ricordando le preferenze dell\'utente',
			'cookiesPolicy.section3.items.2' => 'Per rendere l\'esperienza più personale e utile',
			'cookiesPolicy.section3.items.3' => 'Per migliorare l\'app analizzando i dati di utilizzo',
			'cookiesPolicy.section4.title' => '4. Cookie di terze parti',
			'cookiesPolicy.section4.content' => 'Alcuni cookie possono essere posizionati da partner di terze parti che forniscono servizi analitici e pubblicitari. Questi sono soggetti alle politiche sulla privacy e sui cookie dei fornitori.',
			'cookiesPolicy.section5.title' => '5. Controllo e gestione dei cookie',
			'cookiesPolicy.section5.content' => 'Puoi gestire i cookie tramite le impostazioni del dispositivo, le autorizzazioni dell\'app o le impostazioni di sistema. La disabilitazione dei cookie necessari può causare il malfunzionamento di parti dell\'app.',
			'cookiesPolicy.section6.title' => '6. Uso dei dati',
			'cookiesPolicy.section6.content' => 'I dati ottenuti tramite cookie, se qualificati come dati personali, vengono elaborati nel quadro legale ai sensi dell\'Informativa sulla privacy.',
			'cookiesPolicy.section7.title' => '7. Aggiornamenti della politica',
			'cookiesPolicy.section7.content' => 'Questa politica può essere aggiornata a seconda dei cambiamenti tecnologici e legali. La versione corrente diventa effettiva non appena viene pubblicata.',
			'cookiesPolicy.section8.title' => '8. Contatto',
			'cookiesPolicy.section8.email' => '📩 Email: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Informativa sulla privacy',
			'privacyPolicy.lastUpdated' => 'Ultimo aggiornamento: 2025',
			'privacyPolicy.intro' => 'Questa Informativa sulla privacy spiega i principi relativi alla raccolta, all\'uso, alla conservazione e alla protezione dei dati personali di tutti gli utenti che utilizzano l\'applicazione mobile Yogiface ("App"). Utilizzando l\'App, accetti questa politica.',
			'privacyPolicy.principle' => 'Yogiface adotta la privacy degli utenti e la sicurezza dei dati come principio fondamentale. Tutti i dati personali vengono elaborati in conformità con il GDPR e la legislazione pertinente.',
			'privacyPolicy.section1.title' => '1. Informazioni raccolte',
			'privacyPolicy.section1.sub1.title' => '1.1. Dati forniti dall\'utente',
			'privacyPolicy.section1.sub1.items.0' => 'Nome, nickname o informazioni del profilo',
			'privacyPolicy.section1.sub1.items.1' => 'Indirizzo email (per registrazione, acquisto e supporto)',
			'privacyPolicy.section1.sub1.items.2' => 'Piani di esercizio, preferenze e impostazioni di personalizzazione',
			'privacyPolicy.section1.sub1.items.3' => 'Feedback, richieste e messaggi di supporto',
			'privacyPolicy.section1.sub2.title' => '1.2. Dati raccolti automaticamente',
			'privacyPolicy.section1.sub2.items.0' => 'Tipo di dispositivo, sistema operativo e informazioni tecniche',
			'privacyPolicy.section1.sub2.items.1' => 'Dati di posizione approssimativi (livello città/paese)',
			'privacyPolicy.section1.sub2.items.2' => 'Informazioni sull\'utilizzo come durata della sessione e interazioni con lo schermo',
			'privacyPolicy.section1.sub2.items.3' => 'Log di prestazioni, errori e arresti anomali',
			'privacyPolicy.section2.title' => '2. Scopi di utilizzo dei dati',
			'privacyPolicy.section2.items.0' => 'Per garantire il funzionamento ininterrotto dell\'app',
			'privacyPolicy.section2.items.1' => 'Per personalizzare e ottimizzare l\'esperienza di yoga facciale',
			'privacyPolicy.section2.items.2' => 'Per eseguire rilevamento degli errori e analisi delle prestazioni',
			'privacyPolicy.section2.items.3' => 'Per rispondere alle richieste degli utenti e alle richieste di supporto',
			'privacyPolicy.section2.note' => 'Importante: i dati degli utenti non vengono mai venduti a terzi.',
			'privacyPolicy.section3.title' => '3. Conservazione dei dati',
			'privacyPolicy.section3.items.0' => 'I dati vengono conservati finché l\'account utente è attivo.',
			'privacyPolicy.section3.items.1' => 'Quando un account viene eliminato, i dati personali vengono rimossi in modo irreversibile.',
			'privacyPolicy.section3.items.2' => 'I record di supporto vengono conservati per un massimo di 12 mesi dopo il completamento.',
			'privacyPolicy.section4.title' => '4. Condivisione dei dati',
			'privacyPolicy.section4.content' => 'I tuoi dati vengono condivisi solo in caso di requisiti legali (richieste ufficiali), fornitori di servizi (infrastruttura cloud, analisi) o con esplicito consenso dell\'utente.',
			'privacyPolicy.section5.title' => '5. Cookie e sicurezza',
			'privacyPolicy.section5.content' => 'Yogiface può utilizzare cookie per migliorare le prestazioni e l\'esperienza. I tuoi dati sono protetti da crittografia SSL/TLS e controlli di sicurezza regolari.',
			'privacyPolicy.section6.title' => '6. Diritti dell\'utente',
			'privacyPolicy.section6.content' => 'Hai il diritto di accedere, correggere, eliminare e limitare l\'elaborazione dei dati.',
			'privacyPolicy.section6.contact' => 'Per richieste:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Privacy dei bambini',
			'privacyPolicy.section8.content' => 'Yogiface non è destinato a persone di età inferiore a 13 anni. Tutti i dati raccolti da questa fascia di età verranno eliminati immediatamente se rilevati.',
			'privacyPolicy.section10.title' => '10. Contatto',
			'privacyPolicy.section10.email' => '📩 Email: support@fly-work.com',
			'onboarding.basicInformation' => 'INFORMAZIONI DI BASE',
			'onboarding.target' => 'OBIETTIVO',
			'onboarding.habits' => 'ABITUDINI',
			'onboarding.step' => 'PASSO',
			'onboarding.of' => 'DI',
			'onboarding.tellUsAboutYourself' => 'Parlaci di te',
			'onboarding.shortBioDescription' => 'Una breve biografia aiuta gli altri a conoscerti davvero. Mantienila divertente e genuina',
			'onboarding.enterYourFullname' => 'Inserisci il tuo nome completo',
			'onboarding.fullName' => 'Nome completo',
			'onboarding.male' => 'Maschio',
			'onboarding.female' => 'Femmina',
			'onboarding.dontWantToMention' => 'Non voglio menzionarlo',
			'onboarding.whatIsMainObjective' => 'Qual è l\'obiettivo principale?',
			'onboarding.reduceWrinkles' => 'Ridurre le rughe',
			'onboarding.tightenSkin' => 'Rassodare la pelle',
			'onboarding.liftDroopyEyelids' => 'Sollevare le palpebre cadenti',
			'onboarding.eliminateDoubleChin' => 'Eliminare il doppio mento',
			'onboarding.brightenSkinTone' => 'Illuminare il tono della pelle',
			'onboarding.allOfTheAbove' => 'Tutto quanto sopra',
			'onboarding.whichAreaToImprove' => 'Quale area vorresti migliorare?',
			'onboarding.forehead' => 'Fronte',
			'onboarding.eyes' => 'Occhi',
			'onboarding.nose' => 'Naso',
			'onboarding.cheeks' => 'Guance',
			'onboarding.lips' => 'Labbra',
			'onboarding.jawline' => 'Linea della mascella',
			'onboarding.neck' => 'Collo',
			'onboarding.fullface' => 'Viso completo',
			'onboarding.whatFaceShapeAiming' => 'Quale forma del viso stai cercando?',
			'onboarding.heart' => 'Cuore',
			'onboarding.oval' => 'Ovale',
			'onboarding.square' => 'Quadrato',
			'onboarding.round' => 'Rotondo',
			'onboarding.diamond' => 'Diamante',
			'onboarding.whatIsYourSkinType' => 'Qual è il tuo tipo di pelle?',
			'onboarding.normal' => 'Normale',
			'onboarding.oily' => 'Grassa',
			'onboarding.dry' => 'Secca',
			'onboarding.combination' => 'Mista',
			'onboarding.sensitive' => 'Sensibile',
			'onboarding.whichOfThemDoYouHave' => 'Quale di questi hai?',
			'onboarding.acneAndPimples' => 'Acne e brufoli',
			'onboarding.redness' => 'Rossore',
			'onboarding.swelling' => 'Gonfiore',
			'onboarding.wrinkles' => 'Rughe',
			'onboarding.neckLines' => 'Linee del collo',
			'onboarding.howOftenWearMakeup' => 'Quanto spesso ti trucchi?',
			'onboarding.everyDay' => 'Ogni giorno',
			'onboarding.fewDaysAWeek' => 'Alcuni giorni alla settimana',
			'onboarding.occasionally' => 'Occasionalmente',
			'onboarding.never' => 'Mai',
			'onboarding.haveYouHadBotox' => 'Hai fatto il Botox?',
			'onboarding.yes' => 'Sì',
			'onboarding.no' => 'No',
			'onboarding.creatingPersonalizedProfile' => 'Creazione del tuo profilo personalizzato',
			'onboarding.tailoringExperience' => 'Stiamo personalizzando la tua esperienza in base alle tue preferenze...',
			'onboarding.gender' => 'Genere',
			'onboarding.age' => 'Età',
			'onboarding.weight' => 'Peso',
			'onboarding.height' => 'Altezza',
			'onboarding.matchingPersonalities' => 'ABBINAMENTO PERSONALITÀ',
			'pressBackAgainToExit' => 'Premi di nuovo indietro per uscire',
			'addedToFavoritesTitle' => 'Esercizio aggiunto con successo ai preferiti!',
			'removedFromFavoritesTitle' => 'Esercizio rimosso con successo dai preferiti!',
			'removedFromFavorites' => 'Puoi accedere ad altri esercizi che desideri aggiungere dai corsi',
			'faq.title' => 'Domande frequenti',
			'faq.questions.q1.question' => 'Cos\'è YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace è un\'app di cura personale basata sull\'intelligenza artificiale che offre esercizi di yoga facciale per migliorare l\'aspetto della pelle lavorando sui muscoli facciali.',
			'faq.questions.q2.question' => 'L\'app funziona davvero?',
			'faq.questions.q2.answer' => 'Sì. Lo yoga facciale attiva i muscoli facciali per aumentare la compattezza della pelle, accelerare la circolazione e fornire un aspetto più giovane con un uso regolare.',
			'faq.questions.q3.question' => 'Cosa fa qui l\'intelligenza artificiale?',
			'faq.questions.q3.answer' => 'YogiFace analizza le caratteristiche facciali, identifica le aree target e crea un piano di esercizi personalizzato. In questo modo, ogni movimento è ottimizzato in base alle esigenze personali.',
			'faq.questions.q4.question' => 'Quanto tempo devo dedicare ogni giorno?',
			'faq.questions.q4.answer' => 'Solo 5-10 minuti al giorno sono sufficienti. Con una pratica regolare, i cambiamenti visibili iniziano entro poche settimane.',
			'faq.questions.q5.question' => 'Quando vedrò i risultati?',
			'faq.questions.q5.answer' => 'Con un uso regolare, il miglioramento del tono della pelle è visibile entro 2-3 settimane e le caratteristiche facciali diventano più definite entro 4-6 settimane. I risultati possono variare da persona a persona.',
			'faq.questions.q6.question' => 'Funziona per problemi come il doppio mento o il cedimento?',
			'faq.questions.q6.answer' => 'Sì. YogiFace offre esercizi mirati per la linea della mascella, i muscoli delle guance e l\'area del collo. Se eseguiti regolarmente, questi esercizi forniscono un rassodamento significativo in queste aree.',
			'faq.questions.q7.question' => 'Come faccio a sapere se sto facendo i movimenti correttamente?',
			'faq.questions.q7.answer' => 'L\'app utilizza l\'intelligenza artificiale per analizzare l\'angolazione del viso, l\'espressione e il modello di movimento; ti avvisa di eventuali punti errati.',
			'faq.questions.q8.question' => 'È adatto a tutte le età?',
			'faq.questions.q8.answer' => 'Sì. Lo yoga facciale è un metodo naturale non invasivo. Tutti possono praticarlo in sicurezza fin dalla giovane età.',
			'faq.questions.q9.question' => 'YogiFace è gratuito?',
			'faq.questions.q9.answer' => 'Gli esercizi di base sono gratuiti. Programmi personali, analisi facciale avanzata e raccomandazioni AI speciali sono inclusi nel pacchetto premium.',
			'faq.questions.q10.question' => 'Le persone che hanno subito un intervento di chirurgia estetica possono usarlo?',
			'faq.questions.q10.answer' => 'Molti utenti lo usano in sicurezza, ma si consiglia di consultare un medico durante il periodo di recupero post-operatorio.',
			'full_face' => 'Viso completo / Rivitalizzazione generale',
			'eye_area' => 'Occhi e area oculare',
			'nose_area' => 'Naso e area nasale',
			'cheeks_mid_face' => 'Guance e viso centrale',
			'lip_area' => 'Labbra e area della bocca',
			'jawline_chin' => 'Linea della mascella, mento e doppio mento',
			'forehead_brow' => 'Fronte e area delle sopracciglia',
			'neck_decollete' => 'Collo e décolleté',
			'good_morning' => 'Buongiorno',
			'good_afternoon' => 'Buon pomeriggio',
			'good_evening' => 'Buonasera',
			'splash.screen1.title' => 'Modella il tuo viso naturalmente',
			'splash.screen1.description' => 'Lavora i muscoli facciali con solo pochi minuti di esercizi facciali giornalieri. Crea una routine di bellezza naturale, estetica e non invasiva.',
			'splash.screen2.title' => 'Piano di esercizi personalizzato con l\'IA',
			'splash.screen2.description' => 'L\'IA analizza le tue caratteristiche facciali, determina le tue esigenze e raccomanda esercizi su misura per te. Tiene traccia di quali muscoli hanno bisogno di più lavoro.',
			'splash.screen3.title' => 'Risultati visibili',
			'splash.screen3.description' => 'Con un uso regolare, i contorni facciali diventano più definiti, la circolazione migliora e la pelle appare più vibrante. Piccoli passi ogni giorno portano grandi cambiamenti.',
			'profile.title' => 'Profilo',
			'profile.freeVersion' => 'Versione gratuita',
			'profile.error' => 'Errore',
			'profile.sections.accountSettings' => 'IMPOSTAZIONI ACCOUNT',
			'profile.sections.supportAndOther' => 'SUPPORTO E ALTRO',
			'profile.menu.editProfile' => 'Modifica profilo',
			'profile.menu.notifications' => 'Notifiche',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Esercizi preferiti',
			'profile.menu.appLanguage' => 'Lingua dell\'app',
			'profile.menu.shareWithFriends' => 'Condividi con gli amici',
			'profile.menu.enterInviteCode' => 'Inserisci codice invito',
			'profile.menu.rateUs' => 'Valutaci',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Esci',
			'profile.manage' => 'GESTISCI',
			'profile.logoutDialog.title' => 'Stai per uscire',
			'profile.logoutDialog.message' => 'Ci vediamo di nuovo! Continueremo a monitorare i tuoi esercizi di respirazione.',
			'profile.logoutDialog.logoutButton' => 'Esci',
			'profile.logoutDialog.cancelButton' => 'Annulla',
			'home.premium' => 'Premium!',
			'home.focusAreas' => 'Aree di focus',
			'home.popularCourses' => 'Corsi popolari',
			'home.seeMore' => 'Vedi altro',
			'home.personalized.title' => 'Rapporto di\nanalisi facciale\npersonalizzato',
			'home.personalized.description' => 'Analizza la tua pelle\nper scoprire che tipo è.',
			'home.personalized.button' => 'Prova ora',
			'home.premiumPlan.title' => 'Piano Premium',
			'home.premiumPlan.description' => 'Sblocca il tuo chatbot AI e\nottieni tutte le funzionalità premium',
			'home.premiumPlan.button' => 'Ottieni Premium',
			'home.premiumPlan.dialog.title' => 'Funzione non disponibile',
			'home.premiumPlan.dialog.message' => 'Questa funzione non è attualmente disponibile.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Azioni rapide',
			'home.quickActions.programTitle' => 'Il tuo programma personale',
			'home.quickActions.programSubtitle' => 'Per il tuo aspetto migliore\nin 30 giorni',
			'home.quickActions.button' => 'Inizia',
			'home.todaysExercise.title' => 'Esercizio di oggi',
			'home.todaysExercise.recommended' => 'Routine consigliata',
			'home.todaysExercise.forToday' => 'per oggi',
			'home.courses.foreheadSmoother.title' => 'Il levigatore della fronte',
			'home.courses.foreheadSmoother.description' => 'Questo movimento rilascia la tensione nei muscoli della fronte e le rughe di espressione accumulate...',
			'home.courses.vMove.title' => 'Il movimento "V"',
			'home.courses.vMove.description' => 'Rafforza la pelle delicata intorno agli occhi, solleva le palpebre cadenti e cancella i segni di stanchezza.',
			'home.courses.cheekLifter.title' => 'Il sollevatore delle guance',
			'home.courses.cheekLifter.description' => 'Solleva i muscoli delle guance (Zigomatico) che sono più soggetti alla gravità, ripristinando l\'ovale del viso.',
			'home.benefits.naturalIroning.title' => 'Stiratura naturale:',
			'home.benefits.naturalIroning.description' => 'Apre le linee orizzontali sulla fronte e impedisce loro di approfondirsi.',
			'home.benefits.botoxEffect.title' => 'Effetto Botox',
			'home.benefits.botoxEffect.description' => 'Rilassa i muscoli tesi e rompe l\'abitudine di aggrottare le sopracciglia.',
			'home.benefits.stressRelief.title' => 'Sollievo dallo stress',
			'home.benefits.stressRelief.description' => 'Allevia lo stress accumulato sulla fronte e allevia il mal di testa.',
			'home.benefits.radiantAppearance.title' => 'Aspetto radioso',
			'home.benefits.radiantAppearance.description' => 'Aumenta la circolazione sanguigna per dare alla pelle una luminosità.',
			'home.benefits.dePuffing.title' => 'Sgonfiamento',
			'home.benefits.dePuffing.description' => 'Riduce il gonfiore facciale attraverso il suo effetto di drenaggio linfatico.',
			'courseDetail.title' => 'Dettagli del corso',
			'courseDetail.getStarted' => 'Inizia',
			'courseDetail.noExercisesFound' => 'Nessun esercizio trovato per questa categoria',
			'courseDetail.instructions.instruction1.title' => 'Lava le mani e il viso',
			'courseDetail.instructions.instruction1.description' => 'Una pelle pulita consente al massaggio di essere più efficace.',
			'courseDetail.instructions.instruction2.title' => 'Applica olio per il viso o crema idratante',
			'courseDetail.instructions.instruction2.description' => 'Scivola dolcemente senza tirare la pelle.',
			'courses.title' => 'Tutti i corsi',
			'courses.error' => 'Errore nel caricamento degli esercizi',
			'courses.personalCoursesTitle' => 'Corsi personali',
			'personalProgram.dailyGoalTitle' => 'Imposta il tuo obiettivo giornaliero',
			'personalProgram.dailyGoalDescription' => 'Scegli un ritmo che si adatta al tuo programma',
			'personalProgram.personalizing' => 'Personalizzazione del tuo piano...',
			'personalProgram.readyMessage' => 'Il tuo programma personale di yoga facciale di 30 giorni è pronto✨',
			'personalProgram.minutes' => 'Min',
			'editProfile.title' => 'Modifica profilo',
			'editProfile.changePhoto' => 'Cambia foto',
			'editProfile.fullName' => 'Nome completo',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Età',
			'editProfile.gender' => 'Genere',
			'editProfile.skinType' => 'Tipo di pelle',
			'editProfile.focusArea' => 'Area di focus',
			'editProfile.focusAreaHint' => 'Fronte, Occhi, Naso, Bocca, Guance...',
			'editProfile.save' => 'Salva',
			'editProfile.saving' => 'Salvataggio...',
			'editProfile.updateSuccess' => 'Profilo aggiornato con successo',
			'editProfile.updateError' => 'Si è verificato un errore durante l\'aggiornamento del profilo',
			'editProfile.deleteAccount' => 'Elimina account',
			'notifications.title' => 'Notifiche',
			'notifications.emptyTitle' => 'Nessuna notifica ancora',
			'notifications.emptyDescription' => 'Ti avviseremo quando ci sarà un aggiornamento importante sul tuo percorso di apprendimento.',
			'notifications.premiumBannerTitle' => 'Non perdere i\nvantaggi Premium!',
			'notifications.premiumBannerDescription' => 'Approfitta delle opportunità come abbonato Premium.',
			'notifications.sample1Title' => 'La tua meditazione giornaliera è pronta!',
			'notifications.sample1Description' => 'Trova la tua calma per la giornata',
			'notifications.sample1Time' => '15 min fa',
			'notifications.sample2Title' => 'Nuovo esercizio: Respiro dell\'oceano',
			'notifications.sample2Description' => 'È stata aggiunta una nuova tecnica di respirazione',
			'notifications.sample2Time' => '1 ora fa',
			'notifications.sample3Title' => 'Hai raggiunto una serie di 7 giorni!',
			'notifications.sample3Description' => 'Continua così con il tuo benessere',
			'notifications.sample3Time' => 'Ieri',
			'share.title' => 'Condividi con gli amici',
			'share.mainTitle' => 'Condividi la pace',
			'share.descriptionPart1' => 'Invita i tuoi amici a respirare insieme.\nPer ogni invito, entrambi ottenete ',
			'share.descriptionPart2' => '1 settimana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'IL TUO CODICE DI RIFERIMENTO',
			'share.codeCopied' => 'Codice copiato!',
			'share.copyCode' => 'Copia codice',
			'facialScan.title' => 'Scansione facciale',
			'facialScan.step' => ({required Object current, required Object total}) => 'PASSO ${current} DI ${total}',
			'facialScan.getStarted' => 'Inizia',
			'facialScan.analyzing.title' => 'Analisi in corso',
			'facialScan.analyzing.description' => 'Analisi delle tue caratteristiche uniche',
			'facialScan.analyzing.detail' => 'Rilevamento della texture della pelle, del tono muscolare e dell\'area di focus per la tua routine personalizzata.',
			'facialScan.analyzing.aiEngineWorking' => 'MOTORE AI IN FUNZIONE',
			'facialScan.result.title' => 'La tua analisi è pronta!',
			'facialScan.result.subtitle' => 'Abbiamo creato una routine basata sui tuoi risultati.',
			'facialScan.result.skinType' => 'TIPO DI PELLE',
			'facialScan.result.primaryGoal' => 'OBIETTIVO PRINCIPALE',
			'facialScan.result.recommended' => 'Consigliato per te',
			'facialScan.result.back' => 'Indietro',
			'facialScan.instructions.front' => 'Posiziona il viso all\'interno della cornice',
			'facialScan.instructions.left' => 'Gira la testa a sinistra',
			'facialScan.instructions.right' => 'Gira la testa a destra',
			'facialScan.instructions.lighting' => 'Assicurati di essere in un ambiente ben illuminato per risultati migliori',
			'facialScan.instructions.tapToCapture' => 'Tocca il pulsante della fotocamera per scattare una foto',
			'facialScan.errors.cameraPermission' => 'È richiesta l\'autorizzazione della fotocamera per scattare foto.',
			'facialScan.errors.cameraPermissionRequired' => 'Autorizzazione fotocamera richiesta',
			'facialScan.errors.cameraPermissionMessage' => 'L\'autorizzazione della fotocamera è richiesta per la scansione facciale. Abilitala nelle impostazioni dell\'app.',
			'facialScan.errors.openSettings' => 'Apri impostazioni',
			'facialScan.errors.cancel' => 'Annulla',
			'facialScan.errors.noFaceDetected' => 'Nessun viso rilevato. Riprova.',
			'facialScan.errors.captureFailed' => 'Impossibile acquisire l\'immagine. Riprova.',
			'facialScan.positions.front' => 'FRONTE',
			'facialScan.positions.left' => 'SINISTRA',
			'facialScan.positions.right' => 'DESTRA',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continua come ospite',
			'auth.signInFailed' => ({required Object error}) => 'Accesso non riuscito: ${error}',
			'benefits' => 'Vantaggi',
			'minutes' => 'Min',
			'cancel' => 'Annulla',
			'beforeBegin' => 'Prima di iniziare',
			'rest' => 'Riposo',
			'courseCompleted' => 'Corso completato',
			'courseCompletedDescription' => 'Ottimo lavoro per aver completato la sessione di oggi.',
			'deleteAccount' => 'Elimina account',
			'deleteDialogTitle' => 'Sei sicuro di voler eliminare il tuo account?',
			'deleteDialogDescription' => 'Questa azione è irreversibile ed eliminerà permanentemente tutta la cronologia degli esercizi e i dati.',
			'deleteError' => 'Si è verificato un errore durante l\'eliminazione del tuo account. Riprova.',
			'favoriteExercises' => 'Esercizi preferiti',
			'noFavoritesInCategory' => 'Nessun preferito in questa categoria',
			'noFavoritesAdded' => 'Nessun preferito aggiunto ancora.',
			'favoriteExercisesDescription' => 'Per impostare i tuoi esercizi preferiti, puoi aggiungere gli esercizi che ti piacciono dalla pagina I miei esercizi.',
			'enterInvitationCode' => 'Inserisci codice invito',
			'bePartOfPeace' => 'Fai parte della pace',
			'inviteFriends' => 'Inserisci il codice di invito che hai ricevuto da un amico.\nDigitalo nel campo designato',
			'twoDaysPremium' => '2 giorni Premium',
			'advantage' => '\nper godere dei suoi vantaggi.',
			'send' => 'Invia',
			'deleteNotifications' => 'Elimina notifiche',
			'deleteNotificationsDescription' => 'Sei sicuro di voler eliminare tutte\nle tue notifiche? Questa azione è irreversibile e non può essere annullata.',
			'deleteAll' => 'Elimina tutto',
			'appLanguage' => 'Lingua dell\'app',
			'selectLanguage' => 'Seleziona la tua lingua preferita',
			'save' => 'Salva',
			'languageOptions.english' => 'Inglese',
			'languageOptions.german' => 'Tedesco',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francese',
			'languageOptions.japanese' => 'Giapponese',
			'languageOptions.spanish' => 'Spagnolo',
			'languageOptions.russian' => 'Russo',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Portoghese',
			_ => null,
		};
	}
}
