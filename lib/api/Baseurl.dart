/// A class that contains the base URLs for different Bilibili APIs.
class Baseurl {
  /// A boolean value that determines whether to use localhost or not.
  static bool useLocalhost = false;

  /// The base URL for the Bilibili live API.
  static String get live => useLocalhost ? 'http://127.0.0.1:9000/live' : 'https://api.live.bilibili.com';

  /// The base URL for the Bilibili main API.
  static String get api => useLocalhost ? 'http://127.0.0.1:9000/api' : 'https://api.bilibili.com';

  /// The base URL for the Bilibili video center API.
  static String get apivc => useLocalhost ? 'http://127.0.0.1:9000/apivc' : 'https://api.vc.bilibili.com';

  /// The base URL for the Bilibili message API.
  static String get message => useLocalhost ? 'http://127.0.0.1:9000' : 'https://message.bilibili.com';
}