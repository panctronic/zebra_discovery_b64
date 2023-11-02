import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/discovery_advanced_v1.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/byte_value.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/int_value.dart';
import 'package:zebra_discovery_b64/src/classes/helpers.dart';

class DiscoveryAdvancedV2 extends DiscoveryAdvancedV1 {
  DiscoveryAdvancedV2(BytesSplitter b, Uint8List byteArray)
      : super(b, byteArray) {
    jsonPort = IntValue(byteArray.fromPositions(398, 2));
    linkOsMajorVer = ByteValue(byteArray.fromPositions(400, 1));
    linkOsMinorVer = ByteValue(byteArray.fromPositions(401, 1));
  }

  late final IntValue jsonPort;
  late final ByteValue linkOsMajorVer;
  late final ByteValue linkOsMinorVer;
}
