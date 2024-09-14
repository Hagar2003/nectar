import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/search/presentation/views/widgets/check_box.dart';

class FliterBody extends StatelessWidget {
  const FliterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 22),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(FontAwesomeIcons.x, size: 20)),
                SizedBox(width: 110),
                Text(
                  'Filters',
                  style: Styles.Text23,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: kGrey),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    ' Categories',
                    style: Styles.Text26,
                  ),
                  SizedBox(height: 10),
                  CheckBoxFilter(text: 'Eggs'),
                  CheckBoxFilter(text: 'Noodles &Pasta'),
                  CheckBoxFilter(text: 'Chips & Crisps'),
                  CheckBoxFilter(text: 'Fast Food'),
                  SizedBox(height: 30),
                  Text(
                    ' Brand',
                    style: Styles.Text26,
                  ),
                  SizedBox(height: 10),
                  CheckBoxFilter(text: 'Individual Collection'),
                  CheckBoxFilter(text: 'CoCola'),
                  CheckBoxFilter(text: 'Ifad'),
                  CheckBoxFilter(text: 'Kazi Farms')
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
