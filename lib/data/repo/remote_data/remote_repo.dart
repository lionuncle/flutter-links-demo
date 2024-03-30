import 'dart:developer';

import 'package:html/parser.dart' as htmlParser;
import 'package:html/dom.dart' as htmlDom;

import 'package:http/http.dart' as http;

class RemoteRepository {
  static String extractDomain(String url) {
    Uri uri = Uri.parse(url);
    return uri.host;
  }

  static Future<String?> fetchTitle(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        print("body data : ${response.body}");
        // log("body data : ${response.body}");
        // Extract the title from the response body
        // You may need to use a HTML parsing library, like `html/parser`, to extract the title
        // Example: return extractTitleFromHtml(response.body);
        // var name =  'ggg';
        // Call the method like this
        String title = extractTitleFromHtml(response.body);
        String newText = title.replaceAll(RegExp(r'http pub dev - '), '');
        log("title : ${title}");

        return newText;
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching title: $e');
      return null;
    }
  }

  static String extractTitleFromHtml(String html) {
    // Parse the HTML string
    htmlDom.Document document = htmlParser.parse(html);
    // Find the title element
    htmlDom.Element? titleElement = document.querySelector('title');
    // Extract the title text
    String title = titleElement?.text ?? '';

    return title;
  }
}
