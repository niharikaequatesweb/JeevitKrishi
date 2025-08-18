import 'package:flutter/material.dart';
import 'package:jeevit_krishi_app/presentation/soil_testing_screen.dart';
import 'package:jeevit_krishi_app/presentation/water_testing_scree.dart';
import 'package:jeevit_krishi_app/theme/const_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../machinery_screen.dart';
import '../../tubewell_screen.dart';
import '../widgets/agri_service_widget.dart';
import '../widgets/farm_control_panel_widget.dart';
import '../widgets/weather_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColors.darkGreen,
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.5.w),
            child: Image.asset("assets/images/whatsapp.png", height: 10.h),
          ),
        ],
      ),
      drawer: const Drawer(backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WeatherWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Text(
                    'Agri Service',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SoilTestingScreen(),
                          ),
                        );
                      },
                      child: AgriServiceWidget(
                        icon: Icons.science,
                        label: 'Soil Testing',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MachineryScreen(),
                          ),
                        );
                      },
                      child: AgriServiceWidget(
                        icon: Icons.agriculture,
                        label: 'Machinery',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WaterTestingScreen(),
                          ),
                        );
                      },
                      child: AgriServiceWidget(
                        icon: Icons.water_drop,
                        label: 'Water Testing',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TubewellScreen(),
                          ),
                        );
                      },
                      child: AgriServiceWidget(
                        icon: Icons.build,
                        label: 'Tubewell',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const FarmControlPanelWidget(),
          ],
        ),
      ),
    );
  }
}
