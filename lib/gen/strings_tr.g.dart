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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get welcome => 'Hoşgeldiniz';
	@override String get get_started => 'Başlayın';
	@override String get next => 'Sonraki';
	@override String get back => 'Geri';
	@override String get skip => 'Atla';
	@override String get logintext => 'Seni gördüğüm için mutluyum. Hesabınıza giriş yaparak nerede durduysanız oradan devam edebilirsiniz.';
	@override late final _TranslationsTermOfServiceTr termOfService = _TranslationsTermOfServiceTr._(_root);
	@override String get cookies => 'Çerez Politikası';
	@override String get privacy => 'Gizlilik Politikası';
	@override late final _TranslationsTermsOfServiceTr termsOfService = _TranslationsTermsOfServiceTr._(_root);
	@override late final _TranslationsCookiesPolicyTr cookiesPolicy = _TranslationsCookiesPolicyTr._(_root);
	@override late final _TranslationsPrivacyPolicyTr privacyPolicy = _TranslationsPrivacyPolicyTr._(_root);
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override String get pressBackAgainToExit => 'Çıkmak için bir kez daha geri tuşuna basın';
	@override String get addedToFavoritesTitle => 'Egzersiz başarıyla favorilere eklendi!';
	@override String get removedFromFavoritesTitle => 'Egzersiz başarıyla favoriden kaldırıldı!';
	@override String get removedFromFavorites => 'Eklemek istediğiniz diğer egzersizlere kurslardan ulaşabilirsiniz';
	@override late final _TranslationsFaqTr faq = _TranslationsFaqTr._(_root);
}

// Path: termOfService
class _TranslationsTermOfServiceTr implements TranslationsTermOfServiceEn {
	_TranslationsTermOfServiceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get text1 => 'Swipe\'a kaydolarak ';
	@override String get link1 => 'Hizmet Şartlarımızı';
	@override String get text2 => ' kabul etmiş olursunuz. ';
	@override String get link2 => 'Gizlilik Politikamızda';
	@override String get text3 => ' ve ';
	@override String get link3 => 'Çerez Politikamızda';
	@override String get text4 => ' verilerinizi nasıl işlediğimizi öğrenin';
}

// Path: termsOfService
class _TranslationsTermsOfServiceTr implements TranslationsTermsOfServiceEn {
	_TranslationsTermsOfServiceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Hizmet Şartları';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get principle => 'Yogiface, yüz yogası egzersizleri ve yüz kaslarını desteklemeye yönelik rehber içerikler sunan bir wellness uygulamasıdır. Uygulama, tıbbi, klinik, estetik veya profesyonel sağlık hizmeti sağlamaz.';
	@override String get intro => 'Bu Hizmet Şartları ("Şartlar"), Yogiface mobil uygulamasını ("Uygulama") kullanmanız için geçerli olan kuralları içerir. Uygulamayı kullanarak bu Şartları kabul etmiş sayılırsınız. Şartları kabul etmiyorsanız Uygulama\'yı kullanmamalısınız.';
	@override late final _TranslationsTermsOfServiceSection1Tr section1 = _TranslationsTermsOfServiceSection1Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection2Tr section2 = _TranslationsTermsOfServiceSection2Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection3Tr section3 = _TranslationsTermsOfServiceSection3Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection4Tr section4 = _TranslationsTermsOfServiceSection4Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection5Tr section5 = _TranslationsTermsOfServiceSection5Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection6Tr section6 = _TranslationsTermsOfServiceSection6Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection7Tr section7 = _TranslationsTermsOfServiceSection7Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection12Tr section12 = _TranslationsTermsOfServiceSection12Tr._(_root);
	@override late final _TranslationsTermsOfServiceSection13Tr section13 = _TranslationsTermsOfServiceSection13Tr._(_root);
}

// Path: cookiesPolicy
class _TranslationsCookiesPolicyTr implements TranslationsCookiesPolicyEn {
	_TranslationsCookiesPolicyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Çerez Politikası';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get intro => 'Yogiface\'e hoş geldiniz! Uygulamayı her ziyaret ettiğinizde deneyiminizi geliştirmek ve kişiselleştirmek amacıyla bazı dijital yardımcılar (çerezler) kullanıyoruz. Bu politika, tercihlerinizi nasıl yönetebileceğinizi açıklar.';
	@override late final _TranslationsCookiesPolicySection1Tr section1 = _TranslationsCookiesPolicySection1Tr._(_root);
	@override late final _TranslationsCookiesPolicySection2Tr section2 = _TranslationsCookiesPolicySection2Tr._(_root);
	@override late final _TranslationsCookiesPolicySection3Tr section3 = _TranslationsCookiesPolicySection3Tr._(_root);
	@override late final _TranslationsCookiesPolicySection4Tr section4 = _TranslationsCookiesPolicySection4Tr._(_root);
	@override late final _TranslationsCookiesPolicySection5Tr section5 = _TranslationsCookiesPolicySection5Tr._(_root);
	@override late final _TranslationsCookiesPolicySection6Tr section6 = _TranslationsCookiesPolicySection6Tr._(_root);
	@override late final _TranslationsCookiesPolicySection7Tr section7 = _TranslationsCookiesPolicySection7Tr._(_root);
	@override late final _TranslationsCookiesPolicySection8Tr section8 = _TranslationsCookiesPolicySection8Tr._(_root);
}

// Path: privacyPolicy
class _TranslationsPrivacyPolicyTr implements TranslationsPrivacyPolicyEn {
	_TranslationsPrivacyPolicyTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Yogiface – Gizlilik Politikası';
	@override String get lastUpdated => 'Son Güncelleme: 2025';
	@override String get intro => 'Bu Gizlilik Politikası, Yogiface mobil uygulamasını ("Uygulama") kullanan tüm kullanıcıların kişisel verilerinin toplanması, kullanılması, saklanması ve korunmasına ilişkin esasları açıklar. Uygulamayı kullanarak bu politikayı kabul etmiş sayılırsınız.';
	@override String get principle => 'Yogiface, kullanıcı gizliliğini ve veri güvenliğini temel ilke olarak benimser. Tüm kişisel veriler KVKK, GDPR ve ilgili mevzuata uygun şekilde işlenir.';
	@override late final _TranslationsPrivacyPolicySection1Tr section1 = _TranslationsPrivacyPolicySection1Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection2Tr section2 = _TranslationsPrivacyPolicySection2Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection3Tr section3 = _TranslationsPrivacyPolicySection3Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection4Tr section4 = _TranslationsPrivacyPolicySection4Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection5Tr section5 = _TranslationsPrivacyPolicySection5Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection6Tr section6 = _TranslationsPrivacyPolicySection6Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection8Tr section8 = _TranslationsPrivacyPolicySection8Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection10Tr section10 = _TranslationsPrivacyPolicySection10Tr._(_root);
}

