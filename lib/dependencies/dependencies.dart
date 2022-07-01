import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/api/api_client.dart';
import '../app_constants.dart';
import '../data/controller/auth_controller.dart';
import '../data/repos/auth_repo.dart';

Future<void> init() async {
  final sharedPreference = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreference);
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));

//ALL REPOS
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));

  // Get.lazyPut(() => GetFeedRepo(
  //       apiClient: Get.find(),
  //     ));

//All controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));

  // Get.lazyPut(() => GetFeedController(getFeedRepo: Get.find()));
}
