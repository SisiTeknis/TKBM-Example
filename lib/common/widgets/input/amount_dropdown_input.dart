import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/fonts.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AmountDropdownInput extends StatefulWidget {
  final String hintText;
  final TextEditingController text;
  final TextEditingController dropdown;
  final VoidCallback action;
  const AmountDropdownInput({
    Key? key,
    required this.action,
    required this.hintText,
    required this.text,
    required this.dropdown,
  }) : super(key: key);

  @override
  State<AmountDropdownInput> createState() => _AmountDropdownInputState();
}

class _AmountDropdownInputState extends State<AmountDropdownInput> {
  List<String> list = <String>['Point', 'BNB'];
  String dropdownValue = 'Point';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Text(
            widget.hintText,
            style: body1(cBlack),
          ),
        ),
        Container(
          width: sWidthDynamic(context, 1) - 40,
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: cWhite,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 2, color: cPremier),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: sWidthDynamic(context, 0.58),
                child: TextField(
                  style: TextStyle(
                    color: cBlack,
                  ),
                  controller: widget.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*'))
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: sWidthDynamic(context, 0.25),
                child: DropdownButton<String>(
                  underline: Container(),
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  elevation: 16,
                  style: h3(cPremier),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                      widget.dropdown.text = value;
                      widget.action();
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
