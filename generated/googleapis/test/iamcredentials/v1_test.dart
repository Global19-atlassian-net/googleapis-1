// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/iamcredentials/v1.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed5924() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5924(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5925() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5925(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateAccessTokenRequest = 0;
api.GenerateAccessTokenRequest buildGenerateAccessTokenRequest() {
  var o = api.GenerateAccessTokenRequest();
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    o.delegates = buildUnnamed5924();
    o.lifetime = 'foo';
    o.scope = buildUnnamed5925();
  }
  buildCounterGenerateAccessTokenRequest--;
  return o;
}

void checkGenerateAccessTokenRequest(api.GenerateAccessTokenRequest o) {
  buildCounterGenerateAccessTokenRequest++;
  if (buildCounterGenerateAccessTokenRequest < 3) {
    checkUnnamed5924(o.delegates);
    unittest.expect(o.lifetime, unittest.equals('foo'));
    checkUnnamed5925(o.scope);
  }
  buildCounterGenerateAccessTokenRequest--;
}

core.int buildCounterGenerateAccessTokenResponse = 0;
api.GenerateAccessTokenResponse buildGenerateAccessTokenResponse() {
  var o = api.GenerateAccessTokenResponse();
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterGenerateAccessTokenResponse--;
  return o;
}

void checkGenerateAccessTokenResponse(api.GenerateAccessTokenResponse o) {
  buildCounterGenerateAccessTokenResponse++;
  if (buildCounterGenerateAccessTokenResponse < 3) {
    unittest.expect(o.accessToken, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
  }
  buildCounterGenerateAccessTokenResponse--;
}

core.List<core.String> buildUnnamed5926() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5926(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateIdTokenRequest = 0;
api.GenerateIdTokenRequest buildGenerateIdTokenRequest() {
  var o = api.GenerateIdTokenRequest();
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    o.audience = 'foo';
    o.delegates = buildUnnamed5926();
    o.includeEmail = true;
  }
  buildCounterGenerateIdTokenRequest--;
  return o;
}

void checkGenerateIdTokenRequest(api.GenerateIdTokenRequest o) {
  buildCounterGenerateIdTokenRequest++;
  if (buildCounterGenerateIdTokenRequest < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    checkUnnamed5926(o.delegates);
    unittest.expect(o.includeEmail, unittest.isTrue);
  }
  buildCounterGenerateIdTokenRequest--;
}

core.int buildCounterGenerateIdTokenResponse = 0;
api.GenerateIdTokenResponse buildGenerateIdTokenResponse() {
  var o = api.GenerateIdTokenResponse();
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    o.token = 'foo';
  }
  buildCounterGenerateIdTokenResponse--;
  return o;
}

void checkGenerateIdTokenResponse(api.GenerateIdTokenResponse o) {
  buildCounterGenerateIdTokenResponse++;
  if (buildCounterGenerateIdTokenResponse < 3) {
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterGenerateIdTokenResponse--;
}

core.List<core.String> buildUnnamed5927() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5927(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignBlobRequest = 0;
api.SignBlobRequest buildSignBlobRequest() {
  var o = api.SignBlobRequest();
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    o.delegates = buildUnnamed5927();
    o.payload = 'foo';
  }
  buildCounterSignBlobRequest--;
  return o;
}

void checkSignBlobRequest(api.SignBlobRequest o) {
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    checkUnnamed5927(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignBlobRequest--;
}

core.int buildCounterSignBlobResponse = 0;
api.SignBlobResponse buildSignBlobResponse() {
  var o = api.SignBlobResponse();
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    o.keyId = 'foo';
    o.signedBlob = 'foo';
  }
  buildCounterSignBlobResponse--;
  return o;
}

void checkSignBlobResponse(api.SignBlobResponse o) {
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedBlob, unittest.equals('foo'));
  }
  buildCounterSignBlobResponse--;
}

core.List<core.String> buildUnnamed5928() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5928(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSignJwtRequest = 0;
api.SignJwtRequest buildSignJwtRequest() {
  var o = api.SignJwtRequest();
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    o.delegates = buildUnnamed5928();
    o.payload = 'foo';
  }
  buildCounterSignJwtRequest--;
  return o;
}

