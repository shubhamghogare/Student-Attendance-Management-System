import 'package:flutter_application_1/surface/category_surface.dart';

class category {
  var code;
  var name;
  var department;
  var description;

  categoryMap() async {
    var mapping = Map<String, dynamic>();
    mapping[code] = code;
    mapping[name] = name;
    mapping[department] = department;
    mapping[description] = description;

    return mapping;
  }
}
