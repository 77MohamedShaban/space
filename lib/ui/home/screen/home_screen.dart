import 'package:flutter/material.dart';
import 'package:space/model/space_model.dart';
import '../../../core/resources/space_data.dart';
import '../widgets/explore_button.dart';
import '../widgets/header.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  List<SpaceModel> spaceData = SpaceData.spaceData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Header(),
              // ================= PageView =================
              const SizedBox(height: 20),
              SizedBox(
                height: 280,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: spaceData.length,
                  onPageChanged: (index) {
                    print("onPageChanged  $index");
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    print("itemBuilder  $index");
                    return Image.asset(
                      spaceData[index].planetImage,
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              // ================= Arrows + Planet Name =================
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                      ),
                      onPressed: () {
                        _controller.previousPage(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
                    ),
                    Spacer(),
                    Text(
                      spaceData[currentIndex].planetName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Spacer(),

                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Color(0xFFEE403D),
                      ),
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 700),
                          curve: Curves.easeInOut,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ExploreButton(spaceData: spaceData, currentIndex: currentIndex),
            ],
          ),
        ),
      ),
    );
  }
}
