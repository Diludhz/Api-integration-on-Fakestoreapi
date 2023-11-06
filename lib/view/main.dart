import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing_programming/controller/datacontroller.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api integreation"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Obx(() {
          var data = controller.datamodel.value;
          return controller.loading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.amber,
                    backgroundColor: Colors.green,
                  ),
                )
              // ignore: avoid_unnecessary_containers
              : Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          data.image ?? "",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("ID:${data.id}"),
                      Text("Category:${data.category}"),
                      Text("Price:${data.price}"),
                      Text("Title:${data.title}"),
                      Text("Count:${data.rating?.count}"),
                      Text("Rating:${data.rating?.rate}"),
                      Text("Discription:${data.description ?? ""}"),
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
