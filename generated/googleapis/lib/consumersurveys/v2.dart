// This is a generated file (see the discoveryapis_generator project).

library googleapis.consumersurveys.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError, Media, UploadOptions,
    ResumableUploadOptions, DownloadOptions, PartialDownloadOptions,
    ByteRange;

const core.String USER_AGENT = 'dart-api-client consumersurveys/v2';

/**
 * Creates and conducts surveys, lists the surveys that an authenticated user
 * owns, and retrieves survey results and information about specified surveys.
 */
class ConsumersurveysApi {
  /** View and edit your surveys and results */
  static const ConsumersurveysScope = "https://www.googleapis.com/auth/consumersurveys";

  /** View the results for your surveys */
  static const ConsumersurveysReadonlyScope = "https://www.googleapis.com/auth/consumersurveys.readonly";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final commons.ApiRequester _requester;

  ResultsResourceApi get results => new ResultsResourceApi(_requester);
  SurveysResourceApi get surveys => new SurveysResourceApi(_requester);

  ConsumersurveysApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "consumersurveys/v2/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ResultsResourceApi {
  final commons.ApiRequester _requester;

  ResultsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves any survey results that have been produced so far. Results are
   * formatted as an Excel file.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [surveyUrlId] - External URL ID for the survey.
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a
   *
   * - [SurveyResults] for Metadata downloads (see [downloadOptions]).
   *
   * - [commons.Media] for Media downloads (see [downloadOptions]).
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future get(ResultsGetRequest request, core.String surveyUrlId, {commons.DownloadOptions downloadOptions: commons.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (surveyUrlId == null) {
      throw new core.ArgumentError("Parameter surveyUrlId is required.");
    }

    _downloadOptions = downloadOptions;

    _url = 'surveys/' + commons.Escaper.ecapeVariable('$surveyUrlId') + '/results';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => new SurveyResults.fromJson(data));
    } else {
      return _response;
    }
  }

}


class SurveysResourceApi {
  final commons.ApiRequester _requester;

  SurveysResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves information about the specified survey.
   *
   * Request parameters:
   *
   * [surveyUrlId] - External URL ID for the survey.
   *
   * Completes with a [Survey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Survey> get(core.String surveyUrlId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (surveyUrlId == null) {
      throw new core.ArgumentError("Parameter surveyUrlId is required.");
    }

    _url = 'surveys/' + commons.Escaper.ecapeVariable('$surveyUrlId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Survey.fromJson(data));
  }

  /**
   * Creates a survey.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Survey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Survey> insert(Survey request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'surveys';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Survey.fromJson(data));
  }

  /**
   * Lists the surveys owned by the authenticated user.
   *
   * Request parameters:
   *
   * [maxResults] - null
   *
   * [startIndex] - null
   *
   * [token] - null
   *
   * Completes with a [SurveysListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SurveysListResponse> list({core.int maxResults, core.int startIndex, core.String token}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (startIndex != null) {
      _queryParams["startIndex"] = ["${startIndex}"];
    }
    if (token != null) {
      _queryParams["token"] = [token];
    }

    _url = 'surveys';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SurveysListResponse.fromJson(data));
  }

  /**
   * Begins running a survey.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [resourceId] - null
   *
   * Completes with a [SurveysStartResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SurveysStartResponse> start(SurveysStartRequest request, core.String resourceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }

    _url = 'surveys/' + commons.Escaper.ecapeVariable('$resourceId') + '/start';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SurveysStartResponse.fromJson(data));
  }

  /**
   * Stops a running survey.
   *
   * Request parameters:
   *
   * [resourceId] - null
   *
   * Completes with a [SurveysStopResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SurveysStopResponse> stop(core.String resourceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (resourceId == null) {
      throw new core.ArgumentError("Parameter resourceId is required.");
    }

    _url = 'surveys/' + commons.Escaper.ecapeVariable('$resourceId') + '/stop';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SurveysStopResponse.fromJson(data));
  }

  /**
   * Updates a survey. Currently the only property that can be updated is the
   * owners property.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [surveyUrlId] - External URL ID for the survey.
   *
   * Completes with a [Survey].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Survey> update(Survey request, core.String surveyUrlId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (surveyUrlId == null) {
      throw new core.ArgumentError("Parameter surveyUrlId is required.");
    }

    _url = 'surveys/' + commons.Escaper.ecapeVariable('$surveyUrlId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Survey.fromJson(data));
  }

}



class FieldMask {
  core.List<FieldMask> fields;
  core.int id;

  FieldMask();

  FieldMask.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"].map((value) => new FieldMask.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    return _json;
  }
}

class PageInfo {
  core.int resultPerPage;
  core.int startIndex;
  core.int totalResults;

  PageInfo();

  PageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("resultPerPage")) {
      resultPerPage = _json["resultPerPage"];
    }
    if (_json.containsKey("startIndex")) {
      startIndex = _json["startIndex"];
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resultPerPage != null) {
      _json["resultPerPage"] = resultPerPage;
    }
    if (startIndex != null) {
      _json["startIndex"] = startIndex;
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

class ResultsGetRequest {
  ResultsMask resultMask;

  ResultsGetRequest();

  ResultsGetRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resultMask")) {
      resultMask = new ResultsMask.fromJson(_json["resultMask"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resultMask != null) {
      _json["resultMask"] = (resultMask).toJson();
    }
    return _json;
  }
}

class ResultsMask {
  core.List<FieldMask> fields;
  core.String projection;

  ResultsMask();

  ResultsMask.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"].map((value) => new FieldMask.fromJson(value)).toList();
    }
    if (_json.containsKey("projection")) {
      projection = _json["projection"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (projection != null) {
      _json["projection"] = projection;
    }
    return _json;
  }
}

/** Representation of an individual survey object. */
class Survey {
  /** Targeting-criteria message containing demographic information */
  SurveyAudience audience;
  /** Cost to run the survey and collect the necessary number of responses. */
  SurveyCost cost;
  /**
   * Additional information to store on behalf of the API consumer and associate
   * with this question. This binary blob is treated as opaque. This field is
   * limited to 64K bytes.
   */
  core.String customerData;
  core.List<core.int> get customerDataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(customerData);
  }

  void set customerDataAsBytes(core.List<core.int> _bytes) {
    customerData = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /** Text description of the survey. */
  core.String description;
  /**
   * List of email addresses for survey owners. Must contain at least the
   * address of the user making the API call.
   */
  core.List<core.String> owners;
  /** List of questions defining the survey. */
  core.List<SurveyQuestion> questions;
  /**
   * State that the survey is in. Can be modified to start, stop, or pause
   * survey.
   */
  core.String state;
  /** Unique survey ID, that is viewable in the URL of the Survey Creator UI */
  core.String surveyUrlId;
  /** Optional name that will be given to the survey. */
  core.String title;
  /** Number of responses desired for the survey. */
  core.int wantedResponseCount;

  Survey();

  Survey.fromJson(core.Map _json) {
    if (_json.containsKey("audience")) {
      audience = new SurveyAudience.fromJson(_json["audience"]);
    }
    if (_json.containsKey("cost")) {
      cost = new SurveyCost.fromJson(_json["cost"]);
    }
    if (_json.containsKey("customerData")) {
      customerData = _json["customerData"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("owners")) {
      owners = _json["owners"];
    }
    if (_json.containsKey("questions")) {
      questions = _json["questions"].map((value) => new SurveyQuestion.fromJson(value)).toList();
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("surveyUrlId")) {
      surveyUrlId = _json["surveyUrlId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("wantedResponseCount")) {
      wantedResponseCount = _json["wantedResponseCount"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (audience != null) {
      _json["audience"] = (audience).toJson();
    }
    if (cost != null) {
      _json["cost"] = (cost).toJson();
    }
    if (customerData != null) {
      _json["customerData"] = customerData;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (owners != null) {
      _json["owners"] = owners;
    }
    if (questions != null) {
      _json["questions"] = questions.map((value) => (value).toJson()).toList();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (surveyUrlId != null) {
      _json["surveyUrlId"] = surveyUrlId;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (wantedResponseCount != null) {
      _json["wantedResponseCount"] = wantedResponseCount;
    }
    return _json;
  }
}

/** Specifications for the target audience of a survey run through the API. */
class SurveyAudience {
  /**
   * Optional list of age buckets to target. Supported age buckets are:
   * ['18-24', '25-34', '35-44', '45-54', '55-64', '65+']
   */
  core.List<core.String> ages;
  /**
   * Required country code that surveys should be targeted to. Accepts standard
   * ISO 3166-1 2 character language codes. For instance, 'US' for the United
   * States, and 'GB' for the United Kingdom.
   */
  core.String country;
  /**
   * Country subdivision (states/provinces/etc) that surveys should be targeted
   * to. For all countries except GB, ISO-3166-2 subdivision code is required
   * (eg. 'US-OH' for Ohio, United States). For GB, NUTS 1 statistical region
   * codes for the United Kingdom is required (eg. 'UK-UKC' for North East
   * England).
   */
  core.String countrySubdivision;
  /** Optional gender to target. */
  core.String gender;
  /**
   * Language code that surveys should be targeted to. For instance, 'en-US'.
   * Surveys may target bilingual users by specifying a list of language codes
   * (for example, 'de' and 'en-US'). In that case, all languages will be used
   * for targeting users but the survey content (which is displayed) must match
   * the first language listed. Accepts standard BCP47 language codes. See
   * specification.
   */
  core.List<core.String> languages;
  /**
   * Key for predefined panel that causes survey to be sent to a predefined set
   * of Opinion Rewards App users. PopulationSource must be set to
   * ANDROID_APP_PANEL to use this field.
   */
  core.String mobileAppPanelId;
  /** Online population source where the respondents are sampled from. */
  core.String populationSource;

  SurveyAudience();

  SurveyAudience.fromJson(core.Map _json) {
    if (_json.containsKey("ages")) {
      ages = _json["ages"];
    }
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("countrySubdivision")) {
      countrySubdivision = _json["countrySubdivision"];
    }
    if (_json.containsKey("gender")) {
      gender = _json["gender"];
    }
    if (_json.containsKey("languages")) {
      languages = _json["languages"];
    }
    if (_json.containsKey("mobileAppPanelId")) {
      mobileAppPanelId = _json["mobileAppPanelId"];
    }
    if (_json.containsKey("populationSource")) {
      populationSource = _json["populationSource"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ages != null) {
      _json["ages"] = ages;
    }
    if (country != null) {
      _json["country"] = country;
    }
    if (countrySubdivision != null) {
      _json["countrySubdivision"] = countrySubdivision;
    }
    if (gender != null) {
      _json["gender"] = gender;
    }
    if (languages != null) {
      _json["languages"] = languages;
    }
    if (mobileAppPanelId != null) {
      _json["mobileAppPanelId"] = mobileAppPanelId;
    }
    if (populationSource != null) {
      _json["populationSource"] = populationSource;
    }
    return _json;
  }
}

/** Message defining the cost to run a given survey through API. */
class SurveyCost {
  /**
   * Threshold to start a survey automically if the quoted prices is at most
   * this value. When a survey has a Screener (threshold) question, it must go
   * through an incidence pricing test to determine the final cost per response.
   * Typically the API consumer would have to make a followup call to start the
   * survey given the (previously not) known cost. If the survey has no
   * threshold_answers, setting this property will return an error. This
   * property allows API callers to indicate the max price per response they'd
   * be willing to pay in advance of that test. If the price turns out to be
   * lower than the specified autostart_max, the survey should begin immediately
   * and the user will be charged at the rate determined by the Incidence
   * pricing test. If the price turns out to be greater than the specified
   * autostart_max the survey will not be started and the user will instead be
   * notified what price was determined by the incidence test. At that point
   * they must raise the value of this property to be greater than or equal to
   * that cost before attempting to start the survey again. This will
   * immediately start the survey as long the incidence test was run within the
   * last 21 days.
   */
  core.String autostartMaxCostPerResponse;
  /**
   * Cost per survey response in nano units of the given currency. To get the
   * total cost for a survey, multiply this value by wanted_response_count.
   */
  core.String costPerResponseNanos;
  /** Currency code that the cost is given in. */
  core.String currencyCode;
  /**
   * Cost of survey in nano units of the given currency. DEPRECATED in favor of
   * cost_per_response_nanos
   */
  core.String nanos;

  SurveyCost();

  SurveyCost.fromJson(core.Map _json) {
    if (_json.containsKey("autostartMaxCostPerResponse")) {
      autostartMaxCostPerResponse = _json["autostartMaxCostPerResponse"];
    }
    if (_json.containsKey("costPerResponseNanos")) {
      costPerResponseNanos = _json["costPerResponseNanos"];
    }
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autostartMaxCostPerResponse != null) {
      _json["autostartMaxCostPerResponse"] = autostartMaxCostPerResponse;
    }
    if (costPerResponseNanos != null) {
      _json["costPerResponseNanos"] = costPerResponseNanos;
    }
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    return _json;
  }
}

/** Message defining the question specifications. */
class SurveyQuestion {
  /**
   * The randomization option for multiple choice and multi-select questions. If
   * not specified, this option defaults to randomize.
   */
  core.String answerOrder;
  /** Required list of answer options for a question. */
  core.List<core.String> answers;
  /**
   * Option to allow open-ended text box for Single Answer and Multiple Answer
   * question types. This can be used with SINGLE_ANSWER,
   * SINGLE_ANSWER_WITH_IMAGE, MULTIPLE_ANSWERS, and MULTIPLE_ANSWERS_WITH_IMAGE
   * question types.
   */
  core.bool hasOther;
  /**
   * For rating questions, the text for the higher end of the scale, such as
   * 'Best'. For numeric questions, a string representing a floating-point that
   * is the maximum allowed number for a response.
   */
  core.String highValueLabel;
  core.List<SurveyQuestionImage> images;
  /** Currently only support pinning an answer option to the last position. */
  core.bool lastAnswerPositionPinned;
  /**
   * For rating questions, the text for the lower end of the scale, such as
   * 'Worst'. For numeric questions, a string representing a floating-point that
   * is the minimum allowed number for a response.
   */
  core.String lowValueLabel;
  /**
   * Option to force the user to pick one of the open text suggestions. This
   * requires that suggestions are provided for this question.
   */
  core.bool mustPickSuggestion;
  /** Number of stars to use for ratings questions. */
  core.String numStars;
  /** Placeholder text for an open text question. */
  core.String openTextPlaceholder;
  /**
   * A list of suggested answers for open text question auto-complete. This is
   * only valid if single_line_response is true.
   */
  core.List<core.String> openTextSuggestions;
  /** Required question text shown to the respondent. */
  core.String question;
  /**
   * Used by the Rating Scale with Text question type. This text goes along with
   * the question field that is presented to the respondent, and is the actual
   * text that the respondent is asked to rate.
   */
  core.String sentimentText;
  /**
   * Option to allow multiple line open text responses instead of a single line
   * response. Note that we don't show auto-complete suggestions with multiple
   * line responses.
   */
  core.bool singleLineResponse;
  /**
   * The threshold/screener answer options, which will screen a user into the
   * rest of the survey. These will be a subset of the answer option strings.
   */
  core.List<core.String> thresholdAnswers;
  /**
   * Required field defining the question type. For details about configuring
   * different type of questions, consult the question configuration guide.
   */
  core.String type;
  /**
   * Optional unit of measurement for display (for example: hours, people,
   * miles).
   */
  core.String unitOfMeasurementLabel;
  /** The YouTube video ID to be show in video questions. */
  core.String videoId;

  SurveyQuestion();

  SurveyQuestion.fromJson(core.Map _json) {
    if (_json.containsKey("answerOrder")) {
      answerOrder = _json["answerOrder"];
    }
    if (_json.containsKey("answers")) {
      answers = _json["answers"];
    }
    if (_json.containsKey("hasOther")) {
      hasOther = _json["hasOther"];
    }
    if (_json.containsKey("highValueLabel")) {
      highValueLabel = _json["highValueLabel"];
    }
    if (_json.containsKey("images")) {
      images = _json["images"].map((value) => new SurveyQuestionImage.fromJson(value)).toList();
    }
    if (_json.containsKey("lastAnswerPositionPinned")) {
      lastAnswerPositionPinned = _json["lastAnswerPositionPinned"];
    }
    if (_json.containsKey("lowValueLabel")) {
      lowValueLabel = _json["lowValueLabel"];
    }
    if (_json.containsKey("mustPickSuggestion")) {
      mustPickSuggestion = _json["mustPickSuggestion"];
    }
    if (_json.containsKey("numStars")) {
      numStars = _json["numStars"];
    }
    if (_json.containsKey("openTextPlaceholder")) {
      openTextPlaceholder = _json["openTextPlaceholder"];
    }
    if (_json.containsKey("openTextSuggestions")) {
      openTextSuggestions = _json["openTextSuggestions"];
    }
    if (_json.containsKey("question")) {
      question = _json["question"];
    }
    if (_json.containsKey("sentimentText")) {
      sentimentText = _json["sentimentText"];
    }
    if (_json.containsKey("singleLineResponse")) {
      singleLineResponse = _json["singleLineResponse"];
    }
    if (_json.containsKey("thresholdAnswers")) {
      thresholdAnswers = _json["thresholdAnswers"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("unitOfMeasurementLabel")) {
      unitOfMeasurementLabel = _json["unitOfMeasurementLabel"];
    }
    if (_json.containsKey("videoId")) {
      videoId = _json["videoId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (answerOrder != null) {
      _json["answerOrder"] = answerOrder;
    }
    if (answers != null) {
      _json["answers"] = answers;
    }
    if (hasOther != null) {
      _json["hasOther"] = hasOther;
    }
    if (highValueLabel != null) {
      _json["highValueLabel"] = highValueLabel;
    }
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    if (lastAnswerPositionPinned != null) {
      _json["lastAnswerPositionPinned"] = lastAnswerPositionPinned;
    }
    if (lowValueLabel != null) {
      _json["lowValueLabel"] = lowValueLabel;
    }
    if (mustPickSuggestion != null) {
      _json["mustPickSuggestion"] = mustPickSuggestion;
    }
    if (numStars != null) {
      _json["numStars"] = numStars;
    }
    if (openTextPlaceholder != null) {
      _json["openTextPlaceholder"] = openTextPlaceholder;
    }
    if (openTextSuggestions != null) {
      _json["openTextSuggestions"] = openTextSuggestions;
    }
    if (question != null) {
      _json["question"] = question;
    }
    if (sentimentText != null) {
      _json["sentimentText"] = sentimentText;
    }
    if (singleLineResponse != null) {
      _json["singleLineResponse"] = singleLineResponse;
    }
    if (thresholdAnswers != null) {
      _json["thresholdAnswers"] = thresholdAnswers;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (unitOfMeasurementLabel != null) {
      _json["unitOfMeasurementLabel"] = unitOfMeasurementLabel;
    }
    if (videoId != null) {
      _json["videoId"] = videoId;
    }
    return _json;
  }
}

/** Container object for image data and alt_text. */
class SurveyQuestionImage {
  /** The alt text property used in image tags is required for all images. */
  core.String altText;
  /**
   * Inline jpeg, gif, tiff, bmp, or png image raw bytes for an image question
   * types.
   */
  core.String data;
  core.List<core.int> get dataAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
  /** The read-only URL for the hosted images. */
  core.String url;

  SurveyQuestionImage();

  SurveyQuestionImage.fromJson(core.Map _json) {
    if (_json.containsKey("altText")) {
      altText = _json["altText"];
    }
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (altText != null) {
      _json["altText"] = altText;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/** Reference to the current results for a given survey. */
class SurveyResults {
  /** Human readable string describing the status of the request. */
  core.String status;
  /** External survey ID as viewable by survey owners in the editor view. */
  core.String surveyUrlId;

  SurveyResults();

  SurveyResults.fromJson(core.Map _json) {
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("surveyUrlId")) {
      surveyUrlId = _json["surveyUrlId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (status != null) {
      _json["status"] = status;
    }
    if (surveyUrlId != null) {
      _json["surveyUrlId"] = surveyUrlId;
    }
    return _json;
  }
}

class SurveysListResponse {
  PageInfo pageInfo;
  /**
   * Unique request ID used for logging and debugging. Please include in any
   * error reporting or troubleshooting requests.
   */
  core.String requestId;
  /** An individual survey resource. */
  core.List<Survey> resources;
  TokenPagination tokenPagination;

  SurveysListResponse();

  SurveysListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(_json["pageInfo"]);
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("resources")) {
      resources = _json["resources"].map((value) => new Survey.fromJson(value)).toList();
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (pageInfo != null) {
      _json["pageInfo"] = (pageInfo).toJson();
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (resources != null) {
      _json["resources"] = resources.map((value) => (value).toJson()).toList();
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    return _json;
  }
}

class SurveysStartRequest {
  /**
   * Threshold to start a survey automically if the quoted prices is less than
   * or equal to this value. See Survey.Cost for more details.
   */
  core.String autostartMaxCostPerResponse;

  SurveysStartRequest();

  SurveysStartRequest.fromJson(core.Map _json) {
    if (_json.containsKey("autostartMaxCostPerResponse")) {
      autostartMaxCostPerResponse = _json["autostartMaxCostPerResponse"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (autostartMaxCostPerResponse != null) {
      _json["autostartMaxCostPerResponse"] = autostartMaxCostPerResponse;
    }
    return _json;
  }
}

class SurveysStartResponse {
  /**
   * Unique request ID used for logging and debugging. Please include in any
   * error reporting or troubleshooting requests.
   */
  core.String requestId;
  /** Survey object containing the specification of the started Survey. */
  Survey resource;

  SurveysStartResponse();

  SurveysStartResponse.fromJson(core.Map _json) {
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("resource")) {
      resource = new Survey.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

class SurveysStopResponse {
  /**
   * Unique request ID used for logging and debugging. Please include in any
   * error reporting or troubleshooting requests.
   */
  core.String requestId;
  /** Survey object containing the specification of the stopped Survey. */
  Survey resource;

  SurveysStopResponse();

  SurveysStopResponse.fromJson(core.Map _json) {
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("resource")) {
      resource = new Survey.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

class TokenPagination {
  core.String nextPageToken;
  core.String previousPageToken;

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}
