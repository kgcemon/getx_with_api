import 'package:getx_with_api/apiurl/myapiurl.dart';

import '../model/postmodel.dart';
import 'package:http/http.dart' as http;

class apiconnection {
  var myapilink = myapiurl();
  Future<List<Postrmodel>> getAllpost() async {
    var response = await http.get(Uri.parse(myapilink.Apiurl));

    return postrmodelFromJson(response.body);

  }
}