// Path: onboarding
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get basicInformation => 'TEMEL BİLGİLER';
	@override String get target => 'HEDEF';
	@override String get habits => 'ALIŞKANLIKLAR';
	@override String get step => 'ADIM';
	@override String get of => '/';
	@override String get tellUsAboutYourself => 'Bize Kendinizden Bahsedin';
	@override String get shortBioDescription => 'Kısa bir biyografi, başkalarının sizi gerçekten tanımasına yardımcı olur. Eğlenceli ve samimi tutun';
	@override String get enterYourFullname => 'Adınızı Soyadınızı Girin';
	@override String get fullName => 'Ad Soyad';
	@override String get male => 'Erkek';
	@override String get female => 'Kadın';
	@override String get dontWantToMention => 'Belirtmek istemiyorum';
	@override String get whatIsMainObjective => 'Ana hedef nedir?';
	@override String get reduceWrinkles => 'Kırışıklıkları azalt';
	@override String get tightenSkin => 'Cildi sıkılaştır';
	@override String get liftDroopyEyelids => 'Düşük göz kapaklarını toparla';
	@override String get eliminateDoubleChin => 'Gıdıyı yok et';
	@override String get brightenSkinTone => 'Cilt tonunu aydınlat';
	@override String get allOfTheAbove => 'Yukarıdakilerin hepsi';
	@override String get whichAreaToImprove => 'Hangi bölgeyi iyileştirmek istersiniz?';
	@override String get forehead => 'Alın';
	@override String get eyes => 'Gözler';
	@override String get nose => 'Burun';
	@override String get cheeks => 'Yanaklar';
	@override String get lips => 'Dudaklar';
	@override String get jawline => 'Çene hattı';
	@override String get neck => 'Boyun';
	@override String get whatFaceShapeAiming => 'Hangi yüz şeklini hedefliyorsunuz?';
	@override String get heart => 'Kalp';
	@override String get oval => 'Oval';
	@override String get square => 'Kare';
	@override String get round => 'Yuvarlak';
	@override String get diamond => 'Elmas';
	@override String get whatIsYourSkinType => 'Cilt tipiniz nedir?';
	@override String get normal => 'Normal';
	@override String get oily => 'Yağlı';
	@override String get dry => 'Kuru';
	@override String get combination => 'Karma';
	@override String get sensitive => 'Hassas';
	@override String get whichOfThemDoYouHave => 'Bunlardan hangisine sahipsiniz?';
	@override String get acneAndPimples => 'Akne ve sivilce';
	@override String get redness => 'Kızarıklıklar';
	@override String get swelling => 'Şişlik';
	@override String get wrinkles => 'Kırışıklıklar';
	@override String get neckLines => 'Boyun çizgileri';
	@override String get howOftenWearMakeup => 'Ne sıklıkla makyaj yaparsınız?';
	@override String get everyDay => 'Her gün';
	@override String get fewDaysAWeek => 'Haftada bir kaç gün';
	@override String get occasionally => 'Arada sırada';
	@override String get never => 'Hiç';
	@override String get haveYouHadBotox => 'Botox yaptırdınız mı?';
	@override String get yes => 'Evet';
	@override String get no => 'Hayır';
	@override String get creatingPersonalizedProfile => 'Kişiselleştirilmiş Profiliniz Oluşturuluyor';
	@override String get tailoringExperience => 'Tercihlerinize göre deneyiminizi özelleştiriyoruz...';
	@override String get matchingPersonalities => 'KİŞİLİKLER EŞLEŞTİRİLİYOR';
}

// Path: faq
class _TranslationsFaqTr implements TranslationsFaqEn {
	_TranslationsFaqTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sıkça Sorulan Sorular';
	@override late final _TranslationsFaqQuestionsTr questions = _TranslationsFaqQuestionsTr._(_root);
}

// Path: termsOfService.section1
class _TranslationsTermsOfServiceSection1Tr implements TranslationsTermsOfServiceSection1En {
	_TranslationsTermsOfServiceSection1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Hizmetin Kapsamı';
	@override String get content => 'Yogiface, kullanıcılara yüz kaslarını çalıştırmaya yönelik rehberli bir deneyim sunar. Uygulama şunları içerir:';
	@override List<String> get items => [
		'Yüz yogası ve yüz egzersizi rehberleri',
		'Günlük ve haftalık egzersiz rutinleri',
		'Yüz bölgelerine özel çalışma önerileri',
		'Kişiselleştirilebilir egzersiz planları ve ilerleme takibi',
	];
	@override String get note => 'Sunulan içerikler profesyonel, tıbbi veya estetik bir tavsiye niteliği taşımaz.';
}

// Path: termsOfService.section2
class _TranslationsTermsOfServiceSection2Tr implements TranslationsTermsOfServiceSection2En {
	_TranslationsTermsOfServiceSection2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Uygulamayı Kullanma Koşulları';
	@override List<String> get items => [
		'En az 13 yaşında olmalısınız.',
		'Hesap bilgilerinizi doğru ve güncel sağlamalısınız.',
		'Egzersizlerin tıbbi bir hizmet olmadığını kabul edersiniz.',
	];
}

// Path: termsOfService.section3
class _TranslationsTermsOfServiceSection3Tr implements TranslationsTermsOfServiceSection3En {
	_TranslationsTermsOfServiceSection3Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Yasaklı Kullanımlar';
	@override List<String> get items => [
		'Uygulamayı yasa dışı faaliyetler için kullanmak.',
		'İçerikleri izinsiz satmak, çoğaltmak veya dağıtmak.',
		'Sisteme izinsiz erişim, hack veya reverse engineering girişimleri.',
	];
}

// Path: termsOfService.section4
class _TranslationsTermsOfServiceSection4Tr implements TranslationsTermsOfServiceSection4En {
	_TranslationsTermsOfServiceSection4Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Hesap ve Üyelik';
	@override String get content => 'Hesap güvenliğiniz size aittir. Yogiface, Şartlara aykırı kullanım tespit edilmesi halinde hesapları askıya alma veya kapatma hakkını saklı tutar.';
}

// Path: termsOfService.section5
class _TranslationsTermsOfServiceSection5Tr implements TranslationsTermsOfServiceSection5En {
	_TranslationsTermsOfServiceSection5Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Premium ve Ücretli Hizmetler';
	@override List<String> get items => [
		'Ücretlendirme uygulama mağazası (App Store/Google Play) politikalarına göre yapılır.',
		'Abonelikler otomatik yenilenebilir; iptaller mağaza ayarlarından yapılır.',
	];
}

