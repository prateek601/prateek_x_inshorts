import 'package:hive_flutter/hive_flutter.dart';

import 'hive_adapters/hive_adapters.dart';

/// Storage box names constants
class StorageBoxes {
  static const String bookmarks = 'bookmarks';
  static const String movieResponses = 'movie_responses';
  static const String movieDetails = 'movie_details';
}

/// Hive storage initialization and management utility
class HiveStorage {
  /// Initialize Hive and register all adapters
  static Future<void> initialize() async {
    await Hive.initFlutter();
    _registerAdapters();
  }

  /// Register all Hive adapters
  static void _registerAdapters() {
    Hive.registerAdapter(MovieAdapter());
    Hive.registerAdapter(MovieResponseAdapter());
    Hive.registerAdapter(MovieDetailsAdapter());
    // Add more adapters here as needed
  }

  /// Open a Hive box with the given name
  static Future<Box<T>> openBox<T>(String boxName) async {
    return await Hive.openBox<T>(boxName);
  }

  /// Close a Hive box with the given name
  static Future<void> closeBox(String boxName) async {
    await Hive.box(boxName).close();
  }

  /// Close all open Hive boxes
  static Future<void> closeAllBoxes() async {
    await Hive.close();
  }

  /// Clear all data from a specific box
  static Future<void> clearBox(String boxName) async {
    await Hive.box(boxName).clear();
  }

  /// Delete a box completely
  static Future<void> deleteBox(String boxName) async {
    await Hive.deleteBoxFromDisk(boxName);
  }
}
