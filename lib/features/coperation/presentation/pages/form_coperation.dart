import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormuCoperation extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const BackGeneralHeader(title: 'Form Sevices'),
            Container(
              height: sHeightMinus(context, 70),
              width: sWidthFull(context),
              color: cBackround,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FormBuilder(
                  key: _fbKey,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'name',
                        decoration: InputDecoration(labelText: 'Nama'),
                      ),
                      FormBuilderTextField(
                        name: 'amount',
                        decoration:
                            InputDecoration(labelText: 'Jumlah Pinjaman'),
                      ),
                      FormBuilderDropdown(
                        name: 'service',
                        decoration: InputDecoration(labelText: 'Jenis Layanan'),
                        items: const [
                          DropdownMenuItem(
                              value: 'pinjaman', child: Text('Pinjaman')),
                          DropdownMenuItem(
                              value: 'simpanan', child: Text('Simpanan')),
                          DropdownMenuItem(
                              value: 'investasi', child: Text('Investasi')),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          if (_fbKey.currentState?.saveAndValidate() ?? false) {
                            print(_fbKey.currentState?.value);
                          }
                        },
                        child: Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
