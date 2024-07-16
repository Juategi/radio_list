import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/settings/settings_controller.dart';
import 'package:radio_list/domain/countries/country.dart';
import 'package:radio_list/presentation/core/decorations.dart';
import 'package:radio_list/utils/string_keys.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final RadioListCubit radioListCubit = GetIt.instance<RadioListCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(StringKeys.settings,
            style: Theme.of(context).textTheme.headlineMedium),
        flexibleSpace: Container(decoration: getAppBarDecoration(context)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringKeys.chooseCountry,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 15),
              DropdownButton<Country>(
                dropdownColor: Theme.of(context).appBarTheme.backgroundColor!,
                style: Theme.of(context).textTheme.bodyMedium,
                underline: Container(),
                value: SettingsController.countrySelected,
                onChanged: (Country? newValue) {
                  setState(() {
                    SettingsController.countrySelected = newValue!;
                  });
                  radioListCubit.getRadios(newValue ?? Country.spain);
                },
                items: SettingsController.countries
                    .map<DropdownMenuItem<Country>>((Country value) {
                  return DropdownMenuItem<Country>(
                    value: value,
                    child: Row(
                      children: [
                        Image.asset(
                          value.flag,
                          width: 30,
                        ),
                        const SizedBox(width: 15),
                        Text(value.toString()),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
