import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/home/widget/places_list.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 3),
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
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
                  gradient: LinearGradient(
                    colors: [
                      AppColors.greyColorG5A,
                      AppColors.greyColorGCA,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(85, 162, 74, 74),
                ),
                child: Tab(text: "Most Viewed"),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.greyColorG5A,
                      AppColors.greyColorGCA,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(85, 162, 74, 74),
                ),
                child: Tab(text: "Nearby"),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.greyColorG5A,
                      AppColors.greyColorGCA,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(85, 162, 74, 74),
                ),
                child: Tab(text: "Latest"),
              ),
            ],
          ),
          SizedBox(height: 40),
          SizedBox(
            height: 350,
            child: TabBarView(children: [
              PlacesList(),
              PlacesList(),
              PlacesList(),
            ],),
          ),
        ],
      ),
    );
  }
}
