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
class TranslationsPt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override String welcome({required Object name}) => 'Bem-vindo ${name}';
	@override String get welcome2 => 'Bem-vindo';
	@override String get get_started => 'Começar';
	@override String get next => 'Próximo';
	@override String get back => 'Voltar';
	@override String get skip => 'Pular';
	@override String get logintext => 'Fico feliz em vê-lo. Você pode continuar de onde parou fazendo login em sua conta.';
	@override late final _TranslationsTermOfServicePt termOfService = _TranslationsTermOfServicePt._(_root);
	@override String get cookies => 'Política de Cookies';
	@override String get privacy => 'Política de Privacidade';
	@override late final _TranslationsTermsOfServicePt termsOfService = _TranslationsTermsOfServicePt._(_root);
	@override late final _TranslationsCookiesPolicyPt cookiesPolicy = _TranslationsCookiesPolicyPt._(_root);
	@override late final _TranslationsPrivacyPolicyPt privacyPolicy = _TranslationsPrivacyPolicyPt._(_root);
	@override late final _TranslationsOnboardingPt onboarding = _TranslationsOnboardingPt._(_root);
	@override String get pressBackAgainToExit => 'Pressione voltar novamente para sair';
	@override String get addedToFavoritesTitle => 'Exercício adicionado aos favoritos com sucesso!';
	@override String get removedFromFavoritesTitle => 'Exercício removido dos favoritos com sucesso!';
	@override String get removedFromFavorites => 'Você pode acessar outros exercícios que deseja adicionar nos cursos';
	@override late final _TranslationsFaqPt faq = _TranslationsFaqPt._(_root);
	@override String get full_face => 'Rosto Completo / Revitalização Geral';
	@override String get eye_area => 'Olhos e Área dos Olhos';
	@override String get nose_area => 'Nariz e Área do Nariz';
	@override String get cheeks_mid_face => 'Bochechas e Meio do Rosto';
	@override String get lip_area => 'Lábios e Área da Boca';
	@override String get jawline_chin => 'Linha da Mandíbula, Queixo e Queixo Duplo';
	@override String get forehead_brow => 'Testa e Área das Sobrancelhas';
	@override String get neck_decollete => 'Pescoço e Decote';
	@override String get good_morning => 'Bom dia';
	@override String get good_afternoon => 'Boa tarde';
	@override String get good_evening => 'Boa noite';
	@override late final _TranslationsSplashPt splash = _TranslationsSplashPt._(_root);
	@override late final _TranslationsProfilePt profile = _TranslationsProfilePt._(_root);
	@override late final _TranslationsHomePt home = _TranslationsHomePt._(_root);
	@override late final _TranslationsCourseDetailPt courseDetail = _TranslationsCourseDetailPt._(_root);
	@override late final _TranslationsCoursesPt courses = _TranslationsCoursesPt._(_root);
	@override late final _TranslationsPersonalProgramPt personalProgram = _TranslationsPersonalProgramPt._(_root);
	@override late final _TranslationsEditProfilePt editProfile = _TranslationsEditProfilePt._(_root);
	@override late final _TranslationsNotificationsPt notifications = _TranslationsNotificationsPt._(_root);
	@override late final _TranslationsSharePt share = _TranslationsSharePt._(_root);
	@override late final _TranslationsFacialScanPt facialScan = _TranslationsFacialScanPt._(_root);
	@override late final _TranslationsAuthPt auth = _TranslationsAuthPt._(_root);
	@override String get benefits => 'Benefícios';
	@override String get minutes => 'min';
	@override String get cancel => 'Cancelar';
	@override String get beforeBegin => 'Antes de Começar';
	@override String get rest => 'Descanso';
	@override String get courseCompleted => 'Curso Concluído';
	@override String get courseCompletedDescription => 'Excelente trabalho ao concluir a sessão de hoje.';
	@override String get deleteAccount => 'Excluir Conta';
	@override String get deleteDialogTitle => 'Tem certeza de que deseja excluir sua conta?';
	@override String get deleteDialogDescription => 'Esta ação é irreversível e excluirá permanentemente todo o seu histórico de exercícios e dados.';
	@override String get deleteError => 'Ocorreu um erro ao excluir sua conta. Por favor, tente novamente.';
	@override String get favoriteExercises => 'Exercícios Favoritos';
	@override String get noFavoritesInCategory => 'Nenhum favorito nesta categoria';
	@override String get noFavoritesAdded => 'Nenhum favorito adicionado ainda.';
	@override String get favoriteExercisesDescription => 'Para definir seus exercícios favoritos, você pode adicionar os exercícios que gosta na página Meus Exercícios.';
	@override String get enterInvitationCode => 'Inserir código de convite';
	@override String get bePartOfPeace => 'Faça parte da paz';
	@override String get inviteFriends => 'Insira o código de convite recebido de um amigo.\nDigite-o no campo designado';
	@override String get twoDaysPremium => '7 dias Premium';
	@override String get advantage => '\npara aproveitar seus benefícios.';
	@override String get send => 'Enviar';
	@override late final _TranslationsReferralCodePt referralCode = _TranslationsReferralCodePt._(_root);
	@override String get deleteNotifications => 'Excluir Notificações';
	@override String get deleteNotificationsDescription => 'Tem certeza de que deseja excluir todas as\nsuas notificações? Esta ação é irreversível.';
	@override String get deleteAll => 'Excluir Tudo';
	@override String get appLanguage => 'Idioma do Aplicativo';
	@override String get selectLanguage => 'Selecione seu idioma preferido';
	@override String get save => 'Salvar';
	@override late final _TranslationsLanguageOptionsPt languageOptions = _TranslationsLanguageOptionsPt._(_root);
}

// Path: termOfService
class _TranslationsTermOfServicePt implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServicePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Ao se inscrever no swipe, você concorda com nossos ';
	@override String get link1 => 'Termos de Serviço';
	@override String get text2 => '. Saiba como processamos seus dados em nossa ';
	@override String get link2 => 'Política de Privacidade';
	@override String get text3 => ' e ';
	@override String get link3 => 'Política de Cookies';
	@override String get text4 => '';
}

// Path: termsOfService
class _TranslationsTermsOfServicePt implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServicePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Termos de Serviço';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get principle => 'Yogiface é um aplicativo de bem-estar que fornece exercícios de ioga facial e conteúdo guiado destinado a apoiar os músculos faciais. O aplicativo não fornece serviços médicos, clínicos, estéticos ou de saúde profissional.';
	@override String get intro => 'Estes Termos de Serviço ("Termos") contêm as regras aplicáveis ao seu uso do aplicativo móvel Yogiface ("Aplicativo"). Ao usar o Aplicativo, você concorda com estes Termos. Se você não concordar com os Termos, não deve usar o Aplicativo.';
	@override late final _TranslationsTermsOfServiceSection1Pt section1 = _TranslationsTermsOfServiceSection1Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection2Pt section2 = _TranslationsTermsOfServiceSection2Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection3Pt section3 = _TranslationsTermsOfServiceSection3Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection4Pt section4 = _TranslationsTermsOfServiceSection4Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection5Pt section5 = _TranslationsTermsOfServiceSection5Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection6Pt section6 = _TranslationsTermsOfServiceSection6Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection7Pt section7 = _TranslationsTermsOfServiceSection7Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection12Pt section12 = _TranslationsTermsOfServiceSection12Pt._(_root);
	@override late final _TranslationsTermsOfServiceSection13Pt section13 = _TranslationsTermsOfServiceSection13Pt._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyPt implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Política de Cookies';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get intro => 'Bem-vindo ao Yogiface! Sempre que você visita o aplicativo, usamos ajudantes digitais (cookies) para melhorar e personalizar sua experiência. Esta política explica como você pode gerenciar suas preferências.';
	@override late final _TranslationsCookiesPolicySection1Pt section1 = _TranslationsCookiesPolicySection1Pt._(_root);
	@override late final _TranslationsCookiesPolicySection2Pt section2 = _TranslationsCookiesPolicySection2Pt._(_root);
	@override late final _TranslationsCookiesPolicySection3Pt section3 = _TranslationsCookiesPolicySection3Pt._(_root);
	@override late final _TranslationsCookiesPolicySection4Pt section4 = _TranslationsCookiesPolicySection4Pt._(_root);
	@override late final _TranslationsCookiesPolicySection5Pt section5 = _TranslationsCookiesPolicySection5Pt._(_root);
	@override late final _TranslationsCookiesPolicySection6Pt section6 = _TranslationsCookiesPolicySection6Pt._(_root);
	@override late final _TranslationsCookiesPolicySection7Pt section7 = _TranslationsCookiesPolicySection7Pt._(_root);
	@override late final _TranslationsCookiesPolicySection8Pt section8 = _TranslationsCookiesPolicySection8Pt._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyPt implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Política de Privacidade';
	@override String get lastUpdated => 'Última atualização: 2025';
	@override String get intro => 'Esta Política de Privacidade explica os princípios relacionados à coleta, uso, armazenamento e proteção de dados pessoais de todos os usuários que usam o aplicativo móvel Yogiface ("App"). Ao usar o App, você aceita esta política.';
	@override String get principle => 'Yogiface adota a privacidade do usuário e a segurança de dados como um princípio fundamental. Todos os dados pessoais são processados de acordo com o GDPR e a legislação relevante.';
	@override late final _TranslationsPrivacyPolicySection1Pt section1 = _TranslationsPrivacyPolicySection1Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection2Pt section2 = _TranslationsPrivacyPolicySection2Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection3Pt section3 = _TranslationsPrivacyPolicySection3Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection4Pt section4 = _TranslationsPrivacyPolicySection4Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection5Pt section5 = _TranslationsPrivacyPolicySection5Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection6Pt section6 = _TranslationsPrivacyPolicySection6Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection8Pt section8 = _TranslationsPrivacyPolicySection8Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection10Pt section10 = _TranslationsPrivacyPolicySection10Pt._(_root);
}

