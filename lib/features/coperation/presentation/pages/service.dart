import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:big_koperasi/features/coperation/presentation/widgets/service_desc.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackGeneralHeader(title: 'Corporation Service'),
            Container(
              height: sHeightMinus(context, 70),
              width: sWidthFull(context),
              color: cBackround,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: const [
                    ServiceCard(
                      title: 'Simpanan',
                      description:
                          'Layanan simpanan untuk membantu Anda mengelola keuangan dengan lebih baik. Dapatkan bunga menarik setiap bulan.',
                      icon: Icons.savings,
                    ),
                    ServiceCard(
                      title: 'Pinjaman',
                      description:
                          'Layanan pinjaman dengan bunga rendah dan tenor fleksibel. Bantu Anda memenuhi kebutuhan mendesak.',
                      icon: Icons.monetization_on,
                    ),
                    ServiceCard(
                      title: 'Investasi',
                      description:
                          'Layanan investasi dengan potensi keuntungan tinggi. Rencanakan masa depan keuangan Anda dengan lebih baik.',
                      icon: Icons.trending_up,
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
