import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class MyMap extends StatefulWidget {
  final String user_id;
  const MyMap(this.user_id);
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  final loc.Location location = loc.Location();
  late GoogleMapController _controller;
  bool _added = false;

  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();

  _addPolyLine() {
    PolylineId id = const PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyAo-5FaKK3btiJEOTCUV8uPYuvk5hOcy94',
      const PointLatLng(3.1010771023239725, 101.64122121434465),
      const PointLatLng(3.1098265121198834, 101.64219596124619),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('location').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (_added) {
              mymap(snapshot);
            }
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            return GoogleMap(
              mapType: MapType.normal,
              markers: {
                Marker(
                    position: LatLng(
                      snapshot.data!.docs.singleWhere(
                              (element) => element.id == widget.user_id)['latitude'],
                      snapshot.data!.docs.singleWhere(
                              (element) => element.id == widget.user_id)['longitude'],
                    ),
                    markerId: const MarkerId('Bus is Here'),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueMagenta)),
                const Marker(
                    markerId: MarkerId('PJ438'),
                    position: LatLng(3.104087462051825, 101.63921195984953),
                    infoWindow: InfoWindow(
                      title: 'LRT Asia Jaya (Utara)',
                    )
                ),
                const Marker(
                    markerId: MarkerId('PJ433'),
                    position: LatLng(3.1010771023239725, 101.64122121434465),
                    infoWindow: InfoWindow(
                      title: 'Petaling Jaya State (Utara)',
                    )
                ),

                const Marker(
                    markerId: MarkerId('PJ442'),
                    position: LatLng(3.1098265121198834, 101.64219596124619),
                    infoWindow: InfoWindow(
                      title: 'Finas',
                    )
                ),

              },
              polylines: Set<Polyline>.of(polylines.values),
              initialCameraPosition: CameraPosition(
                  target: LatLng(
                    snapshot.data!.docs.singleWhere(
                            (element) => element.id == widget.user_id)['latitude'],
                    snapshot.data!.docs.singleWhere(
                            (element) => element.id == widget.user_id)['longitude'],
                  ),
                  zoom: 14.47),
              onMapCreated: (GoogleMapController controller) async {
                _getPolyline();
                setState(() {
                  _controller = controller;
                  _added = true;
                });
              },
            );
          },
        ));
  }

  Future<void> mymap(AsyncSnapshot<QuerySnapshot> snapshot) async {
    await _controller
        .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(
          snapshot.data!.docs.singleWhere(
                  (element) => element.id == widget.user_id)['latitude'],
          snapshot.data!.docs.singleWhere(
                  (element) => element.id == widget.user_id)['longitude'],
        ),
        zoom: 15)));
  }
}