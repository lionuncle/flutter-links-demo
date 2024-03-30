
bool isValidUrl(String url) {
  final urlPattern = RegExp(
    r'^(?:http|https)?://' // Scheme
    r'(?:(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\.)+(?:[A-Z]{2,6}\.?|[A-Z0-9-]{2,}\.?)|' // Domain name
    r'localhost|' // localhost
    r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}|' // OR IP address
    r'\[?[A-F0-9]*:[A-F0-9:]+\]?)' // OR IP6 address
    r'(?::\d+)?' // Port
    r'(?:/?|[/?]\S+)$', // Path
    caseSensitive: false,
  );
  return urlPattern.hasMatch(url);
}