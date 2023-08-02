import 'package:flutter/material.dart';
import 'package:the_widgets/every_widgets/about_list_tile.dart';
import 'package:the_widgets/every_widgets/absorb_pointer.dart';
import 'package:the_widgets/every_widgets/alert_dialog.dart';
import 'package:the_widgets/every_widgets/align.dart';
import 'package:the_widgets/every_widgets/animated_align.dart';
import 'package:the_widgets/every_widgets/animated_builder.dart';
import 'package:the_widgets/every_widgets/animated_container.dart';
import 'package:the_widgets/every_widgets/animated_cross_fade.dart';
import 'package:the_widgets/every_widgets/animated_default_text_style.dart';
import 'package:the_widgets/every_widgets/animated_icon.dart';
import 'package:the_widgets/every_widgets/animated_list.dart';
import 'package:the_widgets/every_widgets/animated_modal_barrier.dart';
import 'package:the_widgets/every_widgets/animated_opacity.dart';
import 'package:the_widgets/every_widgets/animated_padding.dart';
import 'package:the_widgets/every_widgets/animated_physical_model.dart';
import 'package:the_widgets/every_widgets/animated_rotation.dart';
import 'package:the_widgets/every_widgets/animated_size.dart';
import 'package:the_widgets/every_widgets/animated_switcher.dart';
import 'package:the_widgets/every_widgets/decorated_box.dart';
import 'package:the_widgets/every_widgets/decorated_box_transition.dart';

import 'every_widgets/about_dialog.dart';

const Color darkBlue = Color(0xFF12202F);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      title: 'Every Flutter Widget',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Mapp'),
        ),
        //! Just change the Widget001 for the Widget you want.
        body: const Widget081(),
      ),
    );
  }
}
