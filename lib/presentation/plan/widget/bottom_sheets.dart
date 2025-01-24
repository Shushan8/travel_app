import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/weather/bloc/weather_bloc.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/plan/widget/schedule_item.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.greyColorF8,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(37),
            topRight: Radius.circular(37),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.greyColor9F,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Schedule',
              style: AppTypography.s16w6CF2,
            ),
            SizedBox(height: 30),
            Center(
              child: BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => Text('Loading weather...'),
                    loading: () => CircularProgressIndicator(),
                    loaded: (weather) => Column(
                      children: [
                        ScheduleItem(
                          time: weather.time,
                          title: weather.cityName,
                          description: 'Start Your Adventure',
                          icon: weather.icon,
                          isActive: true,
                        ),
                        ScheduleItem(
                          time: weather.time,
                          title: weather.cityName,
                          description: 'Start Your Adventure',
                          icon: weather.icon,
                          isActive: false,
                        ),
                        ScheduleItem(
                          time: weather.time,
                          title: weather.cityName,
                          description: 'Start Your Adventure',
                          icon: weather.icon,
                          isActive: false,
                          isLast: true,
                        ),
                      ],
                    ),
                    error: (message) => Text(
                      message,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
