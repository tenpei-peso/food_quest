/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 138 (69 per locale)
///
/// Built on 2023-12-15 at 20:04 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ja(languageCode: 'ja', build: _StringsJa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get search => 'search';
	String get mailAddress => 'mail address';
	String get back => 'back';
	String get next => 'next';
	String get complete => 'complete';
	String get monster => 'monster';
	String get cancel => 'cancel';
	String get ja => 'Japanese';
	String get en => 'English';
	String get signIn => 'Login';
	String get logOut => 'Log Out';
	String get pictureErrorDialog => 'No more than three images can be selected';
	late final _StringsSignInScreenEn signInScreen = _StringsSignInScreenEn._(_root);
	late final _StringsSignUpProfileScreenEn signUpProfileScreen = _StringsSignUpProfileScreenEn._(_root);
	late final _StringsSelectPetScreenEn selectPetScreen = _StringsSelectPetScreenEn._(_root);
	String get newAccount => 'new account';
	late final _StringsCompletionPetScreenEn completionPetScreen = _StringsCompletionPetScreenEn._(_root);
	late final _StringsSignUpScreenEn signUpScreen = _StringsSignUpScreenEn._(_root);
	late final _StringsPetScreenEn petScreen = _StringsPetScreenEn._(_root);
	String get translationSelectDescription => 'Please select the language you want to translate';
	late final _StringsProfileScreenEn profileScreen = _StringsProfileScreenEn._(_root);
	String get myAnswerList => 'List of questions you have answered';
	late final _StringsQuestCardEn questCard = _StringsQuestCardEn._(_root);
	String get bestAnswer => 'Best Answer';
	String get myQuestList => 'My Quest List';
	String get noQuestion => 'No Question';
	String get noAnswer => 'No Answer';
	String get searchInMap => 'Search in Map';
	String get otherAnswer => 'Other Answer';
	String get ExplanationGuideWidget => 'You can select up to three prefectures to be displayed on the quest list screen. Quests from the selected prefectures will be displayed.';
	String get receive => 'Receive';
	late final _StringsMakeModalEn makeModal = _StringsMakeModalEn._(_root);
	late final _StringsSettingEn setting = _StringsSettingEn._(_root);
}

// Path: signInScreen
class _StringsSignInScreenEn {
	_StringsSignInScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcomeBack => 'welcome Back';
	String get email => 'email';
	String get emailHint => 'Please enter your email address';
	String get password => ' password';
	String get passwordHint => 'Please enter your password';
	String get passwordCondition => 'Between 8 and 12 alphanumeric characters';
	String get signUp => 'sign up';
}

// Path: signUpProfileScreen
class _StringsSignUpProfileScreenEn {
	_StringsSignUpProfileScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profile => 'profile';
	String get userName => 'user name';
	String get userNameHint => 'Please enter your user name';
	String get address => 'address';
	String get toChoicePet => 'To Pet Selection';
}

// Path: selectPetScreen
class _StringsSelectPetScreenEn {
	_StringsSelectPetScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'Please select your favorite pet';
	String get userNameHint => 'Please enter your user name';
}

// Path: completionPetScreen
class _StringsCompletionPetScreenEn {
	_StringsCompletionPetScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get decide => 'I decided on you!';
	String get encourage => 'Let\'s complete many quests and raise \n(monster name)!';
	String get start => 'Beginning Rokakue';
}

// Path: signUpScreen
class _StringsSignUpScreenEn {
	_StringsSignUpScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'welcome';
	String get emailHint => 'Please enter your email address';
	String get passwordHint => 'Please enter your password';
	String get passwordCondition => 'Between 8 and 12 alphanumeric characters';
	String get clickHere => 'Click here if you have an account.';
}

// Path: petScreen
class _StringsPetScreenEn {
	_StringsPetScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get experience => 'experience';
	String get satisfaction => 'satisfaction';
}

// Path: profileScreen
class _StringsProfileScreenEn {
	_StringsProfileScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get myAnswer => 'My Answer';
	String get review => 'Review';
	String get edit => 'Edit';
	String get question => 'Question';
	String get good => 'Good';
}

// Path: questCard
class _StringsQuestCardEn {
	_StringsQuestCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noName => 'No Name';
	String get translate => 'Translate';
}

// Path: makeModal
class _StringsMakeModalEn {
	_StringsMakeModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get acceptingOrder => 'Accepting Order';
	String get area => 'Area';
	String get dedline => 'Deadline';
	String get budget => 'Budget';
	String get message => 'Please enter your answer';
	String get image => 'image';
	String get minimumBudget => 'Minimum Budget';
	String get maximumBudget => 'Maximum Budget';
}