// Path: termsOfService.section6
class _TranslationsTermsOfServiceSection6Tr implements TranslationsTermsOfServiceSection6En {
	_TranslationsTermsOfServiceSection6Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. İçerik ve Sorumluluk Reddi';
	@override String get content => 'Kullanıcı, egzersizleri kendi sorumluluğunda uygular. Herhangi bir sağlık sorunu durumunda kullanıcılar uzman bir sağlık profesyoneline başvurmalıdır. Uygulama teşhis veya tedavi amaçlı kullanılmamalıdır.';
}

// Path: termsOfService.section7
class _TranslationsTermsOfServiceSection7Tr implements TranslationsTermsOfServiceSection7En {
	_TranslationsTermsOfServiceSection7Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Fikri Mülkiyet Hakları';
	@override String get content => 'Tasarım, yazılım, görseller ve egzersiz içerikleri Yogiface\'e aittir. İzinsiz kopyalama veya kaynak kodunu değiştirme yapılamaz.';
}

// Path: termsOfService.section12
class _TranslationsTermsOfServiceSection12Tr implements TranslationsTermsOfServiceSection12En {
	_TranslationsTermsOfServiceSection12Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '12. Uygulanacak Hukuk';
	@override String get content => 'Bu Şartlar Türkiye Cumhuriyeti yasalarına tabidir. Yetkili merci İstanbul Merkez Mahkemeleridir.';
}

// Path: termsOfService.section13
class _TranslationsTermsOfServiceSection13Tr implements TranslationsTermsOfServiceSection13En {
	_TranslationsTermsOfServiceSection13Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '13. İletişim';
	@override String get email => '📩 E-posta: support@fly-work.com';
}

// Path: cookiesPolicy.section1
class _TranslationsCookiesPolicySection1Tr implements TranslationsCookiesPolicySection1En {
	_TranslationsCookiesPolicySection1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Çerez Nedir?';
	@override String get content => 'Çerezler, cihazınıza yerleştirilen küçük veri dosyalarıdır. Uygulamayı nasıl kullandığınızı anlamamıza yardımcı olur ve deneyiminizi daha akıcı hale getirir. Çerezler kimliğinizi doğrudan içermez; tercihlerinizi ve kullanım alışkanlıklarınızı hatırlar.';
}

// Path: cookiesPolicy.section2
class _TranslationsCookiesPolicySection2Tr implements TranslationsCookiesPolicySection2En {
	_TranslationsCookiesPolicySection2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Hangi Çerezleri Kullanıyoruz?';
	@override late final _TranslationsCookiesPolicySection2EssentialTr essential = _TranslationsCookiesPolicySection2EssentialTr._(_root);
	@override late final _TranslationsCookiesPolicySection2PerformanceTr performance = _TranslationsCookiesPolicySection2PerformanceTr._(_root);
	@override late final _TranslationsCookiesPolicySection2PersonalizationTr personalization = _TranslationsCookiesPolicySection2PersonalizationTr._(_root);
	@override late final _TranslationsCookiesPolicySection2MarketingTr marketing = _TranslationsCookiesPolicySection2MarketingTr._(_root);
}

// Path: cookiesPolicy.section3
class _TranslationsCookiesPolicySection3Tr implements TranslationsCookiesPolicySection3En {
	_TranslationsCookiesPolicySection3Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Çerezleri Neden Kullanıyoruz?';
	@override List<String> get items => [
		'Uygulamanın hızlı ve sorunsuz çalışmasını sağlamak',
		'Kullanıcı tercihlerini hatırlayarak tekrar eden işlemleri azaltmak',
		'Deneyimi daha kişisel ve kullanışlı hale getirmek',
		'Kullanım verilerini analiz ederek uygulamayı geliştirmek',
	];
}

// Path: cookiesPolicy.section4
class _TranslationsCookiesPolicySection4Tr implements TranslationsCookiesPolicySection4En {
	_TranslationsCookiesPolicySection4Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Üçüncü Taraf Çerezleri';
	@override String get content => 'Bazı çerezler, analitik ve reklam hizmetleri sunan üçüncü taraf iş ortakları tarafından yerleştirilebilir. Bu çerezler ilgili hizmet sağlayıcıların kendi politikalarına tabidir.';
}

// Path: cookiesPolicy.section5
class _TranslationsCookiesPolicySection5Tr implements TranslationsCookiesPolicySection5En {
	_TranslationsCookiesPolicySection5Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Çerez Kontrolleri ve Yönetimi';
	@override String get content => 'Çerezleri cihaz ayarlarından, uygulama izinlerinden veya sistem ayarlarından yönetebilirsiniz. Zorunlu çerezlerin kapatılması, uygulamanın bazı bölümlerinin düzgün çalışmamasına neden olabilir.';
}

// Path: cookiesPolicy.section6
class _TranslationsCookiesPolicySection6Tr implements TranslationsCookiesPolicySection6En {
	_TranslationsCookiesPolicySection6Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Verilerin Kullanımı';
	@override String get content => 'Çerezler aracılığıyla elde edilen veriler, kişisel veri niteliği taşıması halinde Gizlilik Politikası kapsamında ve yasal çerçevede işlenir.';
}

// Path: cookiesPolicy.section7
class _TranslationsCookiesPolicySection7Tr implements TranslationsCookiesPolicySection7En {
	_TranslationsCookiesPolicySection7Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '7. Politika Güncellemeleri';
	@override String get content => 'Bu politika teknolojik ve yasal gelişmelere bağlı olarak güncellenebilir. Güncel sürüm yayınlandığı anda yürürlüğe girer.';
}

// Path: cookiesPolicy.section8
class _TranslationsCookiesPolicySection8Tr implements TranslationsCookiesPolicySection8En {
	_TranslationsCookiesPolicySection8Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. İletişim';
	@override String get email => '📩 E-posta: support@fly-work.com';
}

// Path: privacyPolicy.section1
class _TranslationsPrivacyPolicySection1Tr implements TranslationsPrivacyPolicySection1En {
	_TranslationsPrivacyPolicySection1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1. Toplanan Bilgiler';
	@override late final _TranslationsPrivacyPolicySection1Sub1Tr sub1 = _TranslationsPrivacyPolicySection1Sub1Tr._(_root);
	@override late final _TranslationsPrivacyPolicySection1Sub2Tr sub2 = _TranslationsPrivacyPolicySection1Sub2Tr._(_root);
}

// Path: privacyPolicy.section2
class _TranslationsPrivacyPolicySection2Tr implements TranslationsPrivacyPolicySection2En {
	_TranslationsPrivacyPolicySection2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '2. Verilerin Kullanım Amaçları';
	@override List<String> get items => [
		'Uygulamanın kesintisiz çalışmasını sağlamak',
		'Yüz yogası deneyimini kişiselleştirmek ve optimize etmek',
		'Hata tespiti ve performans analizleri yapmak',
		'Kullanıcı taleplerine ve destek isteklerine yanıt vermek',
	];
	@override String get note => 'Önemli: Kullanıcı verileri hiçbir şekilde üçüncü taraflara satılmaz.';
}

