// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/UseCases/MetaAlertDialog.dart' as _i2;
import 'package:widgetbook_workspace/UseCases/MetaAlertDialogButton.dart'
    as _i3;
import 'package:widgetbook_workspace/UseCases/MetaRaisedTextButton.dart' as _i4;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookComponent(
    name: 'MetaAlertDialog',
    useCases: [
      _i1.WidgetbookUseCase(
        name: '<normal>',
        builder: _i2.buildMetaAlertDialog,
      ),
      _i1.WidgetbookUseCase(
        name: 'Destructive action',
        builder: _i2.buildMetaAlertDialogDestructive,
      ),
    ],
  ),
  _i1.WidgetbookComponent(
    name: 'MetaAlertDialogButton',
    useCases: [
      _i1.WidgetbookUseCase(
        name: '<normal>',
        builder: _i3.buildMetaAlertDialogButton,
      ),
      _i1.WidgetbookUseCase(
        name: 'Red',
        builder: _i3.buildMetaAlertDialogButtonRed,
      ),
      _i1.WidgetbookUseCase(
        name: 'Why different between Cupertino and Material?',
        builder: _i3.buildMetaAlertDialogButton2,
      ),
    ],
  ),
  _i1.WidgetbookComponent(
    name: 'MetaRaisedTextButton',
    useCases: [
      _i1.WidgetbookUseCase(
        name: '<normal>',
        builder: _i4.buildMetaRaisedTextButton,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled',
        builder: _i4.buildMetaRaisedTextButtonDisabled,
      ),
    ],
  ),
];
