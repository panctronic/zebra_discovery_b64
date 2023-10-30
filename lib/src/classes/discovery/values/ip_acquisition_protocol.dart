import 'dart:typed_data';

import 'package:zebra_discovery_b64/src/classes/discovery/enums/ip_acquisition_protocol_enum.dart';
import 'package:zebra_discovery_b64/src/classes/discovery/values/value_base.dart';

class IpAcquisitionProtocol extends ValueBase<IpAcquisitionProtocolEnum> {
  IpAcquisitionProtocol(super.byteArray, super.value);

  factory IpAcquisitionProtocol.fromByteArray(Uint8List byteArray) {
    return IpAcquisitionProtocol(
      byteArray,
      IpAcquisitionProtocolEnum.fromByteArray(byteArray),
    );
  }
}
