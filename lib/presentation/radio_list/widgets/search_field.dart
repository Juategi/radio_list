import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/settings/settings_controller.dart';
import 'package:radio_list/utils/string_keys.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key});
  final TextEditingController controller = TextEditingController();
  final RadioListCubit radioListCubit = GetIt.instance<RadioListCubit>();
  @override
  Widget build(BuildContext context) {
    controller.text = '';
    radioListCubit.searchRadios('', SettingsController.countrySelected);
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: TextField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
            controller: controller,
            onSubmitted: (value) => radioListCubit.searchRadios(
              value,
              SettingsController.countrySelected,
            ),
            decoration: const InputDecoration(
              hintText: StringKeys.search,
              border: InputBorder.none,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            radioListCubit.searchRadios(
              controller.text,
              SettingsController.countrySelected,
            );
          },
          icon: const Icon(Icons.search, color: Colors.white),
        ),
      ],
    );
  }
}
