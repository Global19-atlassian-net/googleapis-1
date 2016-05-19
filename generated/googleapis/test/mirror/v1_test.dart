library googleapis.mirror.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/mirror/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed2471() {
  var o = new core.List<api.AuthToken>();
  o.add(buildAuthToken());
  o.add(buildAuthToken());
  return o;
}

checkUnnamed2471(core.List<api.AuthToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthToken(o[0]);
  checkAuthToken(o[1]);
}

buildUnnamed2472() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2473() {
  var o = new core.List<api.UserData>();
  o.add(buildUserData());
  o.add(buildUserData());
  return o;
}

checkUnnamed2473(core.List<api.UserData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserData(o[0]);
  checkUserData(o[1]);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.authTokens = buildUnnamed2471();
    o.features = buildUnnamed2472();
    o.password = "foo";
    o.userData = buildUnnamed2473();
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkUnnamed2471(o.authTokens);
    checkUnnamed2472(o.features);
    unittest.expect(o.password, unittest.equals('foo'));
    checkUnnamed2473(o.userData);
  }
  buildCounterAccount--;
}

core.int buildCounterAttachment = 0;
buildAttachment() {
  var o = new api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.contentType = "foo";
    o.contentUrl = "foo";
    o.id = "foo";
    o.isProcessingContent = true;
  }
  buildCounterAttachment--;
  return o;
}

checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.contentUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isProcessingContent, unittest.isTrue);
  }
  buildCounterAttachment--;
}