void checkSignJwtRequest(api.SignJwtRequest o) {
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    checkUnnamed5928(o.delegates);
    unittest.expect(o.payload, unittest.equals('foo'));
  }
  buildCounterSignJwtRequest--;
}

core.int buildCounterSignJwtResponse = 0;
api.SignJwtResponse buildSignJwtResponse() {
  var o = api.SignJwtResponse();
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    o.keyId = 'foo';
    o.signedJwt = 'foo';
  }
  buildCounterSignJwtResponse--;
  return o;
}

void checkSignJwtResponse(api.SignJwtResponse o) {
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    unittest.expect(o.keyId, unittest.equals('foo'));
    unittest.expect(o.signedJwt, unittest.equals('foo'));
  }
  buildCounterSignJwtResponse--;
}

void main() {
  unittest.group('obj-schema-GenerateAccessTokenRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateAccessTokenRequest();
      var od = api.GenerateAccessTokenRequest.fromJson(o.toJson());
      checkGenerateAccessTokenRequest(od as api.GenerateAccessTokenRequest);
    });
  });

  unittest.group('obj-schema-GenerateAccessTokenResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateAccessTokenResponse();
      var od = api.GenerateAccessTokenResponse.fromJson(o.toJson());
      checkGenerateAccessTokenResponse(od as api.GenerateAccessTokenResponse);
    });
  });

  unittest.group('obj-schema-GenerateIdTokenRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateIdTokenRequest();
      var od = api.GenerateIdTokenRequest.fromJson(o.toJson());
      checkGenerateIdTokenRequest(od as api.GenerateIdTokenRequest);
    });
  });

  unittest.group('obj-schema-GenerateIdTokenResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGenerateIdTokenResponse();
      var od = api.GenerateIdTokenResponse.fromJson(o.toJson());
      checkGenerateIdTokenResponse(od as api.GenerateIdTokenResponse);
    });
  });

  unittest.group('obj-schema-SignBlobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignBlobRequest();
      var od = api.SignBlobRequest.fromJson(o.toJson());
      checkSignBlobRequest(od as api.SignBlobRequest);
    });
  });

  unittest.group('obj-schema-SignBlobResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignBlobResponse();
      var od = api.SignBlobResponse.fromJson(o.toJson());
      checkSignBlobResponse(od as api.SignBlobResponse);
    });
  });

  unittest.group('obj-schema-SignJwtRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignJwtRequest();
      var od = api.SignJwtRequest.fromJson(o.toJson());
      checkSignJwtRequest(od as api.SignJwtRequest);
    });
  });

  unittest.group('obj-schema-SignJwtResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSignJwtResponse();
      var od = api.SignJwtResponse.fromJson(o.toJson());
      checkSignJwtResponse(od as api.SignJwtResponse);
    });
  });

  unittest.group('resource-ProjectsServiceAccountsResource', () {
    unittest.test('method--generateAccessToken', () {
      var mock = HttpServerMock();
      var res = api.IAMCredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateAccessTokenRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateAccessTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateAccessTokenRequest(obj as api.GenerateAccessTokenRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGenerateAccessTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateAccessToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateAccessTokenResponse(
            response as api.GenerateAccessTokenResponse);
      })));
    });

    unittest.test('method--generateIdToken', () {
      var mock = HttpServerMock();
      var res = api.IAMCredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildGenerateIdTokenRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GenerateIdTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateIdTokenRequest(obj as api.GenerateIdTokenRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGenerateIdTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateIdToken(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateIdTokenResponse(response as api.GenerateIdTokenResponse);
      })));
    });

    unittest.test('method--signBlob', () {
      var mock = HttpServerMock();
      var res = api.IAMCredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignBlobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SignBlobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSignBlobRequest(obj as api.SignBlobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSignBlobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signBlob(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignBlobResponse(response as api.SignBlobResponse);
      })));
    });

    unittest.test('method--signJwt', () {
      var mock = HttpServerMock();
      var res = api.IAMCredentialsApi(mock).projects.serviceAccounts;
      var arg_request = buildSignJwtRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SignJwtRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSignJwtRequest(obj as api.SignJwtRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSignJwtResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .signJwt(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignJwtResponse(response as api.SignJwtResponse);
      })));
    });
  });
}
