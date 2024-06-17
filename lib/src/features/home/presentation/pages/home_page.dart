import 'package:flutter/material.dart';
import 'package:flutterguide/src/core/widgets/scaffold_wrapper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWrapper(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Forex Academy'),
          floating: true,
          snap: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
              // background: Image.asset('assets/images/bhurja.jpg', fit: BoxFit.cover),
              ),
        )
      ],
    ));
  }
}
