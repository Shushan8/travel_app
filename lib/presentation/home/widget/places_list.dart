import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/home/widget/places_card.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                endIndent: 15,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context.router.push(
                      PlacesInformationRoute(),
                    );
                  },
                  child: PlacesCard(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
