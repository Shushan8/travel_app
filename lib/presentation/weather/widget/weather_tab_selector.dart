import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/weather/widget/snow_bottom_sheets.dart';
import 'package:travel_app/presentation/weather/widget/snow_section.dart';

class WeatherTabSelector extends StatelessWidget {
  const WeatherTabSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
         SizedBox(height: 30),
          TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 3),
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
               border: Border.all(
                    color: Colors.transparent,
                  ),
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF4500),
                  Color(0xFFFFA07A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: AppColors.greyColorGC5,
            tabs: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyColorGC5,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Tab(text: "Snow"),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyColorGC5,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Tab(text: "Hill"),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyColorGC5,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Tab(text: "Resort"),
              ),
            ],
          ),
          SizedBox(height: 40),
          Expanded(
            child: TabBarView(
              children: [
                SnowSection(widget: SnowBottomSheets())
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
