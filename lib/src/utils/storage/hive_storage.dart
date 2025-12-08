import 'package:hive_flutter/hive_flutter.dart';

import 'hive_adapters/hive_adapters.dart';

/// Storage box names constants
class StorageBoxes {
  static const String bookmarks = 'bookmarks';
  static const String movieResponses = 'movie_responses';
  static const String movieDetails = 'movie_details';
  static const String appSettings = 'app_settings';
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

  /// Clear all data from all Hive boxes
  static Future<void> clearAllBoxes() async {
    // Clear all known boxes
    final List<String> boxNames = <String>[
      StorageBoxes.bookmarks,
      StorageBoxes.movieResponses,
      StorageBoxes.movieDetails,
      StorageBoxes.appSettings,
    ];

    for (final String boxName in boxNames) {
      try {
        if (Hive.isBoxOpen(boxName)) {
          await clearBox(boxName);
        }
      } catch (e) {
        // Box might not exist yet, ignore
      }
    }
  }

  /// Delete all boxes from disk
  static Future<void> deleteAllBoxes() async {
    // Delete all known boxes from disk
    final List<String> boxNames = <String>[
      StorageBoxes.bookmarks,
      StorageBoxes.movieResponses,
      StorageBoxes.movieDetails,
      StorageBoxes.appSettings,
    ];

    for (final String boxName in boxNames) {
      try {
        // Close box if open
        if (Hive.isBoxOpen(boxName)) {
          await closeBox(boxName);
        }
        // Delete from disk
        await deleteBox(boxName);
      } catch (e) {
        // Box might not exist yet, ignore
      }
    }
  }

  /// Handle first install - clears all Hive data on fresh install
  static Future<void> handleFirstInstall() async {
    // Open app settings box to check install status
    final Box<String> settingsBox = await openBox<String>(
      StorageBoxes.appSettings,
    );
    const String installedKey = 'installed';

    final String? installed = settingsBox.get(installedKey);

    if (installed == null) {
      // Fresh install - clear all Hive data
      await deleteAllBoxes();

      // Mark as installed
      await settingsBox.put(installedKey, 'true');
    }
  }
}
