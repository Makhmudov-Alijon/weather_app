import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/project_routes.dart';
import 'package:weather_app/generated/assets.dart';
import 'package:weather_app/project_bloc/city_bloc/city_bloc.dart';
import 'package:weather_app/screens/search_country_sheet.dart';
import 'package:weather_app/widget/custom_scaffold.dart';

import '../core/app_colors.dart';
import '../project_bloc/weather_bloc/weather_bloc.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => BlocProvider(
                                  create: (context) => CityBloc()
                                    ..add(const CityEvent.initialCity()),
                                  child: const CountrySearchSheet(),
                                )).then((value) {
                          if (value != null) {
                            context
                                .read<WeatherBloc>()
                                .add(WeatherEvent.searchLocation(value));
                          }
                        });
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.iconsLocationIcon,
                            height: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            state.weatherData?.location?.name ?? "",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),

                  if(state.weatherData!=null)...{
                    const SizedBox(height: 40),
                    Center(
                      child: Image(
                          height: 120,
                          width: 180,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https:${state.weatherData?.current?.condition?.icon}")),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: AppColors.secondaryColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Today ${DateFormat("d MMMM").format(DateTime.now())}",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            "${state.weatherData?.current?.tempC}°C",
                            style: const TextStyle(
                                fontSize: 60, color: Colors.white),
                          ),
                          Text(
                            "${state.weatherData?.current?.condition?.text}",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Hum     |",
                                style:
                                TextStyle(fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                "    ${state.weatherData?.current?.humidity} %",
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  }
                ],
              ),
              if (state.isLoading) ...{
                const Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              }
            ],
          );
        },
      ),
    );
  }
}
