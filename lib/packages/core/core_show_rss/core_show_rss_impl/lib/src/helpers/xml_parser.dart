import 'package:injectable/injectable.dart';
import 'package:xml/xml.dart';

@LazySingleton()
class XmlParser {
  static const _itemElementKey = 'item';

  Iterable<Map<String, String>> parseXmlData(String rawXml, Iterable<String> infoKeys) {
    final data = <Map<String, String>>[];

    final document = XmlDocument.parse(rawXml);
    final elements = document.findAllElements(_itemElementKey);

    for (final element in elements) {
      final elementInfo = <String, String>{};

      for (final key in infoKeys) {
        elementInfo[key] = element.findElements(key).first.text;
      }

      data.add(elementInfo);
    }

    return data;
  }
}
