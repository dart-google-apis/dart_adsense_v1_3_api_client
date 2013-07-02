part of adsense_v1_3_api_console;

/** Client to access the adsense v1.3 API */
/** Gives AdSense publishers access to their inventory and the ability to generate reports */
class Adsense extends ConsoleClient {

  AccountsResource_ _accounts;
  AccountsResource_ get accounts => _accounts;
  AdclientsResource_ _adclients;
  AdclientsResource_ get adclients => _adclients;
  AdunitsResource_ _adunits;
  AdunitsResource_ get adunits => _adunits;
  AlertsResource_ _alerts;
  AlertsResource_ get alerts => _alerts;
  CustomchannelsResource_ _customchannels;
  CustomchannelsResource_ get customchannels => _customchannels;
  MetadataResource_ _metadata;
  MetadataResource_ get metadata => _metadata;
  ReportsResource_ _reports;
  ReportsResource_ get reports => _reports;
  SavedadstylesResource_ _savedadstyles;
  SavedadstylesResource_ get savedadstyles => _savedadstyles;
  UrlchannelsResource_ _urlchannels;
  UrlchannelsResource_ get urlchannels => _urlchannels;

  /** OAuth Scope2: View and manage your AdSense data */
  static const core.String ADSENSE_SCOPE = "https://www.googleapis.com/auth/adsense";

  /** OAuth Scope2: View your AdSense data */
  static const core.String ADSENSE_READONLY_SCOPE = "https://www.googleapis.com/auth/adsense.readonly";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Adsense([oauth2.OAuth2Console auth]) : super(auth) {
    basePath = "/adsense/v1.3/";
    rootUrl = "https://www.googleapis.com/";
    _accounts = new AccountsResource_(this);
    _adclients = new AdclientsResource_(this);
    _adunits = new AdunitsResource_(this);
    _alerts = new AlertsResource_(this);
    _customchannels = new CustomchannelsResource_(this);
    _metadata = new MetadataResource_(this);
    _reports = new ReportsResource_(this);
    _savedadstyles = new SavedadstylesResource_(this);
    _urlchannels = new UrlchannelsResource_(this);
  }
}
