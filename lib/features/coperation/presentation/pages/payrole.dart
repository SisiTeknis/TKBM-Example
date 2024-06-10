import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:flutter/material.dart';

class PayroleScreen extends StatefulWidget {
  @override
  State<PayroleScreen> createState() => _PayroleScreenState();
}

class _PayroleScreenState extends State<PayroleScreen> {
  @override
  Widget build(BuildContext context) {
    // Contoh data gaji bulanan, potongan, dan bonus
    final gajiBulanan = 5000000;
    final potongan = 500000;
    final bonus = 1000000;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackGeneralHeader(title: 'Payrole'),
            Container(
              height: sHeightMinus(context, 70),
              width: sWidthFull(context),
              color: cBackround,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    SalarySummaryCard(
                      title: 'Gaji Bulanan',
                      amount: gajiBulanan,
                      icon: Icons.attach_money,
                      color: Colors.green,
                    ),
                    SalarySummaryCard(
                      title: 'Potongan',
                      amount: potongan,
                      icon: Icons.remove_circle_outline,
                      color: Colors.red,
                    ),
                    SalarySummaryCard(
                      title: 'Bonus',
                      amount: bonus,
                      icon: Icons.card_giftcard,
                      color: Colors.blue,
                    ),
                    TotalSalaryCard(
                      total: gajiBulanan - potongan + bonus,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalarySummaryCard extends StatelessWidget {
  final String title;
  final int amount;
  final IconData icon;
  final Color color;

  const SalarySummaryCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(16),
              child: Icon(
                icon,
                size: 40,
                color: color,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp ${amount.toString()}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalSalaryCard extends StatelessWidget {
  final int total;

  const TotalSalaryCard({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.account_balance_wallet,
                size: 40,
                color: Colors.purple,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Gaji',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp ${total.toString()}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
