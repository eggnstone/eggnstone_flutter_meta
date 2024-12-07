// ignore_for_file: diagnostic_describe_all_properties

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'MetaDesign.dart';

abstract class StatelessMetaWidget extends StatelessWidget
{
    final Brightness? brightness;
    final MetaDesign? design;

    const StatelessMetaWidget({this.brightness, this.design, super.key});
}
