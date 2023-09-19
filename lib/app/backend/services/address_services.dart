import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AddressServices {
//get defult address  services
  static Future<Response?> getDefualtAddress() async {
    // String token = prefs.getString(Constants.accessToken).toString();
    try {
      http.Response response = await http.get(
          Uri.parse("http://54.238.10.51:3000/api/address/get-default-address"),
          headers: {
            'Content-Type': 'application/json',
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2NGU0NDUxZWNiYzI4ZmU2MWEwZmQwMWIiLCJlbWFpbCI6InNhaGVlcmFkYW01NyszQGdtYWlsLmNvbSIsImFjY2Vzc190b2tlbiI6ImV5SmhiR2NpT2lKSVV6STFOaUlzSW5SNWNDSTZJa3BYVkNKOS5leUpwWkNJNklqWTBaVE0xTWpkaFpEZGtOVFl3TXpBMk5qY3daakEzWmlJc0ltVnRZV2xzSWpvaWMyRm9aV1Z5WVdSaGJUVTNLek5BWjIxaGFXd3VZMjl0SWl3aWFXNW1ieUk2ZXlKeWIyeGxJam9pTmpSaU1XTTVZak0wTWpjMllXSTNNelF3WW1Wa1l6azFJbjBzSW1saGRDSTZNVFk1TkRFM016QXlNeXdpWlhod0lqb3hOekkxTnpBNU1ESXpmUS5JSWExZE5xM3dtTnBKUW8wenVrNFo2T1ltbktPVG9UUDRhdnVhTE0wcXJZIiwiaWF0IjoxNjk0MTczMDIzfQ.srdkr8IzexMWFZfcsUJ0p-fY5mQfLDLMugqEbqrtpRA',
          });
      return response;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
