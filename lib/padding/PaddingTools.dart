
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Meta.dart';
import '../MetaRaisedIconAndTextButton.dart';
import '../MetaRaisedTextButton.dart';
import '../MetaRaisedWidgetButton.dart';
import 'CardPadding.dart';
import 'MetaRaisedButtonPadding.dart';
import 'NormalPadding.dart';
import 'PaddingConsts.dart';

class PaddingTools
{
    static List<Widget> pad(List<Widget> columnChildren, double basePadding)
    {
        List<Widget> newChildren = [];

        for (Widget widget in columnChildren)
        {
            bool wasExpanded = widget is Expanded;
            if (wasExpanded)
                widget = widget.child;

            _addChildToColumnChildren(newChildren, widget, makeChildExpanded: wasExpanded);
        }

        return newChildren;
    }

    static void _addChildToColumnChildren(List<Widget> columnChildren, Widget child, {bool makeChildExpanded = false})
    {
        double previousWidgetPadding = 0.0;
        if (columnChildren.length == 0)
        {
            //print('First element');
        }
        else
        {
            if (columnChildren.last is SizedBox)
            {
                //print('Removing 2x-Previous element: ' + columnChildren.last.runtimeType.toString());
                columnChildren.removeLast();
            }
            else
            {
                print('Removing 2x-Previous element: ' + columnChildren.last.runtimeType.toString());
                print('##################################################');
                print('Padding-Error');
                print('##################################################');
            }

            if (columnChildren.length == 0)
            {
                print('Previous element: ' + columnChildren.last.runtimeType.toString());
                print('##################################################');
                print('Padding-Error');
                print('##################################################');
            }
            else
            {
                //print('Previous element: ' + columnChildren.last.runtimeType.toString());
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

        double currentWidgetPadding = 0.0;
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
            print('previousWidgetPadding: $previousWidgetPadding');
            print('currentWidgetPadding: $currentWidgetPadding');
            print('resultingPreviousPadding: $resultingPreviousPadding');
            print('resultingNextPadding: $resultingNextPadding');
            print('##################################################');
            print('Padding-Error');
            print('##################################################');
            resultingPreviousPadding = 0.0;
        }

        if (resultingNextPadding < 0.0)
        {
            print('previousWidgetPadding: $previousWidgetPadding');
            print('currentWidgetPadding: $currentWidgetPadding');
            print('resultingPreviousPadding: $resultingPreviousPadding');
            print('resultingNextPadding: $resultingNextPadding');
            print('##################################################');
            print('Padding-Error');
            print('##################################################');
            resultingNextPadding = 0.0;
        }

        if (child is Card)
            child = CardPadding(child: child);
        else if (child is MetaRaisedIconAndTextButton || child is MetaRaisedTextButton || child is MetaRaisedWidgetButton)
            child = MetaRaisedButtonPadding(child: child);
        else
            child = NormalPadding(child: child);

        if (makeChildExpanded)
            child = Expanded(child: child);

        columnChildren.add(SizedBox(height: resultingPreviousPadding));
        columnChildren.add(child);
        columnChildren.add(SizedBox(height: resultingNextPadding));
    }
}
