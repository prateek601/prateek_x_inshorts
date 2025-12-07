/// Deep link service for generating and handling movie deep links
class DeepLinkService {
  static const String scheme = 'prateekxinshorts';
  static const String host = 'movie';

  /// Generate a deep link URL for a movie
  static String generateMovieDeepLink(int movieId) {
    return '$scheme://$host/$movieId';
  }

  /// Parse a deep link URL to extract movie ID
  static int? parseMovieIdFromDeepLink(String? url) {
    if (url == null || url.isEmpty) {
      return null;
    }

    // Handle both custom scheme and universal links
    // Format: prateekxinshorts://movie/123 or https://prateekxinshorts.app/movie/123
    final Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return null;
    }

    // Check if it's our deep link
    if (uri.scheme == scheme && uri.host == host) {
      final String? movieIdStr =
          uri.pathSegments.isNotEmpty ? uri.pathSegments.first : null;
      return int.tryParse(movieIdStr ?? '');
    }

    // Handle universal links (https://)
    if (uri.scheme == 'https' && uri.host.contains('prateekxinshorts')) {
      final int movieIndex = uri.pathSegments.indexOf(host);
      if (movieIndex >= 0 && movieIndex < uri.pathSegments.length - 1) {
        final String movieIdStr = uri.pathSegments[movieIndex + 1];
        return int.tryParse(movieIdStr);
      }
    }

    return null;
  }

  /// Check if a URL is a valid deep link
  static bool isValidDeepLink(String? url) {
    return parseMovieIdFromDeepLink(url) != null;
  }
}