// Path: setting
class _StringsSettingEn {
	_StringsSettingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get setting => 'Setting';
	String get rules => 'Rules';
	String get privacyPolicy => 'Privacy Policy';
	String get termsOfUse => 'Terms of Use';
	String get help => 'Help・Feedback';
	String get contact => 'Contact Us';
	String get feedback => 'Feedback';
}

// Path: <root>
class _StringsJa implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
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

	@override late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	@override String get search => '検索';
	@override String get mailAddress => 'メールアドレス';
	@override String get back => '戻る';
	@override String get next => '次へ';
	@override String get complete => '完了';
	@override String get monster => 'モンスター';
	@override String get cancel => 'キャンセル';
	@override String get ja => '日本語';
	@override String get en => '英語';
	@override String get login => 'ログイン';
	@override String get logOut => 'ログアウト';
	@override String get pictureErrorDialog => '画像は3枚以上は選択できません';
	@override late final _StringsSignInScreenJa signInScreen = _StringsSignInScreenJa._(_root);
	@override late final _StringsSignUpProfileScreenJa signUpProfileScreen = _StringsSignUpProfileScreenJa._(_root);
	@override late final _StringsSelectPetScreenJa selectPetScreen = _StringsSelectPetScreenJa._(_root);
	@override String get newAccount => 'はじめての方はこちら';
	@override late final _StringsCompletionPetScreenJa completionPetScreen = _StringsCompletionPetScreenJa._(_root);
	@override late final _StringsSignUpScreenJa signUpScreen = _StringsSignUpScreenJa._(_root);
	@override late final _StringsPetScreenJa petScreen = _StringsPetScreenJa._(_root);
	@override String get translationSelectDescription => '翻訳先を選択してください';
	@override late final _StringsProfileScreenJa profileScreen = _StringsProfileScreenJa._(_root);
	@override String get myAnswerList => '自分が回答した質問一覧画面';
	@override late final _StringsQuestCardJa questCard = _StringsQuestCardJa._(_root);
	@override String get bestAnswer => 'ベストアンサー';
	@override String get myQuestList => '質問一覧';
	@override String get noQuestion => '質問がありません';
	@override String get noAnswer => '回答がありません';
	@override String get searchInMap => 'Mapで探す';
	@override String get otherAnswer => '他の回答';
	@override String get ExplanationGuideWidget => 'クエスト一覧画面に表示させる都道府県を最大３個まで選択する事ができます。選択した都道府県のクエストが表示されます。';
	@override String get receive => '受取';
	@override late final _StringsMakeModalJa makeModal = _StringsMakeModalJa._(_root);
	@override late final _StringsSettingJa setting = _StringsSettingJa._(_root);
}

// Path: signInScreen
class _StringsSignInScreenJa implements _StringsSignInScreenEn {
	_StringsSignInScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get welcomeBack => 'おかえりなさい';
	@override String get email => 'email';
	@override String get emailHint => 'emailを入力してください';
	@override String get password => 'パスワード';
	@override String get passwordHint => 'パスワードを入力してください';
	@override String get passwordCondition => '8文字以上12文字以下の半角英数字';
	@override String get signUp => 'はじめての方はこちら';
}

// Path: signUpProfileScreen
class _StringsSignUpProfileScreenJa implements _StringsSignUpProfileScreenEn {
	_StringsSignUpProfileScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール入力';
	@override String get userName => 'ユーザー名';
	@override String get userNameHint => 'ユーザー名を入力してください';
	@override String get address => '居住地';
	@override String get toChoicePet => 'ペット選択へ';
}

// Path: selectPetScreen
class _StringsSelectPetScreenJa implements _StringsSelectPetScreenEn {
	_StringsSelectPetScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get message => '育てるモンスターを選択してください';
	@override String get userNameHint => 'ユーザー名を入力してください';
}

// Path: completionPetScreen
class _StringsCompletionPetScreenJa implements _StringsCompletionPetScreenEn {
	_StringsCompletionPetScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get decide => '君に決めた！';
	@override String get encourage => 'たくさんクエストをクリアして\n(モンスター名)を育てよう！';
	@override String get start => 'ロカクエをはじめる';
}

// Path: signUpScreen
class _StringsSignUpScreenJa implements _StringsSignUpScreenEn {
	_StringsSignUpScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'へようこそ';
	@override String get emailHint => 'メールアドレスを入力してください';
	@override String get passwordHint => 'パスワードを入力してください';
	@override String get passwordCondition => '8文字以上12文字以下の半角英数字';
	@override String get clickHere => 'アカウントをお持ちの方はこちら';
}

// Path: petScreen
class _StringsPetScreenJa implements _StringsPetScreenEn {
	_StringsPetScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get experience => '経験値';
	@override String get satisfaction => '満足度';
}