// Path: onboarding
class _TranslationsOnboardingPt implements TranslationsOnboardingEn {
	_TranslationsOnboardingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'INFORMAÇÕES BÁSICAS';
	@override String get target => 'OBJETIVO';
	@override String get habits => 'HÁBITOS';
	@override String get step => 'PASSO';
	@override String get of => 'DE';
	@override String get tellUsAboutYourself => 'Conte-nos sobre você';
	@override String get shortBioDescription => 'Uma biografia curta ajuda os outros a conhecerem você de verdade. Mantenha-a divertida e genuína';
	@override String get enterYourFullname => 'Digite seu nome completo';
	@override String get fullName => 'Nome completo';
	@override String get male => 'Masculino';
	@override String get female => 'Feminino';
	@override String get dontWantToMention => 'Não quero mencionar';
	@override String get whatIsMainObjective => 'Qual é o objetivo principal?';
	@override String get reduceWrinkles => 'Reduzir rugas';
	@override String get tightenSkin => 'Apertar a pele';
	@override String get liftDroopyEyelids => 'Levantar pálpebras caídas';
	@override String get eliminateDoubleChin => 'Eliminar queixo duplo';
	@override String get brightenSkinTone => 'Iluminar o tom de pele';
	@override String get allOfTheAbove => 'Tudo acima';
	@override String get whichAreaToImprove => 'Qual área você gostaria de melhorar?';
	@override String get forehead => 'Testa';
	@override String get eyes => 'Olhos';
	@override String get nose => 'Nariz';
	@override String get cheeks => 'Bochechas';
	@override String get lips => 'Lábios';
	@override String get jawline => 'Linha da mandíbula';
	@override String get neck => 'Pescoço';
	@override String get fullface => 'Rosto completo';
	@override String get whatFaceShapeAiming => 'Qual formato de rosto você busca?';
	@override String get heart => 'Coração';
	@override String get oval => 'Oval';
	@override String get square => 'Quadrado';
	@override String get round => 'Redondo';
	@override String get diamond => 'Diamante';
	@override String get whatIsYourSkinType => 'Qual é o seu tipo de pele?';
	@override String get normal => 'Normal';
	@override String get oily => 'Oleosa';
	@override String get dry => 'Seca';
	@override String get combination => 'Mista';
	@override String get sensitive => 'Sensível';
	@override String get whichOfThemDoYouHave => 'Qual destes você tem?';
	@override String get acneAndPimples => 'Acne e espinhas';
	@override String get redness => 'Vermelhidão';
	@override String get swelling => 'Inchaço';
	@override String get wrinkles => 'Rugas';
	@override String get neckLines => 'Linhas do pescoço';
	@override String get howOftenWearMakeup => 'Com que frequência você usa maquiagem?';
	@override String get everyDay => 'Todos os dias';
	@override String get fewDaysAWeek => 'Alguns dias por semana';
	@override String get occasionally => 'Ocasionalmente';
	@override String get never => 'Nunca';
	@override String get haveYouHadBotox => 'Você já fez Botox?';
	@override String get yes => 'Sim';
	@override String get no => 'Não';
	@override String get creatingPersonalizedProfile => 'Criando seu perfil personalizado';
	@override String get tailoringExperience => 'Estamos adaptando sua experiência com base em suas preferências...';
	@override String get gender => 'Gênero';
	@override String get age => 'Idade';
	@override String get weight => 'Peso';
	@override String get height => 'Altura';
	@override String get matchingPersonalities => 'COMBINANDO PERSONALIDADES';
}

// Path: faq
class _TranslationsFaqPt implements TranslationsFaqEn {
	_TranslationsFaqPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perguntas Frequentes';
	@override late final _TranslationsFaqQuestionsPt questions = _TranslationsFaqQuestionsPt._(_root);
}

// Path: splash
class _TranslationsSplashPt implements TranslationsSplashEn {
	_TranslationsSplashPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashScreen1Pt screen1 = _TranslationsSplashScreen1Pt._(_root);
	@override late final _TranslationsSplashScreen2Pt screen2 = _TranslationsSplashScreen2Pt._(_root);
	@override late final _TranslationsSplashScreen3Pt screen3 = _TranslationsSplashScreen3Pt._(_root);
}

// Path: profile
class _TranslationsProfilePt implements TranslationsProfileEn {
	_TranslationsProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get freeVersion => 'Versão Gratuita';
	@override String get error => 'Erro';
	@override late final _TranslationsProfileSectionsPt sections = _TranslationsProfileSectionsPt._(_root);
	@override late final _TranslationsProfileMenuPt menu = _TranslationsProfileMenuPt._(_root);
	@override String get manage => 'GERENCIAR';
	@override late final _TranslationsProfileLogoutDialogPt logoutDialog = _TranslationsProfileLogoutDialogPt._(_root);
}

// Path: home
class _TranslationsHomePt implements TranslationsHomeEn {
	_TranslationsHomePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get premium => 'Premium!';
	@override String get focusAreas => 'Áreas de Foco';
	@override String get popularCourses => 'Cursos Populares';
	@override String get seeMore => 'Ver mais';
	@override late final _TranslationsHomePersonalizedPt personalized = _TranslationsHomePersonalizedPt._(_root);
	@override late final _TranslationsHomePremiumPlanPt premiumPlan = _TranslationsHomePremiumPlanPt._(_root);
	@override late final _TranslationsHomeQuickActionsPt quickActions = _TranslationsHomeQuickActionsPt._(_root);
	@override late final _TranslationsHomeTodaysExercisePt todaysExercise = _TranslationsHomeTodaysExercisePt._(_root);
	@override late final _TranslationsHomeCoursesPt courses = _TranslationsHomeCoursesPt._(_root);
	@override late final _TranslationsHomeBenefitsPt benefits = _TranslationsHomeBenefitsPt._(_root);
}

// Path: courseDetail
class _TranslationsCourseDetailPt implements TranslationsCourseDetailEn {
	_TranslationsCourseDetailPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalhes do Curso';
	@override String get getStarted => 'Começar';
	@override String get noExercisesFound => 'Nenhum exercício encontrado para esta categoria';
	@override late final _TranslationsCourseDetailInstructionsPt instructions = _TranslationsCourseDetailInstructionsPt._(_root);
}

// Path: courses
class _TranslationsCoursesPt implements TranslationsCoursesEn {
	_TranslationsCoursesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Todos os Cursos';
	@override String get error => 'Erro ao carregar exercícios';
	@override String get personalCoursesTitle => 'Cursos Pessoais';
}

// Path: personalProgram
class _TranslationsPersonalProgramPt implements TranslationsPersonalProgramEn {
	_TranslationsPersonalProgramPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get dailyGoalTitle => 'Defina seu objetivo diário';
	@override String get dailyGoalDescription => 'Escolha um ritmo que se adapte à sua agenda';
	@override String get personalizing => 'Personalizando seu plano...';
	@override String get readyMessage => 'Seu programa pessoal de ioga facial de 30 dias está pronto✨';
	@override String get minutes => 'min';
	@override String get objectiveTitle => 'Que expressão mais te incomoda quando te olhas ao espelho?';
	@override String get objectiveSubtitle => 'O equilíbrio do programa é ajustado de acordo com a expressão facial';
	@override String get feelingTitle => 'Como gostarias de te sentir ao fazer ioga facial?';
	@override String get timeTitle => 'Quando é mais fácil para ti fazer ioga facial?';
	@override late final _TranslationsPersonalProgramObjectivesPt objectives = _TranslationsPersonalProgramObjectivesPt._(_root);
	@override late final _TranslationsPersonalProgramFeelingsPt feelings = _TranslationsPersonalProgramFeelingsPt._(_root);
	@override late final _TranslationsPersonalProgramTimesPt times = _TranslationsPersonalProgramTimesPt._(_root);
}

// Path: editProfile
class _TranslationsEditProfilePt implements TranslationsEditProfileEn {
	_TranslationsEditProfilePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Editar Perfil';
	@override String get changePhoto => 'Alterar Foto';
	@override String get fullName => 'Nome Completo';
	@override String get email => 'E-mail';
	@override String get age => 'Idade';
	@override String get gender => 'Gênero';
	@override String get skinType => 'Tipo de Pele';
	@override String get focusArea => 'Área de Foco';
	@override String get focusAreaHint => 'Testa, Olhos, Nariz, Boca, Bochechas...';
	@override String get save => 'Salvar';
	@override String get saving => 'Salvando...';
	@override String get updateSuccess => 'Perfil atualizado com sucesso';
	@override String get updateError => 'Ocorreu um erro ao atualizar o perfil';
	@override String get deleteAccount => 'Excluir Conta';
}

// Path: notifications
class _TranslationsNotificationsPt implements TranslationsNotificationsEn {
	_TranslationsNotificationsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificações';
	@override String get emptyTitle => 'Ainda não há notificações';
	@override String get emptyDescription => 'Nós o notificaremos quando houver uma atualização importante sobre sua jornada de aprendizado.';
	@override String get premiumBannerTitle => 'Não perca os\nbenefícios Premium!';
	@override String get premiumBannerDescription => 'Aproveite as oportunidades como assinante Premium.';
	@override String get sample1Title => 'Sua meditação diária está pronta!';
	@override String get sample1Description => 'Encontre sua calma para o dia';
	@override String get sample1Time => 'Há 15 min';
	@override String get sample2Title => 'Novo exercício: Respiração Oceânica';
	@override String get sample2Description => 'Uma nova técnica de respiração foi adicionada';
	@override String get sample2Time => 'Há 1 hora';
	@override String get sample3Title => 'Você atingiu uma sequência de 7 dias!';
	@override String get sample3Description => 'Continue com o incrível trabalho em seu bem-estar';
	@override String get sample3Time => 'Ontem';
}

// Path: share
class _TranslationsSharePt implements TranslationsShareEn {
	_TranslationsSharePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartilhar com Amigos';
	@override String get mainTitle => 'Compartilhe a Paz';
	@override String get descriptionPart1 => 'Convide amigos para respirar juntos.\nPara cada convite, ambos ganham ';
	@override String get descriptionPart2 => '1 semana Premium';
	@override String get descriptionPart3 => '';
	@override String get yourReferralCode => 'SEU CÓDIGO DE REFERÊNCIA';
	@override String get codeCopied => 'Código copiado!';
	@override String get copyCode => 'Copiar Código';
}

// Path: facialScan
class _TranslationsFacialScanPt implements TranslationsFacialScanEn {
	_TranslationsFacialScanPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Escaneamento Facial';
	@override String step({required Object current, required Object total}) => 'PASSO ${current} DE ${total}';
	@override String get getStarted => 'Começar';
	@override late final _TranslationsFacialScanAnalyzingPt analyzing = _TranslationsFacialScanAnalyzingPt._(_root);
	@override late final _TranslationsFacialScanResultPt result = _TranslationsFacialScanResultPt._(_root);
	@override late final _TranslationsFacialScanInstructionsPt instructions = _TranslationsFacialScanInstructionsPt._(_root);
	@override late final _TranslationsFacialScanErrorsPt errors = _TranslationsFacialScanErrorsPt._(_root);
	@override late final _TranslationsFacialScanPositionsPt positions = _TranslationsFacialScanPositionsPt._(_root);
}

// Path: auth
class _TranslationsAuthPt implements TranslationsAuthEn {
	_TranslationsAuthPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get google => 'Google';
	@override String get facebook => 'Facebook';
	@override String get apple => 'Apple';
	@override String get guest => 'Continuar como Convidado';
	@override String signInFailed({required Object error}) => 'Falha ao entrar: ${error}';
}

