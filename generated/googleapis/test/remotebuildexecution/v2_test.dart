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
import 'package:googleapis/remotebuildexecution/v2.dart' as api;

import '../test_shared.dart';

core.List<core.String> buildUnnamed5868() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5868(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2Action = 0;
api.BuildBazelRemoteExecutionV2Action buildBuildBazelRemoteExecutionV2Action() {
  var o = api.BuildBazelRemoteExecutionV2Action();
  buildCounterBuildBazelRemoteExecutionV2Action++;
  if (buildCounterBuildBazelRemoteExecutionV2Action < 3) {
    o.commandDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.doNotCache = true;
    o.inputRootDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.outputNodeProperties = buildUnnamed5868();
    o.timeout = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2Action--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Action(
    api.BuildBazelRemoteExecutionV2Action o) {
  buildCounterBuildBazelRemoteExecutionV2Action++;
  if (buildCounterBuildBazelRemoteExecutionV2Action < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.commandDigest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.doNotCache, unittest.isTrue);
    checkBuildBazelRemoteExecutionV2Digest(
        o.inputRootDigest as api.BuildBazelRemoteExecutionV2Digest);
    checkUnnamed5868(o.outputNodeProperties);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Action--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities =
    0;
api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
    buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities() {
  var o = api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities <
      3) {
    o.updateEnabled = true;
  }
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(
    api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities <
      3) {
    unittest.expect(o.updateEnabled, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities--;
}

core.List<api.BuildBazelRemoteExecutionV2OutputDirectory> buildUnnamed5869() {
  var o = <api.BuildBazelRemoteExecutionV2OutputDirectory>[];
  o.add(buildBuildBazelRemoteExecutionV2OutputDirectory());
  o.add(buildBuildBazelRemoteExecutionV2OutputDirectory());
  return o;
}

void checkUnnamed5869(
    core.List<api.BuildBazelRemoteExecutionV2OutputDirectory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputDirectory(
      o[0] as api.BuildBazelRemoteExecutionV2OutputDirectory);
  checkBuildBazelRemoteExecutionV2OutputDirectory(
      o[1] as api.BuildBazelRemoteExecutionV2OutputDirectory);
}

core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> buildUnnamed5870() {
  var o = <api.BuildBazelRemoteExecutionV2OutputSymlink>[];
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  return o;
}

void checkUnnamed5870(
    core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[0] as api.BuildBazelRemoteExecutionV2OutputSymlink);
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[1] as api.BuildBazelRemoteExecutionV2OutputSymlink);
}

core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> buildUnnamed5871() {
  var o = <api.BuildBazelRemoteExecutionV2OutputSymlink>[];
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  return o;
}

void checkUnnamed5871(
    core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[0] as api.BuildBazelRemoteExecutionV2OutputSymlink);
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[1] as api.BuildBazelRemoteExecutionV2OutputSymlink);
}

core.List<api.BuildBazelRemoteExecutionV2OutputFile> buildUnnamed5872() {
  var o = <api.BuildBazelRemoteExecutionV2OutputFile>[];
  o.add(buildBuildBazelRemoteExecutionV2OutputFile());
  o.add(buildBuildBazelRemoteExecutionV2OutputFile());
  return o;
}

void checkUnnamed5872(core.List<api.BuildBazelRemoteExecutionV2OutputFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputFile(
      o[0] as api.BuildBazelRemoteExecutionV2OutputFile);
  checkBuildBazelRemoteExecutionV2OutputFile(
      o[1] as api.BuildBazelRemoteExecutionV2OutputFile);
}

core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> buildUnnamed5873() {
  var o = <api.BuildBazelRemoteExecutionV2OutputSymlink>[];
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  o.add(buildBuildBazelRemoteExecutionV2OutputSymlink());
  return o;
}

void checkUnnamed5873(
    core.List<api.BuildBazelRemoteExecutionV2OutputSymlink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[0] as api.BuildBazelRemoteExecutionV2OutputSymlink);
  checkBuildBazelRemoteExecutionV2OutputSymlink(
      o[1] as api.BuildBazelRemoteExecutionV2OutputSymlink);
}

