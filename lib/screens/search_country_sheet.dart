import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/app_colors.dart';

import '../project_bloc/city_bloc/city_bloc.dart';
import '../project_bloc/weather_bloc/weather_bloc.dart';

class CountrySearchSheet extends StatelessWidget {
  const CountrySearchSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<CityBloc, CityState>(
            builder: (context, state) {
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: AppColors.accentColor,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: AppColors.primaryColor)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.accentColor, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: AppColors.accentColor, width: 2)),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        context
                            .read<CityBloc>()
                            .add(CityEvent.searchCity(value));
                      }
                    },
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (state.isLoading) ...{
                          const Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        } else ...{
                          Expanded(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: state.city.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    title: Text(state.city[index].name ?? ""),
                                    trailing: Flag.fromString(
                                      state.city[index].country ?? "",
                                      height: 40,
                                      width: 60,
                                      fit: BoxFit.fill,
                                      replacement: const Text('ACC not found'),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).pop({
                                        "latitude": state.city[index].latitude,
                                        "longitude":
                                            state.city[index].longitude,
                                      });
                                    },
                                  );
                                }),
                          )
                        }
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
