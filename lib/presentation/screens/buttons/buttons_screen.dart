import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.arrow_back),
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Wrap(
        spacing: 20,
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
          ElevatedButton(
            onPressed: null,
            child: Text('Disable Elevated Button'),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.alarm),
            onPressed: () {},
            label: Text('Elevated Button Icon'),
          ),
          FilledButton(onPressed: () {}, child: Text('Filled Button')),
          FilledButton.icon(
            onPressed: () {},
            label: Text('Filled Button Icon'),
            icon: Icon(Icons.ac_unit),
          ),
          OutlinedButton(onPressed: () {}, child: Text('Outline Button')),
          OutlinedButton.icon(
            onPressed: () {},
            label: Text('Outline Button Icon'),
            icon: Icon(Icons.add_a_photo),
          ),
          TextButton(onPressed: () {}, child: Text('Text Button')),
          TextButton.icon(
            onPressed: () {},
            label: Text('Text Button Icon'),
            icon: Icon(Icons.accessibility),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_added)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.app_registration),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary),
              iconColor: WidgetStatePropertyAll(Colors.white),
            ),
          ),
          CustomButton(),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.deepOrangeAccent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,vertical: 10
            ),
            child: Text(
              'Flutter/Dart',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            ),
          ),
        ),
      ),
    );
  }
}