buildUnnamed2474() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed2474(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterAttachmentsListResponse = 0;
buildAttachmentsListResponse() {
  var o = new api.AttachmentsListResponse();
  buildCounterAttachmentsListResponse++;
  if (buildCounterAttachmentsListResponse < 3) {
    o.items = buildUnnamed2474();
    o.kind = "foo";
  }
  buildCounterAttachmentsListResponse--;
  return o;
}

checkAttachmentsListResponse(api.AttachmentsListResponse o) {
  buildCounterAttachmentsListResponse++;
  if (buildCounterAttachmentsListResponse < 3) {
    checkUnnamed2474(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAttachmentsListResponse--;
}

core.int buildCounterAuthToken = 0;
buildAuthToken() {
  var o = new api.AuthToken();
  buildCounterAuthToken++;
  if (buildCounterAuthToken < 3) {
    o.authToken = "foo";
    o.type = "foo";
  }
  buildCounterAuthToken--;
  return o;
}

checkAuthToken(api.AuthToken o) {
  buildCounterAuthToken++;
  if (buildCounterAuthToken < 3) {
    unittest.expect(o.authToken, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAuthToken--;
}

core.int buildCounterCommand = 0;
buildCommand() {
  var o = new api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.type = "foo";
  }
  buildCounterCommand--;
  return o;
}

checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCommand--;
}

buildUnnamed2475() {
  var o = new core.List<api.Command>();
  o.add(buildCommand());
  o.add(buildCommand());
  return o;
}

checkUnnamed2475(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

buildUnnamed2476() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2476(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2477() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2477(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2478() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2478(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContact = 0;
buildContact() {
  var o = new api.Contact();
  buildCounterContact++;
  if (buildCounterContact < 3) {
    o.acceptCommands = buildUnnamed2475();
    o.acceptTypes = buildUnnamed2476();
    o.displayName = "foo";
    o.id = "foo";
    o.imageUrls = buildUnnamed2477();
    o.kind = "foo";
    o.phoneNumber = "foo";
    o.priority = 42;
    o.sharingFeatures = buildUnnamed2478();
    o.source = "foo";
    o.speakableName = "foo";
    o.type = "foo";
  }
  buildCounterContact--;
  return o;
}

checkContact(api.Contact o) {
  buildCounterContact++;
  if (buildCounterContact < 3) {
    checkUnnamed2475(o.acceptCommands);
    checkUnnamed2476(o.acceptTypes);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2477(o.imageUrls);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals(42));
    checkUnnamed2478(o.sharingFeatures);
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.speakableName, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterContact--;
}

buildUnnamed2479() {
  var o = new core.List<api.Contact>();
  o.add(buildContact());
  o.add(buildContact());
  return o;
}

checkUnnamed2479(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.int buildCounterContactsListResponse = 0;
buildContactsListResponse() {
  var o = new api.ContactsListResponse();
  buildCounterContactsListResponse++;
  if (buildCounterContactsListResponse < 3) {
    o.items = buildUnnamed2479();
    o.kind = "foo";
  }
  buildCounterContactsListResponse--;
  return o;
}

checkContactsListResponse(api.ContactsListResponse o) {
  buildCounterContactsListResponse++;
  if (buildCounterContactsListResponse < 3) {
    checkUnnamed2479(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterContactsListResponse--;
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.accuracy = 42.0;
    o.address = "foo";
    o.displayName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.latitude = 42.0;
    o.longitude = 42.0;
    o.timestamp = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.accuracy, unittest.equals(42.0));
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
    unittest.expect(o.timestamp, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterLocation--;
}

buildUnnamed2480() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed2480(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterLocationsListResponse = 0;
buildLocationsListResponse() {
  var o = new api.LocationsListResponse();
  buildCounterLocationsListResponse++;
  if (buildCounterLocationsListResponse < 3) {
    o.items = buildUnnamed2480();
    o.kind = "foo";
  }
  buildCounterLocationsListResponse--;
  return o;
}

checkLocationsListResponse(api.LocationsListResponse o) {
  buildCounterLocationsListResponse++;
  if (buildCounterLocationsListResponse < 3) {
    checkUnnamed2480(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterLocationsListResponse--;
}

buildUnnamed2481() {
  var o = new core.List<api.MenuValue>();
  o.add(buildMenuValue());
  o.add(buildMenuValue());
  return o;
}

checkUnnamed2481(core.List<api.MenuValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMenuValue(o[0]);
  checkMenuValue(o[1]);
}

core.int buildCounterMenuItem = 0;
buildMenuItem() {
  var o = new api.MenuItem();
  buildCounterMenuItem++;
  if (buildCounterMenuItem < 3) {
    o.action = "foo";
    o.contextualCommand = "foo";
    o.id = "foo";
    o.payload = "foo";
    o.removeWhenSelected = true;
    o.values = buildUnnamed2481();
  }
  buildCounterMenuItem--;
  return o;
}

checkMenuItem(api.MenuItem o) {
  buildCounterMenuItem++;
  if (buildCounterMenuItem < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.contextualCommand, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.payload, unittest.equals('foo'));
    unittest.expect(o.removeWhenSelected, unittest.isTrue);
    checkUnnamed2481(o.values);
  }
  buildCounterMenuItem--;
}

core.int buildCounterMenuValue = 0;
buildMenuValue() {
  var o = new api.MenuValue();
  buildCounterMenuValue++;
  if (buildCounterMenuValue < 3) {
    o.displayName = "foo";
    o.iconUrl = "foo";
    o.state = "foo";
  }
  buildCounterMenuValue--;
  return o;
}

checkMenuValue(api.MenuValue o) {
  buildCounterMenuValue++;
  if (buildCounterMenuValue < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMenuValue--;
}

buildUnnamed2482() {
  var o = new core.List<api.UserAction>();
  o.add(buildUserAction());
  o.add(buildUserAction());
  return o;
}

checkUnnamed2482(core.List<api.UserAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserAction(o[0]);
  checkUserAction(o[1]);
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.collection = "foo";
    o.itemId = "foo";
    o.operation = "foo";
    o.userActions = buildUnnamed2482();
    o.userToken = "foo";
    o.verifyToken = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(o.collection, unittest.equals('foo'));
    unittest.expect(o.itemId, unittest.equals('foo'));
    unittest.expect(o.operation, unittest.equals('foo'));
    checkUnnamed2482(o.userActions);
    unittest.expect(o.userToken, unittest.equals('foo'));
    unittest.expect(o.verifyToken, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

core.int buildCounterNotificationConfig = 0;
buildNotificationConfig() {
  var o = new api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.deliveryTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.level = "foo";
  }
  buildCounterNotificationConfig--;
  return o;
}

checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    unittest.expect(o.deliveryTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.level, unittest.equals('foo'));
  }
  buildCounterNotificationConfig--;
}

core.int buildCounterSetting = 0;
buildSetting() {
  var o = new api.Setting();
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.value = "foo";
  }
  buildCounterSetting--;
  return o;
}

checkSetting(api.Setting o) {
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterSetting--;
}

buildUnnamed2483() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2483(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSubscription = 0;
buildSubscription() {
  var o = new api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.callbackUrl = "foo";
    o.collection = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.notification = buildNotification();
    o.operation = buildUnnamed2483();
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.userToken = "foo";
    o.verifyToken = "foo";
  }
  buildCounterSubscription--;
  return o;
}

checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.callbackUrl, unittest.equals('foo'));
    unittest.expect(o.collection, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkNotification(o.notification);
    checkUnnamed2483(o.operation);
    unittest.expect(o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.userToken, unittest.equals('foo'));
    unittest.expect(o.verifyToken, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

buildUnnamed2484() {
  var o = new core.List<api.Subscription>();
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

checkUnnamed2484(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptionsListResponse = 0;
buildSubscriptionsListResponse() {
  var o = new api.SubscriptionsListResponse();
  buildCounterSubscriptionsListResponse++;
  if (buildCounterSubscriptionsListResponse < 3) {
    o.items = buildUnnamed2484();
    o.kind = "foo";
  }
  buildCounterSubscriptionsListResponse--;
  return o;
}

checkSubscriptionsListResponse(api.SubscriptionsListResponse o) {
  buildCounterSubscriptionsListResponse++;
  if (buildCounterSubscriptionsListResponse < 3) {
    checkUnnamed2484(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterSubscriptionsListResponse--;
}

buildUnnamed2485() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed2485(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

buildUnnamed2486() {
  var o = new core.List<api.MenuItem>();
  o.add(buildMenuItem());
  o.add(buildMenuItem());
  return o;
}

checkUnnamed2486(core.List<api.MenuItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMenuItem(o[0]);
  checkMenuItem(o[1]);
}

buildUnnamed2487() {
  var o = new core.List<api.Contact>();
  o.add(buildContact());
  o.add(buildContact());
  return o;
}

checkUnnamed2487(core.List<api.Contact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContact(o[0]);
  checkContact(o[1]);
}

core.int buildCounterTimelineItem = 0;
buildTimelineItem() {
  var o = new api.TimelineItem();
  buildCounterTimelineItem++;
  if (buildCounterTimelineItem < 3) {
    o.attachments = buildUnnamed2485();
    o.bundleId = "foo";
    o.canonicalUrl = "foo";
    o.created = core.DateTime.parse("2002-02-27T14:01:02");
    o.creator = buildContact();
    o.displayTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.etag = "foo";
    o.html = "foo";
    o.id = "foo";
    o.inReplyTo = "foo";
    o.isBundleCover = true;
    o.isDeleted = true;
    o.isPinned = true;
    o.kind = "foo";
    o.location = buildLocation();
    o.menuItems = buildUnnamed2486();
    o.notification = buildNotificationConfig();
    o.pinScore = 42;
    o.recipients = buildUnnamed2487();
    o.selfLink = "foo";
    o.sourceItemId = "foo";
    o.speakableText = "foo";
    o.speakableType = "foo";
    o.text = "foo";
    o.title = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterTimelineItem--;
  return o;
}

checkTimelineItem(api.TimelineItem o) {
  buildCounterTimelineItem++;
  if (buildCounterTimelineItem < 3) {
    checkUnnamed2485(o.attachments);
    unittest.expect(o.bundleId, unittest.equals('foo'));
    unittest.expect(o.canonicalUrl, unittest.equals('foo'));
    unittest.expect(o.created, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkContact(o.creator);
    unittest.expect(o.displayTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.html, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.inReplyTo, unittest.equals('foo'));
    unittest.expect(o.isBundleCover, unittest.isTrue);
    unittest.expect(o.isDeleted, unittest.isTrue);
    unittest.expect(o.isPinned, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLocation(o.location);
    checkUnnamed2486(o.menuItems);
    checkNotificationConfig(o.notification);
    unittest.expect(o.pinScore, unittest.equals(42));
    checkUnnamed2487(o.recipients);
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.sourceItemId, unittest.equals('foo'));
    unittest.expect(o.speakableText, unittest.equals('foo'));
    unittest.expect(o.speakableType, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterTimelineItem--;
}

buildUnnamed2488() {
  var o = new core.List<api.TimelineItem>();
  o.add(buildTimelineItem());
  o.add(buildTimelineItem());
  return o;
}

checkUnnamed2488(core.List<api.TimelineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimelineItem(o[0]);
  checkTimelineItem(o[1]);
}

core.int buildCounterTimelineListResponse = 0;
buildTimelineListResponse() {
  var o = new api.TimelineListResponse();
  buildCounterTimelineListResponse++;
  if (buildCounterTimelineListResponse < 3) {
    o.items = buildUnnamed2488();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterTimelineListResponse--;
  return o;
}

checkTimelineListResponse(api.TimelineListResponse o) {
  buildCounterTimelineListResponse++;
  if (buildCounterTimelineListResponse < 3) {
    checkUnnamed2488(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterTimelineListResponse--;
}

core.int buildCounterUserAction = 0;
buildUserAction() {
  var o = new api.UserAction();
  buildCounterUserAction++;
  if (buildCounterUserAction < 3) {
    o.payload = "foo";
    o.type = "foo";
  }
  buildCounterUserAction--;
  return o;
}

checkUserAction(api.UserAction o) {
  buildCounterUserAction++;
  if (buildCounterUserAction < 3) {
    unittest.expect(o.payload, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUserAction--;
}

core.int buildCounterUserData = 0;
buildUserData() {
  var o = new api.UserData();
  buildCounterUserData++;
  if (buildCounterUserData < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterUserData--;
  return o;
}

checkUserData(api.UserData o) {
  buildCounterUserData++;
  if (buildCounterUserData < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUserData--;
}


main() {
  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });


  unittest.group("obj-schema-Attachment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachment();
      var od = new api.Attachment.fromJson(o.toJson());
      checkAttachment(od);
    });
  });


  unittest.group("obj-schema-AttachmentsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachmentsListResponse();
      var od = new api.AttachmentsListResponse.fromJson(o.toJson());
      checkAttachmentsListResponse(od);
    });
  });


  unittest.group("obj-schema-AuthToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthToken();
      var od = new api.AuthToken.fromJson(o.toJson());
      checkAuthToken(od);
    });
  });


  unittest.group("obj-schema-Command", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommand();
      var od = new api.Command.fromJson(o.toJson());
      checkCommand(od);
    });
  });


  unittest.group("obj-schema-Contact", () {
    unittest.test("to-json--from-json", () {
      var o = buildContact();
      var od = new api.Contact.fromJson(o.toJson());
      checkContact(od);
    });
  });


  unittest.group("obj-schema-ContactsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildContactsListResponse();
      var od = new api.ContactsListResponse.fromJson(o.toJson());
      checkContactsListResponse(od);
    });
  });


  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });


  unittest.group("obj-schema-LocationsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocationsListResponse();
      var od = new api.LocationsListResponse.fromJson(o.toJson());
      checkLocationsListResponse(od);
    });
  });


  unittest.group("obj-schema-MenuItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildMenuItem();
      var od = new api.MenuItem.fromJson(o.toJson());
      checkMenuItem(od);
    });
  });


  unittest.group("obj-schema-MenuValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildMenuValue();
      var od = new api.MenuValue.fromJson(o.toJson());
      checkMenuValue(od);
    });
  });


  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });


  unittest.group("obj-schema-NotificationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotificationConfig();
      var od = new api.NotificationConfig.fromJson(o.toJson());
      checkNotificationConfig(od);
    });
  });


  unittest.group("obj-schema-Setting", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetting();
      var od = new api.Setting.fromJson(o.toJson());
      checkSetting(od);
    });
  });


  unittest.group("obj-schema-Subscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscription();
      var od = new api.Subscription.fromJson(o.toJson());
      checkSubscription(od);
    });
  });


  unittest.group("obj-schema-SubscriptionsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionsListResponse();
      var od = new api.SubscriptionsListResponse.fromJson(o.toJson());
      checkSubscriptionsListResponse(od);
    });
  });


  unittest.group("obj-schema-TimelineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimelineItem();
      var od = new api.TimelineItem.fromJson(o.toJson());
      checkTimelineItem(od);
    });
  });


  unittest.group("obj-schema-TimelineListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimelineListResponse();
      var od = new api.TimelineListResponse.fromJson(o.toJson());
      checkTimelineListResponse(od);
    });
  });


  unittest.group("obj-schema-UserAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserAction();
      var od = new api.UserAction.fromJson(o.toJson());
      checkUserAction(od);
    });
  });


  unittest.group("obj-schema-UserData", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserData();
      var od = new api.UserData.fromJson(o.toJson());
      checkUserData(od);
    });
  });


  unittest.group("resource-AccountsResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.AccountsResourceApi res = new api.MirrorApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_userToken = "foo";
      var arg_accountType = "foo";
      var arg_accountName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("accounts/"));
        pathOffset += 9;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userToken"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf("/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_accountType"));
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_accountName"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_userToken, arg_accountType, arg_accountName).then(unittest.expectAsync(((api.Account response) {
        checkAccount(response);
      })));
    });

  });


  unittest.group("resource-ContactsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("contacts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("contacts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildContact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Contact response) {
        checkContact(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      var arg_request = buildContact();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Contact.fromJson(json);
        checkContact(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("contacts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildContact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.Contact response) {
        checkContact(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("contacts"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildContactsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.ContactsListResponse response) {
        checkContactsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      var arg_request = buildContact();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Contact.fromJson(json);
        checkContact(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("contacts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildContact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync(((api.Contact response) {
        checkContact(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ContactsResourceApi res = new api.MirrorApi(mock).contacts;
      var arg_request = buildContact();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Contact.fromJson(json);
        checkContact(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("contacts/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildContact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_id).then(unittest.expectAsync(((api.Contact response) {
        checkContact(response);
      })));
    });

  });


  unittest.group("resource-LocationsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.LocationsResourceApi res = new api.MirrorApi(mock).locations;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("locations/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLocation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Location response) {
        checkLocation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.LocationsResourceApi res = new api.MirrorApi(mock).locations;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("locations"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLocationsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.LocationsListResponse response) {
        checkLocationsListResponse(response);
      })));
    });

  });


  unittest.group("resource-SettingsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.SettingsResourceApi res = new api.MirrorApi(mock).settings;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("settings/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSetting());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Setting response) {
        checkSetting(response);
      })));
    });

  });


  unittest.group("resource-SubscriptionsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.MirrorApi(mock).subscriptions;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("subscriptions/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.MirrorApi(mock).subscriptions;
      var arg_request = buildSubscription();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("subscriptions"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.Subscription response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.MirrorApi(mock).subscriptions;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("subscriptions"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscriptionsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.SubscriptionsListResponse response) {
        checkSubscriptionsListResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.SubscriptionsResourceApi res = new api.MirrorApi(mock).subscriptions;
      var arg_request = buildSubscription();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("subscriptions/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_id).then(unittest.expectAsync(((api.Subscription response) {
        checkSubscription(response);
      })));
    });

  });


  unittest.group("resource-TimelineResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTimelineItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.TimelineItem response) {
        checkTimelineItem(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_request = buildTimelineItem();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TimelineItem.fromJson(json);
        checkTimelineItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("timeline"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTimelineItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.TimelineItem response) {
        checkTimelineItem(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_bundleId = "foo";
      var arg_includeDeleted = true;
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_pinnedOnly = true;
      var arg_sourceItemId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("timeline"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bundleId"].first, unittest.equals(arg_bundleId));
        unittest.expect(queryMap["includeDeleted"].first, unittest.equals("$arg_includeDeleted"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["pinnedOnly"].first, unittest.equals("$arg_pinnedOnly"));
        unittest.expect(queryMap["sourceItemId"].first, unittest.equals(arg_sourceItemId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTimelineListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(bundleId: arg_bundleId, includeDeleted: arg_includeDeleted, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, pinnedOnly: arg_pinnedOnly, sourceItemId: arg_sourceItemId).then(unittest.expectAsync(((api.TimelineListResponse response) {
        checkTimelineListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_request = buildTimelineItem();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TimelineItem.fromJson(json);
        checkTimelineItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTimelineItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync(((api.TimelineItem response) {
        checkTimelineItem(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.TimelineResourceApi res = new api.MirrorApi(mock).timeline;
      var arg_request = buildTimelineItem();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TimelineItem.fromJson(json);
        checkTimelineItem(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTimelineItem());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_id).then(unittest.expectAsync(((api.TimelineItem response) {
        checkTimelineItem(response);
      })));
    });

  });


  unittest.group("resource-TimelineAttachmentsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.TimelineAttachmentsResourceApi res = new api.MirrorApi(mock).timeline.attachments;
      var arg_itemId = "foo";
      var arg_attachmentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        index = path.indexOf("/attachments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_itemId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/attachments/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_attachmentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_itemId, arg_attachmentId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.TimelineAttachmentsResourceApi res = new api.MirrorApi(mock).timeline.attachments;
      var arg_itemId = "foo";
      var arg_attachmentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        index = path.indexOf("/attachments/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_itemId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("/attachments/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_attachmentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAttachment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_itemId, arg_attachmentId).then(unittest.expectAsync(((api.Attachment response) {
        checkAttachment(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.TimelineAttachmentsResourceApi res = new api.MirrorApi(mock).timeline.attachments;
      var arg_itemId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        index = path.indexOf("/attachments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_itemId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/attachments"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAttachment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_itemId).then(unittest.expectAsync(((api.Attachment response) {
        checkAttachment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.TimelineAttachmentsResourceApi res = new api.MirrorApi(mock).timeline.attachments;
      var arg_itemId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("mirror/v1/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("timeline/"));
        pathOffset += 9;
        index = path.indexOf("/attachments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_itemId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/attachments"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAttachmentsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_itemId).then(unittest.expectAsync(((api.AttachmentsListResponse response) {
        checkAttachmentsListResponse(response);
      })));
    });

  });


}