// Path: referralCode
class _TranslationsReferralCodePt implements TranslationsReferralCodeEn {
	_TranslationsReferralCodePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get inputPlaceholder => 'Insira o código de 8 caracteres';
	@override String get applying => 'Aplicando código...';
	@override late final _TranslationsReferralCodeSuccessPt success = _TranslationsReferralCodeSuccessPt._(_root);
	@override late final _TranslationsReferralCodeErrorsPt errors = _TranslationsReferralCodeErrorsPt._(_root);
}

// Path: languageOptions
class _TranslationsLanguageOptionsPt implements TranslationsLanguageOptionsEn {
	_TranslationsLanguageOptionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get english => 'Inglês';
	@override String get german => 'Alemão';
	@override String get italian => 'Italiano';
	@override String get french => 'Francês';
	@override String get japanese => 'Japonês';
	@override String get spanish => 'Espanhol';
	@override String get russian => 'Russo';
	@override String get turkish => 'Turco';
	@override String get korean => 'Coreano';
	@override String get hindi => 'Hindi';
	@override String get portuguese => 'Português';
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Pt implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Escopo do Serviço';
	@override String get content => 'Yogiface oferece aos usuários uma experiência guiada de ioga facial e exercícios. O aplicativo inclui:';
	@override List<String> get items => [
		'Guias de ioga facial e exercícios',
		'Rotinas de exercícios diários e semanais',
		'Recomendações direcionadas para áreas faciais específicas',
		'Planos personalizáveis e acompanhamento do progresso',
	];
	@override String get note => 'O conteúdo fornecido não constitui aconselhamento profissional, médico ou estético, diagnóstico ou tratamento.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Pt implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Condições de Uso';
	@override List<String> get items => [
		'Você deve ter pelo menos 13 anos.',
		'Você deve fornecer informações de conta precisas e atualizadas.',
		'Você reconhece que os exercícios não são um serviço médico.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Pt implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Usos Proibidos';
	@override List<String> get items => [
		'Usar o aplicativo para atividades ilegais.',
		'Vender, reproduzir ou distribuir conteúdo sem permissão.',
		'Acesso não autorizado, hacking ou tentativas de engenharia reversa.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Pt implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Conta e Associação';
	@override String get content => 'Você é responsável pela segurança da sua conta. Yogiface reserva-se o direito de suspender ou encerrar contas em caso de uso contrário aos Termos.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Pt implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Serviços Premium e Pagos';
	@override List<String> get items => [
		'Os preços são baseados nas políticas da App Store e Google Play.',
		'As assinaturas podem ser renovadas automaticamente; cancelamentos são feitos através das configurações da loja.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Pt implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Isenção de Responsabilidade';
	@override String get content => 'Os usuários realizam exercícios sob sua própria responsabilidade. Em caso de problemas de saúde, os usuários devem consultar um profissional de saúde. O aplicativo não deve ser usado para diagnóstico ou tratamento.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Pt implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Propriedade Intelectual';
	@override String get content => 'O design, software, imagens e conteúdo de exercícios pertencem ao Yogiface. A cópia não autorizada ou modificação do código-fonte é proibida.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Pt implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Lei Aplicável';
	@override String get content => 'Estes Termos são regidos pelas leis da República da Turquia. Os tribunais centrais de Istambul têm jurisdição sobre disputas.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Pt implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '13. Contato';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Pt implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. O que são cookies?';
	@override String get content => 'Cookies são pequenos arquivos de dados colocados no seu dispositivo. Eles nos ajudam a entender como você usa o aplicativo e tornam sua experiência mais fluida. Os cookies não contêm diretamente sua identidade; eles agem como ajudantes digitais lembrando suas preferências e hábitos de uso.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Pt implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Que cookies usamos?';
	@override late final _TranslationsCookiesPolicySection2EssentialPt essential = _TranslationsCookiesPolicySection2EssentialPt._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformancePt performance = _TranslationsCookiesPolicySection2PerformancePt._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationPt personalization = _TranslationsCookiesPolicySection2PersonalizationPt._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingPt marketing = _TranslationsCookiesPolicySection2MarketingPt._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Pt implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Por que usamos cookies?';
	@override List<String> get items => [
		'Para garantir que o aplicativo funcione de forma rápida e suave',
		'Para reduzir ações repetitivas lembrando as preferências do usuário',
		'Para tornar a experiência mais pessoal e útil',
		'Para melhorar o aplicativo analisando dados de uso',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Pt implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Cookies de Terceiros';
	@override String get content => 'Alguns cookies podem ser colocados por parceiros terceirizados que fornecem serviços analíticos e de publicidade. Estes estão sujeitos às próprias políticas de privacidade e cookies dos provedores.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Pt implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Controle e Gerenciamento de Cookies';
	@override String get content => 'Você pode gerenciar cookies através das configurações do dispositivo, permissões do aplicativo ou configurações do sistema. Desativar cookies necessários pode fazer com que partes do aplicativo funcionem incorretamente.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Pt implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Uso de Dados';
	@override String get content => 'Os dados obtidos através de cookies, se qualificados como dados pessoais, são processados dentro da estrutura legal de acordo com a Política de Privacidade.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Pt implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Atualizações da Política';
	@override String get content => 'Esta política pode ser atualizada dependendo de mudanças tecnológicas e legais. A versão atual entra em vigor assim que publicada.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Pt implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Contato';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Pt implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Informações Coletadas';
	@override late final _TranslationsPrivacyPolicySection1Sub1Pt sub1 = _TranslationsPrivacyPolicySection1Sub1Pt._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Pt sub2 = _TranslationsPrivacyPolicySection1Sub2Pt._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Pt implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Propósitos de Uso de Dados';
	@override List<String> get items => [
		'Para garantir o funcionamento ininterrupto do aplicativo',
		'Para personalizar e otimizar a experiência de ioga facial',
		'Para realizar detecção de erros e análise de desempenho',
		'Para responder a demandas de usuários e solicitações de suporte',
	];
	@override String get note => 'Importante: Os dados do usuário nunca são vendidos a terceiros.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Pt implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Retenção de Dados';
	@override List<String> get items => [
		'Os dados são armazenados enquanto a conta do usuário estiver ativa.',
		'Quando uma conta é excluída, os dados pessoais são removidos irreversivelmente.',
		'Os registros de suporte são mantidos por no máximo 12 meses após a conclusão.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Pt implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Compartilhamento de Dados';
	@override String get content => 'Seus dados são compartilhados apenas em caso de requisitos legais (solicitações oficiais), provedores de serviços (infraestrutura em nuvem, análise) ou com consentimento explícito do usuário.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Pt implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Cookies e Segurança';
	@override String get content => 'Yogiface pode usar cookies para melhorar o desempenho e a experiência. Seus dados são protegidos por criptografia SSL/TLS e auditorias de segurança regulares.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Pt implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Direitos do Usuário';
	@override String get content => 'Você tem o direito de acessar, corrigir, excluir e restringir o processamento de dados.';
	@override String get contact => 'Para solicitações:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Pt implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Privacidade das Crianças';
	@override String get content => 'Yogiface não se destina a indivíduos com menos de 13 anos. Quaisquer dados coletados desta faixa etária serão excluídos imediatamente se detectados.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Pt implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '10. Contato';
	@override String get email => '📩 Email: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsPt implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Pt q1 = _TranslationsFaqQuestionsQ1Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ2Pt q2 = _TranslationsFaqQuestionsQ2Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ3Pt q3 = _TranslationsFaqQuestionsQ3Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ4Pt q4 = _TranslationsFaqQuestionsQ4Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ5Pt q5 = _TranslationsFaqQuestionsQ5Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ6Pt q6 = _TranslationsFaqQuestionsQ6Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ7Pt q7 = _TranslationsFaqQuestionsQ7Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ8Pt q8 = _TranslationsFaqQuestionsQ8Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ9Pt q9 = _TranslationsFaqQuestionsQ9Pt._(_root);
	@override late final _TranslationsFaqQuestionsQ10Pt q10 = _TranslationsFaqQuestionsQ10Pt._(_root);
}

// Path: splash.screen1
class _TranslationsSplashScreen1Pt implements TranslationsSplashScreen1En {
	_TranslationsSplashScreen1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Molde seu rosto naturalmente';
	@override String get description => 'Trabalhe seus músculos faciais com apenas alguns minutos de exercícios faciais diários. Crie uma rotina de beleza natural, estética e não invasiva.';
}

// Path: splash.screen2
class _TranslationsSplashScreen2Pt implements TranslationsSplashScreen2En {
	_TranslationsSplashScreen2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plano de Exercícios Personalizado com IA';
	@override String get description => 'A IA analisa suas características faciais, determina suas necessidades e recomenda exercícios adaptados a você. Rastreia quais músculos precisam de mais trabalho.';
}

// Path: splash.screen3
class _TranslationsSplashScreen3Pt implements TranslationsSplashScreen3En {
	_TranslationsSplashScreen3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Resultados Visíveis';
	@override String get description => 'Com uso regular, os contornos faciais tornam-se mais definidos, a circulação melhora e a pele parece mais vibrante. Pequenos passos todos os dias trazem grandes mudanças.';
}

// Path: profile.sections
class _TranslationsProfileSectionsPt implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get accountSettings => 'CONFIGURAÇÕES DA CONTA';
	@override String get supportAndOther => 'SUPORTE E OUTROS';
}

// Path: profile.menu
class _TranslationsProfileMenuPt implements TranslationsProfileMenuEn {
	_TranslationsProfileMenuPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get editProfile => 'Editar Perfil';
	@override String get notifications => 'Notificações';
	@override String get premium => 'Premium';
	@override String get favoriteExercises => 'Exercícios Favoritos';
	@override String get appLanguage => 'Idioma do Aplicativo';
	@override String get shareWithFriends => 'Compartilhar com Amigos';
	@override String get enterInviteCode => 'Inserir Código de Convite';
	@override String get rateUs => 'Avalie-nos';
	@override String get faq => 'FAQ';
	@override String get logout => 'Sair';
}

// Path: profile.logoutDialog
class _TranslationsProfileLogoutDialogPt implements TranslationsProfileLogoutDialogEn {
	_TranslationsProfileLogoutDialogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Você está prestes a sair';
	@override String get message => 'Nos vemos de novo! Continuaremos rastreando seus exercícios de respiração.';
	@override String get logoutButton => 'Sair';
	@override String get cancelButton => 'Cancelar';
}

// Path: home.personalized
class _TranslationsHomePersonalizedPt implements TranslationsHomePersonalizedEn {
	_TranslationsHomePersonalizedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Relatório de\nAnálise Facial\nPersonalizado';
	@override String get description => 'Por favor, analise sua pele\npara descobrir qual é o seu tipo.';
	@override String get button => 'Experimente Agora';
}

// Path: home.premiumPlan
class _TranslationsHomePremiumPlanPt implements TranslationsHomePremiumPlanEn {
	_TranslationsHomePremiumPlanPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plano Premium';
	@override String get description => 'Desbloqueie seu chatbot de IA e\nobtenha todos os recursos premium';
	@override String get button => 'Obter Premium';
	@override late final _TranslationsHomePremiumPlanDialogPt dialog = _TranslationsHomePremiumPlanDialogPt._(_root);
}

// Path: home.quickActions
class _TranslationsHomeQuickActionsPt implements TranslationsHomeQuickActionsEn {
	_TranslationsHomeQuickActionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ações Rápidas';
	@override String get programTitle => 'Seu Programa Pessoal';
	@override String get programSubtitle => 'Para sua melhor aparência\nem 30 dias';
	@override String get button => 'Começar';
}

// Path: home.todaysExercise
class _TranslationsHomeTodaysExercisePt implements TranslationsHomeTodaysExerciseEn {
	_TranslationsHomeTodaysExercisePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exercício de Hoje';
	@override String get recommended => 'Rotina Recomendada';
	@override String get forToday => 'para hoje';
}

// Path: home.courses
class _TranslationsHomeCoursesPt implements TranslationsHomeCoursesEn {
	_TranslationsHomeCoursesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeCoursesForeheadSmootherPt foreheadSmoother = _TranslationsHomeCoursesForeheadSmootherPt._(_root);
	@override late final _TranslationsHomeCoursesVMovePt vMove = _TranslationsHomeCoursesVMovePt._(_root);
	@override late final _TranslationsHomeCoursesCheekLifterPt cheekLifter = _TranslationsHomeCoursesCheekLifterPt._(_root);
}

// Path: home.benefits
class _TranslationsHomeBenefitsPt implements TranslationsHomeBenefitsEn {
	_TranslationsHomeBenefitsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeBenefitsNaturalIroningPt naturalIroning = _TranslationsHomeBenefitsNaturalIroningPt._(_root);
	@override late final _TranslationsHomeBenefitsBotoxEffectPt botoxEffect = _TranslationsHomeBenefitsBotoxEffectPt._(_root);
	@override late final _TranslationsHomeBenefitsStressReliefPt stressRelief = _TranslationsHomeBenefitsStressReliefPt._(_root);
	@override late final _TranslationsHomeBenefitsRadiantAppearancePt radiantAppearance = _TranslationsHomeBenefitsRadiantAppearancePt._(_root);
	@override late final _TranslationsHomeBenefitsDePuffingPt dePuffing = _TranslationsHomeBenefitsDePuffingPt._(_root);
}

// Path: courseDetail.instructions
class _TranslationsCourseDetailInstructionsPt implements TranslationsCourseDetailInstructionsEn {
	_TranslationsCourseDetailInstructionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCourseDetailInstructionsInstruction1Pt instruction1 = _TranslationsCourseDetailInstructionsInstruction1Pt._(_root);
	@override late final _TranslationsCourseDetailInstructionsInstruction2Pt instruction2 = _TranslationsCourseDetailInstructionsInstruction2Pt._(_root);
}

// Path: personalProgram.objectives
class _TranslationsPersonalProgramObjectivesPt implements TranslationsPersonalProgramObjectivesEn {
	_TranslationsPersonalProgramObjectivesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get tired => 'Aparência cansada e desgastada';
	@override String get harsh => 'Expressão dura e tensa';
	@override String get pale => 'Pele pálida e sem vida';
	@override String get asymmetrical => 'Traços faciais assimétricos';
	@override String get general => 'Sem problema óbvio, quero cuidados gerais';
}

// Path: personalProgram.feelings
class _TranslationsPersonalProgramFeelingsPt implements TranslationsPersonalProgramFeelingsEn {
	_TranslationsPersonalProgramFeelingsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get lightened => 'Aliviado';
	@override String get revitalized => 'Revitalizado';
	@override String get refreshed => 'Refrescado';
	@override String get energetic => 'Mais energético';
}

// Path: personalProgram.times
class _TranslationsPersonalProgramTimesPt implements TranslationsPersonalProgramTimesEn {
	_TranslationsPersonalProgramTimesPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get morning => 'Manhã';
	@override String get duringDay => 'Durante o dia';
	@override String get evening => 'Noite';
	@override String get anytime => 'A hora não importa, um lembrete é suficiente';
}

// Path: facialScan.analyzing
class _TranslationsFacialScanAnalyzingPt implements TranslationsFacialScanAnalyzingEn {
	_TranslationsFacialScanAnalyzingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analisando';
	@override String get description => 'Analisando suas características únicas';
	@override String get detail => 'Detectando textura da pele, tônus muscular e área de foco para sua rotina personalizada.';
	@override String get aiEngineWorking => 'MOTOR DE IA TRABALHANDO';
}

// Path: facialScan.result
class _TranslationsFacialScanResultPt implements TranslationsFacialScanResultEn {
	_TranslationsFacialScanResultPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sua análise está pronta!';
	@override String get subtitle => 'Criamos uma rotina com base em seus resultados.';
	@override String get skinType => 'TIPO DE PELE';
	@override String get primaryGoal => 'OBJETIVO PRINCIPAL';
	@override String get recommended => 'Recomendado para você';
	@override String get back => 'Voltar';
}

// Path: facialScan.instructions
class _TranslationsFacialScanInstructionsPt implements TranslationsFacialScanInstructionsEn {
	_TranslationsFacialScanInstructionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get front => 'Posicione seu rosto dentro do quadro';
	@override String get left => 'Vire sua cabeça para a esquerda';
	@override String get right => 'Vire sua cabeça para a direita';
	@override String get lighting => 'Certifique-se de estar em um ambiente bem iluminado para melhores resultados';
	@override String get tapToCapture => 'Toque no botão da câmera para tirar uma foto';
}

// Path: facialScan.errors
class _TranslationsFacialScanErrorsPt implements TranslationsFacialScanErrorsEn {
	_TranslationsFacialScanErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get cameraPermission => 'A permissão da câmera é necessária para tirar fotos.';
	@override String get cameraPermissionRequired => 'Permissão da câmera necessária';
	@override String get cameraPermissionMessage => 'A permissão da câmera é necessária para o escaneamento facial. Por favor, habilite-a nas configurações do aplicativo.';
	@override String get openSettings => 'Abrir Configurações';
	@override String get cancel => 'Cancelar';
	@override String get noFaceDetected => 'Nenhum rosto detectado. Por favor, tente novamente.';
	@override String get captureFailed => 'Falha ao capturar a imagem. Por favor, tente novamente.';
}

// Path: facialScan.positions
class _TranslationsFacialScanPositionsPt implements TranslationsFacialScanPositionsEn {
	_TranslationsFacialScanPositionsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get front => 'FRENTE';
	@override String get left => 'ESQUERDA';
	@override String get right => 'DIREITA';
}

// Path: referralCode.success
class _TranslationsReferralCodeSuccessPt implements TranslationsReferralCodeSuccessEn {
	_TranslationsReferralCodeSuccessPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sucesso!';
	@override String get message => 'Código de referência aplicado com sucesso! Você e seu amigo receberam 1 semana de premium.';
}

// Path: referralCode.errors
class _TranslationsReferralCodeErrorsPt implements TranslationsReferralCodeErrorsEn {
	_TranslationsReferralCodeErrorsPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsReferralCodeErrorsMissingCodePt missingCode = _TranslationsReferralCodeErrorsMissingCodePt._(_root);
	@override late final _TranslationsReferralCodeErrorsInvalidFormatPt invalidFormat = _TranslationsReferralCodeErrorsInvalidFormatPt._(_root);
	@override late final _TranslationsReferralCodeErrorsAlreadyUsedPt alreadyUsed = _TranslationsReferralCodeErrorsAlreadyUsedPt._(_root);
	@override late final _TranslationsReferralCodeErrorsSelfReferralPt selfReferral = _TranslationsReferralCodeErrorsSelfReferralPt._(_root);
	@override late final _TranslationsReferralCodeErrorsCodeNotFoundPt codeNotFound = _TranslationsReferralCodeErrorsCodeNotFoundPt._(_root);
	@override late final _TranslationsReferralCodeErrorsGenericErrorPt genericError = _TranslationsReferralCodeErrorsGenericErrorPt._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialPt implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies Estritamente Necessários';
	@override String get content => 'Necessários para as funções básicas do aplicativo. Eles suportam processos principais como gerenciamento de sessão, segurança e navegação básica.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformancePt implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de Desempenho e Análise';
	@override String get content => 'Nos ajudam a entender quais áreas são usadas com mais frequência e quais seções precisam de melhoria.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationPt implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de Personalização';
	@override String get content => 'Fornecem uma experiência mais pessoal lembrando configurações como idioma, tema e preferências de exercício.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingPt implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cookies de Marketing e Publicidade';
	@override String get content => 'Podem ser usados para fornecer conteúdo e promoções mais adequados aos seus interesses e às vezes funcionam com serviços de terceiros.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Pt implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Dados Fornecidos pelo Usuário';
	@override List<String> get items => [
		'Nome, apelido ou informações de perfil',
		'Endereço de e-mail (para registro, compra e suporte)',
		'Planos de exercícios, preferências e configurações de personalização',
		'Feedback, solicitações e mensagens de suporte',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Pt implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Dados Coletados Automaticamente';
	@override List<String> get items => [
		'Tipo de dispositivo, sistema operacional e informações técnicas',
		'Dados de localização aproximados (nível cidade/país)',
		'Informações de uso como duração da sessão e interações na tela',
		'Logs de desempenho, erros e falhas',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Pt implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'O que é YogiFace?';
	@override String get answer => 'YogiFace é um aplicativo de cuidados pessoais impulsionado por IA que oferece exercícios de ioga facial para melhorar a aparência da pele trabalhando os músculos faciais.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Pt implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'O aplicativo realmente funciona?';
	@override String get answer => 'Sim. A ioga facial ativa os músculos faciais para aumentar a firmeza da pele, acelerar a circulação e fornecer uma aparência mais jovem com uso regular.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Pt implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'O que a inteligência artificial faz aqui?';
	@override String get answer => 'YogiFace analisa as características faciais, identifica áreas-alvo e cria um plano de exercícios personalizado. Dessa forma, cada movimento é otimizado de acordo com as necessidades pessoais.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Pt implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quanto tempo preciso dedicar a cada dia?';
	@override String get answer => 'Apenas 5-10 minutos por dia são suficientes. Com prática regular, mudanças visíveis começam dentro de algumas semanas.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Pt implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Quando verei resultados?';
	@override String get answer => 'Com uso regular, a melhoria no tom de pele é visível em 2-3 semanas, e as características faciais tornam-se mais definidas em 4-6 semanas. Os resultados podem variar de pessoa para pessoa.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Pt implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Funciona para problemas como queixo duplo ou flacidez?';
	@override String get answer => 'Sim. YogiFace oferece exercícios direcionados para a linha da mandíbula, músculos das bochechas e área do pescoço. Quando feitos regularmente, esses exercícios proporcionam um aperto significativo nessas áreas.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Pt implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Como sei se estou fazendo os movimentos corretamente?';
	@override String get answer => 'O aplicativo usa IA para analisar o ângulo do seu rosto, expressão e padrão de movimento; ele notifica você sobre quaisquer pontos incorretos.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Pt implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'É adequado para todas as idades?';
	@override String get answer => 'Sim. A ioga facial é um método natural não invasivo. Todos podem praticá-lo com segurança desde cedo.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Pt implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace é gratuito?';
	@override String get answer => 'Os exercícios básicos são gratuitos. Programas pessoais, análise facial avançada e recomendações especiais de IA estão incluídos no pacote premium.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Pt implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get question => 'Pessoas que fizeram cirurgia plástica podem usá-lo?';
	@override String get answer => 'Muitos usuários o usam com segurança, mas recomenda-se consultar um médico durante o período de recuperação pós-operatória.';
}

// Path: home.premiumPlan.dialog
class _TranslationsHomePremiumPlanDialogPt implements TranslationsHomePremiumPlanDialogEn {
	_TranslationsHomePremiumPlanDialogPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recurso não disponível';
	@override String get message => 'Este recurso não está disponível no momento.';
	@override String get button => 'OK';
}

// Path: home.courses.foreheadSmoother
class _TranslationsHomeCoursesForeheadSmootherPt implements TranslationsHomeCoursesForeheadSmootherEn {
	_TranslationsHomeCoursesForeheadSmootherPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Alisador de Testa';
	@override String get description => 'Este movimento libera a tensão nos músculos da testa e as linhas de expressão acumuladas...';
}

// Path: home.courses.vMove
class _TranslationsHomeCoursesVMovePt implements TranslationsHomeCoursesVMoveEn {
	_TranslationsHomeCoursesVMovePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Movimento "V"';
	@override String get description => 'Fortalece a pele delicada ao redor dos olhos, levanta as pálpebras caídas e apaga sinais de fadiga.';
}

// Path: home.courses.cheekLifter
class _TranslationsHomeCoursesCheekLifterPt implements TranslationsHomeCoursesCheekLifterEn {
	_TranslationsHomeCoursesCheekLifterPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'O Levantador de Bochechas';
	@override String get description => 'Levanta os músculos das bochechas (Zigomático) que são mais propensos à gravidade, restaurando o oval facial.';
}

// Path: home.benefits.naturalIroning
class _TranslationsHomeBenefitsNaturalIroningPt implements TranslationsHomeBenefitsNaturalIroningEn {
	_TranslationsHomeBenefitsNaturalIroningPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alisamento Natural:';
	@override String get description => 'Abre as linhas horizontais na testa e evita que se aprofundem.';
}

// Path: home.benefits.botoxEffect
class _TranslationsHomeBenefitsBotoxEffectPt implements TranslationsHomeBenefitsBotoxEffectEn {
	_TranslationsHomeBenefitsBotoxEffectPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Efeito Botox';
	@override String get description => 'Relaxa os músculos tensos e quebra o hábito de franzir a testa.';
}

// Path: home.benefits.stressRelief
class _TranslationsHomeBenefitsStressReliefPt implements TranslationsHomeBenefitsStressReliefEn {
	_TranslationsHomeBenefitsStressReliefPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Alívio do Estresse';
	@override String get description => 'Alivia o estresse acumulado na testa e alivia as dores de cabeça.';
}

// Path: home.benefits.radiantAppearance
class _TranslationsHomeBenefitsRadiantAppearancePt implements TranslationsHomeBenefitsRadiantAppearanceEn {
	_TranslationsHomeBenefitsRadiantAppearancePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aparência Radiante';
	@override String get description => 'Aumenta a circulação sanguínea para dar à pele um brilho.';
}

// Path: home.benefits.dePuffing
class _TranslationsHomeBenefitsDePuffingPt implements TranslationsHomeBenefitsDePuffingEn {
	_TranslationsHomeBenefitsDePuffingPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desinchaço';
	@override String get description => 'Reduz o inchaço facial através do seu efeito de drenagem linfática.';
}

// Path: courseDetail.instructions.instruction1
class _TranslationsCourseDetailInstructionsInstruction1Pt implements TranslationsCourseDetailInstructionsInstruction1En {
	_TranslationsCourseDetailInstructionsInstruction1Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lave as mãos e o rosto';
	@override String get description => 'Uma pele limpa torna a massagem mais eficaz.';
}

// Path: courseDetail.instructions.instruction2
class _TranslationsCourseDetailInstructionsInstruction2Pt implements TranslationsCourseDetailInstructionsInstruction2En {
	_TranslationsCourseDetailInstructionsInstruction2Pt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Aplique óleo facial ou hidratante';
	@override String get description => 'Deslize suavemente sem puxar sua pele.';
}

// Path: referralCode.errors.missingCode
class _TranslationsReferralCodeErrorsMissingCodePt implements TranslationsReferralCodeErrorsMissingCodeEn {
	_TranslationsReferralCodeErrorsMissingCodePt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código necessário';
	@override String get message => 'Por favor, insira um código de referência para continuar.';
}

// Path: referralCode.errors.invalidFormat
class _TranslationsReferralCodeErrorsInvalidFormatPt implements TranslationsReferralCodeErrorsInvalidFormatEn {
	_TranslationsReferralCodeErrorsInvalidFormatPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Formato inválido';
	@override String get message => 'O código de referência deve ter exatamente 8 caracteres.';
}

// Path: referralCode.errors.alreadyUsed
class _TranslationsReferralCodeErrorsAlreadyUsedPt implements TranslationsReferralCodeErrorsAlreadyUsedEn {
	_TranslationsReferralCodeErrorsAlreadyUsedPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Já utilizado';
	@override String get message => 'Você já usou um código de referência. Cada usuário só pode usar um código.';
}

// Path: referralCode.errors.selfReferral
class _TranslationsReferralCodeErrorsSelfReferralPt implements TranslationsReferralCodeErrorsSelfReferralEn {
	_TranslationsReferralCodeErrorsSelfReferralPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código inválido';
	@override String get message => 'Você não pode usar seu próprio código de convite. Por favor, use um código de um amigo.';
}

// Path: referralCode.errors.codeNotFound
class _TranslationsReferralCodeErrorsCodeNotFoundPt implements TranslationsReferralCodeErrorsCodeNotFoundEn {
	_TranslationsReferralCodeErrorsCodeNotFoundPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Código não encontrado';
	@override String get message => 'O código de referência inserido não existe. Por favor, verifique e tente novamente.';
}

// Path: referralCode.errors.genericError
class _TranslationsReferralCodeErrorsGenericErrorPt implements TranslationsReferralCodeErrorsGenericErrorEn {
	_TranslationsReferralCodeErrorsGenericErrorPt._(this._root);

	final TranslationsPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erro';
	@override String get message => 'Ocorreu um erro ao aplicar o código de referência. Por favor, tente novamente.';
}

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => ({required Object name}) => 'Bem-vindo ${name}',
			'welcome2' => 'Bem-vindo',
			'get_started' => 'Começar',
			'next' => 'Próximo',
			'back' => 'Voltar',
			'skip' => 'Pular',
			'logintext' => 'Fico feliz em vê-lo. Você pode continuar de onde parou fazendo login em sua conta.',
			'termOfService.text1' => 'Ao se inscrever no swipe, você concorda com nossos ',
			'termOfService.link1' => 'Termos de Serviço',
			'termOfService.text2' => '. Saiba como processamos seus dados em nossa ',
			'termOfService.link2' => 'Política de Privacidade',
			'termOfService.text3' => ' e ',
			'termOfService.link3' => 'Política de Cookies',
			'termOfService.text4' => '',
			'cookies' => 'Política de Cookies',
			'privacy' => 'Política de Privacidade',
			'termsOfService.title' => 'Yogiface – Termos de Serviço',
			'termsOfService.lastUpdated' => 'Última atualização: 2025',
			'termsOfService.principle' => 'Yogiface é um aplicativo de bem-estar que fornece exercícios de ioga facial e conteúdo guiado destinado a apoiar os músculos faciais. O aplicativo não fornece serviços médicos, clínicos, estéticos ou de saúde profissional.',
			'termsOfService.intro' => 'Estes Termos de Serviço ("Termos") contêm as regras aplicáveis ao seu uso do aplicativo móvel Yogiface ("Aplicativo"). Ao usar o Aplicativo, você concorda com estes Termos. Se você não concordar com os Termos, não deve usar o Aplicativo.',
			'termsOfService.section1.title' => '1. Escopo do Serviço',
			'termsOfService.section1.content' => 'Yogiface oferece aos usuários uma experiência guiada de ioga facial e exercícios. O aplicativo inclui:',
			'termsOfService.section1.items.0' => 'Guias de ioga facial e exercícios',
			'termsOfService.section1.items.1' => 'Rotinas de exercícios diários e semanais',
			'termsOfService.section1.items.2' => 'Recomendações direcionadas para áreas faciais específicas',
			'termsOfService.section1.items.3' => 'Planos personalizáveis e acompanhamento do progresso',
			'termsOfService.section1.note' => 'O conteúdo fornecido não constitui aconselhamento profissional, médico ou estético, diagnóstico ou tratamento.',
			'termsOfService.section2.title' => '2. Condições de Uso',
			'termsOfService.section2.items.0' => 'Você deve ter pelo menos 13 anos.',
			'termsOfService.section2.items.1' => 'Você deve fornecer informações de conta precisas e atualizadas.',
			'termsOfService.section2.items.2' => 'Você reconhece que os exercícios não são um serviço médico.',
			'termsOfService.section3.title' => '3. Usos Proibidos',
			'termsOfService.section3.items.0' => 'Usar o aplicativo para atividades ilegais.',
			'termsOfService.section3.items.1' => 'Vender, reproduzir ou distribuir conteúdo sem permissão.',
			'termsOfService.section3.items.2' => 'Acesso não autorizado, hacking ou tentativas de engenharia reversa.',
			'termsOfService.section4.title' => '4. Conta e Associação',
			'termsOfService.section4.content' => 'Você é responsável pela segurança da sua conta. Yogiface reserva-se o direito de suspender ou encerrar contas em caso de uso contrário aos Termos.',
			'termsOfService.section5.title' => '5. Serviços Premium e Pagos',
			'termsOfService.section5.items.0' => 'Os preços são baseados nas políticas da App Store e Google Play.',
			'termsOfService.section5.items.1' => 'As assinaturas podem ser renovadas automaticamente; cancelamentos são feitos através das configurações da loja.',
			'termsOfService.section6.title' => '6. Isenção de Responsabilidade',
			'termsOfService.section6.content' => 'Os usuários realizam exercícios sob sua própria responsabilidade. Em caso de problemas de saúde, os usuários devem consultar um profissional de saúde. O aplicativo não deve ser usado para diagnóstico ou tratamento.',
			'termsOfService.section7.title' => '7. Propriedade Intelectual',
			'termsOfService.section7.content' => 'O design, software, imagens e conteúdo de exercícios pertencem ao Yogiface. A cópia não autorizada ou modificação do código-fonte é proibida.',
			'termsOfService.section12.title' => '12. Lei Aplicável',
			'termsOfService.section12.content' => 'Estes Termos são regidos pelas leis da República da Turquia. Os tribunais centrais de Istambul têm jurisdição sobre disputas.',
			'termsOfService.section13.title' => '13. Contato',
			'termsOfService.section13.email' => '📩 Email: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Política de Cookies',
			'cookiesPolicy.lastUpdated' => 'Última atualização: 2025',
			'cookiesPolicy.intro' => 'Bem-vindo ao Yogiface! Sempre que você visita o aplicativo, usamos ajudantes digitais (cookies) para melhorar e personalizar sua experiência. Esta política explica como você pode gerenciar suas preferências.',
			'cookiesPolicy.section1.title' => '1. O que são cookies?',
			'cookiesPolicy.section1.content' => 'Cookies são pequenos arquivos de dados colocados no seu dispositivo. Eles nos ajudam a entender como você usa o aplicativo e tornam sua experiência mais fluida. Os cookies não contêm diretamente sua identidade; eles agem como ajudantes digitais lembrando suas preferências e hábitos de uso.',
			'cookiesPolicy.section2.title' => '2. Que cookies usamos?',
			'cookiesPolicy.section2.essential.title' => 'Cookies Estritamente Necessários',
			'cookiesPolicy.section2.essential.content' => 'Necessários para as funções básicas do aplicativo. Eles suportam processos principais como gerenciamento de sessão, segurança e navegação básica.',
			'cookiesPolicy.section2.performance.title' => 'Cookies de Desempenho e Análise',
			'cookiesPolicy.section2.performance.content' => 'Nos ajudam a entender quais áreas são usadas com mais frequência e quais seções precisam de melhoria.',
			'cookiesPolicy.section2.personalization.title' => 'Cookies de Personalização',
			'cookiesPolicy.section2.personalization.content' => 'Fornecem uma experiência mais pessoal lembrando configurações como idioma, tema e preferências de exercício.',
			'cookiesPolicy.section2.marketing.title' => 'Cookies de Marketing e Publicidade',
			'cookiesPolicy.section2.marketing.content' => 'Podem ser usados para fornecer conteúdo e promoções mais adequados aos seus interesses e às vezes funcionam com serviços de terceiros.',
			'cookiesPolicy.section3.title' => '3. Por que usamos cookies?',
			'cookiesPolicy.section3.items.0' => 'Para garantir que o aplicativo funcione de forma rápida e suave',
			'cookiesPolicy.section3.items.1' => 'Para reduzir ações repetitivas lembrando as preferências do usuário',
			'cookiesPolicy.section3.items.2' => 'Para tornar a experiência mais pessoal e útil',
			'cookiesPolicy.section3.items.3' => 'Para melhorar o aplicativo analisando dados de uso',
			'cookiesPolicy.section4.title' => '4. Cookies de Terceiros',
			'cookiesPolicy.section4.content' => 'Alguns cookies podem ser colocados por parceiros terceirizados que fornecem serviços analíticos e de publicidade. Estes estão sujeitos às próprias políticas de privacidade e cookies dos provedores.',
			'cookiesPolicy.section5.title' => '5. Controle e Gerenciamento de Cookies',
			'cookiesPolicy.section5.content' => 'Você pode gerenciar cookies através das configurações do dispositivo, permissões do aplicativo ou configurações do sistema. Desativar cookies necessários pode fazer com que partes do aplicativo funcionem incorretamente.',
			'cookiesPolicy.section6.title' => '6. Uso de Dados',
			'cookiesPolicy.section6.content' => 'Os dados obtidos através de cookies, se qualificados como dados pessoais, são processados dentro da estrutura legal de acordo com a Política de Privacidade.',
			'cookiesPolicy.section7.title' => '7. Atualizações da Política',
			'cookiesPolicy.section7.content' => 'Esta política pode ser atualizada dependendo de mudanças tecnológicas e legais. A versão atual entra em vigor assim que publicada.',
			'cookiesPolicy.section8.title' => '8. Contato',
			'cookiesPolicy.section8.email' => '📩 Email: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Política de Privacidade',
			'privacyPolicy.lastUpdated' => 'Última atualização: 2025',
			'privacyPolicy.intro' => 'Esta Política de Privacidade explica os princípios relacionados à coleta, uso, armazenamento e proteção de dados pessoais de todos os usuários que usam o aplicativo móvel Yogiface ("App"). Ao usar o App, você aceita esta política.',
			'privacyPolicy.principle' => 'Yogiface adota a privacidade do usuário e a segurança de dados como um princípio fundamental. Todos os dados pessoais são processados de acordo com o GDPR e a legislação relevante.',
			'privacyPolicy.section1.title' => '1. Informações Coletadas',
			'privacyPolicy.section1.sub1.title' => '1.1. Dados Fornecidos pelo Usuário',
			'privacyPolicy.section1.sub1.items.0' => 'Nome, apelido ou informações de perfil',
			'privacyPolicy.section1.sub1.items.1' => 'Endereço de e-mail (para registro, compra e suporte)',
			'privacyPolicy.section1.sub1.items.2' => 'Planos de exercícios, preferências e configurações de personalização',
			'privacyPolicy.section1.sub1.items.3' => 'Feedback, solicitações e mensagens de suporte',
			'privacyPolicy.section1.sub2.title' => '1.2. Dados Coletados Automaticamente',
			'privacyPolicy.section1.sub2.items.0' => 'Tipo de dispositivo, sistema operacional e informações técnicas',
			'privacyPolicy.section1.sub2.items.1' => 'Dados de localização aproximados (nível cidade/país)',
			'privacyPolicy.section1.sub2.items.2' => 'Informações de uso como duração da sessão e interações na tela',
			'privacyPolicy.section1.sub2.items.3' => 'Logs de desempenho, erros e falhas',
			'privacyPolicy.section2.title' => '2. Propósitos de Uso de Dados',
			'privacyPolicy.section2.items.0' => 'Para garantir o funcionamento ininterrupto do aplicativo',
			'privacyPolicy.section2.items.1' => 'Para personalizar e otimizar a experiência de ioga facial',
			'privacyPolicy.section2.items.2' => 'Para realizar detecção de erros e análise de desempenho',
			'privacyPolicy.section2.items.3' => 'Para responder a demandas de usuários e solicitações de suporte',
			'privacyPolicy.section2.note' => 'Importante: Os dados do usuário nunca são vendidos a terceiros.',
			'privacyPolicy.section3.title' => '3. Retenção de Dados',
			'privacyPolicy.section3.items.0' => 'Os dados são armazenados enquanto a conta do usuário estiver ativa.',
			'privacyPolicy.section3.items.1' => 'Quando uma conta é excluída, os dados pessoais são removidos irreversivelmente.',
			'privacyPolicy.section3.items.2' => 'Os registros de suporte são mantidos por no máximo 12 meses após a conclusão.',
			'privacyPolicy.section4.title' => '4. Compartilhamento de Dados',
			'privacyPolicy.section4.content' => 'Seus dados são compartilhados apenas em caso de requisitos legais (solicitações oficiais), provedores de serviços (infraestrutura em nuvem, análise) ou com consentimento explícito do usuário.',
			'privacyPolicy.section5.title' => '5. Cookies e Segurança',
			'privacyPolicy.section5.content' => 'Yogiface pode usar cookies para melhorar o desempenho e a experiência. Seus dados são protegidos por criptografia SSL/TLS e auditorias de segurança regulares.',
			'privacyPolicy.section6.title' => '6. Direitos do Usuário',
			'privacyPolicy.section6.content' => 'Você tem o direito de acessar, corrigir, excluir e restringir o processamento de dados.',
			'privacyPolicy.section6.contact' => 'Para solicitações:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Privacidade das Crianças',
			'privacyPolicy.section8.content' => 'Yogiface não se destina a indivíduos com menos de 13 anos. Quaisquer dados coletados desta faixa etária serão excluídos imediatamente se detectados.',
			'privacyPolicy.section10.title' => '10. Contato',
			'privacyPolicy.section10.email' => '📩 Email: support@fly-work.com',
			'onboarding.basicInformation' => 'INFORMAÇÕES BÁSICAS',
			'onboarding.target' => 'OBJETIVO',
			'onboarding.habits' => 'HÁBITOS',
			'onboarding.step' => 'PASSO',
			'onboarding.of' => 'DE',
			'onboarding.tellUsAboutYourself' => 'Conte-nos sobre você',
			'onboarding.shortBioDescription' => 'Uma biografia curta ajuda os outros a conhecerem você de verdade. Mantenha-a divertida e genuína',
			'onboarding.enterYourFullname' => 'Digite seu nome completo',
			'onboarding.fullName' => 'Nome completo',
			'onboarding.male' => 'Masculino',
			'onboarding.female' => 'Feminino',
			'onboarding.dontWantToMention' => 'Não quero mencionar',
			'onboarding.whatIsMainObjective' => 'Qual é o objetivo principal?',
			'onboarding.reduceWrinkles' => 'Reduzir rugas',
			'onboarding.tightenSkin' => 'Apertar a pele',
			'onboarding.liftDroopyEyelids' => 'Levantar pálpebras caídas',
			'onboarding.eliminateDoubleChin' => 'Eliminar queixo duplo',
			'onboarding.brightenSkinTone' => 'Iluminar o tom de pele',
			'onboarding.allOfTheAbove' => 'Tudo acima',
			'onboarding.whichAreaToImprove' => 'Qual área você gostaria de melhorar?',
			'onboarding.forehead' => 'Testa',
			'onboarding.eyes' => 'Olhos',
			'onboarding.nose' => 'Nariz',
			'onboarding.cheeks' => 'Bochechas',
			'onboarding.lips' => 'Lábios',
			'onboarding.jawline' => 'Linha da mandíbula',
			'onboarding.neck' => 'Pescoço',
			'onboarding.fullface' => 'Rosto completo',
			'onboarding.whatFaceShapeAiming' => 'Qual formato de rosto você busca?',
			'onboarding.heart' => 'Coração',
			'onboarding.oval' => 'Oval',
			'onboarding.square' => 'Quadrado',
			'onboarding.round' => 'Redondo',
			'onboarding.diamond' => 'Diamante',
			'onboarding.whatIsYourSkinType' => 'Qual é o seu tipo de pele?',
			'onboarding.normal' => 'Normal',
			'onboarding.oily' => 'Oleosa',
			'onboarding.dry' => 'Seca',
			'onboarding.combination' => 'Mista',
			'onboarding.sensitive' => 'Sensível',
			'onboarding.whichOfThemDoYouHave' => 'Qual destes você tem?',
			'onboarding.acneAndPimples' => 'Acne e espinhas',
			'onboarding.redness' => 'Vermelhidão',
			'onboarding.swelling' => 'Inchaço',
			'onboarding.wrinkles' => 'Rugas',
			'onboarding.neckLines' => 'Linhas do pescoço',
			'onboarding.howOftenWearMakeup' => 'Com que frequência você usa maquiagem?',
			'onboarding.everyDay' => 'Todos os dias',
			'onboarding.fewDaysAWeek' => 'Alguns dias por semana',
			'onboarding.occasionally' => 'Ocasionalmente',
			'onboarding.never' => 'Nunca',
			'onboarding.haveYouHadBotox' => 'Você já fez Botox?',
			'onboarding.yes' => 'Sim',
			'onboarding.no' => 'Não',
			'onboarding.creatingPersonalizedProfile' => 'Criando seu perfil personalizado',
			'onboarding.tailoringExperience' => 'Estamos adaptando sua experiência com base em suas preferências...',
			'onboarding.gender' => 'Gênero',
			'onboarding.age' => 'Idade',
			'onboarding.weight' => 'Peso',
			'onboarding.height' => 'Altura',
			'onboarding.matchingPersonalities' => 'COMBINANDO PERSONALIDADES',
			'pressBackAgainToExit' => 'Pressione voltar novamente para sair',
			'addedToFavoritesTitle' => 'Exercício adicionado aos favoritos com sucesso!',
			'removedFromFavoritesTitle' => 'Exercício removido dos favoritos com sucesso!',
			'removedFromFavorites' => 'Você pode acessar outros exercícios que deseja adicionar nos cursos',
			'faq.title' => 'Perguntas Frequentes',
			'faq.questions.q1.question' => 'O que é YogiFace?',
			'faq.questions.q1.answer' => 'YogiFace é um aplicativo de cuidados pessoais impulsionado por IA que oferece exercícios de ioga facial para melhorar a aparência da pele trabalhando os músculos faciais.',
			'faq.questions.q2.question' => 'O aplicativo realmente funciona?',
			'faq.questions.q2.answer' => 'Sim. A ioga facial ativa os músculos faciais para aumentar a firmeza da pele, acelerar a circulação e fornecer uma aparência mais jovem com uso regular.',
			'faq.questions.q3.question' => 'O que a inteligência artificial faz aqui?',
			'faq.questions.q3.answer' => 'YogiFace analisa as características faciais, identifica áreas-alvo e cria um plano de exercícios personalizado. Dessa forma, cada movimento é otimizado de acordo com as necessidades pessoais.',
			'faq.questions.q4.question' => 'Quanto tempo preciso dedicar a cada dia?',
			'faq.questions.q4.answer' => 'Apenas 5-10 minutos por dia são suficientes. Com prática regular, mudanças visíveis começam dentro de algumas semanas.',
			'faq.questions.q5.question' => 'Quando verei resultados?',
			'faq.questions.q5.answer' => 'Com uso regular, a melhoria no tom de pele é visível em 2-3 semanas, e as características faciais tornam-se mais definidas em 4-6 semanas. Os resultados podem variar de pessoa para pessoa.',
			'faq.questions.q6.question' => 'Funciona para problemas como queixo duplo ou flacidez?',
			'faq.questions.q6.answer' => 'Sim. YogiFace oferece exercícios direcionados para a linha da mandíbula, músculos das bochechas e área do pescoço. Quando feitos regularmente, esses exercícios proporcionam um aperto significativo nessas áreas.',
			'faq.questions.q7.question' => 'Como sei se estou fazendo os movimentos corretamente?',
			'faq.questions.q7.answer' => 'O aplicativo usa IA para analisar o ângulo do seu rosto, expressão e padrão de movimento; ele notifica você sobre quaisquer pontos incorretos.',
			'faq.questions.q8.question' => 'É adequado para todas as idades?',
			'faq.questions.q8.answer' => 'Sim. A ioga facial é um método natural não invasivo. Todos podem praticá-lo com segurança desde cedo.',
			'faq.questions.q9.question' => 'YogiFace é gratuito?',
			'faq.questions.q9.answer' => 'Os exercícios básicos são gratuitos. Programas pessoais, análise facial avançada e recomendações especiais de IA estão incluídos no pacote premium.',
			'faq.questions.q10.question' => 'Pessoas que fizeram cirurgia plástica podem usá-lo?',
			'faq.questions.q10.answer' => 'Muitos usuários o usam com segurança, mas recomenda-se consultar um médico durante o período de recuperação pós-operatória.',
			'full_face' => 'Rosto Completo / Revitalização Geral',
			'eye_area' => 'Olhos e Área dos Olhos',
			'nose_area' => 'Nariz e Área do Nariz',
			'cheeks_mid_face' => 'Bochechas e Meio do Rosto',
			'lip_area' => 'Lábios e Área da Boca',
			'jawline_chin' => 'Linha da Mandíbula, Queixo e Queixo Duplo',
			'forehead_brow' => 'Testa e Área das Sobrancelhas',
			'neck_decollete' => 'Pescoço e Decote',
			'good_morning' => 'Bom dia',
			'good_afternoon' => 'Boa tarde',
			'good_evening' => 'Boa noite',
			'splash.screen1.title' => 'Molde seu rosto naturalmente',
			'splash.screen1.description' => 'Trabalhe seus músculos faciais com apenas alguns minutos de exercícios faciais diários. Crie uma rotina de beleza natural, estética e não invasiva.',
			'splash.screen2.title' => 'Plano de Exercícios Personalizado com IA',
			'splash.screen2.description' => 'A IA analisa suas características faciais, determina suas necessidades e recomenda exercícios adaptados a você. Rastreia quais músculos precisam de mais trabalho.',
			'splash.screen3.title' => 'Resultados Visíveis',
			'splash.screen3.description' => 'Com uso regular, os contornos faciais tornam-se mais definidos, a circulação melhora e a pele parece mais vibrante. Pequenos passos todos os dias trazem grandes mudanças.',
			'profile.title' => 'Perfil',
			'profile.freeVersion' => 'Versão Gratuita',
			'profile.error' => 'Erro',
			'profile.sections.accountSettings' => 'CONFIGURAÇÕES DA CONTA',
			'profile.sections.supportAndOther' => 'SUPORTE E OUTROS',
			'profile.menu.editProfile' => 'Editar Perfil',
			'profile.menu.notifications' => 'Notificações',
			'profile.menu.premium' => 'Premium',
			'profile.menu.favoriteExercises' => 'Exercícios Favoritos',
			'profile.menu.appLanguage' => 'Idioma do Aplicativo',
			'profile.menu.shareWithFriends' => 'Compartilhar com Amigos',
			'profile.menu.enterInviteCode' => 'Inserir Código de Convite',
			'profile.menu.rateUs' => 'Avalie-nos',
			'profile.menu.faq' => 'FAQ',
			'profile.menu.logout' => 'Sair',
			'profile.manage' => 'GERENCIAR',
			'profile.logoutDialog.title' => 'Você está prestes a sair',
			'profile.logoutDialog.message' => 'Nos vemos de novo! Continuaremos rastreando seus exercícios de respiração.',
			'profile.logoutDialog.logoutButton' => 'Sair',
			'profile.logoutDialog.cancelButton' => 'Cancelar',
			'home.premium' => 'Premium!',
			'home.focusAreas' => 'Áreas de Foco',
			'home.popularCourses' => 'Cursos Populares',
			'home.seeMore' => 'Ver mais',
			'home.personalized.title' => 'Relatório de\nAnálise Facial\nPersonalizado',
			'home.personalized.description' => 'Por favor, analise sua pele\npara descobrir qual é o seu tipo.',
			'home.personalized.button' => 'Experimente Agora',
			'home.premiumPlan.title' => 'Plano Premium',
			'home.premiumPlan.description' => 'Desbloqueie seu chatbot de IA e\nobtenha todos os recursos premium',
			'home.premiumPlan.button' => 'Obter Premium',
			'home.premiumPlan.dialog.title' => 'Recurso não disponível',
			'home.premiumPlan.dialog.message' => 'Este recurso não está disponível no momento.',
			'home.premiumPlan.dialog.button' => 'OK',
			'home.quickActions.title' => 'Ações Rápidas',
			'home.quickActions.programTitle' => 'Seu Programa Pessoal',
			'home.quickActions.programSubtitle' => 'Para sua melhor aparência\nem 30 dias',
			'home.quickActions.button' => 'Começar',
			'home.todaysExercise.title' => 'Exercício de Hoje',
			'home.todaysExercise.recommended' => 'Rotina Recomendada',
			'home.todaysExercise.forToday' => 'para hoje',
			'home.courses.foreheadSmoother.title' => 'O Alisador de Testa',
			'home.courses.foreheadSmoother.description' => 'Este movimento libera a tensão nos músculos da testa e as linhas de expressão acumuladas...',
			'home.courses.vMove.title' => 'O Movimento "V"',
			'home.courses.vMove.description' => 'Fortalece a pele delicada ao redor dos olhos, levanta as pálpebras caídas e apaga sinais de fadiga.',
			'home.courses.cheekLifter.title' => 'O Levantador de Bochechas',
			'home.courses.cheekLifter.description' => 'Levanta os músculos das bochechas (Zigomático) que são mais propensos à gravidade, restaurando o oval facial.',
			'home.benefits.naturalIroning.title' => 'Alisamento Natural:',
			'home.benefits.naturalIroning.description' => 'Abre as linhas horizontais na testa e evita que se aprofundem.',
			'home.benefits.botoxEffect.title' => 'Efeito Botox',
			'home.benefits.botoxEffect.description' => 'Relaxa os músculos tensos e quebra o hábito de franzir a testa.',
			'home.benefits.stressRelief.title' => 'Alívio do Estresse',
			'home.benefits.stressRelief.description' => 'Alivia o estresse acumulado na testa e alivia as dores de cabeça.',
			'home.benefits.radiantAppearance.title' => 'Aparência Radiante',
			'home.benefits.radiantAppearance.description' => 'Aumenta a circulação sanguínea para dar à pele um brilho.',
			'home.benefits.dePuffing.title' => 'Desinchaço',
			'home.benefits.dePuffing.description' => 'Reduz o inchaço facial através do seu efeito de drenagem linfática.',
			'courseDetail.title' => 'Detalhes do Curso',
			'courseDetail.getStarted' => 'Começar',
			'courseDetail.noExercisesFound' => 'Nenhum exercício encontrado para esta categoria',
			'courseDetail.instructions.instruction1.title' => 'Lave as mãos e o rosto',
			'courseDetail.instructions.instruction1.description' => 'Uma pele limpa torna a massagem mais eficaz.',
			'courseDetail.instructions.instruction2.title' => 'Aplique óleo facial ou hidratante',
			'courseDetail.instructions.instruction2.description' => 'Deslize suavemente sem puxar sua pele.',
			'courses.title' => 'Todos os Cursos',
			'courses.error' => 'Erro ao carregar exercícios',
			'courses.personalCoursesTitle' => 'Cursos Pessoais',
			'personalProgram.dailyGoalTitle' => 'Defina seu objetivo diário',
			'personalProgram.dailyGoalDescription' => 'Escolha um ritmo que se adapte à sua agenda',
			'personalProgram.personalizing' => 'Personalizando seu plano...',
			'personalProgram.readyMessage' => 'Seu programa pessoal de ioga facial de 30 dias está pronto✨',
			'personalProgram.minutes' => 'min',
			'personalProgram.objectiveTitle' => 'Que expressão mais te incomoda quando te olhas ao espelho?',
			'personalProgram.objectiveSubtitle' => 'O equilíbrio do programa é ajustado de acordo com a expressão facial',
			'personalProgram.feelingTitle' => 'Como gostarias de te sentir ao fazer ioga facial?',
			'personalProgram.timeTitle' => 'Quando é mais fácil para ti fazer ioga facial?',
			'personalProgram.objectives.tired' => 'Aparência cansada e desgastada',
			'personalProgram.objectives.harsh' => 'Expressão dura e tensa',
			'personalProgram.objectives.pale' => 'Pele pálida e sem vida',
			'personalProgram.objectives.asymmetrical' => 'Traços faciais assimétricos',
			'personalProgram.objectives.general' => 'Sem problema óbvio, quero cuidados gerais',
			'personalProgram.feelings.lightened' => 'Aliviado',
			'personalProgram.feelings.revitalized' => 'Revitalizado',
			'personalProgram.feelings.refreshed' => 'Refrescado',
			'personalProgram.feelings.energetic' => 'Mais energético',
			'personalProgram.times.morning' => 'Manhã',
			'personalProgram.times.duringDay' => 'Durante o dia',
			'personalProgram.times.evening' => 'Noite',
			'personalProgram.times.anytime' => 'A hora não importa, um lembrete é suficiente',
			'editProfile.title' => 'Editar Perfil',
			'editProfile.changePhoto' => 'Alterar Foto',
			'editProfile.fullName' => 'Nome Completo',
			'editProfile.email' => 'E-mail',
			'editProfile.age' => 'Idade',
			'editProfile.gender' => 'Gênero',
			'editProfile.skinType' => 'Tipo de Pele',
			'editProfile.focusArea' => 'Área de Foco',
			'editProfile.focusAreaHint' => 'Testa, Olhos, Nariz, Boca, Bochechas...',
			'editProfile.save' => 'Salvar',
			'editProfile.saving' => 'Salvando...',
			'editProfile.updateSuccess' => 'Perfil atualizado com sucesso',
			'editProfile.updateError' => 'Ocorreu um erro ao atualizar o perfil',
			'editProfile.deleteAccount' => 'Excluir Conta',
			'notifications.title' => 'Notificações',
			'notifications.emptyTitle' => 'Ainda não há notificações',
			'notifications.emptyDescription' => 'Nós o notificaremos quando houver uma atualização importante sobre sua jornada de aprendizado.',
			'notifications.premiumBannerTitle' => 'Não perca os\nbenefícios Premium!',
			'notifications.premiumBannerDescription' => 'Aproveite as oportunidades como assinante Premium.',
			'notifications.sample1Title' => 'Sua meditação diária está pronta!',
			'notifications.sample1Description' => 'Encontre sua calma para o dia',
			'notifications.sample1Time' => 'Há 15 min',
			'notifications.sample2Title' => 'Novo exercício: Respiração Oceânica',
			'notifications.sample2Description' => 'Uma nova técnica de respiração foi adicionada',
			'notifications.sample2Time' => 'Há 1 hora',
			'notifications.sample3Title' => 'Você atingiu uma sequência de 7 dias!',
			'notifications.sample3Description' => 'Continue com o incrível trabalho em seu bem-estar',
			'notifications.sample3Time' => 'Ontem',
			'share.title' => 'Compartilhar com Amigos',
			'share.mainTitle' => 'Compartilhe a Paz',
			'share.descriptionPart1' => 'Convide amigos para respirar juntos.\nPara cada convite, ambos ganham ',
			'share.descriptionPart2' => '1 semana Premium',
			'share.descriptionPart3' => '',
			'share.yourReferralCode' => 'SEU CÓDIGO DE REFERÊNCIA',
			'share.codeCopied' => 'Código copiado!',
			'share.copyCode' => 'Copiar Código',
			'facialScan.title' => 'Escaneamento Facial',
			'facialScan.step' => ({required Object current, required Object total}) => 'PASSO ${current} DE ${total}',
			'facialScan.getStarted' => 'Começar',
			'facialScan.analyzing.title' => 'Analisando',
			'facialScan.analyzing.description' => 'Analisando suas características únicas',
			'facialScan.analyzing.detail' => 'Detectando textura da pele, tônus muscular e área de foco para sua rotina personalizada.',
			'facialScan.analyzing.aiEngineWorking' => 'MOTOR DE IA TRABALHANDO',
			'facialScan.result.title' => 'Sua análise está pronta!',
			'facialScan.result.subtitle' => 'Criamos uma rotina com base em seus resultados.',
			'facialScan.result.skinType' => 'TIPO DE PELE',
			'facialScan.result.primaryGoal' => 'OBJETIVO PRINCIPAL',
			'facialScan.result.recommended' => 'Recomendado para você',
			'facialScan.result.back' => 'Voltar',
			'facialScan.instructions.front' => 'Posicione seu rosto dentro do quadro',
			'facialScan.instructions.left' => 'Vire sua cabeça para a esquerda',
			'facialScan.instructions.right' => 'Vire sua cabeça para a direita',
			'facialScan.instructions.lighting' => 'Certifique-se de estar em um ambiente bem iluminado para melhores resultados',
			'facialScan.instructions.tapToCapture' => 'Toque no botão da câmera para tirar uma foto',
			'facialScan.errors.cameraPermission' => 'A permissão da câmera é necessária para tirar fotos.',
			'facialScan.errors.cameraPermissionRequired' => 'Permissão da câmera necessária',
			'facialScan.errors.cameraPermissionMessage' => 'A permissão da câmera é necessária para o escaneamento facial. Por favor, habilite-a nas configurações do aplicativo.',
			'facialScan.errors.openSettings' => 'Abrir Configurações',
			'facialScan.errors.cancel' => 'Cancelar',
			'facialScan.errors.noFaceDetected' => 'Nenhum rosto detectado. Por favor, tente novamente.',
			'facialScan.errors.captureFailed' => 'Falha ao capturar a imagem. Por favor, tente novamente.',
			'facialScan.positions.front' => 'FRENTE',
			'facialScan.positions.left' => 'ESQUERDA',
			'facialScan.positions.right' => 'DIREITA',
			'auth.google' => 'Google',
			'auth.facebook' => 'Facebook',
			'auth.apple' => 'Apple',
			'auth.guest' => 'Continuar como Convidado',
			'auth.signInFailed' => ({required Object error}) => 'Falha ao entrar: ${error}',
			'benefits' => 'Benefícios',
			'minutes' => 'min',
			'cancel' => 'Cancelar',
			'beforeBegin' => 'Antes de Começar',
			'rest' => 'Descanso',
			'courseCompleted' => 'Curso Concluído',
			'courseCompletedDescription' => 'Excelente trabalho ao concluir a sessão de hoje.',
			'deleteAccount' => 'Excluir Conta',
			'deleteDialogTitle' => 'Tem certeza de que deseja excluir sua conta?',
			'deleteDialogDescription' => 'Esta ação é irreversível e excluirá permanentemente todo o seu histórico de exercícios e dados.',
			'deleteError' => 'Ocorreu um erro ao excluir sua conta. Por favor, tente novamente.',
			'favoriteExercises' => 'Exercícios Favoritos',
			'noFavoritesInCategory' => 'Nenhum favorito nesta categoria',
			'noFavoritesAdded' => 'Nenhum favorito adicionado ainda.',
			'favoriteExercisesDescription' => 'Para definir seus exercícios favoritos, você pode adicionar os exercícios que gosta na página Meus Exercícios.',
			'enterInvitationCode' => 'Inserir código de convite',
			'bePartOfPeace' => 'Faça parte da paz',
			'inviteFriends' => 'Insira o código de convite recebido de um amigo.\nDigite-o no campo designado',
			'twoDaysPremium' => '7 dias Premium',
			'advantage' => '\npara aproveitar seus benefícios.',
			'send' => 'Enviar',
			'referralCode.inputPlaceholder' => 'Insira o código de 8 caracteres',
			'referralCode.applying' => 'Aplicando código...',
			'referralCode.success.title' => 'Sucesso!',
			'referralCode.success.message' => 'Código de referência aplicado com sucesso! Você e seu amigo receberam 1 semana de premium.',
			'referralCode.errors.missingCode.title' => 'Código necessário',
			'referralCode.errors.missingCode.message' => 'Por favor, insira um código de referência para continuar.',
			'referralCode.errors.invalidFormat.title' => 'Formato inválido',
			'referralCode.errors.invalidFormat.message' => 'O código de referência deve ter exatamente 8 caracteres.',
			'referralCode.errors.alreadyUsed.title' => 'Já utilizado',
			'referralCode.errors.alreadyUsed.message' => 'Você já usou um código de referência. Cada usuário só pode usar um código.',
			'referralCode.errors.selfReferral.title' => 'Código inválido',
			'referralCode.errors.selfReferral.message' => 'Você não pode usar seu próprio código de convite. Por favor, use um código de um amigo.',
			'referralCode.errors.codeNotFound.title' => 'Código não encontrado',
			'referralCode.errors.codeNotFound.message' => 'O código de referência inserido não existe. Por favor, verifique e tente novamente.',
			'referralCode.errors.genericError.title' => 'Erro',
			'referralCode.errors.genericError.message' => 'Ocorreu um erro ao aplicar o código de referência. Por favor, tente novamente.',
			'deleteNotifications' => 'Excluir Notificações',
			'deleteNotificationsDescription' => 'Tem certeza de que deseja excluir todas as\nsuas notificações? Esta ação é irreversível.',
			'deleteAll' => 'Excluir Tudo',
			'appLanguage' => 'Idioma do Aplicativo',
			'selectLanguage' => 'Selecione seu idioma preferido',
			'save' => 'Salvar',
			'languageOptions.english' => 'Inglês',
			'languageOptions.german' => 'Alemão',
			'languageOptions.italian' => 'Italiano',
			'languageOptions.french' => 'Francês',
			'languageOptions.japanese' => 'Japonês',
			'languageOptions.spanish' => 'Espanhol',
			'languageOptions.russian' => 'Russo',
			'languageOptions.turkish' => 'Turco',
			'languageOptions.korean' => 'Coreano',
			'languageOptions.hindi' => 'Hindi',
			'languageOptions.portuguese' => 'Português',
			_ => null,
		};
	}
}
