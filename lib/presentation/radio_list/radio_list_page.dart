import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_list/application/radio_list/radio_list_cubit.dart';
import 'package:radio_list/application/settings/settings_controller.dart';
import 'package:radio_list/presentation/core/decorations.dart';
import 'package:radio_list/presentation/radio_list/widgets/radio_tile.dart';
import 'package:radio_list/presentation/radio_list/widgets/search_field.dart';
import 'package:radio_list/utils/string_keys.dart';

class RadioListPage extends StatelessWidget {
  const RadioListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Row(
          children: [
            Text(
              StringKeys.hits,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(width: 12),
            Image.asset(
              SettingsController.countrySelected.flag,
              width: 25,
            ),
          ],
        ),
        flexibleSpace: Container(
          decoration: getAppBarDecoration(context),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchField(),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: BlocBuilder<RadioListCubit, RadioListState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                loaded: (radios) => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: radios.radios.length,
                  itemBuilder: (context, index) {
                    final radio = radios.radios[index];
                    return RadioTile(radioEntity: radio);
                  },
                ),
                error: (error) => Center(
                  child: Text(error.error),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
