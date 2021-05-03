import 'package:flutter_wraper_folder/util/sharePreference_instance.dart';
import 'package:get/get.dart';

enum ApplicationState { applicationRunning, LoggedIn, LoggedOut }

class ApplicationStarterController extends GetxController {
  var state = ApplicationState.applicationRunning.obs;

  @override
  void onInit() {
    initializeApplicationState();
    super.onInit();
  }

  initializeApplicationState() {
    Future.delayed(const Duration(seconds: 1), () {
      if (sharePrefereceInstance.isLogin() != null &&
          sharePrefereceInstance.isLogin()!) {
        state.value = ApplicationState.LoggedIn;
      } else
        state.value = ApplicationState.LoggedOut;
    });
  }
}
