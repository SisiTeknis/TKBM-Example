import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:flutter/material.dart';

class PaylaterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Contoh data limit kredit, tagihan saat ini, dan histori transaksi
    final kreditLimit = 10000000;
    final tagihanSaatIni = 2000000;
    final historiTransaksi = [
      TransactionHistory(
        title: 'Pembelian Barang A',
        date: '2024-06-01',
        amount: 500000,
      ),
      TransactionHistory(
        title: 'Pembelian Barang B',
        date: '2024-05-20',
        amount: 1500000,
      ),
      TransactionHistory(
        title: 'Pembayaran Cicilan',
        date: '2024-05-10',
        amount: 200000,
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const BackGeneralHeader(title: 'PayLatter'),
            Container(
              height: sHeightMinus(context, 70),
              width: sWidthFull(context),
              color: cBackround,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    CreditLimitCard(
                      limit: kreditLimit,
                    ),
                    CurrentBillCard(
                      currentBill: tagihanSaatIni,
                    ),
                    TransactionHistoryList(
                      transactions: historiTransaksi,
                    ),
                    PaymentForm(),
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

class CreditLimitCard extends StatelessWidget {
  final int limit;

  const CreditLimitCard({Key? key, required this.limit}) : super(key: key);

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
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.credit_card,
                size: 40,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limit Kredit',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp ${limit.toString()}',
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

class CurrentBillCard extends StatelessWidget {
  final int currentBill;

  const CurrentBillCard({Key? key, required this.currentBill})
      : super(key: key);

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
                color: Colors.orange.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.receipt,
                size: 40,
                color: Colors.orange,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tagihan Saat Ini',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Rp ${currentBill.toString()}',
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

class TransactionHistory {
  final String title;
  final String date;
  final int amount;

  TransactionHistory({
    required this.title,
    required this.date,
    required this.amount,
  });
}

class TransactionHistoryList extends StatelessWidget {
  final List<TransactionHistory> transactions;

  const TransactionHistoryList({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Histori Transaksi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final transaction = transactions[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 5),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                  size: 40,
                ),
                title: Text(
                  transaction.title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Rp ${transaction.amount.toString()} - ${transaction.date}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();

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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Formulir Pembayaran Tagihan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Jumlah Pembayaran',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Masukkan jumlah pembayaran';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Proses pembayaran
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Pembayaran Berhasil')),
                    );
                  }
                },
                child: Text('Bayar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: PaylaterPage(),
  ));
}
