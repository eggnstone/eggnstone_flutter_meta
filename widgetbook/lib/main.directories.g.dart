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
import 'package:widgetbook_workspace/UseCases/MetaRaisedWidgetButton.dart'
    as _i5;
import 'package:widgetbook_workspace/UseCases/MetaSwitchListTile.dart' as _i6;

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
      _i1.WidgetbookUseCase(
        name: 'OK is disabled',
        builder: _i2.buildMetaAlertDialogOkDisabled,
      ),
      _i1.WidgetbookUseCase(
        name: 'Three actions, middle disabled',
        builder: _i2.buildMetaAlertDialogThreeActionsMiddleDisabled,
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
        name: '<normal with ElevatedButtonScheme>',
        builder: _i4.buildMetaRaisedTextButtonWithElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: '<normal without ElevatedButtonScheme>',
        builder: _i4.buildMetaRaisedTextButtonWithoutElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled with ElevatedButtonScheme',
        builder: _i4.buildMetaRaisedTextButtonDisabledWithElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled without ElevatedButtonScheme',
        builder:
            _i4.buildMetaRaisedTextButtonDisabledWithoutElevatedButtonScheme,
      ),
    ],
  ),
  _i1.WidgetbookComponent(
    name: 'MetaRaisedWidgetButton',
    useCases: [
      _i1.WidgetbookUseCase(
        name: '<normal with ElevatedButtonScheme>',
        builder: _i5.buildMetaRaisedWidgetButtonWithElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: '<normal without ElevatedButtonScheme>',
        builder: _i5.buildMetaRaisedWidgetButtonWithoutElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled with ElevatedButtonScheme',
        builder:
            _i5.buildMetaRaisedWidgetButtonDisabledWithElevatedButtonScheme,
      ),
      _i1.WidgetbookUseCase(
        name: 'Disabled without ElevatedButtonScheme',
        builder:
            _i5.buildMetaRaisedWidgetButtonDisabledWithoutElevatedButtonScheme,
      ),
    ],
  ),
  _i1.WidgetbookLeafComponent(
    name: 'MetaSwitchListTile',
    useCase: _i1.WidgetbookUseCase(
      name: '<normal>',
      builder: _i6.buildMetaSwitchListTile,
    ),
  ),
];
