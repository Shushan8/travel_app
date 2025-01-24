import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class PartnerList extends StatelessWidget {
  const PartnerList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> users = [
      {
        "name": "Parth",
        "role": "Chief Travel Experiencer",
        "image": Assets.images.ellipse299.path,
      },
      {
        "name": "Rudra",
        "role": "Private tour guide",
        "image": Assets.images.ellipse300.path,
      },
      {
        "name": "Dhruv",
        "role": "Travel YouTube master",
        "image": Assets.images.ellipse301.path,
      },
      {
        "name": "Archit",
        "role": "Chief Travel Experiencer",
        "image": Assets.images.ellipse302.path,
      },
    ];
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(Assets.images.ellipse298.path),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rohan',
                          style: AppTypography.s16w6cBl,
                        ),
                        Text(
                          'Travel Blogger',
                          style: AppTypography.s16w4cG73,
                        ),
                      ],
                    ),
                  ],
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.brightRedOrange,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 7,
                      ),
                      child: Text(
                        'Edit profile',
                        style: AppTypography.s16w5h24cW,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Divider()
          ],
        ),
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(user["image"]!),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user["name"]!,
                                style: AppTypography.s16w6cBl,
                              ),
                              Text(
                                user["role"]!,
                                style: AppTypography.s16w4cG73,
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 7,
                          ),
                          child: SvgPicture.asset(Assets.icon.arrowDown),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Divider(),
                ],
              );
            },
          ),
        ),
        Row(
          children: [
            Icon(Icons.logout, color: Colors.orange),
            Text(
              "Log out",
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Spacer()
      ],
    );
  }
}