// Path: privacyPolicy.section3
class _TranslationsPrivacyPolicySection3Tr implements TranslationsPrivacyPolicySection3En {
	_TranslationsPrivacyPolicySection3Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '3. Veri Saklama Süresi';
	@override List<String> get items => [
		'Veriler, kullanıcı hesabı aktif olduğu sürece saklanır.',
		'Hesap silindiğinde, kişisel veriler geri döndürülemez biçimde silinir.',
		'Destek kayıtları işlem tamamlandıktan sonra en fazla 12 ay tutulur.',
	];
}

// Path: privacyPolicy.section4
class _TranslationsPrivacyPolicySection4Tr implements TranslationsPrivacyPolicySection4En {
	_TranslationsPrivacyPolicySection4Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '4. Verilerin Paylaşımı';
	@override String get content => 'Verileriniz yalnızca yasal gereklilikler (resmi makam talepleri), hizmet sağlayıcılar (bulut altyapısı, analitik) veya kullanıcının açık rızası durumunda paylaşılabilir.';
}

// Path: privacyPolicy.section5
class _TranslationsPrivacyPolicySection5Tr implements TranslationsPrivacyPolicySection5En {
	_TranslationsPrivacyPolicySection5Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '5. Çerezler ve Güvenlik';
	@override String get content => 'Yogiface, performans ve deneyim iyileştirme amacıyla çerezler kullanabilir. Verileriniz SSL/TLS şifreleme ve düzenli güvenlik denetimleri ile korunur.';
}

// Path: privacyPolicy.section6
class _TranslationsPrivacyPolicySection6Tr implements TranslationsPrivacyPolicySection6En {
	_TranslationsPrivacyPolicySection6Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '6. Kullanıcı Hakları';
	@override String get content => 'Erişim, düzeltme, silme ve veri işleme kısıtlama haklarınız saklıdır.';
	@override String get contact => 'Talepleriniz için:';
	@override String get email => 'support@fly-work.com';
}

// Path: privacyPolicy.section8
class _TranslationsPrivacyPolicySection8Tr implements TranslationsPrivacyPolicySection8En {
	_TranslationsPrivacyPolicySection8Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '8. Çocukların Gizliliği';
	@override String get content => 'Yogiface, 13 yaş altı kişilere yönelik değildir. Bu yaş grubundan veri toplandığı tespit edilirse derhal silinir.';
}

// Path: privacyPolicy.section10
class _TranslationsPrivacyPolicySection10Tr implements TranslationsPrivacyPolicySection10En {
	_TranslationsPrivacyPolicySection10Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '10. İletişim';
	@override String get email => '📩 E-posta: support@fly-work.com';
}

// Path: faq.questions
class _TranslationsFaqQuestionsTr implements TranslationsFaqQuestionsEn {
	_TranslationsFaqQuestionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFaqQuestionsQ1Tr q1 = _TranslationsFaqQuestionsQ1Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ2Tr q2 = _TranslationsFaqQuestionsQ2Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ3Tr q3 = _TranslationsFaqQuestionsQ3Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ4Tr q4 = _TranslationsFaqQuestionsQ4Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ5Tr q5 = _TranslationsFaqQuestionsQ5Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ6Tr q6 = _TranslationsFaqQuestionsQ6Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ7Tr q7 = _TranslationsFaqQuestionsQ7Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ8Tr q8 = _TranslationsFaqQuestionsQ8Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ9Tr q9 = _TranslationsFaqQuestionsQ9Tr._(_root);
	@override late final _TranslationsFaqQuestionsQ10Tr q10 = _TranslationsFaqQuestionsQ10Tr._(_root);
}

// Path: cookiesPolicy.section2.essential
class _TranslationsCookiesPolicySection2EssentialTr implements TranslationsCookiesPolicySection2EssentialEn {
	_TranslationsCookiesPolicySection2EssentialTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Zorunlu Çerezler';
	@override String get content => 'Uygulamanın temel işlevleri için gereklidir. Oturum yönetimi, güvenlik ve temel navigasyon gibi çekirdek süreçleri destekler.';
}

// Path: cookiesPolicy.section2.performance
class _TranslationsCookiesPolicySection2PerformanceTr implements TranslationsCookiesPolicySection2PerformanceEn {
	_TranslationsCookiesPolicySection2PerformanceTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Performans ve Analitik Çerezleri';
	@override String get content => 'Hangi alanların daha sık kullanıldığını ve hangi bölümlerin iyileştirilmesi gerektiğini anlamamıza yardımcı olur.';
}

// Path: cookiesPolicy.section2.personalization
class _TranslationsCookiesPolicySection2PersonalizationTr implements TranslationsCookiesPolicySection2PersonalizationEn {
	_TranslationsCookiesPolicySection2PersonalizationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Kişiselleştirme Çerezleri';
	@override String get content => 'Dil, tema ve egzersiz tercihleri gibi ayarları hatırlayarak her kullanımda size daha kişisel bir deneyim sunar.';
}

// Path: cookiesPolicy.section2.marketing
class _TranslationsCookiesPolicySection2MarketingTr implements TranslationsCookiesPolicySection2MarketingEn {
	_TranslationsCookiesPolicySection2MarketingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pazarlama ve Reklam Çerezleri';
	@override String get content => 'İlgi alanlarınıza daha uygun içerikler sunmak amacıyla kullanılabilir ve bazı durumlarda üçüncü taraf hizmetlerle çalışabilir.';
}

// Path: privacyPolicy.section1.sub1
class _TranslationsPrivacyPolicySection1Sub1Tr implements TranslationsPrivacyPolicySection1Sub1En {
	_TranslationsPrivacyPolicySection1Sub1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1.1. Kullanıcı Tarafından Sağlanan Veriler';
	@override List<String> get items => [
		'Ad, takma ad veya profil bilgileri',
		'E-posta adresi (kayıt, satın alma ve destek işlemleri için)',
		'Egzersiz planları, tercihler ve kişiselleştirme ayarları',
		'Geri bildirim, talep ve destek mesajları',
	];
}

// Path: privacyPolicy.section1.sub2
class _TranslationsPrivacyPolicySection1Sub2Tr implements TranslationsPrivacyPolicySection1Sub2En {
	_TranslationsPrivacyPolicySection1Sub2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => '1.2. Otomatik Olarak Toplanan Veriler';
	@override List<String> get items => [
		'Cihaz türü, işletim sistemi ve teknik bilgiler',
		'Yaklaşık konum verisi (şehir/ülke bazında)',
		'Oturum süresi ve ekran etkileşimleri gibi kullanım bilgileri',
		'Performans, hata ve çökme kayıtları',
	];
}

