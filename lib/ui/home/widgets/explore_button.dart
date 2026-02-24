import 'package:flutter/material.dart';
import '../../../model/space_model.dart';
import '../../planet_details/screen/planet_details_screen.dart';

class ExploreButton extends StatelessWidget {
  List<SpaceModel> spaceData;
  int currentIndex;
  ExploreButton({required this.spaceData, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(
        top: 40,
        right: 20,
        left: 20,
        bottom: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFEE403D),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(
            PlanetDetailsScreen.routeName,
            arguments: SpaceModel(
              planetName: spaceData[currentIndex].planetName,
              planetImage: spaceData[currentIndex].planetImage,
              planetTitle: spaceData[currentIndex].planetTitle,
              planetAbout: spaceData[currentIndex].planetAbout,
              distanceFromSun:
              spaceData[currentIndex].distanceFromSun,
              lengthOfDay: spaceData[currentIndex].lengthOfDay,
              orbitalPeriod: spaceData[currentIndex].orbitalPeriod,
              radius: spaceData[currentIndex].radius,
              mass: spaceData[currentIndex].mass,
              gravity: spaceData[currentIndex].gravity,
              surfaceArea: spaceData[currentIndex].surfaceArea,
            ),
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Explore ${spaceData[currentIndex].planetName}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_rounded, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
