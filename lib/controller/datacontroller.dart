import 'package:get/get.dart';
import 'package:testing_programming/model/datamodel.dart';
import 'package:testing_programming/services/dataservice.dart';

class DataController extends GetxController {
  var datamodel = DataModel().obs;
  var loading = true.obs;
  getData() async {
    try {
      var data = await DataService().getService();
      loading.value = true;
      if (data != null) {
        datamodel.value = data;
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar("title", "$e");
      loading.value = false;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
