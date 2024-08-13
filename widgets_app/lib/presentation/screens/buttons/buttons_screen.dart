import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated But')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_time_filled_outlined),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_alert_outlined),
                label: const Text('Outlined Icon')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                label: const Text('Text Icon'),
                icon: const Icon(Icons.ads_click_rounded)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.ad_units_rounded)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ad_units_rounded),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                )),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: (){},
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Hola mundo', style: TextStyle(color: colors.primary))),
        ),
      ),
    );
  }
}
