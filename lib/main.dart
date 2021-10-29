import 'package:flutter/material.dart';
import 'package:covid_spot/pages/Find.dart';
import 'package:covid_spot/service/geolocator_service.dart';
import 'package:provider/provider.dart';
import 'package:covid_spot/widgets1/homePage.dart';


void main() {  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final locatorService = GeolocatorService();
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      create: (context) => locatorService.getLocation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hospital Locator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Find(),
      ),
    );
  }
}
