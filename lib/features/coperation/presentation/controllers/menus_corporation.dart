import 'package:big_koperasi/config/routes.dart';
import 'package:big_koperasi/features/coperation/presentation/pages/pay_latter.dart';
import 'package:flutter/material.dart';

List menusCoperation(BuildContext context) => [
      {
        'icon': Icons.home_repair_service_outlined,
        'name': 'List Coperation Service',
        'action': () => gotoListCoperationService(context),
      },
      {
        'icon': Icons.format_align_left_sharp,
        'name': 'Form Services',
        'action': () => gotoFormService(context)
      },
      {
        'icon': Icons.history,
        'name': 'History Service Coperation',
        'action': () => gotoHistoryServicePorporation(context)
      },
      {
        'icon': Icons.wallet_rounded,
        'name': 'Payrole',
        'action': () => gotoPayrole(context),
      },
      {
        'icon': Icons.local_atm_rounded,
        'name': 'Paylater',
        'action': () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => PaylaterPage())),
      }
    ];