// Path: faq.questions.q1
class _TranslationsFaqQuestionsQ1Tr implements TranslationsFaqQuestionsQ1En {
	_TranslationsFaqQuestionsQ1Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace nedir?';
	@override String get answer => 'YogiFace, yüz kaslarını çalıştırarak cilt görünümünü iyileştiren yüz yogası egzersizleri sunan, yapay zekâ destekli kişisel bakım uygulamasıdır.';
}

// Path: faq.questions.q2
class _TranslationsFaqQuestionsQ2Tr implements TranslationsFaqQuestionsQ2En {
	_TranslationsFaqQuestionsQ2Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Uygulama gerçekten işe yarıyor mu?';
	@override String get answer => 'Evet. Yüz yogası, yüz kaslarını aktive ederek cilt sıkılığını artırır, dolaşımı hızlandırır ve düzenli kullanımda daha genç bir görünüm sağlar.';
}

// Path: faq.questions.q3
class _TranslationsFaqQuestionsQ3Tr implements TranslationsFaqQuestionsQ3En {
	_TranslationsFaqQuestionsQ3Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Yapay zekâ burada ne yapıyor?';
	@override String get answer => 'YogiFace, yüz hatlarını analiz eder, hedef bölgeleri belirler ve kullanıcıya özel egzersiz planı oluşturur. Böylece her hareket kişisel ihtiyaca göre optimize edilir.';
}

// Path: faq.questions.q4
class _TranslationsFaqQuestionsQ4Tr implements TranslationsFaqQuestionsQ4En {
	_TranslationsFaqQuestionsQ4Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Her gün ne kadar süre ayırmam gerekiyor?';
	@override String get answer => 'Günde yalnızca 5–10 dakika yeterlidir. Düzenli uygulamayla birkaç hafta içinde gözle görülür değişim başlar.';
}

// Path: faq.questions.q5
class _TranslationsFaqQuestionsQ5Tr implements TranslationsFaqQuestionsQ5En {
	_TranslationsFaqQuestionsQ5Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Sonuçlar ne zaman görünür?';
	@override String get answer => 'Düzenli kullanımda 2–3 hafta içinde cilt tonunda iyileşme, 4–6 hafta içinde yüz hatlarında belirginleşme görülür. Sonuçlar kişiden kişiye değişebilir.';
}

// Path: faq.questions.q6
class _TranslationsFaqQuestionsQ6Tr implements TranslationsFaqQuestionsQ6En {
	_TranslationsFaqQuestionsQ6Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Çift çene veya sarkma gibi sorunlarda işe yarar mı?';
	@override String get answer => 'Evet. YogiFace, çene hattı, yanak kasları ve boyun bölgesi için hedefli egzersizler sunar. Bu egzersizler düzenli yapıldığında bu bölgelerde belirgin sıkılaşma sağlar.';
}

// Path: faq.questions.q7
class _TranslationsFaqQuestionsQ7Tr implements TranslationsFaqQuestionsQ7En {
	_TranslationsFaqQuestionsQ7Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Hareketleri doğru yapıp yapmadığımı nasıl anlarım?';
	@override String get answer => 'Uygulama, yapay zekâ desteğiyle yüz açını, ifadeni ve hareket düzenini analiz eder; yanlış yaptığın noktaları sana bildirir.';
}

// Path: faq.questions.q8
class _TranslationsFaqQuestionsQ8Tr implements TranslationsFaqQuestionsQ8En {
	_TranslationsFaqQuestionsQ8Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Her yaş için uygun mu?';
	@override String get answer => 'Evet. Yüz yogası invaziv olmayan doğal bir yöntemdir. Genç yaşlardan itibaren herkes güvenle uygulayabilir.';
}

// Path: faq.questions.q9
class _TranslationsFaqQuestionsQ9Tr implements TranslationsFaqQuestionsQ9En {
	_TranslationsFaqQuestionsQ9Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'YogiFace ücretsiz mi?';
	@override String get answer => 'Temel egzersizler ücretsizdir. Kişisel programlar, ileri seviye yüz analizi ve özel AI önerileri premium pakette yer alır.';
}

