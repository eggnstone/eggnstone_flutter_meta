import 'package:flutter/widgets.dart';

class ExpandedShowcase extends StatelessWidget
{
    final Widget child;

    const ExpandedShowcase({required this.child, super.key});

    @override
    Widget build(BuildContext context)
    => Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                child,
                const SizedBox(height: 16),
                const Text('Expanded row:'),
                SizedBox(
                    width: 200,
                    child: Row(children: <Widget>[Expanded(child: child)])
                ),
                const SizedBox(height: 16),
                const Text('Expanded column:'),
                SizedBox(
                    height: 200,
                    child: Column(children: <Widget>[Expanded(child: child)])
                )
            ]
        )
    );
}
