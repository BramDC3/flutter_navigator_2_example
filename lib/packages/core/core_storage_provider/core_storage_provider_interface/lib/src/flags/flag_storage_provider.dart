abstract class FlagStorageProvider {
  Future<void> saveIsSignedIn({required bool signedIn});
  bool isSignedIn();
}
