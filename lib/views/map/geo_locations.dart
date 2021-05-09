import '../../controller/map/geo_controller.dart';
import '../../models/geo.dart';
import '../../widgets/home/user_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeoLocation extends StatelessWidget {
  final GeoController geoController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Get.back();
                    })
              ],
            ),
            Expanded(
              child: Obx(
                () => StreamBuilder(
                  stream: geoController.geoService.value.locationStream(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Geo>> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (_, index) => Card(
                              child: ListTile(
                                title: Text(snapshot
                                    .data![index].position.geoPoint
                                    .toString()),
                                trailing: Text(snapshot.data![index].name!),
                                leading: Text(
                                    snapshot.data![index].distance.toString() +
                                        ' km'),
                              ),
                            ));
                  },
                ),
              ),
            ),
            Obx(() => Center(
                  child: Text(
                      'Radius: ' + geoController.radius.toString() + ' km'),
                )),
            Obx(
              () => Slider(
                  label: 'Radius',
                  min: 1,
                  max: 200,
                  divisions: 199,
                  value: geoController.radius,
                  onChanged: (value) => geoController.radius = value),
            )
          ],
        ),
      ),
    );
  }
}
