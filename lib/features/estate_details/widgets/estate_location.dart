import 'package:estate/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EstateLocation extends StatefulWidget {
  const EstateLocation({super.key});

  @override
  State<EstateLocation> createState() => _EstateLocationState();
}

class _EstateLocationState extends State<EstateLocation> {
  BitmapDescriptor? _customMarker;

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(34, 51)),
      'assets/icons/map_marker.png',
    ).then((marker) {
      setState(() => _customMarker = marker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(25.r),
      child: SizedBox(
        height: 150.h,
        child: GoogleMap(
          style: AppConstants.lightMapStyle,
          initialCameraPosition: CameraPosition(
            target: LatLng(40.7128, -74.0060),
            zoom: 13,
          ),
          zoomControlsEnabled: false,
          scrollGesturesEnabled: false,
          tiltGesturesEnabled: false,
          rotateGesturesEnabled: false,
          myLocationButtonEnabled: false,
          markers: {
            Marker(
              markerId: const MarkerId('selected'),
              position: LatLng(40.7128, -74.0060),
              icon: _customMarker ?? BitmapDescriptor.defaultMarker,
            ),
          },
        ),
      ),
    );
  }
}