core.int buildCounterBuildBazelRemoteExecutionV2ActionResult = 0;
api.BuildBazelRemoteExecutionV2ActionResult
    buildBuildBazelRemoteExecutionV2ActionResult() {
  var o = api.BuildBazelRemoteExecutionV2ActionResult();
  buildCounterBuildBazelRemoteExecutionV2ActionResult++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionResult < 3) {
    o.executionMetadata =
        buildBuildBazelRemoteExecutionV2ExecutedActionMetadata();
    o.exitCode = 42;
    o.outputDirectories = buildUnnamed5869();
    o.outputDirectorySymlinks = buildUnnamed5870();
    o.outputFileSymlinks = buildUnnamed5871();
    o.outputFiles = buildUnnamed5872();
    o.outputSymlinks = buildUnnamed5873();
    o.stderrDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stderrRaw = 'foo';
    o.stdoutDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stdoutRaw = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2ActionResult--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ActionResult(
    api.BuildBazelRemoteExecutionV2ActionResult o) {
  buildCounterBuildBazelRemoteExecutionV2ActionResult++;
  if (buildCounterBuildBazelRemoteExecutionV2ActionResult < 3) {
    checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(o.executionMetadata
        as api.BuildBazelRemoteExecutionV2ExecutedActionMetadata);
    unittest.expect(o.exitCode, unittest.equals(42));
    checkUnnamed5869(o.outputDirectories);
    checkUnnamed5870(o.outputDirectorySymlinks);
    checkUnnamed5871(o.outputFileSymlinks);
    checkUnnamed5872(o.outputFiles);
    checkUnnamed5873(o.outputSymlinks);
    checkBuildBazelRemoteExecutionV2Digest(
        o.stderrDigest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.stderrRaw, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(
        o.stdoutDigest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.stdoutRaw, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ActionResult--;
}

core.List<api.BuildBazelRemoteExecutionV2Digest> buildUnnamed5874() {
  var o = <api.BuildBazelRemoteExecutionV2Digest>[];
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

void checkUnnamed5874(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(
      o[0] as api.BuildBazelRemoteExecutionV2Digest);
  checkBuildBazelRemoteExecutionV2Digest(
      o[1] as api.BuildBazelRemoteExecutionV2Digest);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest = 0;
api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest() {
  var o = api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest < 3) {
    o.digests = buildUnnamed5874();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest < 3) {
    checkUnnamed5874(o.digests);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsRequest--;
}

core.List<api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse>
    buildUnnamed5875() {
  var o = <api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse>[];
  o.add(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse());
  o.add(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse());
  return o;
}

void checkUnnamed5875(
    core.List<api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(
      o[0] as api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse);
  checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(
      o[1] as api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse = 0;
api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse
    buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse() {
  var o = api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse < 3) {
    o.responses = buildUnnamed5875();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse < 3) {
    checkUnnamed5875(o.responses);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse =
    0;
api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
    buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse() {
  var o = api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse <
      3) {
    o.data = 'foo';
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(
    api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse <
      3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse--;
}

core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest>
    buildUnnamed5876() {
  var o = <api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest>[];
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest());
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest());
  return o;
}

void checkUnnamed5876(
    core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(
      o[0] as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest);
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(
      o[1] as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest = 0;
api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest() {
  var o = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest < 3) {
    o.requests = buildUnnamed5876();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest < 3) {
    checkUnnamed5876(o.requests);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest--;
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest =
    0;
api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
    buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest() {
  var o = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest <
      3) {
    o.data = 'foo';
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest <
      3) {
    unittest.expect(o.data, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest--;
}

core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse>
    buildUnnamed5877() {
  var o = <api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse>[];
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse());
  o.add(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse());
  return o;
}

void checkUnnamed5877(
    core.List<api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(
      o[0] as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse);
  checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(
      o[1] as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse);
}

core.int buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse = 0;
api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
    buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse() {
  var o = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse < 3) {
    o.responses = buildUnnamed5877();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse < 3) {
    checkUnnamed5877(o.responses);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse--;
}

core.int
    buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse = 0;
api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
    buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse() {
  var o = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse();
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse <
      3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(
    api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse o) {
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse <
      3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
  }
  buildCounterBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse--;
}

core.List<core.String> buildUnnamed5878() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5878(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2CacheCapabilities = 0;
api.BuildBazelRemoteExecutionV2CacheCapabilities
    buildBuildBazelRemoteExecutionV2CacheCapabilities() {
  var o = api.BuildBazelRemoteExecutionV2CacheCapabilities();
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2CacheCapabilities < 3) {
    o.actionCacheUpdateCapabilities =
        buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
    o.cachePriorityCapabilities =
        buildBuildBazelRemoteExecutionV2PriorityCapabilities();
    o.digestFunction = buildUnnamed5878();
    o.maxBatchTotalSizeBytes = 'foo';
    o.symlinkAbsolutePathStrategy = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities--;
  return o;
}

void checkBuildBazelRemoteExecutionV2CacheCapabilities(
    api.BuildBazelRemoteExecutionV2CacheCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2CacheCapabilities < 3) {
    checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(
        o.actionCacheUpdateCapabilities
            as api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities);
    checkBuildBazelRemoteExecutionV2PriorityCapabilities(
        o.cachePriorityCapabilities
            as api.BuildBazelRemoteExecutionV2PriorityCapabilities);
    checkUnnamed5878(o.digestFunction);
    unittest.expect(o.maxBatchTotalSizeBytes, unittest.equals('foo'));
    unittest.expect(o.symlinkAbsolutePathStrategy, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2CacheCapabilities--;
}

core.List<core.String> buildUnnamed5879() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5879(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable>
    buildUnnamed5880() {
  var o = <api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable>[];
  o.add(buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable());
  o.add(buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable());
  return o;
}

void checkUnnamed5880(
    core.List<api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(
      o[0] as api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable);
  checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(
      o[1] as api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable);
}

core.List<core.String> buildUnnamed5881() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5881(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5882() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5882(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5883() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5883(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2Command = 0;
api.BuildBazelRemoteExecutionV2Command
    buildBuildBazelRemoteExecutionV2Command() {
  var o = api.BuildBazelRemoteExecutionV2Command();
  buildCounterBuildBazelRemoteExecutionV2Command++;
  if (buildCounterBuildBazelRemoteExecutionV2Command < 3) {
    o.arguments = buildUnnamed5879();
    o.environmentVariables = buildUnnamed5880();
    o.outputDirectories = buildUnnamed5881();
    o.outputFiles = buildUnnamed5882();
    o.outputPaths = buildUnnamed5883();
    o.platform = buildBuildBazelRemoteExecutionV2Platform();
    o.workingDirectory = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2Command--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Command(
    api.BuildBazelRemoteExecutionV2Command o) {
  buildCounterBuildBazelRemoteExecutionV2Command++;
  if (buildCounterBuildBazelRemoteExecutionV2Command < 3) {
    checkUnnamed5879(o.arguments);
    checkUnnamed5880(o.environmentVariables);
    checkUnnamed5881(o.outputDirectories);
    checkUnnamed5882(o.outputFiles);
    checkUnnamed5883(o.outputPaths);
    checkBuildBazelRemoteExecutionV2Platform(
        o.platform as api.BuildBazelRemoteExecutionV2Platform);
    unittest.expect(o.workingDirectory, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Command--;
}

core.int buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable = 0;
api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable
    buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable() {
  var o = api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable();
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable++;
  if (buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable--;
  return o;
}

void checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(
    api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable o) {
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable++;
  if (buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2CommandEnvironmentVariable--;
}

core.int buildCounterBuildBazelRemoteExecutionV2Digest = 0;
api.BuildBazelRemoteExecutionV2Digest buildBuildBazelRemoteExecutionV2Digest() {
  var o = api.BuildBazelRemoteExecutionV2Digest();
  buildCounterBuildBazelRemoteExecutionV2Digest++;
  if (buildCounterBuildBazelRemoteExecutionV2Digest < 3) {
    o.hash = 'foo';
    o.sizeBytes = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2Digest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Digest(
    api.BuildBazelRemoteExecutionV2Digest o) {
  buildCounterBuildBazelRemoteExecutionV2Digest++;
  if (buildCounterBuildBazelRemoteExecutionV2Digest < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2Digest--;
}

core.List<api.BuildBazelRemoteExecutionV2DirectoryNode> buildUnnamed5884() {
  var o = <api.BuildBazelRemoteExecutionV2DirectoryNode>[];
  o.add(buildBuildBazelRemoteExecutionV2DirectoryNode());
  o.add(buildBuildBazelRemoteExecutionV2DirectoryNode());
  return o;
}

void checkUnnamed5884(
    core.List<api.BuildBazelRemoteExecutionV2DirectoryNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2DirectoryNode(
      o[0] as api.BuildBazelRemoteExecutionV2DirectoryNode);
  checkBuildBazelRemoteExecutionV2DirectoryNode(
      o[1] as api.BuildBazelRemoteExecutionV2DirectoryNode);
}

core.List<api.BuildBazelRemoteExecutionV2FileNode> buildUnnamed5885() {
  var o = <api.BuildBazelRemoteExecutionV2FileNode>[];
  o.add(buildBuildBazelRemoteExecutionV2FileNode());
  o.add(buildBuildBazelRemoteExecutionV2FileNode());
  return o;
}

void checkUnnamed5885(core.List<api.BuildBazelRemoteExecutionV2FileNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2FileNode(
      o[0] as api.BuildBazelRemoteExecutionV2FileNode);
  checkBuildBazelRemoteExecutionV2FileNode(
      o[1] as api.BuildBazelRemoteExecutionV2FileNode);
}

core.List<api.BuildBazelRemoteExecutionV2NodeProperty> buildUnnamed5886() {
  var o = <api.BuildBazelRemoteExecutionV2NodeProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  return o;
}

void checkUnnamed5886(
    core.List<api.BuildBazelRemoteExecutionV2NodeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[0] as api.BuildBazelRemoteExecutionV2NodeProperty);
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[1] as api.BuildBazelRemoteExecutionV2NodeProperty);
}

core.List<api.BuildBazelRemoteExecutionV2SymlinkNode> buildUnnamed5887() {
  var o = <api.BuildBazelRemoteExecutionV2SymlinkNode>[];
  o.add(buildBuildBazelRemoteExecutionV2SymlinkNode());
  o.add(buildBuildBazelRemoteExecutionV2SymlinkNode());
  return o;
}

void checkUnnamed5887(core.List<api.BuildBazelRemoteExecutionV2SymlinkNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2SymlinkNode(
      o[0] as api.BuildBazelRemoteExecutionV2SymlinkNode);
  checkBuildBazelRemoteExecutionV2SymlinkNode(
      o[1] as api.BuildBazelRemoteExecutionV2SymlinkNode);
}

core.int buildCounterBuildBazelRemoteExecutionV2Directory = 0;
api.BuildBazelRemoteExecutionV2Directory
    buildBuildBazelRemoteExecutionV2Directory() {
  var o = api.BuildBazelRemoteExecutionV2Directory();
  buildCounterBuildBazelRemoteExecutionV2Directory++;
  if (buildCounterBuildBazelRemoteExecutionV2Directory < 3) {
    o.directories = buildUnnamed5884();
    o.files = buildUnnamed5885();
    o.nodeProperties = buildUnnamed5886();
    o.symlinks = buildUnnamed5887();
  }
  buildCounterBuildBazelRemoteExecutionV2Directory--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Directory(
    api.BuildBazelRemoteExecutionV2Directory o) {
  buildCounterBuildBazelRemoteExecutionV2Directory++;
  if (buildCounterBuildBazelRemoteExecutionV2Directory < 3) {
    checkUnnamed5884(o.directories);
    checkUnnamed5885(o.files);
    checkUnnamed5886(o.nodeProperties);
    checkUnnamed5887(o.symlinks);
  }
  buildCounterBuildBazelRemoteExecutionV2Directory--;
}

core.int buildCounterBuildBazelRemoteExecutionV2DirectoryNode = 0;
api.BuildBazelRemoteExecutionV2DirectoryNode
    buildBuildBazelRemoteExecutionV2DirectoryNode() {
  var o = api.BuildBazelRemoteExecutionV2DirectoryNode();
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode++;
  if (buildCounterBuildBazelRemoteExecutionV2DirectoryNode < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.name = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode--;
  return o;
}

void checkBuildBazelRemoteExecutionV2DirectoryNode(
    api.BuildBazelRemoteExecutionV2DirectoryNode o) {
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode++;
  if (buildCounterBuildBazelRemoteExecutionV2DirectoryNode < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2DirectoryNode--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata = 0;
api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata
    buildBuildBazelRemoteExecutionV2ExecuteOperationMetadata() {
  var o = api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata();
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata < 3) {
    o.actionDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.stage = 'foo';
    o.stderrStreamName = 'foo';
    o.stdoutStreamName = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecuteOperationMetadata(
    api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.actionDigest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.stage, unittest.equals('foo'));
    unittest.expect(o.stderrStreamName, unittest.equals('foo'));
    unittest.expect(o.stdoutStreamName, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteOperationMetadata--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteRequest = 0;
api.BuildBazelRemoteExecutionV2ExecuteRequest
    buildBuildBazelRemoteExecutionV2ExecuteRequest() {
  var o = api.BuildBazelRemoteExecutionV2ExecuteRequest();
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteRequest < 3) {
    o.actionDigest = buildBuildBazelRemoteExecutionV2Digest();
    o.executionPolicy = buildBuildBazelRemoteExecutionV2ExecutionPolicy();
    o.resultsCachePolicy = buildBuildBazelRemoteExecutionV2ResultsCachePolicy();
    o.skipCacheLookup = true;
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecuteRequest(
    api.BuildBazelRemoteExecutionV2ExecuteRequest o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteRequest < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.actionDigest as api.BuildBazelRemoteExecutionV2Digest);
    checkBuildBazelRemoteExecutionV2ExecutionPolicy(
        o.executionPolicy as api.BuildBazelRemoteExecutionV2ExecutionPolicy);
    checkBuildBazelRemoteExecutionV2ResultsCachePolicy(o.resultsCachePolicy
        as api.BuildBazelRemoteExecutionV2ResultsCachePolicy);
    unittest.expect(o.skipCacheLookup, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteRequest--;
}

core.Map<core.String, api.BuildBazelRemoteExecutionV2LogFile>
    buildUnnamed5888() {
  var o = <core.String, api.BuildBazelRemoteExecutionV2LogFile>{};
  o['x'] = buildBuildBazelRemoteExecutionV2LogFile();
  o['y'] = buildBuildBazelRemoteExecutionV2LogFile();
  return o;
}

void checkUnnamed5888(
    core.Map<core.String, api.BuildBazelRemoteExecutionV2LogFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2LogFile(
      o['x'] as api.BuildBazelRemoteExecutionV2LogFile);
  checkBuildBazelRemoteExecutionV2LogFile(
      o['y'] as api.BuildBazelRemoteExecutionV2LogFile);
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecuteResponse = 0;
api.BuildBazelRemoteExecutionV2ExecuteResponse
    buildBuildBazelRemoteExecutionV2ExecuteResponse() {
  var o = api.BuildBazelRemoteExecutionV2ExecuteResponse();
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteResponse < 3) {
    o.cachedResult = true;
    o.message = 'foo';
    o.result = buildBuildBazelRemoteExecutionV2ActionResult();
    o.serverLogs = buildUnnamed5888();
    o.status = buildGoogleRpcStatus();
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecuteResponse(
    api.BuildBazelRemoteExecutionV2ExecuteResponse o) {
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecuteResponse < 3) {
    unittest.expect(o.cachedResult, unittest.isTrue);
    unittest.expect(o.message, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2ActionResult(
        o.result as api.BuildBazelRemoteExecutionV2ActionResult);
    checkUnnamed5888(o.serverLogs);
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecuteResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata = 0;
api.BuildBazelRemoteExecutionV2ExecutedActionMetadata
    buildBuildBazelRemoteExecutionV2ExecutedActionMetadata() {
  var o = api.BuildBazelRemoteExecutionV2ExecutedActionMetadata();
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata < 3) {
    o.executionCompletedTimestamp = 'foo';
    o.executionStartTimestamp = 'foo';
    o.inputFetchCompletedTimestamp = 'foo';
    o.inputFetchStartTimestamp = 'foo';
    o.outputUploadCompletedTimestamp = 'foo';
    o.outputUploadStartTimestamp = 'foo';
    o.queuedTimestamp = 'foo';
    o.worker = 'foo';
    o.workerCompletedTimestamp = 'foo';
    o.workerStartTimestamp = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(
    api.BuildBazelRemoteExecutionV2ExecutedActionMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata < 3) {
    unittest.expect(o.executionCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.executionStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.inputFetchCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.inputFetchStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.outputUploadCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.outputUploadStartTimestamp, unittest.equals('foo'));
    unittest.expect(o.queuedTimestamp, unittest.equals('foo'));
    unittest.expect(o.worker, unittest.equals('foo'));
    unittest.expect(o.workerCompletedTimestamp, unittest.equals('foo'));
    unittest.expect(o.workerStartTimestamp, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutedActionMetadata--;
}

core.List<core.String> buildUnnamed5889() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5889(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities = 0;
api.BuildBazelRemoteExecutionV2ExecutionCapabilities
    buildBuildBazelRemoteExecutionV2ExecutionCapabilities() {
  var o = api.BuildBazelRemoteExecutionV2ExecutionCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities < 3) {
    o.digestFunction = 'foo';
    o.execEnabled = true;
    o.executionPriorityCapabilities =
        buildBuildBazelRemoteExecutionV2PriorityCapabilities();
    o.supportedNodeProperties = buildUnnamed5889();
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecutionCapabilities(
    api.BuildBazelRemoteExecutionV2ExecutionCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities < 3) {
    unittest.expect(o.digestFunction, unittest.equals('foo'));
    unittest.expect(o.execEnabled, unittest.isTrue);
    checkBuildBazelRemoteExecutionV2PriorityCapabilities(
        o.executionPriorityCapabilities
            as api.BuildBazelRemoteExecutionV2PriorityCapabilities);
    checkUnnamed5889(o.supportedNodeProperties);
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionCapabilities--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy = 0;
api.BuildBazelRemoteExecutionV2ExecutionPolicy
    buildBuildBazelRemoteExecutionV2ExecutionPolicy() {
  var o = api.BuildBazelRemoteExecutionV2ExecutionPolicy();
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy < 3) {
    o.priority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ExecutionPolicy(
    api.BuildBazelRemoteExecutionV2ExecutionPolicy o) {
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy < 3) {
    unittest.expect(o.priority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2ExecutionPolicy--;
}

core.List<api.BuildBazelRemoteExecutionV2NodeProperty> buildUnnamed5890() {
  var o = <api.BuildBazelRemoteExecutionV2NodeProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  return o;
}

void checkUnnamed5890(
    core.List<api.BuildBazelRemoteExecutionV2NodeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[0] as api.BuildBazelRemoteExecutionV2NodeProperty);
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[1] as api.BuildBazelRemoteExecutionV2NodeProperty);
}

core.int buildCounterBuildBazelRemoteExecutionV2FileNode = 0;
api.BuildBazelRemoteExecutionV2FileNode
    buildBuildBazelRemoteExecutionV2FileNode() {
  var o = api.BuildBazelRemoteExecutionV2FileNode();
  buildCounterBuildBazelRemoteExecutionV2FileNode++;
  if (buildCounterBuildBazelRemoteExecutionV2FileNode < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.isExecutable = true;
    o.name = 'foo';
    o.nodeProperties = buildUnnamed5890();
  }
  buildCounterBuildBazelRemoteExecutionV2FileNode--;
  return o;
}

void checkBuildBazelRemoteExecutionV2FileNode(
    api.BuildBazelRemoteExecutionV2FileNode o) {
  buildCounterBuildBazelRemoteExecutionV2FileNode++;
  if (buildCounterBuildBazelRemoteExecutionV2FileNode < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5890(o.nodeProperties);
  }
  buildCounterBuildBazelRemoteExecutionV2FileNode--;
}

core.List<api.BuildBazelRemoteExecutionV2Digest> buildUnnamed5891() {
  var o = <api.BuildBazelRemoteExecutionV2Digest>[];
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

void checkUnnamed5891(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(
      o[0] as api.BuildBazelRemoteExecutionV2Digest);
  checkBuildBazelRemoteExecutionV2Digest(
      o[1] as api.BuildBazelRemoteExecutionV2Digest);
}

core.int buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest = 0;
api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest() {
  var o = api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest();
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest < 3) {
    o.blobDigests = buildUnnamed5891();
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(
    api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest o) {
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest < 3) {
    checkUnnamed5891(o.blobDigests);
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsRequest--;
}

core.List<api.BuildBazelRemoteExecutionV2Digest> buildUnnamed5892() {
  var o = <api.BuildBazelRemoteExecutionV2Digest>[];
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  o.add(buildBuildBazelRemoteExecutionV2Digest());
  return o;
}

void checkUnnamed5892(core.List<api.BuildBazelRemoteExecutionV2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Digest(
      o[0] as api.BuildBazelRemoteExecutionV2Digest);
  checkBuildBazelRemoteExecutionV2Digest(
      o[1] as api.BuildBazelRemoteExecutionV2Digest);
}

core.int buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse = 0;
api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse
    buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse() {
  var o = api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse();
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse < 3) {
    o.missingBlobDigests = buildUnnamed5892();
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(
    api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse o) {
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse < 3) {
    checkUnnamed5892(o.missingBlobDigests);
  }
  buildCounterBuildBazelRemoteExecutionV2FindMissingBlobsResponse--;
}

core.List<api.BuildBazelRemoteExecutionV2Directory> buildUnnamed5893() {
  var o = <api.BuildBazelRemoteExecutionV2Directory>[];
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  return o;
}

void checkUnnamed5893(core.List<api.BuildBazelRemoteExecutionV2Directory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Directory(
      o[0] as api.BuildBazelRemoteExecutionV2Directory);
  checkBuildBazelRemoteExecutionV2Directory(
      o[1] as api.BuildBazelRemoteExecutionV2Directory);
}

core.int buildCounterBuildBazelRemoteExecutionV2GetTreeResponse = 0;
api.BuildBazelRemoteExecutionV2GetTreeResponse
    buildBuildBazelRemoteExecutionV2GetTreeResponse() {
  var o = api.BuildBazelRemoteExecutionV2GetTreeResponse();
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2GetTreeResponse < 3) {
    o.directories = buildUnnamed5893();
    o.nextPageToken = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse--;
  return o;
}

void checkBuildBazelRemoteExecutionV2GetTreeResponse(
    api.BuildBazelRemoteExecutionV2GetTreeResponse o) {
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse++;
  if (buildCounterBuildBazelRemoteExecutionV2GetTreeResponse < 3) {
    checkUnnamed5893(o.directories);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2GetTreeResponse--;
}

core.int buildCounterBuildBazelRemoteExecutionV2LogFile = 0;
api.BuildBazelRemoteExecutionV2LogFile
    buildBuildBazelRemoteExecutionV2LogFile() {
  var o = api.BuildBazelRemoteExecutionV2LogFile();
  buildCounterBuildBazelRemoteExecutionV2LogFile++;
  if (buildCounterBuildBazelRemoteExecutionV2LogFile < 3) {
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.humanReadable = true;
  }
  buildCounterBuildBazelRemoteExecutionV2LogFile--;
  return o;
}

void checkBuildBazelRemoteExecutionV2LogFile(
    api.BuildBazelRemoteExecutionV2LogFile o) {
  buildCounterBuildBazelRemoteExecutionV2LogFile++;
  if (buildCounterBuildBazelRemoteExecutionV2LogFile < 3) {
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.humanReadable, unittest.isTrue);
  }
  buildCounterBuildBazelRemoteExecutionV2LogFile--;
}

core.int buildCounterBuildBazelRemoteExecutionV2NodeProperty = 0;
api.BuildBazelRemoteExecutionV2NodeProperty
    buildBuildBazelRemoteExecutionV2NodeProperty() {
  var o = api.BuildBazelRemoteExecutionV2NodeProperty();
  buildCounterBuildBazelRemoteExecutionV2NodeProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2NodeProperty < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2NodeProperty--;
  return o;
}

void checkBuildBazelRemoteExecutionV2NodeProperty(
    api.BuildBazelRemoteExecutionV2NodeProperty o) {
  buildCounterBuildBazelRemoteExecutionV2NodeProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2NodeProperty < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2NodeProperty--;
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputDirectory = 0;
api.BuildBazelRemoteExecutionV2OutputDirectory
    buildBuildBazelRemoteExecutionV2OutputDirectory() {
  var o = api.BuildBazelRemoteExecutionV2OutputDirectory();
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputDirectory < 3) {
    o.path = 'foo';
    o.treeDigest = buildBuildBazelRemoteExecutionV2Digest();
  }
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory--;
  return o;
}

void checkBuildBazelRemoteExecutionV2OutputDirectory(
    api.BuildBazelRemoteExecutionV2OutputDirectory o) {
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputDirectory < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(
        o.treeDigest as api.BuildBazelRemoteExecutionV2Digest);
  }
  buildCounterBuildBazelRemoteExecutionV2OutputDirectory--;
}

core.List<api.BuildBazelRemoteExecutionV2NodeProperty> buildUnnamed5894() {
  var o = <api.BuildBazelRemoteExecutionV2NodeProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  return o;
}

void checkUnnamed5894(
    core.List<api.BuildBazelRemoteExecutionV2NodeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[0] as api.BuildBazelRemoteExecutionV2NodeProperty);
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[1] as api.BuildBazelRemoteExecutionV2NodeProperty);
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputFile = 0;
api.BuildBazelRemoteExecutionV2OutputFile
    buildBuildBazelRemoteExecutionV2OutputFile() {
  var o = api.BuildBazelRemoteExecutionV2OutputFile();
  buildCounterBuildBazelRemoteExecutionV2OutputFile++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputFile < 3) {
    o.contents = 'foo';
    o.digest = buildBuildBazelRemoteExecutionV2Digest();
    o.isExecutable = true;
    o.nodeProperties = buildUnnamed5894();
    o.path = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2OutputFile--;
  return o;
}

void checkBuildBazelRemoteExecutionV2OutputFile(
    api.BuildBazelRemoteExecutionV2OutputFile o) {
  buildCounterBuildBazelRemoteExecutionV2OutputFile++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputFile < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2Digest(
        o.digest as api.BuildBazelRemoteExecutionV2Digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    checkUnnamed5894(o.nodeProperties);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2OutputFile--;
}

core.List<api.BuildBazelRemoteExecutionV2NodeProperty> buildUnnamed5895() {
  var o = <api.BuildBazelRemoteExecutionV2NodeProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  return o;
}

void checkUnnamed5895(
    core.List<api.BuildBazelRemoteExecutionV2NodeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[0] as api.BuildBazelRemoteExecutionV2NodeProperty);
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[1] as api.BuildBazelRemoteExecutionV2NodeProperty);
}

core.int buildCounterBuildBazelRemoteExecutionV2OutputSymlink = 0;
api.BuildBazelRemoteExecutionV2OutputSymlink
    buildBuildBazelRemoteExecutionV2OutputSymlink() {
  var o = api.BuildBazelRemoteExecutionV2OutputSymlink();
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputSymlink < 3) {
    o.nodeProperties = buildUnnamed5895();
    o.path = 'foo';
    o.target = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink--;
  return o;
}

void checkBuildBazelRemoteExecutionV2OutputSymlink(
    api.BuildBazelRemoteExecutionV2OutputSymlink o) {
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink++;
  if (buildCounterBuildBazelRemoteExecutionV2OutputSymlink < 3) {
    checkUnnamed5895(o.nodeProperties);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2OutputSymlink--;
}

core.List<api.BuildBazelRemoteExecutionV2PlatformProperty> buildUnnamed5896() {
  var o = <api.BuildBazelRemoteExecutionV2PlatformProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2PlatformProperty());
  o.add(buildBuildBazelRemoteExecutionV2PlatformProperty());
  return o;
}

void checkUnnamed5896(
    core.List<api.BuildBazelRemoteExecutionV2PlatformProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2PlatformProperty(
      o[0] as api.BuildBazelRemoteExecutionV2PlatformProperty);
  checkBuildBazelRemoteExecutionV2PlatformProperty(
      o[1] as api.BuildBazelRemoteExecutionV2PlatformProperty);
}

core.int buildCounterBuildBazelRemoteExecutionV2Platform = 0;
api.BuildBazelRemoteExecutionV2Platform
    buildBuildBazelRemoteExecutionV2Platform() {
  var o = api.BuildBazelRemoteExecutionV2Platform();
  buildCounterBuildBazelRemoteExecutionV2Platform++;
  if (buildCounterBuildBazelRemoteExecutionV2Platform < 3) {
    o.properties = buildUnnamed5896();
  }
  buildCounterBuildBazelRemoteExecutionV2Platform--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Platform(
    api.BuildBazelRemoteExecutionV2Platform o) {
  buildCounterBuildBazelRemoteExecutionV2Platform++;
  if (buildCounterBuildBazelRemoteExecutionV2Platform < 3) {
    checkUnnamed5896(o.properties);
  }
  buildCounterBuildBazelRemoteExecutionV2Platform--;
}

core.int buildCounterBuildBazelRemoteExecutionV2PlatformProperty = 0;
api.BuildBazelRemoteExecutionV2PlatformProperty
    buildBuildBazelRemoteExecutionV2PlatformProperty() {
  var o = api.BuildBazelRemoteExecutionV2PlatformProperty();
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2PlatformProperty < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty--;
  return o;
}

void checkBuildBazelRemoteExecutionV2PlatformProperty(
    api.BuildBazelRemoteExecutionV2PlatformProperty o) {
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty++;
  if (buildCounterBuildBazelRemoteExecutionV2PlatformProperty < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2PlatformProperty--;
}

core.List<api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange>
    buildUnnamed5897() {
  var o = <api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange>[];
  o.add(buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange());
  o.add(buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange());
  return o;
}

void checkUnnamed5897(
    core.List<api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(
      o[0] as api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange);
  checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(
      o[1] as api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange);
}

core.int buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities = 0;
api.BuildBazelRemoteExecutionV2PriorityCapabilities
    buildBuildBazelRemoteExecutionV2PriorityCapabilities() {
  var o = api.BuildBazelRemoteExecutionV2PriorityCapabilities();
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities < 3) {
    o.priorities = buildUnnamed5897();
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities--;
  return o;
}

void checkBuildBazelRemoteExecutionV2PriorityCapabilities(
    api.BuildBazelRemoteExecutionV2PriorityCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities < 3) {
    checkUnnamed5897(o.priorities);
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilities--;
}

core.int
    buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange =
    0;
api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
    buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange() {
  var o = api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange();
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange <
      3) {
    o.maxPriority = 42;
    o.minPriority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange--;
  return o;
}

void checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(
    api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange o) {
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange++;
  if (buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange <
      3) {
    unittest.expect(o.maxPriority, unittest.equals(42));
    unittest.expect(o.minPriority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange--;
}

core.int buildCounterBuildBazelRemoteExecutionV2RequestMetadata = 0;
api.BuildBazelRemoteExecutionV2RequestMetadata
    buildBuildBazelRemoteExecutionV2RequestMetadata() {
  var o = api.BuildBazelRemoteExecutionV2RequestMetadata();
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2RequestMetadata < 3) {
    o.actionId = 'foo';
    o.correlatedInvocationsId = 'foo';
    o.toolDetails = buildBuildBazelRemoteExecutionV2ToolDetails();
    o.toolInvocationId = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata--;
  return o;
}

void checkBuildBazelRemoteExecutionV2RequestMetadata(
    api.BuildBazelRemoteExecutionV2RequestMetadata o) {
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata++;
  if (buildCounterBuildBazelRemoteExecutionV2RequestMetadata < 3) {
    unittest.expect(o.actionId, unittest.equals('foo'));
    unittest.expect(o.correlatedInvocationsId, unittest.equals('foo'));
    checkBuildBazelRemoteExecutionV2ToolDetails(
        o.toolDetails as api.BuildBazelRemoteExecutionV2ToolDetails);
    unittest.expect(o.toolInvocationId, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2RequestMetadata--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy = 0;
api.BuildBazelRemoteExecutionV2ResultsCachePolicy
    buildBuildBazelRemoteExecutionV2ResultsCachePolicy() {
  var o = api.BuildBazelRemoteExecutionV2ResultsCachePolicy();
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy < 3) {
    o.priority = 42;
  }
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ResultsCachePolicy(
    api.BuildBazelRemoteExecutionV2ResultsCachePolicy o) {
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy++;
  if (buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy < 3) {
    unittest.expect(o.priority, unittest.equals(42));
  }
  buildCounterBuildBazelRemoteExecutionV2ResultsCachePolicy--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ServerCapabilities = 0;
api.BuildBazelRemoteExecutionV2ServerCapabilities
    buildBuildBazelRemoteExecutionV2ServerCapabilities() {
  var o = api.BuildBazelRemoteExecutionV2ServerCapabilities();
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ServerCapabilities < 3) {
    o.cacheCapabilities = buildBuildBazelRemoteExecutionV2CacheCapabilities();
    o.deprecatedApiVersion = buildBuildBazelSemverSemVer();
    o.executionCapabilities =
        buildBuildBazelRemoteExecutionV2ExecutionCapabilities();
    o.highApiVersion = buildBuildBazelSemverSemVer();
    o.lowApiVersion = buildBuildBazelSemverSemVer();
  }
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ServerCapabilities(
    api.BuildBazelRemoteExecutionV2ServerCapabilities o) {
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities++;
  if (buildCounterBuildBazelRemoteExecutionV2ServerCapabilities < 3) {
    checkBuildBazelRemoteExecutionV2CacheCapabilities(o.cacheCapabilities
        as api.BuildBazelRemoteExecutionV2CacheCapabilities);
    checkBuildBazelSemverSemVer(
        o.deprecatedApiVersion as api.BuildBazelSemverSemVer);
    checkBuildBazelRemoteExecutionV2ExecutionCapabilities(
        o.executionCapabilities
            as api.BuildBazelRemoteExecutionV2ExecutionCapabilities);
    checkBuildBazelSemverSemVer(o.highApiVersion as api.BuildBazelSemverSemVer);
    checkBuildBazelSemverSemVer(o.lowApiVersion as api.BuildBazelSemverSemVer);
  }
  buildCounterBuildBazelRemoteExecutionV2ServerCapabilities--;
}

core.List<api.BuildBazelRemoteExecutionV2NodeProperty> buildUnnamed5898() {
  var o = <api.BuildBazelRemoteExecutionV2NodeProperty>[];
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  o.add(buildBuildBazelRemoteExecutionV2NodeProperty());
  return o;
}

void checkUnnamed5898(
    core.List<api.BuildBazelRemoteExecutionV2NodeProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[0] as api.BuildBazelRemoteExecutionV2NodeProperty);
  checkBuildBazelRemoteExecutionV2NodeProperty(
      o[1] as api.BuildBazelRemoteExecutionV2NodeProperty);
}

core.int buildCounterBuildBazelRemoteExecutionV2SymlinkNode = 0;
api.BuildBazelRemoteExecutionV2SymlinkNode
    buildBuildBazelRemoteExecutionV2SymlinkNode() {
  var o = api.BuildBazelRemoteExecutionV2SymlinkNode();
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode++;
  if (buildCounterBuildBazelRemoteExecutionV2SymlinkNode < 3) {
    o.name = 'foo';
    o.nodeProperties = buildUnnamed5898();
    o.target = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode--;
  return o;
}

void checkBuildBazelRemoteExecutionV2SymlinkNode(
    api.BuildBazelRemoteExecutionV2SymlinkNode o) {
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode++;
  if (buildCounterBuildBazelRemoteExecutionV2SymlinkNode < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5898(o.nodeProperties);
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2SymlinkNode--;
}

core.int buildCounterBuildBazelRemoteExecutionV2ToolDetails = 0;
api.BuildBazelRemoteExecutionV2ToolDetails
    buildBuildBazelRemoteExecutionV2ToolDetails() {
  var o = api.BuildBazelRemoteExecutionV2ToolDetails();
  buildCounterBuildBazelRemoteExecutionV2ToolDetails++;
  if (buildCounterBuildBazelRemoteExecutionV2ToolDetails < 3) {
    o.toolName = 'foo';
    o.toolVersion = 'foo';
  }
  buildCounterBuildBazelRemoteExecutionV2ToolDetails--;
  return o;
}

void checkBuildBazelRemoteExecutionV2ToolDetails(
    api.BuildBazelRemoteExecutionV2ToolDetails o) {
  buildCounterBuildBazelRemoteExecutionV2ToolDetails++;
  if (buildCounterBuildBazelRemoteExecutionV2ToolDetails < 3) {
    unittest.expect(o.toolName, unittest.equals('foo'));
    unittest.expect(o.toolVersion, unittest.equals('foo'));
  }
  buildCounterBuildBazelRemoteExecutionV2ToolDetails--;
}

core.List<api.BuildBazelRemoteExecutionV2Directory> buildUnnamed5899() {
  var o = <api.BuildBazelRemoteExecutionV2Directory>[];
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  o.add(buildBuildBazelRemoteExecutionV2Directory());
  return o;
}

void checkUnnamed5899(core.List<api.BuildBazelRemoteExecutionV2Directory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuildBazelRemoteExecutionV2Directory(
      o[0] as api.BuildBazelRemoteExecutionV2Directory);
  checkBuildBazelRemoteExecutionV2Directory(
      o[1] as api.BuildBazelRemoteExecutionV2Directory);
}

core.int buildCounterBuildBazelRemoteExecutionV2Tree = 0;
api.BuildBazelRemoteExecutionV2Tree buildBuildBazelRemoteExecutionV2Tree() {
  var o = api.BuildBazelRemoteExecutionV2Tree();
  buildCounterBuildBazelRemoteExecutionV2Tree++;
  if (buildCounterBuildBazelRemoteExecutionV2Tree < 3) {
    o.children = buildUnnamed5899();
    o.root = buildBuildBazelRemoteExecutionV2Directory();
  }
  buildCounterBuildBazelRemoteExecutionV2Tree--;
  return o;
}

void checkBuildBazelRemoteExecutionV2Tree(
    api.BuildBazelRemoteExecutionV2Tree o) {
  buildCounterBuildBazelRemoteExecutionV2Tree++;
  if (buildCounterBuildBazelRemoteExecutionV2Tree < 3) {
    checkUnnamed5899(o.children);
    checkBuildBazelRemoteExecutionV2Directory(
        o.root as api.BuildBazelRemoteExecutionV2Directory);
  }
  buildCounterBuildBazelRemoteExecutionV2Tree--;
}

core.int buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest = 0;
api.BuildBazelRemoteExecutionV2WaitExecutionRequest
    buildBuildBazelRemoteExecutionV2WaitExecutionRequest() {
  var o = api.BuildBazelRemoteExecutionV2WaitExecutionRequest();
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest < 3) {}
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest--;
  return o;
}

void checkBuildBazelRemoteExecutionV2WaitExecutionRequest(
    api.BuildBazelRemoteExecutionV2WaitExecutionRequest o) {
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest++;
  if (buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest < 3) {}
  buildCounterBuildBazelRemoteExecutionV2WaitExecutionRequest--;
}

core.int buildCounterBuildBazelSemverSemVer = 0;
api.BuildBazelSemverSemVer buildBuildBazelSemverSemVer() {
  var o = api.BuildBazelSemverSemVer();
  buildCounterBuildBazelSemverSemVer++;
  if (buildCounterBuildBazelSemverSemVer < 3) {
    o.major = 42;
    o.minor = 42;
    o.patch = 42;
    o.prerelease = 'foo';
  }
  buildCounterBuildBazelSemverSemVer--;
  return o;
}

void checkBuildBazelSemverSemVer(api.BuildBazelSemverSemVer o) {
  buildCounterBuildBazelSemverSemVer++;
  if (buildCounterBuildBazelSemverSemVer < 3) {
    unittest.expect(o.major, unittest.equals(42));
    unittest.expect(o.minor, unittest.equals(42));
    unittest.expect(o.patch, unittest.equals(42));
    unittest.expect(o.prerelease, unittest.equals('foo'));
  }
  buildCounterBuildBazelSemverSemVer--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandDurations = 0;
api.GoogleDevtoolsRemotebuildbotCommandDurations
    buildGoogleDevtoolsRemotebuildbotCommandDurations() {
  var o = api.GoogleDevtoolsRemotebuildbotCommandDurations();
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandDurations < 3) {
    o.cmWaitForAssignment = 'foo';
    o.dockerPrep = 'foo';
    o.dockerPrepStartTime = 'foo';
    o.download = 'foo';
    o.downloadStartTime = 'foo';
    o.execStartTime = 'foo';
    o.execution = 'foo';
    o.isoPrepDone = 'foo';
    o.overall = 'foo';
    o.stdout = 'foo';
    o.upload = 'foo';
    o.uploadStartTime = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations--;
  return o;
}

void checkGoogleDevtoolsRemotebuildbotCommandDurations(
    api.GoogleDevtoolsRemotebuildbotCommandDurations o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandDurations < 3) {
    unittest.expect(o.cmWaitForAssignment, unittest.equals('foo'));
    unittest.expect(o.dockerPrep, unittest.equals('foo'));
    unittest.expect(o.dockerPrepStartTime, unittest.equals('foo'));
    unittest.expect(o.download, unittest.equals('foo'));
    unittest.expect(o.downloadStartTime, unittest.equals('foo'));
    unittest.expect(o.execStartTime, unittest.equals('foo'));
    unittest.expect(o.execution, unittest.equals('foo'));
    unittest.expect(o.isoPrepDone, unittest.equals('foo'));
    unittest.expect(o.overall, unittest.equals('foo'));
    unittest.expect(o.stdout, unittest.equals('foo'));
    unittest.expect(o.upload, unittest.equals('foo'));
    unittest.expect(o.uploadStartTime, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandDurations--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandEvents = 0;
api.GoogleDevtoolsRemotebuildbotCommandEvents
    buildGoogleDevtoolsRemotebuildbotCommandEvents() {
  var o = api.GoogleDevtoolsRemotebuildbotCommandEvents();
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandEvents < 3) {
    o.dockerCacheHit = true;
    o.dockerImageName = 'foo';
    o.inputCacheMiss = 42.0;
    o.numErrors = 'foo';
    o.numWarnings = 'foo';
    o.usedAsyncContainer = true;
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents--;
  return o;
}

void checkGoogleDevtoolsRemotebuildbotCommandEvents(
    api.GoogleDevtoolsRemotebuildbotCommandEvents o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandEvents < 3) {
    unittest.expect(o.dockerCacheHit, unittest.isTrue);
    unittest.expect(o.dockerImageName, unittest.equals('foo'));
    unittest.expect(o.inputCacheMiss, unittest.equals(42.0));
    unittest.expect(o.numErrors, unittest.equals('foo'));
    unittest.expect(o.numWarnings, unittest.equals('foo'));
    unittest.expect(o.usedAsyncContainer, unittest.isTrue);
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandEvents--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotCommandStatus = 0;
api.GoogleDevtoolsRemotebuildbotCommandStatus
    buildGoogleDevtoolsRemotebuildbotCommandStatus() {
  var o = api.GoogleDevtoolsRemotebuildbotCommandStatus();
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandStatus < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus--;
  return o;
}

void checkGoogleDevtoolsRemotebuildbotCommandStatus(
    api.GoogleDevtoolsRemotebuildbotCommandStatus o) {
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus++;
  if (buildCounterGoogleDevtoolsRemotebuildbotCommandStatus < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotCommandStatus--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotResourceUsage = 0;
api.GoogleDevtoolsRemotebuildbotResourceUsage
    buildGoogleDevtoolsRemotebuildbotResourceUsage() {
  var o = api.GoogleDevtoolsRemotebuildbotResourceUsage();
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsage++;
  if (buildCounterGoogleDevtoolsRemotebuildbotResourceUsage < 3) {
    o.cpuUsedPercent = 42.0;
    o.diskUsage = buildGoogleDevtoolsRemotebuildbotResourceUsageStat();
    o.memoryUsage = buildGoogleDevtoolsRemotebuildbotResourceUsageStat();
  }
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsage--;
  return o;
}

void checkGoogleDevtoolsRemotebuildbotResourceUsage(
    api.GoogleDevtoolsRemotebuildbotResourceUsage o) {
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsage++;
  if (buildCounterGoogleDevtoolsRemotebuildbotResourceUsage < 3) {
    unittest.expect(o.cpuUsedPercent, unittest.equals(42.0));
    checkGoogleDevtoolsRemotebuildbotResourceUsageStat(
        o.diskUsage as api.GoogleDevtoolsRemotebuildbotResourceUsageStat);
    checkGoogleDevtoolsRemotebuildbotResourceUsageStat(
        o.memoryUsage as api.GoogleDevtoolsRemotebuildbotResourceUsageStat);
  }
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsage--;
}

core.int buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat = 0;
api.GoogleDevtoolsRemotebuildbotResourceUsageStat
    buildGoogleDevtoolsRemotebuildbotResourceUsageStat() {
  var o = api.GoogleDevtoolsRemotebuildbotResourceUsageStat();
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat++;
  if (buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat < 3) {
    o.total = 'foo';
    o.used = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat--;
  return o;
}

void checkGoogleDevtoolsRemotebuildbotResourceUsageStat(
    api.GoogleDevtoolsRemotebuildbotResourceUsageStat o) {
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat++;
  if (buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat < 3) {
    unittest.expect(o.total, unittest.equals('foo'));
    unittest.expect(o.used, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildbotResourceUsageStat--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig <
      3) {
    o.acceleratorCount = 'foo';
    o.acceleratorType = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig <
      3) {
    unittest.expect(o.acceleratorCount, unittest.equals('foo'));
    unittest.expect(o.acceleratorType, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig--;
}

core.int buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale < 3) {
    o.maxSize = 'foo';
    o.minSize = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale < 3) {
    unittest.expect(o.maxSize, unittest.equals('foo'));
    unittest.expect(o.minSize, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest <
      3) {
    o.instance = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
    o.instanceId = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(o.instance
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance);
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest() {
  var o = api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest <
      3) {
    o.parent = 'foo';
    o.poolId = 'foo';
    o.workerPool =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest <
      3) {
    unittest.expect(o.parent, unittest.equals('foo'));
    unittest.expect(o.poolId, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o.workerPool
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest() {
  var o = api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy = 0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy <
      3) {
    o.containerImageSources =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerAddCapabilities =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerChrootPath =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerNetwork =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerPrivileged =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerRunAsRoot =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerRuntime =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.dockerSiblingContainers =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
    o.linuxIsolation = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.containerImageSources as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerAddCapabilities as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerChrootPath as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerNetwork as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerPrivileged as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerRunAsRoot as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerRuntime as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
        o.dockerSiblingContainers as api
            .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    unittest.expect(o.linuxIsolation, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy--;
}

core.List<core.String> buildUnnamed5900() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5900(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature <
      3) {
    o.allowedValues = buildUnnamed5900();
    o.policy = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature <
      3) {
    checkUnnamed5900(o.allowedValues);
    unittest.expect(o.policy, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest <
      3) {
    o.name = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest--;
}

core.int buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance = 0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance < 3) {
    o.featurePolicy =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy();
    o.location = 'foo';
    o.loggingEnabled = true;
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance < 3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy(
        o.featurePolicy
            as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.loggingEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest <
      3) {
    o.parent = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest <
      3) {
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest--;
}

core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance>
    buildUnnamed5901() {
  var o = <api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance>[];
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance());
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance());
  return o;
}

void checkUnnamed5901(
    core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(
      o[0] as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance);
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(
      o[1] as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance);
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse <
      3) {
    o.instances = buildUnnamed5901();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse <
      3) {
    checkUnnamed5901(o.instances);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest() {
  var o = api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest <
      3) {
    o.filter = 'foo';
    o.parent = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest <
      3) {
    unittest.expect(o.filter, unittest.equals('foo'));
    unittest.expect(o.parent, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest--;
}

core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool>
    buildUnnamed5902() {
  var o = <api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool>[];
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool());
  o.add(buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool());
  return o;
}

void checkUnnamed5902(
    core.List<api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(
      o[0] as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool);
  checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(
      o[1] as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool);
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse() {
  var o = api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse <
      3) {
    o.workerPools = buildUnnamed5902();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse <
      3) {
    checkUnnamed5902(o.workerPools);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest() {
  var o =
      api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest <
      3) {
    o.instance = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
    o.loggingEnabled = true;
    o.name = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(o.instance
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance);
    unittest.expect(o.loggingEnabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest--;
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest() {
  var o = api
      .GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest <
      3) {
    o.updateMask = 'foo';
    o.workerPool =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
        o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest <
      3) {
    unittest.expect(o.updateMask, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(o.workerPool
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool);
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest--;
}

core.Map<core.String, core.String> buildUnnamed5903() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5903(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int
    buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig = 0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig <
      3) {
    o.accelerator =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig();
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.labels = buildUnnamed5903();
    o.machineType = 'foo';
    o.maxConcurrentActions = 'foo';
    o.minCpuPlatform = 'foo';
    o.networkAccess = 'foo';
    o.reserved = true;
    o.soleTenantNodeType = 'foo';
    o.vmImage = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig(o
            .accelerator
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig);
    unittest.expect(o.diskSizeGb, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    checkUnnamed5903(o.labels);
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.maxConcurrentActions, unittest.equals('foo'));
    unittest.expect(o.minCpuPlatform, unittest.equals('foo'));
    unittest.expect(o.networkAccess, unittest.equals('foo'));
    unittest.expect(o.reserved, unittest.isTrue);
    unittest.expect(o.soleTenantNodeType, unittest.equals('foo'));
    unittest.expect(o.vmImage, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig--;
}

core.int buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool =
    0;
api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool
    buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool() {
  var o = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool <
      3) {
    o.autoscale =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale();
    o.channel = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.workerConfig =
        buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
    o.workerCount = 'foo';
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool--;
  return o;
}

void checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(
    api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool o) {
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool++;
  if (buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool <
      3) {
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale(o.autoscale
        as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale);
    unittest.expect(o.channel, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
        o.workerConfig
            as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig);
    unittest.expect(o.workerCount, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp = 0;
api.GoogleDevtoolsRemoteworkersV1test2AdminTemp
    buildGoogleDevtoolsRemoteworkersV1test2AdminTemp() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2AdminTemp();
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp < 3) {
    o.arg = 'foo';
    o.command = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2AdminTemp(
    api.GoogleDevtoolsRemoteworkersV1test2AdminTemp o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp < 3) {
    unittest.expect(o.arg, unittest.equals('foo'));
    unittest.expect(o.command, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2AdminTemp--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Blob = 0;
api.GoogleDevtoolsRemoteworkersV1test2Blob
    buildGoogleDevtoolsRemoteworkersV1test2Blob() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2Blob();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Blob < 3) {
    o.contents = 'foo';
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2Blob(
    api.GoogleDevtoolsRemoteworkersV1test2Blob o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Blob < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(
        o.digest as api.GoogleDevtoolsRemoteworkersV1test2Digest);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Blob--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs
    buildGoogleDevtoolsRemoteworkersV1test2CommandOutputs() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs < 3) {
    o.exitCode = 42;
    o.outputs = buildGoogleDevtoolsRemoteworkersV1test2Digest();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandOutputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs < 3) {
    unittest.expect(o.exitCode, unittest.equals(42));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(
        o.outputs as api.GoogleDevtoolsRemoteworkersV1test2Digest);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOutputs--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead
    buildGoogleDevtoolsRemoteworkersV1test2CommandOverhead() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead < 3) {
    o.duration = 'foo';
    o.overhead = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandOverhead(
    api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.overhead, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandOverhead--;
}

core.Map<core.String, core.Object> buildUnnamed5904() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5904(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5905() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5904());
  o.add(buildUnnamed5904());
  return o;
}

void checkUnnamed5905(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5904(o[0]);
  checkUnnamed5904(o[1]);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandResult
    buildGoogleDevtoolsRemoteworkersV1test2CommandResult() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandResult();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult < 3) {
    o.duration = 'foo';
    o.exitCode = 42;
    o.metadata = buildUnnamed5905();
    o.outputs = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.overhead = 'foo';
    o.status = buildGoogleRpcStatus();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandResult(
    api.GoogleDevtoolsRemoteworkersV1test2CommandResult o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult < 3) {
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.exitCode, unittest.equals(42));
    checkUnnamed5905(o.metadata);
    checkGoogleDevtoolsRemoteworkersV1test2Digest(
        o.outputs as api.GoogleDevtoolsRemoteworkersV1test2Digest);
    unittest.expect(o.overhead, unittest.equals('foo'));
    checkGoogleRpcStatus(o.status as api.GoogleRpcStatus);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandResult--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandTask
    buildGoogleDevtoolsRemoteworkersV1test2CommandTask() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandTask();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask < 3) {
    o.expectedOutputs =
        buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
    o.inputs = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
    o.timeouts = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandTask(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTask o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask < 3) {
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(o.expectedOutputs
        as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs);
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(
        o.inputs as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs);
    checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(o.timeouts
        as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTask--;
}

core.List<core.String> buildUnnamed5906() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5906(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<
        api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable>
    buildUnnamed5907() {
  var o = <
      api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable>[];
  o.add(
      buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable());
  o.add(
      buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable());
  return o;
}

void checkUnnamed5907(
    core.List<
            api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
      o[0] as api
          .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable);
  checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
      o[1] as api
          .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable);
}

core.List<api.GoogleDevtoolsRemoteworkersV1test2Digest> buildUnnamed5908() {
  var o = <api.GoogleDevtoolsRemoteworkersV1test2Digest>[];
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Digest());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Digest());
  return o;
}

void checkUnnamed5908(
    core.List<api.GoogleDevtoolsRemoteworkersV1test2Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2Digest(
      o[0] as api.GoogleDevtoolsRemoteworkersV1test2Digest);
  checkGoogleDevtoolsRemoteworkersV1test2Digest(
      o[1] as api.GoogleDevtoolsRemoteworkersV1test2Digest);
}

core.List<api.GoogleDevtoolsRemoteworkersV1test2Blob> buildUnnamed5909() {
  var o = <api.GoogleDevtoolsRemoteworkersV1test2Blob>[];
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Blob());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2Blob());
  return o;
}

void checkUnnamed5909(core.List<api.GoogleDevtoolsRemoteworkersV1test2Blob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2Blob(
      o[0] as api.GoogleDevtoolsRemoteworkersV1test2Blob);
  checkGoogleDevtoolsRemoteworkersV1test2Blob(
      o[1] as api.GoogleDevtoolsRemoteworkersV1test2Blob);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs
    buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs < 3) {
    o.arguments = buildUnnamed5906();
    o.environmentVariables = buildUnnamed5907();
    o.files = buildUnnamed5908();
    o.inlineBlobs = buildUnnamed5909();
    o.workingDirectory = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs < 3) {
    checkUnnamed5906(o.arguments);
    checkUnnamed5907(o.environmentVariables);
    checkUnnamed5908(o.files);
    checkUnnamed5909(o.inlineBlobs);
    unittest.expect(o.workingDirectory, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs--;
}

core.int
    buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable =
    0;
api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
    buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable() {
  var o = api
      .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable <
      3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
        o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable <
      3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable--;
}

core.List<core.String> buildUnnamed5910() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5910(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5911() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5911(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs
    buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs < 3) {
    o.directories = buildUnnamed5910();
    o.files = buildUnnamed5911();
    o.stderrDestination = 'foo';
    o.stdoutDestination = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs < 3) {
    checkUnnamed5910(o.directories);
    checkUnnamed5911(o.files);
    unittest.expect(o.stderrDestination, unittest.equals('foo'));
    unittest.expect(o.stdoutDestination, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts = 0;
api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts
    buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts < 3) {
    o.execution = 'foo';
    o.idle = 'foo';
    o.shutdown = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(
    api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts < 3) {
    unittest.expect(o.execution, unittest.equals('foo'));
    unittest.expect(o.idle, unittest.equals('foo'));
    unittest.expect(o.shutdown, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Digest = 0;
api.GoogleDevtoolsRemoteworkersV1test2Digest
    buildGoogleDevtoolsRemoteworkersV1test2Digest() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2Digest();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Digest < 3) {
    o.hash = 'foo';
    o.sizeBytes = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2Digest(
    api.GoogleDevtoolsRemoteworkersV1test2Digest o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Digest < 3) {
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Digest--;
}

core.List<api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata>
    buildUnnamed5912() {
  var o = <api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata>[];
  o.add(buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata());
  return o;
}

void checkUnnamed5912(
    core.List<api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(
      o[0] as api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata);
  checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(
      o[1] as api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata);
}

core.List<api.GoogleDevtoolsRemoteworkersV1test2FileMetadata>
    buildUnnamed5913() {
  var o = <api.GoogleDevtoolsRemoteworkersV1test2FileMetadata>[];
  o.add(buildGoogleDevtoolsRemoteworkersV1test2FileMetadata());
  o.add(buildGoogleDevtoolsRemoteworkersV1test2FileMetadata());
  return o;
}

void checkUnnamed5913(
    core.List<api.GoogleDevtoolsRemoteworkersV1test2FileMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(
      o[0] as api.GoogleDevtoolsRemoteworkersV1test2FileMetadata);
  checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(
      o[1] as api.GoogleDevtoolsRemoteworkersV1test2FileMetadata);
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2Directory = 0;
api.GoogleDevtoolsRemoteworkersV1test2Directory
    buildGoogleDevtoolsRemoteworkersV1test2Directory() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2Directory();
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Directory < 3) {
    o.directories = buildUnnamed5912();
    o.files = buildUnnamed5913();
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2Directory(
    api.GoogleDevtoolsRemoteworkersV1test2Directory o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2Directory < 3) {
    checkUnnamed5912(o.directories);
    checkUnnamed5913(o.files);
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2Directory--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata = 0;
api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata
    buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata();
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata < 3) {
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.path = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(
    api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata < 3) {
    checkGoogleDevtoolsRemoteworkersV1test2Digest(
        o.digest as api.GoogleDevtoolsRemoteworkersV1test2Digest);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata--;
}

core.int buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata = 0;
api.GoogleDevtoolsRemoteworkersV1test2FileMetadata
    buildGoogleDevtoolsRemoteworkersV1test2FileMetadata() {
  var o = api.GoogleDevtoolsRemoteworkersV1test2FileMetadata();
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata < 3) {
    o.contents = 'foo';
    o.digest = buildGoogleDevtoolsRemoteworkersV1test2Digest();
    o.isExecutable = true;
    o.path = 'foo';
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata--;
  return o;
}

void checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(
    api.GoogleDevtoolsRemoteworkersV1test2FileMetadata o) {
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata++;
  if (buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata < 3) {
    unittest.expect(o.contents, unittest.equals('foo'));
    checkGoogleDevtoolsRemoteworkersV1test2Digest(
        o.digest as api.GoogleDevtoolsRemoteworkersV1test2Digest);
    unittest.expect(o.isExecutable, unittest.isTrue);
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGoogleDevtoolsRemoteworkersV1test2FileMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed5914() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5914(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed5915() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5915(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed5914();
    o.name = 'foo';
    o.response = buildUnnamed5915();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkGoogleRpcStatus(o.error as api.GoogleRpcStatus);
    checkUnnamed5914(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5915(o.response);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object> buildUnnamed5916() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5916(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed5917() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5916());
  o.add(buildUnnamed5916());
  return o;
}

void checkUnnamed5917(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5916(o[0]);
  checkUnnamed5916(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5917();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5917(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed5918() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5918(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Action', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Action();
      var od = api.BuildBazelRemoteExecutionV2Action.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Action(
          od as api.BuildBazelRemoteExecutionV2Action);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities();
      var od =
          api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities(
          od as api.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ActionResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ActionResult();
      var od = api.BuildBazelRemoteExecutionV2ActionResult.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ActionResult(
          od as api.BuildBazelRemoteExecutionV2ActionResult);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest();
      var od = api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(
          od as api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse();
      var od = api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(
          od as api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse();
      var od = api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse
          .fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse(
          od as api.BuildBazelRemoteExecutionV2BatchReadBlobsResponseResponse);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
      var od = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(
          od as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest();
      var od = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest
          .fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest(
          od as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequestRequest);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse();
      var od = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(
          od as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse();
      var od = api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse
          .fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse(od
          as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponseResponse);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2CacheCapabilities', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2CacheCapabilities();
      var od =
          api.BuildBazelRemoteExecutionV2CacheCapabilities.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2CacheCapabilities(
          od as api.BuildBazelRemoteExecutionV2CacheCapabilities);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Command', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Command();
      var od = api.BuildBazelRemoteExecutionV2Command.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Command(
          od as api.BuildBazelRemoteExecutionV2Command);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2CommandEnvironmentVariable', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2CommandEnvironmentVariable();
      var od =
          api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable.fromJson(
              o.toJson());
      checkBuildBazelRemoteExecutionV2CommandEnvironmentVariable(
          od as api.BuildBazelRemoteExecutionV2CommandEnvironmentVariable);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Digest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Digest();
      var od = api.BuildBazelRemoteExecutionV2Digest.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Digest(
          od as api.BuildBazelRemoteExecutionV2Digest);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Directory', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Directory();
      var od = api.BuildBazelRemoteExecutionV2Directory.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Directory(
          od as api.BuildBazelRemoteExecutionV2Directory);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2DirectoryNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2DirectoryNode();
      var od =
          api.BuildBazelRemoteExecutionV2DirectoryNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2DirectoryNode(
          od as api.BuildBazelRemoteExecutionV2DirectoryNode);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2ExecuteOperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteOperationMetadata();
      var od = api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteOperationMetadata(
          od as api.BuildBazelRemoteExecutionV2ExecuteOperationMetadata);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ExecuteRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteRequest();
      var od =
          api.BuildBazelRemoteExecutionV2ExecuteRequest.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteRequest(
          od as api.BuildBazelRemoteExecutionV2ExecuteRequest);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ExecuteResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecuteResponse();
      var od =
          api.BuildBazelRemoteExecutionV2ExecuteResponse.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ExecuteResponse(
          od as api.BuildBazelRemoteExecutionV2ExecuteResponse);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ExecutedActionMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecutedActionMetadata();
      var od = api.BuildBazelRemoteExecutionV2ExecutedActionMetadata.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutedActionMetadata(
          od as api.BuildBazelRemoteExecutionV2ExecutedActionMetadata);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ExecutionCapabilities',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecutionCapabilities();
      var od = api.BuildBazelRemoteExecutionV2ExecutionCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutionCapabilities(
          od as api.BuildBazelRemoteExecutionV2ExecutionCapabilities);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ExecutionPolicy', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ExecutionPolicy();
      var od =
          api.BuildBazelRemoteExecutionV2ExecutionPolicy.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ExecutionPolicy(
          od as api.BuildBazelRemoteExecutionV2ExecutionPolicy);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2FileNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2FileNode();
      var od = api.BuildBazelRemoteExecutionV2FileNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2FileNode(
          od as api.BuildBazelRemoteExecutionV2FileNode);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2FindMissingBlobsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest();
      var od = api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(
          od as api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2FindMissingBlobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse();
      var od = api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(
          od as api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2GetTreeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2GetTreeResponse();
      var od =
          api.BuildBazelRemoteExecutionV2GetTreeResponse.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2GetTreeResponse(
          od as api.BuildBazelRemoteExecutionV2GetTreeResponse);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2LogFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2LogFile();
      var od = api.BuildBazelRemoteExecutionV2LogFile.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2LogFile(
          od as api.BuildBazelRemoteExecutionV2LogFile);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2NodeProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2NodeProperty();
      var od = api.BuildBazelRemoteExecutionV2NodeProperty.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2NodeProperty(
          od as api.BuildBazelRemoteExecutionV2NodeProperty);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2OutputDirectory', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2OutputDirectory();
      var od =
          api.BuildBazelRemoteExecutionV2OutputDirectory.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2OutputDirectory(
          od as api.BuildBazelRemoteExecutionV2OutputDirectory);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2OutputFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2OutputFile();
      var od = api.BuildBazelRemoteExecutionV2OutputFile.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2OutputFile(
          od as api.BuildBazelRemoteExecutionV2OutputFile);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2OutputSymlink', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2OutputSymlink();
      var od =
          api.BuildBazelRemoteExecutionV2OutputSymlink.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2OutputSymlink(
          od as api.BuildBazelRemoteExecutionV2OutputSymlink);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Platform', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Platform();
      var od = api.BuildBazelRemoteExecutionV2Platform.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Platform(
          od as api.BuildBazelRemoteExecutionV2Platform);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2PlatformProperty', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2PlatformProperty();
      var od =
          api.BuildBazelRemoteExecutionV2PlatformProperty.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2PlatformProperty(
          od as api.BuildBazelRemoteExecutionV2PlatformProperty);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2PriorityCapabilities',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2PriorityCapabilities();
      var od = api.BuildBazelRemoteExecutionV2PriorityCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2PriorityCapabilities(
          od as api.BuildBazelRemoteExecutionV2PriorityCapabilities);
    });
  });

  unittest.group(
      'obj-schema-BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange();
      var od = api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange
          .fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange(od
          as api.BuildBazelRemoteExecutionV2PriorityCapabilitiesPriorityRange);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2RequestMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2RequestMetadata();
      var od =
          api.BuildBazelRemoteExecutionV2RequestMetadata.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2RequestMetadata(
          od as api.BuildBazelRemoteExecutionV2RequestMetadata);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ResultsCachePolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ResultsCachePolicy();
      var od = api.BuildBazelRemoteExecutionV2ResultsCachePolicy.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ResultsCachePolicy(
          od as api.BuildBazelRemoteExecutionV2ResultsCachePolicy);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ServerCapabilities',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ServerCapabilities();
      var od = api.BuildBazelRemoteExecutionV2ServerCapabilities.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2ServerCapabilities(
          od as api.BuildBazelRemoteExecutionV2ServerCapabilities);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2SymlinkNode', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2SymlinkNode();
      var od = api.BuildBazelRemoteExecutionV2SymlinkNode.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2SymlinkNode(
          od as api.BuildBazelRemoteExecutionV2SymlinkNode);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2ToolDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2ToolDetails();
      var od = api.BuildBazelRemoteExecutionV2ToolDetails.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2ToolDetails(
          od as api.BuildBazelRemoteExecutionV2ToolDetails);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2Tree', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2Tree();
      var od = api.BuildBazelRemoteExecutionV2Tree.fromJson(o.toJson());
      checkBuildBazelRemoteExecutionV2Tree(
          od as api.BuildBazelRemoteExecutionV2Tree);
    });
  });

  unittest.group('obj-schema-BuildBazelRemoteExecutionV2WaitExecutionRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelRemoteExecutionV2WaitExecutionRequest();
      var od = api.BuildBazelRemoteExecutionV2WaitExecutionRequest.fromJson(
          o.toJson());
      checkBuildBazelRemoteExecutionV2WaitExecutionRequest(
          od as api.BuildBazelRemoteExecutionV2WaitExecutionRequest);
    });
  });

  unittest.group('obj-schema-BuildBazelSemverSemVer', () {
    unittest.test('to-json--from-json', () {
      var o = buildBuildBazelSemverSemVer();
      var od = api.BuildBazelSemverSemVer.fromJson(o.toJson());
      checkBuildBazelSemverSemVer(od as api.BuildBazelSemverSemVer);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemotebuildbotCommandDurations', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandDurations();
      var od =
          api.GoogleDevtoolsRemotebuildbotCommandDurations.fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandDurations(
          od as api.GoogleDevtoolsRemotebuildbotCommandDurations);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemotebuildbotCommandEvents', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandEvents();
      var od =
          api.GoogleDevtoolsRemotebuildbotCommandEvents.fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandEvents(
          od as api.GoogleDevtoolsRemotebuildbotCommandEvents);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemotebuildbotCommandStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildbotCommandStatus();
      var od =
          api.GoogleDevtoolsRemotebuildbotCommandStatus.fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildbotCommandStatus(
          od as api.GoogleDevtoolsRemotebuildbotCommandStatus);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemotebuildbotResourceUsage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildbotResourceUsage();
      var od =
          api.GoogleDevtoolsRemotebuildbotResourceUsage.fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildbotResourceUsage(
          od as api.GoogleDevtoolsRemotebuildbotResourceUsage);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemotebuildbotResourceUsageStat',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildbotResourceUsageStat();
      var od = api.GoogleDevtoolsRemotebuildbotResourceUsageStat.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemotebuildbotResourceUsageStat(
          od as api.GoogleDevtoolsRemotebuildbotResourceUsageStat);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig(od
          as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaAcceleratorConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale(
          od as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaAutoscale);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateInstanceRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaCreateWorkerPoolRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteInstanceRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaDeleteWorkerPoolRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy();
      var od = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy
          .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy(od
          as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(od
          as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest(od
          as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetInstanceRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest(od
          as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaGetWorkerPoolRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance(
          od as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaInstance);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest(od
          as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListInstancesResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaListWorkerPoolsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateInstanceRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest(
          od as api
              .GoogleDevtoolsRemotebuildexecutionAdminV1alphaUpdateWorkerPoolRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig();
      var od = api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig
          .fromJson(o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig(
          od as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerConfig);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool();
      var od =
          api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool(
          od as api.GoogleDevtoolsRemotebuildexecutionAdminV1alphaWorkerPool);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2AdminTemp', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2AdminTemp();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2AdminTemp.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2AdminTemp(
          od as api.GoogleDevtoolsRemoteworkersV1test2AdminTemp);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2Blob', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Blob();
      var od = api.GoogleDevtoolsRemoteworkersV1test2Blob.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Blob(
          od as api.GoogleDevtoolsRemoteworkersV1test2Blob);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandOutputs',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandOutputs();
      var od = api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandOutputs(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandOutputs);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandOverhead',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandOverhead();
      var od = api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandOverhead(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandOverhead);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandResult();
      var od = api.GoogleDevtoolsRemoteworkersV1test2CommandResult.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandResult(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandResult);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTask',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTask();
      var od = api.GoogleDevtoolsRemoteworkersV1test2CommandTask.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTask(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandTask);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs();
      var od = api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputs(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable
              .fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable(
          od as api
              .GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts.fromJson(
              o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts(
          od as api.GoogleDevtoolsRemoteworkersV1test2CommandTaskTimeouts);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2Digest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Digest();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2Digest.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Digest(
          od as api.GoogleDevtoolsRemoteworkersV1test2Digest);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2Directory', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2Directory();
      var od =
          api.GoogleDevtoolsRemoteworkersV1test2Directory.fromJson(o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2Directory(
          od as api.GoogleDevtoolsRemoteworkersV1test2Directory);
    });
  });

  unittest.group(
      'obj-schema-GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata();
      var od = api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2DirectoryMetadata(
          od as api.GoogleDevtoolsRemoteworkersV1test2DirectoryMetadata);
    });
  });

  unittest.group('obj-schema-GoogleDevtoolsRemoteworkersV1test2FileMetadata',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleDevtoolsRemoteworkersV1test2FileMetadata();
      var od = api.GoogleDevtoolsRemoteworkersV1test2FileMetadata.fromJson(
          o.toJson());
      checkGoogleDevtoolsRemoteworkersV1test2FileMetadata(
          od as api.GoogleDevtoolsRemoteworkersV1test2FileMetadata);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('resource-ActionResultsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).actionResults;
      var arg_instanceName = 'foo';
      var arg_hash = 'foo';
      var arg_sizeBytes = 'foo';
      var arg_inlineOutputFiles = buildUnnamed5918();
      var arg_inlineStderr = true;
      var arg_inlineStdout = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(queryMap["inlineOutputFiles"],
            unittest.equals(arg_inlineOutputFiles));
        unittest.expect(queryMap["inlineStderr"].first,
            unittest.equals("$arg_inlineStderr"));
        unittest.expect(queryMap["inlineStdout"].first,
            unittest.equals("$arg_inlineStdout"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBuildBazelRemoteExecutionV2ActionResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_instanceName, arg_hash, arg_sizeBytes,
              inlineOutputFiles: arg_inlineOutputFiles,
              inlineStderr: arg_inlineStderr,
              inlineStdout: arg_inlineStdout,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ActionResult(
            response as api.BuildBazelRemoteExecutionV2ActionResult);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).actionResults;
      var arg_request = buildBuildBazelRemoteExecutionV2ActionResult();
      var arg_instanceName = 'foo';
      var arg_hash = 'foo';
      var arg_sizeBytes = 'foo';
      var arg_resultsCachePolicy_priority = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BuildBazelRemoteExecutionV2ActionResult.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2ActionResult(
            obj as api.BuildBazelRemoteExecutionV2ActionResult);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(
            core.int.parse(queryMap["resultsCachePolicy.priority"].first),
            unittest.equals(arg_resultsCachePolicy_priority));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildBuildBazelRemoteExecutionV2ActionResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_instanceName, arg_hash, arg_sizeBytes,
              resultsCachePolicy_priority: arg_resultsCachePolicy_priority,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ActionResult(
            response as api.BuildBazelRemoteExecutionV2ActionResult);
      })));
    });
  });

  unittest.group('resource-ActionsResource', () {
    unittest.test('method--execute', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).actions;
      var arg_request = buildBuildBazelRemoteExecutionV2ExecuteRequest();
      var arg_instanceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BuildBazelRemoteExecutionV2ExecuteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2ExecuteRequest(
            obj as api.BuildBazelRemoteExecutionV2ExecuteRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .execute(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-BlobsResource', () {
    unittest.test('method--batchRead', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).blobs;
      var arg_request = buildBuildBazelRemoteExecutionV2BatchReadBlobsRequest();
      var arg_instanceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2BatchReadBlobsRequest(
            obj as api.BuildBazelRemoteExecutionV2BatchReadBlobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2BatchReadBlobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchRead(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2BatchReadBlobsResponse(
            response as api.BuildBazelRemoteExecutionV2BatchReadBlobsResponse);
      })));
    });

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).blobs;
      var arg_request =
          buildBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest();
      var arg_instanceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2BatchUpdateBlobsRequest(
            obj as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2BatchUpdateBlobsResponse(response
            as api.BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse);
      })));
    });

    unittest.test('method--findMissing', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).blobs;
      var arg_request =
          buildBuildBazelRemoteExecutionV2FindMissingBlobsRequest();
      var arg_instanceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2FindMissingBlobsRequest(
            obj as api.BuildBazelRemoteExecutionV2FindMissingBlobsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2FindMissingBlobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findMissing(arg_request, arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2FindMissingBlobsResponse(response
            as api.BuildBazelRemoteExecutionV2FindMissingBlobsResponse);
      })));
    });

    unittest.test('method--getTree', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).blobs;
      var arg_instanceName = 'foo';
      var arg_hash = 'foo';
      var arg_sizeBytes = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2GetTreeResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getTree(arg_instanceName, arg_hash, arg_sizeBytes,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2GetTreeResponse(
            response as api.BuildBazelRemoteExecutionV2GetTreeResponse);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--waitExecution', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).operations;
      var arg_request = buildBuildBazelRemoteExecutionV2WaitExecutionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BuildBazelRemoteExecutionV2WaitExecutionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBuildBazelRemoteExecutionV2WaitExecutionRequest(
            obj as api.BuildBazelRemoteExecutionV2WaitExecutionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .waitExecution(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-V2Resource', () {
    unittest.test('method--getCapabilities', () {
      var mock = HttpServerMock();
      var res = api.RemoteBuildExecutionApi(mock).v2;
      var arg_instanceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
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
        var resp = convert.json
            .encode(buildBuildBazelRemoteExecutionV2ServerCapabilities());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getCapabilities(arg_instanceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBuildBazelRemoteExecutionV2ServerCapabilities(
            response as api.BuildBazelRemoteExecutionV2ServerCapabilities);
      })));
    });
  });
}
