
import 'package:eggnstone_dart/eggnstone_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Meta.dart';
import '../MetaRaisedIconAndTextButton.dart';
import '../MetaRaisedTextButton.dart';
import '../MetaRaisedWidgetButton.dart';
import 'CardPadding.dart';
import '../MetaRaisedButtonPadding.dart';
import 'NormalPadding.dart';
import 'PaddingConsts.dart';

class PaddingTools
{
    static List<Widget> pad(List<Widget> columnChildren, double basePadding)
    {
        final List<Widget> newChildren = <Widget>[];

        for (Widget widget in columnChildren)
        {
            final bool wasExpanded = widget is Expanded;
            if (wasExpanded)
                widget = widget.child;

            _addChildToColumnChildren(newChildren, widget, makeChildExpanded: wasExpanded);
        }

        return newChildren;
    }

    static void _addChildToColumnChildren(List<Widget> columnChildren, Widget child, {bool makeChildExpanded = false})
    {
        double previousWidgetPadding = 0;
        if (columnChildren.isEmpty)
        {
            //logDebug('First element');
        }
        else
        {
            if (columnChildren.last is SizedBox)
            {
                //logDebug('Removing 2x-Previous element: ' + columnChildren.last.runtimeType.toString());
                columnChildren.removeLast();
            }
            else
            {
                logDebug('Removing 2x-Previous element: ${columnChildren.last.runtimeType}');
                logDebug('##################################################');
                logDebug('Padding-Error');
                logDebug('##################################################');
            }

            if (columnChildren.isEmpty)
            {
                logDebug('Previous element: ${columnChildren.last.runtimeType}');
                logDebug('##################################################');
                logDebug('Padding-Error');
                logDebug('##################################################');
            }
            else
            {
                //logDebug('Previous element: ' + columnChildren.last.runtimeType.toString());
                if (columnChildren.last is CardPadding)
                {
                    previousWidgetPadding = PaddingConsts.INHERENT_CARD_PADDING_VERTICAL;
                }
                else if (columnChildren.last is MetaRaisedButtonPadding)
                {
                    if ((columnChildren.last as MetaRaisedButtonPadding).child is CupertinoButton)
                        previousWidgetPadding = PaddingConsts.INHERENT_CUPERTINO_BUTTON_PADDING_VERTICAL;
                    else
                        previousWidgetPadding = PaddingConsts.INHERENT_BUTTON_PADDING_VERTICAL;
                }
                else
                    previousWidgetPadding = 0.0;
            }
        }

        double currentWidgetPadding = 0;
        if (child is Card)
        {
            currentWidgetPadding = PaddingConsts.INHERENT_CARD_PADDING_VERTICAL;
        }
        else if (child is MetaRaisedIconAndTextButton || child is MetaRaisedTextButton || child is MetaRaisedWidgetButton)
        {
            if (Meta.isDesignCupertino)
                currentWidgetPadding = PaddingConsts.INHERENT_CUPERTINO_BUTTON_PADDING_VERTICAL;
            else
                currentWidgetPadding = PaddingConsts.INHERENT_BUTTON_PADDING_VERTICAL;
        }
        else
            currentWidgetPadding = 0.0;

        double resultingPreviousPadding = PaddingConsts.GLOBAL_NORMAL_PADDING - previousWidgetPadding - currentWidgetPadding;
        double resultingNextPadding = PaddingConsts.GLOBAL_NORMAL_PADDING - currentWidgetPadding;

        if (resultingPreviousPadding < 0.0)
        {
            logDebug('previousWidgetPadding: $previousWidgetPadding');
            logDebug('currentWidgetPadding: $currentWidgetPadding');
            logDebug('resultingPreviousPadding: $resultingPreviousPadding');
            logDebug('resultingNextPadding: $resultingNextPadding');
            logDebug('##################################################');
            logDebug('Padding-Error');
            logDebug('##################################################');
            resultingPreviousPadding = 0.0;
        }

        if (resultingNextPadding < 0.0)
        {
            logDebug('previousWidgetPadding: $previousWidgetPadding');
            logDebug('currentWidgetPadding: $currentWidgetPadding');
            logDebug('resultingPreviousPadding: $resultingPreviousPadding');
            logDebug('resultingNextPadding: $resultingNextPadding');
            logDebug('##################################################');
            logDebug('Padding-Error');
            logDebug('##################################################');
            resultingNextPadding = 0.0;
        }

        Widget paddedChild;
        if (child is Card)
            paddedChild = CardPadding(child: child);
        else if (child is MetaRaisedIconAndTextButton || child is MetaRaisedTextButton || child is MetaRaisedWidgetButton)
            paddedChild = MetaRaisedButtonPadding(child: child);
        else
            paddedChild = NormalPadding(child: child);

        if (makeChildExpanded)
            paddedChild = Expanded(child: paddedChild);

        columnChildren.add(SizedBox(height: resultingPreviousPadding));
        columnChildren.add(paddedChild);
        columnChildren.add(SizedBox(height: resultingNextPadding));
    }
}