// Path: faq.questions.q10
class _TranslationsFaqQuestionsQ10Tr implements TranslationsFaqQuestionsQ10En {
	_TranslationsFaqQuestionsQ10Tr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get question => 'Estetik operasyon yaptırmış olanlar kullanabilir mi?';
	@override String get answer => 'Birçok kullanıcı güvenle kullanır, ancak operasyon sonrası iyileşme sürecinde mutlaka doktora danışılması önerilir.';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'welcome' => 'Hoşgeldiniz',
			'get_started' => 'Başlayın',
			'next' => 'Sonraki',
			'back' => 'Geri',
			'skip' => 'Atla',
			'logintext' => 'Seni gördüğüm için mutluyum. Hesabınıza giriş yaparak nerede durduysanız oradan devam edebilirsiniz.',
			'termOfService.text1' => 'Swipe\'a kaydolarak ',
			'termOfService.link1' => 'Hizmet Şartlarımızı',
			'termOfService.text2' => ' kabul etmiş olursunuz. ',
			'termOfService.link2' => 'Gizlilik Politikamızda',
			'termOfService.text3' => ' ve ',
			'termOfService.link3' => 'Çerez Politikamızda',
			'termOfService.text4' => ' verilerinizi nasıl işlediğimizi öğrenin',
			'cookies' => 'Çerez Politikası',
			'privacy' => 'Gizlilik Politikası',
			'termsOfService.title' => 'Yogiface – Hizmet Şartları',
			'termsOfService.lastUpdated' => 'Son Güncelleme: 2025',
			'termsOfService.principle' => 'Yogiface, yüz yogası egzersizleri ve yüz kaslarını desteklemeye yönelik rehber içerikler sunan bir wellness uygulamasıdır. Uygulama, tıbbi, klinik, estetik veya profesyonel sağlık hizmeti sağlamaz.',
			'termsOfService.intro' => 'Bu Hizmet Şartları ("Şartlar"), Yogiface mobil uygulamasını ("Uygulama") kullanmanız için geçerli olan kuralları içerir. Uygulamayı kullanarak bu Şartları kabul etmiş sayılırsınız. Şartları kabul etmiyorsanız Uygulama\'yı kullanmamalısınız.',
			'termsOfService.section1.title' => '1. Hizmetin Kapsamı',
			'termsOfService.section1.content' => 'Yogiface, kullanıcılara yüz kaslarını çalıştırmaya yönelik rehberli bir deneyim sunar. Uygulama şunları içerir:',
			'termsOfService.section1.items.0' => 'Yüz yogası ve yüz egzersizi rehberleri',
			'termsOfService.section1.items.1' => 'Günlük ve haftalık egzersiz rutinleri',
			'termsOfService.section1.items.2' => 'Yüz bölgelerine özel çalışma önerileri',
			'termsOfService.section1.items.3' => 'Kişiselleştirilebilir egzersiz planları ve ilerleme takibi',
			'termsOfService.section1.note' => 'Sunulan içerikler profesyonel, tıbbi veya estetik bir tavsiye niteliği taşımaz.',
			'termsOfService.section2.title' => '2. Uygulamayı Kullanma Koşulları',
			'termsOfService.section2.items.0' => 'En az 13 yaşında olmalısınız.',
			'termsOfService.section2.items.1' => 'Hesap bilgilerinizi doğru ve güncel sağlamalısınız.',
			'termsOfService.section2.items.2' => 'Egzersizlerin tıbbi bir hizmet olmadığını kabul edersiniz.',
			'termsOfService.section3.title' => '3. Yasaklı Kullanımlar',
			'termsOfService.section3.items.0' => 'Uygulamayı yasa dışı faaliyetler için kullanmak.',
			'termsOfService.section3.items.1' => 'İçerikleri izinsiz satmak, çoğaltmak veya dağıtmak.',
			'termsOfService.section3.items.2' => 'Sisteme izinsiz erişim, hack veya reverse engineering girişimleri.',
			'termsOfService.section4.title' => '4. Hesap ve Üyelik',
			'termsOfService.section4.content' => 'Hesap güvenliğiniz size aittir. Yogiface, Şartlara aykırı kullanım tespit edilmesi halinde hesapları askıya alma veya kapatma hakkını saklı tutar.',
			'termsOfService.section5.title' => '5. Premium ve Ücretli Hizmetler',
			'termsOfService.section5.items.0' => 'Ücretlendirme uygulama mağazası (App Store/Google Play) politikalarına göre yapılır.',
			'termsOfService.section5.items.1' => 'Abonelikler otomatik yenilenebilir; iptaller mağaza ayarlarından yapılır.',
			'termsOfService.section6.title' => '6. İçerik ve Sorumluluk Reddi',
			'termsOfService.section6.content' => 'Kullanıcı, egzersizleri kendi sorumluluğunda uygular. Herhangi bir sağlık sorunu durumunda kullanıcılar uzman bir sağlık profesyoneline başvurmalıdır. Uygulama teşhis veya tedavi amaçlı kullanılmamalıdır.',
			'termsOfService.section7.title' => '7. Fikri Mülkiyet Hakları',
			'termsOfService.section7.content' => 'Tasarım, yazılım, görseller ve egzersiz içerikleri Yogiface\'e aittir. İzinsiz kopyalama veya kaynak kodunu değiştirme yapılamaz.',
			'termsOfService.section12.title' => '12. Uygulanacak Hukuk',
			'termsOfService.section12.content' => 'Bu Şartlar Türkiye Cumhuriyeti yasalarına tabidir. Yetkili merci İstanbul Merkez Mahkemeleridir.',
			'termsOfService.section13.title' => '13. İletişim',
			'termsOfService.section13.email' => '📩 E-posta: support@fly-work.com',
			'cookiesPolicy.title' => 'Yogiface – Çerez Politikası',
			'cookiesPolicy.lastUpdated' => 'Son Güncelleme: 2025',
			'cookiesPolicy.intro' => 'Yogiface\'e hoş geldiniz! Uygulamayı her ziyaret ettiğinizde deneyiminizi geliştirmek ve kişiselleştirmek amacıyla bazı dijital yardımcılar (çerezler) kullanıyoruz. Bu politika, tercihlerinizi nasıl yönetebileceğinizi açıklar.',
			'cookiesPolicy.section1.title' => '1. Çerez Nedir?',
			'cookiesPolicy.section1.content' => 'Çerezler, cihazınıza yerleştirilen küçük veri dosyalarıdır. Uygulamayı nasıl kullandığınızı anlamamıza yardımcı olur ve deneyiminizi daha akıcı hale getirir. Çerezler kimliğinizi doğrudan içermez; tercihlerinizi ve kullanım alışkanlıklarınızı hatırlar.',
			'cookiesPolicy.section2.title' => '2. Hangi Çerezleri Kullanıyoruz?',
			'cookiesPolicy.section2.essential.title' => 'Zorunlu Çerezler',
			'cookiesPolicy.section2.essential.content' => 'Uygulamanın temel işlevleri için gereklidir. Oturum yönetimi, güvenlik ve temel navigasyon gibi çekirdek süreçleri destekler.',
			'cookiesPolicy.section2.performance.title' => 'Performans ve Analitik Çerezleri',
			'cookiesPolicy.section2.performance.content' => 'Hangi alanların daha sık kullanıldığını ve hangi bölümlerin iyileştirilmesi gerektiğini anlamamıza yardımcı olur.',
			'cookiesPolicy.section2.personalization.title' => 'Kişiselleştirme Çerezleri',
			'cookiesPolicy.section2.personalization.content' => 'Dil, tema ve egzersiz tercihleri gibi ayarları hatırlayarak her kullanımda size daha kişisel bir deneyim sunar.',
			'cookiesPolicy.section2.marketing.title' => 'Pazarlama ve Reklam Çerezleri',
			'cookiesPolicy.section2.marketing.content' => 'İlgi alanlarınıza daha uygun içerikler sunmak amacıyla kullanılabilir ve bazı durumlarda üçüncü taraf hizmetlerle çalışabilir.',
			'cookiesPolicy.section3.title' => '3. Çerezleri Neden Kullanıyoruz?',
			'cookiesPolicy.section3.items.0' => 'Uygulamanın hızlı ve sorunsuz çalışmasını sağlamak',
			'cookiesPolicy.section3.items.1' => 'Kullanıcı tercihlerini hatırlayarak tekrar eden işlemleri azaltmak',
			'cookiesPolicy.section3.items.2' => 'Deneyimi daha kişisel ve kullanışlı hale getirmek',
			'cookiesPolicy.section3.items.3' => 'Kullanım verilerini analiz ederek uygulamayı geliştirmek',
			'cookiesPolicy.section4.title' => '4. Üçüncü Taraf Çerezleri',
			'cookiesPolicy.section4.content' => 'Bazı çerezler, analitik ve reklam hizmetleri sunan üçüncü taraf iş ortakları tarafından yerleştirilebilir. Bu çerezler ilgili hizmet sağlayıcıların kendi politikalarına tabidir.',
			'cookiesPolicy.section5.title' => '5. Çerez Kontrolleri ve Yönetimi',
			'cookiesPolicy.section5.content' => 'Çerezleri cihaz ayarlarından, uygulama izinlerinden veya sistem ayarlarından yönetebilirsiniz. Zorunlu çerezlerin kapatılması, uygulamanın bazı bölümlerinin düzgün çalışmamasına neden olabilir.',
			'cookiesPolicy.section6.title' => '6. Verilerin Kullanımı',
			'cookiesPolicy.section6.content' => 'Çerezler aracılığıyla elde edilen veriler, kişisel veri niteliği taşıması halinde Gizlilik Politikası kapsamında ve yasal çerçevede işlenir.',
			'cookiesPolicy.section7.title' => '7. Politika Güncellemeleri',
			'cookiesPolicy.section7.content' => 'Bu politika teknolojik ve yasal gelişmelere bağlı olarak güncellenebilir. Güncel sürüm yayınlandığı anda yürürlüğe girer.',
			'cookiesPolicy.section8.title' => '8. İletişim',
			'cookiesPolicy.section8.email' => '📩 E-posta: support@fly-work.com',
			'privacyPolicy.title' => 'Yogiface – Gizlilik Politikası',
			'privacyPolicy.lastUpdated' => 'Son Güncelleme: 2025',
			'privacyPolicy.intro' => 'Bu Gizlilik Politikası, Yogiface mobil uygulamasını ("Uygulama") kullanan tüm kullanıcıların kişisel verilerinin toplanması, kullanılması, saklanması ve korunmasına ilişkin esasları açıklar. Uygulamayı kullanarak bu politikayı kabul etmiş sayılırsınız.',
			'privacyPolicy.principle' => 'Yogiface, kullanıcı gizliliğini ve veri güvenliğini temel ilke olarak benimser. Tüm kişisel veriler KVKK, GDPR ve ilgili mevzuata uygun şekilde işlenir.',
			'privacyPolicy.section1.title' => '1. Toplanan Bilgiler',
			'privacyPolicy.section1.sub1.title' => '1.1. Kullanıcı Tarafından Sağlanan Veriler',
			'privacyPolicy.section1.sub1.items.0' => 'Ad, takma ad veya profil bilgileri',
			'privacyPolicy.section1.sub1.items.1' => 'E-posta adresi (kayıt, satın alma ve destek işlemleri için)',
			'privacyPolicy.section1.sub1.items.2' => 'Egzersiz planları, tercihler ve kişiselleştirme ayarları',
			'privacyPolicy.section1.sub1.items.3' => 'Geri bildirim, talep ve destek mesajları',
			'privacyPolicy.section1.sub2.title' => '1.2. Otomatik Olarak Toplanan Veriler',
			'privacyPolicy.section1.sub2.items.0' => 'Cihaz türü, işletim sistemi ve teknik bilgiler',
			'privacyPolicy.section1.sub2.items.1' => 'Yaklaşık konum verisi (şehir/ülke bazında)',
			'privacyPolicy.section1.sub2.items.2' => 'Oturum süresi ve ekran etkileşimleri gibi kullanım bilgileri',
			'privacyPolicy.section1.sub2.items.3' => 'Performans, hata ve çökme kayıtları',
			'privacyPolicy.section2.title' => '2. Verilerin Kullanım Amaçları',
			'privacyPolicy.section2.items.0' => 'Uygulamanın kesintisiz çalışmasını sağlamak',
			'privacyPolicy.section2.items.1' => 'Yüz yogası deneyimini kişiselleştirmek ve optimize etmek',
			'privacyPolicy.section2.items.2' => 'Hata tespiti ve performans analizleri yapmak',
			'privacyPolicy.section2.items.3' => 'Kullanıcı taleplerine ve destek isteklerine yanıt vermek',
			'privacyPolicy.section2.note' => 'Önemli: Kullanıcı verileri hiçbir şekilde üçüncü taraflara satılmaz.',
			'privacyPolicy.section3.title' => '3. Veri Saklama Süresi',
			'privacyPolicy.section3.items.0' => 'Veriler, kullanıcı hesabı aktif olduğu sürece saklanır.',
			'privacyPolicy.section3.items.1' => 'Hesap silindiğinde, kişisel veriler geri döndürülemez biçimde silinir.',
			'privacyPolicy.section3.items.2' => 'Destek kayıtları işlem tamamlandıktan sonra en fazla 12 ay tutulur.',
			'privacyPolicy.section4.title' => '4. Verilerin Paylaşımı',
			'privacyPolicy.section4.content' => 'Verileriniz yalnızca yasal gereklilikler (resmi makam talepleri), hizmet sağlayıcılar (bulut altyapısı, analitik) veya kullanıcının açık rızası durumunda paylaşılabilir.',
			'privacyPolicy.section5.title' => '5. Çerezler ve Güvenlik',
			'privacyPolicy.section5.content' => 'Yogiface, performans ve deneyim iyileştirme amacıyla çerezler kullanabilir. Verileriniz SSL/TLS şifreleme ve düzenli güvenlik denetimleri ile korunur.',
			'privacyPolicy.section6.title' => '6. Kullanıcı Hakları',
			'privacyPolicy.section6.content' => 'Erişim, düzeltme, silme ve veri işleme kısıtlama haklarınız saklıdır.',
			'privacyPolicy.section6.contact' => 'Talepleriniz için:',
			'privacyPolicy.section6.email' => 'support@fly-work.com',
			'privacyPolicy.section8.title' => '8. Çocukların Gizliliği',
			'privacyPolicy.section8.content' => 'Yogiface, 13 yaş altı kişilere yönelik değildir. Bu yaş grubundan veri toplandığı tespit edilirse derhal silinir.',
			'privacyPolicy.section10.title' => '10. İletişim',
			'privacyPolicy.section10.email' => '📩 E-posta: support@fly-work.com',
			'onboarding.basicInformation' => 'TEMEL BİLGİLER',
			'onboarding.target' => 'HEDEF',
			'onboarding.habits' => 'ALIŞKANLIKLAR',
			'onboarding.step' => 'ADIM',
			'onboarding.of' => '/',
			'onboarding.tellUsAboutYourself' => 'Bize Kendinizden Bahsedin',
			'onboarding.shortBioDescription' => 'Kısa bir biyografi, başkalarının sizi gerçekten tanımasına yardımcı olur. Eğlenceli ve samimi tutun',
			'onboarding.enterYourFullname' => 'Adınızı Soyadınızı Girin',
			'onboarding.fullName' => 'Ad Soyad',
			'onboarding.male' => 'Erkek',
			'onboarding.female' => 'Kadın',
			'onboarding.dontWantToMention' => 'Belirtmek istemiyorum',
			'onboarding.whatIsMainObjective' => 'Ana hedef nedir?',
			'onboarding.reduceWrinkles' => 'Kırışıklıkları azalt',
			'onboarding.tightenSkin' => 'Cildi sıkılaştır',
			'onboarding.liftDroopyEyelids' => 'Düşük göz kapaklarını toparla',
			'onboarding.eliminateDoubleChin' => 'Gıdıyı yok et',
			'onboarding.brightenSkinTone' => 'Cilt tonunu aydınlat',
			'onboarding.allOfTheAbove' => 'Yukarıdakilerin hepsi',
			'onboarding.whichAreaToImprove' => 'Hangi bölgeyi iyileştirmek istersiniz?',
			'onboarding.forehead' => 'Alın',
			'onboarding.eyes' => 'Gözler',
			'onboarding.nose' => 'Burun',
			'onboarding.cheeks' => 'Yanaklar',
			'onboarding.lips' => 'Dudaklar',
			'onboarding.jawline' => 'Çene hattı',
			'onboarding.neck' => 'Boyun',
			'onboarding.whatFaceShapeAiming' => 'Hangi yüz şeklini hedefliyorsunuz?',
			'onboarding.heart' => 'Kalp',
			'onboarding.oval' => 'Oval',
			'onboarding.square' => 'Kare',
			'onboarding.round' => 'Yuvarlak',
			'onboarding.diamond' => 'Elmas',
			'onboarding.whatIsYourSkinType' => 'Cilt tipiniz nedir?',
			'onboarding.normal' => 'Normal',
			'onboarding.oily' => 'Yağlı',
			'onboarding.dry' => 'Kuru',
			'onboarding.combination' => 'Karma',
			'onboarding.sensitive' => 'Hassas',
			'onboarding.whichOfThemDoYouHave' => 'Bunlardan hangisine sahipsiniz?',
			'onboarding.acneAndPimples' => 'Akne ve sivilce',
			'onboarding.redness' => 'Kızarıklıklar',
			'onboarding.swelling' => 'Şişlik',
			'onboarding.wrinkles' => 'Kırışıklıklar',
			'onboarding.neckLines' => 'Boyun çizgileri',
			'onboarding.howOftenWearMakeup' => 'Ne sıklıkla makyaj yaparsınız?',
			'onboarding.everyDay' => 'Her gün',
			'onboarding.fewDaysAWeek' => 'Haftada bir kaç gün',
			'onboarding.occasionally' => 'Arada sırada',
			'onboarding.never' => 'Hiç',
			'onboarding.haveYouHadBotox' => 'Botox yaptırdınız mı?',
			'onboarding.yes' => 'Evet',
			'onboarding.no' => 'Hayır',
			'onboarding.creatingPersonalizedProfile' => 'Kişiselleştirilmiş Profiliniz Oluşturuluyor',
			'onboarding.tailoringExperience' => 'Tercihlerinize göre deneyiminizi özelleştiriyoruz...',
			'onboarding.matchingPersonalities' => 'KİŞİLİKLER EŞLEŞTİRİLİYOR',
			'pressBackAgainToExit' => 'Çıkmak için bir kez daha geri tuşuna basın',
			'addedToFavoritesTitle' => 'Egzersiz başarıyla favorilere eklendi!',
			'removedFromFavoritesTitle' => 'Egzersiz başarıyla favoriden kaldırıldı!',
			'removedFromFavorites' => 'Eklemek istediğiniz diğer egzersizlere kurslardan ulaşabilirsiniz',
			'faq.title' => 'Sıkça Sorulan Sorular',
			'faq.questions.q1.question' => 'YogiFace nedir?',
			'faq.questions.q1.answer' => 'YogiFace, yüz kaslarını çalıştırarak cilt görünümünü iyileştiren yüz yogası egzersizleri sunan, yapay zekâ destekli kişisel bakım uygulamasıdır.',
			'faq.questions.q2.question' => 'Uygulama gerçekten işe yarıyor mu?',
			'faq.questions.q2.answer' => 'Evet. Yüz yogası, yüz kaslarını aktive ederek cilt sıkılığını artırır, dolaşımı hızlandırır ve düzenli kullanımda daha genç bir görünüm sağlar.',
			'faq.questions.q3.question' => 'Yapay zekâ burada ne yapıyor?',
			'faq.questions.q3.answer' => 'YogiFace, yüz hatlarını analiz eder, hedef bölgeleri belirler ve kullanıcıya özel egzersiz planı oluşturur. Böylece her hareket kişisel ihtiyaca göre optimize edilir.',
			'faq.questions.q4.question' => 'Her gün ne kadar süre ayırmam gerekiyor?',
			'faq.questions.q4.answer' => 'Günde yalnızca 5–10 dakika yeterlidir. Düzenli uygulamayla birkaç hafta içinde gözle görülür değişim başlar.',
			'faq.questions.q5.question' => 'Sonuçlar ne zaman görünür?',
			'faq.questions.q5.answer' => 'Düzenli kullanımda 2–3 hafta içinde cilt tonunda iyileşme, 4–6 hafta içinde yüz hatlarında belirginleşme görülür. Sonuçlar kişiden kişiye değişebilir.',
			'faq.questions.q6.question' => 'Çift çene veya sarkma gibi sorunlarda işe yarar mı?',
			'faq.questions.q6.answer' => 'Evet. YogiFace, çene hattı, yanak kasları ve boyun bölgesi için hedefli egzersizler sunar. Bu egzersizler düzenli yapıldığında bu bölgelerde belirgin sıkılaşma sağlar.',
			'faq.questions.q7.question' => 'Hareketleri doğru yapıp yapmadığımı nasıl anlarım?',
			'faq.questions.q7.answer' => 'Uygulama, yapay zekâ desteğiyle yüz açını, ifadeni ve hareket düzenini analiz eder; yanlış yaptığın noktaları sana bildirir.',
			'faq.questions.q8.question' => 'Her yaş için uygun mu?',
			'faq.questions.q8.answer' => 'Evet. Yüz yogası invaziv olmayan doğal bir yöntemdir. Genç yaşlardan itibaren herkes güvenle uygulayabilir.',
			'faq.questions.q9.question' => 'YogiFace ücretsiz mi?',
			'faq.questions.q9.answer' => 'Temel egzersizler ücretsizdir. Kişisel programlar, ileri seviye yüz analizi ve özel AI önerileri premium pakette yer alır.',
			'faq.questions.q10.question' => 'Estetik operasyon yaptırmış olanlar kullanabilir mi?',
			'faq.questions.q10.answer' => 'Birçok kullanıcı güvenle kullanır, ancak operasyon sonrası iyileşme sürecinde mutlaka doktora danışılması önerilir.',
			_ => null,
		};
	}
}
