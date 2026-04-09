import 'package:estate/core/helpers/spacing.dart';
import 'package:estate/core/style/app_colors.dart';
import 'package:estate/core/style/app_text_styles.dart';
import 'package:estate/core/widgets/app_button.dart';
import 'package:estate/features/location/widgets/location_field_container.dart';
import 'package:estate/features/location/widgets/skip_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetupLocationScreen extends StatefulWidget {
  const SetupLocationScreen({super.key});

  @override
  State<SetupLocationScreen> createState() => _SetupLocationScreenState();
}

class _SetupLocationScreenState extends State<SetupLocationScreen> {
  bool _isMapExpanded = false;
  LatLng _selectedLocation = const LatLng(40.7128, -74.0060);
  String _selectedAddress = '13 شارع السيده امنه , مصطفى كامل';
  bool _locationSelected = false;
  static const LatLng _initialPosition = LatLng(40.7128, -74.0060);
  BitmapDescriptor? _customMarker;

  void _onMapTap(LatLng position) {
    setState(() {
      _selectedLocation = position;
      _locationSelected = true;
      _selectedAddress =
          '${position.latitude.toStringAsFixed(4)}, ${position.longitude.toStringAsFixed(4)}';
    });
  }

  void _openExpandedMap() {
    setState(() => _isMapExpanded = true);
  }

  @override
  void initState() {
    super.initState();
    BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/icons/map_marker.png',
    ).then((marker) {
      setState(() => _customMarker = marker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isMapExpanded ? _buildExpandedMapView() : _buildInitialView(),
    );
  }

  Widget _buildInitialView() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkipButtonRow(),
            verticalSpace(24),
            Text(
              'أضف موقعك',
              style: AppTextStyles.grayDarkColorLatoMediumFamily500Weight25Size,
            ),
            verticalSpace(18),
            Text('يمكنك تعديل هذا لاحقًا في إعدادات حسابك.'),
            verticalSpace(18),
            GestureDetector(
              onTap: _openExpandedMap,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.r),
                child: SizedBox(
                  height: 300.h,
                  child: Stack(
                    children: [
                      GoogleMap(
                        style: _lightMapStyle,
                        initialCameraPosition: CameraPosition(
                          target: _initialPosition,
                          zoom: 13,
                        ),
                        zoomControlsEnabled: false,
                        scrollGesturesEnabled: false,
                        tiltGesturesEnabled: false,
                        rotateGesturesEnabled: false,
                        myLocationButtonEnabled: false,
                        markers: _locationSelected
                            ? {
                                Marker(
                                  markerId: const MarkerId('selected'),
                                  position: _selectedLocation,
                                  icon:
                                      _customMarker ??
                                      BitmapDescriptor.defaultMarker,
                                ),
                              }
                            : {},
                      ),
                      Container(color: Colors.transparent),
                    ],
                  ),
                ),
              ),
            ),
            verticalSpace(18),
            Center(
              child: GestureDetector(
                onTap: _openExpandedMap,
                child: Text(
                  'انظر الى الخريطه',
                  style: AppTextStyles
                      .grayDarkColorRalewayRegularFamily400Weight12Size,
                ),
              ),
            ),
            verticalSpace(48),
            LocationFieldContainer(
              isLocationSelected: false,
              selectedAddress: _selectedAddress,
            ),
            verticalSpace(18),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 50.w,
                    height: 2.h,
                    color: AppColors.primaryDarkBlue,
                  ),
                  Container(
                    width: 50.w,
                    height: 2.h,
                    color: AppColors.graySoft1,
                  ),
                ],
              ),
            ),
            verticalSpace(24),
            AppButton(desc: 'التالي', onPressed: _openExpandedMap),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandedMapView() {
    return Stack(
      children: [
        GoogleMap(
          style: _lightMapStyle,
          initialCameraPosition: CameraPosition(
            target: _initialPosition,
            zoom: 14,
          ),
          onTap: _onMapTap,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          markers: _locationSelected
              ? {
                  Marker(
                    markerId: const MarkerId('selected'),
                    position: _selectedLocation,
                    icon: _customMarker ?? BitmapDescriptor.defaultMarker,
                  ),
                }
              : {},
        ),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => setState(() => _isMapExpanded = false),
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.chevron_left, color: Colors.black),
                  ),
                ),
                verticalSpace(18),
                Container(
                  height: 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha(50),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ابحث عن الموقع',
                        hintStyle: AppTextStyles
                            .grayBarelyMediumColorRalewayRegularFamily400Weight12Size,
                        prefixIcon: SvgPicture.asset(
                          'assets/icons/location_search_icon.svg',
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 464,
          right: 24,
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/icons/my_location_icon.svg'),
          ),
        ),
        Positioned(
          top: 529,
          left: 24,
          child: LocationFieldContainer(
            isLocationSelected: true,
            selectedAddress: _selectedAddress,
          ),
        ),
        Positioned(
          top: 709,
          left: 138,
          child: Container(
            width: 100.w,
            height: 2.h,
            color: AppColors.primaryDarkBlue,
          ),
        ),
        Positioned(
          top: 724,
          left: 24,
          child: SizedBox(
            width: 330.w,
            child: AppButton(desc: 'اختر موقعك', onPressed: () {}),
          ),
        ),
      ],
    );
  }
}

const String _lightMapStyle = '''
[
  {"featureType": "all", "elementType": "geometry", "stylers": [{"color": "#f5f5f5"}]},
  {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#e9e9e9"}]},
  {"featureType": "water", "elementType": "labels.text.fill", "stylers": [{"color": "#9e9e9e"}]},
  {"featureType": "road", "elementType": "geometry", "stylers": [{"color": "#ffffff"}]},
  {"featureType": "road.arterial", "elementType": "labels.text.fill", "stylers": [{"color": "#757575"}]},
  {"featureType": "administrative", "elementType": "geometry", "stylers": [{"color": "#e0e0e0"}]},
  {"featureType": "poi", "elementType": "geometry", "stylers": [{"color": "#eeeeee"}]}
]
''';
