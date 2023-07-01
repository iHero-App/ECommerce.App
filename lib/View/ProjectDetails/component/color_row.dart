import 'package:ecommerce/Shared/Resource/color_mangment.dart';
import 'package:ecommerce/Shared/Resource/view_mangment.dart';
import 'package:flutter/material.dart';

class ColorRow extends StatefulWidget {
  const ColorRow({super.key});

  @override
  State<ColorRow> createState() => _ColorRowState();
}

class _ColorRowState extends State<ColorRow> {
  List<Color?> colorItem = [
    Color(0xfff6625e),
    Color(0xff836db8),
    Color(0xffdecb9c),
    Color(0xffffffff)
  ];
  Color? color_Select = Color(0xfff6625e);
  void OnchangeBorderColor(Color? colorC) {
    setState(() {
      color_Select = colorC;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: PaddingEdit.p16, left: PaddingEdit.p16),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: colorItem
              .map((e) => Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Container(
                      padding: EdgeInsets.all(11),
                      width: 47.0,
                      height: 47.0,
                      decoration: BoxDecoration(
                        color: ColorManagement.colorTrans,
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: color_Select != e
                              ? ColorManagement.colorTrans
                              : Colors.red,
                          width: 1.0,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => OnchangeBorderColor(e),
                        child: CircleAvatar(
                          backgroundColor: e,
                          radius: 30,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: PaddingEdit.p18),
          child: CircleAvatar(
            backgroundColor: ColorManagement.colorWhite,
            radius: 23,
            child: Icon(Icons.remove, color: ColorManagement.colorPrimary),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: PaddingEdit.p20),
          child: CircleAvatar(
            backgroundColor: ColorManagement.colorWhite,
            radius: 23,
            child: Icon(
              Icons.add,
              color: ColorManagement.colorPrimary,
            ),
          ),
        ),
      ]),
    );
  }
}