// Path: profileScreen
class _StringsProfileScreenJa implements _StringsProfileScreenEn {
	_StringsProfileScreenJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get myAnswer => '自分の回答';
	@override String get review => 'レビュー';
	@override String get edit => '編集';
	@override String get question => '質問';
	@override String get good => 'いいね';
}

// Path: questCard
class _StringsQuestCardJa implements _StringsQuestCardEn {
	_StringsQuestCardJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get noName => '名無し';
	@override String get translate => '翻訳';
}

// Path: makeModal
class _StringsMakeModalJa implements _StringsMakeModalEn {
	_StringsMakeModalJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get acceptingOrder => '受注';
	@override String get area => 'エリア';
	@override String get dedline => '締切日';
	@override String get budget => '予算';
	@override String get message => '回答内容を入力してください';
	@override String get image => '画像';
	@override String get minimumBudget => '最低予算';
	@override String get maximumBudget => '最高予算';
}

// Path: setting
class _StringsSettingJa implements _StringsSettingEn {
	_StringsSettingJa._(this._root);

	@override final _StringsJa _root; // ignore: unused_field

	// Translations
	@override String get setting => '設定';
	@override String get rules => '規約';
	@override String get privacyPolicy => 'プライバシーポリシー';
	@override String get termsOfUse => '利用規約';
	@override String get help => 'ヘルプ・フィードバック';
	@override String get contact => 'お問い合わせ';
	@override String get feedback => 'フィードバック';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'search': return 'search';
			case 'mailAddress': return 'mail address';
			case 'back': return 'back';
			case 'next': return 'next';
			case 'complete': return 'complete';
			case 'monster': return 'monster';
			case 'cancel': return 'cancel';
			case 'ja': return 'Japanese';
			case 'en': return 'English';
			case 'signIn': return 'Login';
			case 'logOut': return 'Log Out';
			case 'pictureErrorDialog': return 'No more than three images can be selected';
			case 'signInScreen.welcomeBack': return 'welcome Back';
			case 'signInScreen.email': return 'email';
			case 'signInScreen.emailHint': return 'Please enter your email address';
			case 'signInScreen.password': return ' password';
			case 'signInScreen.passwordHint': return 'Please enter your password';
			case 'signInScreen.passwordCondition': return 'Between 8 and 12 alphanumeric characters';
			case 'signInScreen.signUp': return 'sign up';
			case 'signUpProfileScreen.profile': return 'profile';
			case 'signUpProfileScreen.userName': return 'user name';
			case 'signUpProfileScreen.userNameHint': return 'Please enter your user name';
			case 'signUpProfileScreen.address': return 'address';
			case 'signUpProfileScreen.toChoicePet': return 'To Pet Selection';
			case 'selectPetScreen.message': return 'Please select your favorite pet';
			case 'selectPetScreen.userNameHint': return 'Please enter your user name';
			case 'newAccount': return 'new account';
			case 'completionPetScreen.decide': return 'I decided on you!';
			case 'completionPetScreen.encourage': return 'Let\'s complete many quests and raise \n(monster name)!';
			case 'completionPetScreen.start': return 'Beginning Rokakue';
			case 'signUpScreen.welcome': return 'welcome';
			case 'signUpScreen.emailHint': return 'Please enter your email address';
			case 'signUpScreen.passwordHint': return 'Please enter your password';
			case 'signUpScreen.passwordCondition': return 'Between 8 and 12 alphanumeric characters';
			case 'signUpScreen.clickHere': return 'Click here if you have an account.';
			case 'petScreen.experience': return 'experience';
			case 'petScreen.satisfaction': return 'satisfaction';
			case 'translationSelectDescription': return 'Please select the language you want to translate';
			case 'profileScreen.myAnswer': return 'My Answer';
			case 'profileScreen.review': return 'Review';
			case 'profileScreen.edit': return 'Edit';
			case 'profileScreen.question': return 'Question';
			case 'profileScreen.good': return 'Good';
			case 'myAnswerList': return 'List of questions you have answered';
			case 'questCard.noName': return 'No Name';
			case 'questCard.translate': return 'Translate';
			case 'bestAnswer': return 'Best Answer';
			case 'myQuestList': return 'My Quest List';
			case 'noQuestion': return 'No Question';
			case 'noAnswer': return 'No Answer';
			case 'searchInMap': return 'Search in Map';
			case 'otherAnswer': return 'Other Answer';
			case 'ExplanationGuideWidget': return 'You can select up to three prefectures to be displayed on the quest list screen. Quests from the selected prefectures will be displayed.';
			case 'receive': return 'Receive';
			case 'makeModal.acceptingOrder': return 'Accepting Order';
			case 'makeModal.area': return 'Area';
			case 'makeModal.dedline': return 'Deadline';
			case 'makeModal.budget': return 'Budget';
			case 'makeModal.message': return 'Please enter your answer';
			case 'makeModal.image': return 'image';
			case 'makeModal.minimumBudget': return 'Minimum Budget';
			case 'makeModal.maximumBudget': return 'Maximum Budget';
			case 'setting.setting': return 'Setting';
			case 'setting.rules': return 'Rules';
			case 'setting.privacyPolicy': return 'Privacy Policy';
			case 'setting.termsOfUse': return 'Terms of Use';
			case 'setting.help': return 'Help・Feedback';
			case 'setting.contact': return 'Contact Us';
			case 'setting.feedback': return 'Feedback';
			default: return null;
		}
	}
}

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'search': return '検索';
			case 'mailAddress': return 'メールアドレス';
			case 'back': return '戻る';
			case 'next': return '次へ';
			case 'complete': return '完了';
			case 'monster': return 'モンスター';
			case 'cancel': return 'キャンセル';
			case 'ja': return '日本語';
			case 'en': return '英語';
			case 'login': return 'ログイン';
			case 'logOut': return 'ログアウト';
			case 'pictureErrorDialog': return '画像は3枚以上は選択できません';
			case 'signInScreen.welcomeBack': return 'おかえりなさい';
			case 'signInScreen.email': return 'email';
			case 'signInScreen.emailHint': return 'emailを入力してください';
			case 'signInScreen.password': return 'パスワード';
			case 'signInScreen.passwordHint': return 'パスワードを入力してください';
			case 'signInScreen.passwordCondition': return '8文字以上12文字以下の半角英数字';
			case 'signInScreen.signUp': return 'はじめての方はこちら';
			case 'signUpProfileScreen.profile': return 'プロフィール入力';
			case 'signUpProfileScreen.userName': return 'ユーザー名';
			case 'signUpProfileScreen.userNameHint': return 'ユーザー名を入力してください';
			case 'signUpProfileScreen.address': return '居住地';
			case 'signUpProfileScreen.toChoicePet': return 'ペット選択へ';
			case 'selectPetScreen.message': return '育てるモンスターを選択してください';
			case 'selectPetScreen.userNameHint': return 'ユーザー名を入力してください';
			case 'newAccount': return 'はじめての方はこちら';
			case 'completionPetScreen.decide': return '君に決めた！';
			case 'completionPetScreen.encourage': return 'たくさんクエストをクリアして\n(モンスター名)を育てよう！';
			case 'completionPetScreen.start': return 'ロカクエをはじめる';
			case 'signUpScreen.welcome': return 'へようこそ';
			case 'signUpScreen.emailHint': return 'メールアドレスを入力してください';
			case 'signUpScreen.passwordHint': return 'パスワードを入力してください';
			case 'signUpScreen.passwordCondition': return '8文字以上12文字以下の半角英数字';
			case 'signUpScreen.clickHere': return 'アカウントをお持ちの方はこちら';
			case 'petScreen.experience': return '経験値';
			case 'petScreen.satisfaction': return '満足度';
			case 'translationSelectDescription': return '翻訳先を選択してください';
			case 'profileScreen.myAnswer': return '自分の回答';
			case 'profileScreen.review': return 'レビュー';
			case 'profileScreen.edit': return '編集';
			case 'profileScreen.question': return '質問';
			case 'profileScreen.good': return 'いいね';
			case 'myAnswerList': return '自分が回答した質問一覧画面';
			case 'questCard.noName': return '名無し';
			case 'questCard.translate': return '翻訳';
			case 'bestAnswer': return 'ベストアンサー';
			case 'myQuestList': return '質問一覧';
			case 'noQuestion': return '質問がありません';
			case 'noAnswer': return '回答がありません';
			case 'searchInMap': return 'Mapで探す';
			case 'otherAnswer': return '他の回答';
			case 'ExplanationGuideWidget': return 'クエスト一覧画面に表示させる都道府県を最大３個まで選択する事ができます。選択した都道府県のクエストが表示されます。';
			case 'receive': return '受取';
			case 'makeModal.acceptingOrder': return '受注';
			case 'makeModal.area': return 'エリア';
			case 'makeModal.dedline': return '締切日';
			case 'makeModal.budget': return '予算';
			case 'makeModal.message': return '回答内容を入力してください';
			case 'makeModal.image': return '画像';
			case 'makeModal.minimumBudget': return '最低予算';
			case 'makeModal.maximumBudget': return '最高予算';
			case 'setting.setting': return '設定';
			case 'setting.rules': return '規約';
			case 'setting.privacyPolicy': return 'プライバシーポリシー';
			case 'setting.termsOfUse': return '利用規約';
			case 'setting.help': return 'ヘルプ・フィードバック';
			case 'setting.contact': return 'お問い合わせ';
			case 'setting.feedback': return 'フィードバック';
			default: return null;
		}
	}
}
