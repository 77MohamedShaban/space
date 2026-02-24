import 'package:flutter/material.dart';
import 'package:space/model/space_model.dart';
import 'package:space/ui/planet_details/widgets/text_widget.dart';

class PlanetDetailsScreen extends StatelessWidget {
  static const String routeName = "Planet";
  const PlanetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SpaceModel planetData = ModalRoute.of(context)?.settings.arguments as SpaceModel;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 160,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/header_image.png",
                      height: 237,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 26),
                        child: Text(
                          planetData.planetName,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 10,
                                color: Colors.black,
                              ),
                              Shadow(
                                offset: Offset(-1, 1),
                                blurRadius: 4,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          planetData.planetTitle,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 10,
                                color: Colors.black,
                              ),
                              Shadow(
                                offset: Offset(-1, 1),
                                blurRadius: 4,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15,left: 10),
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Color(0xFFEE403D),
                          ),
                          onPressed: () {Navigator.of(context).pop();},
                          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 30),
                child: Image.asset(
                  planetData.planetImage,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      planetData.planetAbout,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextWidget("Distance from Sun (km) : ${planetData.distanceFromSun}"),
                    TextWidget("Length of Day (hours) : ${planetData.lengthOfDay}"),
                    TextWidget("Orbital Period (Earth years) : ${planetData.orbitalPeriod}"),
                    TextWidget("Radius (km) : ${planetData.radius}"),
                    TextWidget("Mass (kg) : ${planetData.mass}"),
                    TextWidget("Gravity (m/s²) : ${planetData.gravity}"),
                    TextWidget("Surface Area (km²) : ${planetData.surfaceArea}"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
