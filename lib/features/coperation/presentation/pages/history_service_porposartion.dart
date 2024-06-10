import 'package:big_koperasi/common/themes/colors.dart';
import 'package:big_koperasi/common/themes/size.dart';
import 'package:big_koperasi/common/widgets/header/back_general_haader.dart';
import 'package:flutter/material.dart';

class HistoryServicePorporation extends StatefulWidget {
  @override
  State<HistoryServicePorporation> createState() =>
      _HistoryServicePorporationState();
}

class _HistoryServicePorporationState extends State<HistoryServicePorporation> {
  @override
  Widget build(BuildContext context) {
    // Contoh data layanan yang diajukan
    final services = [
      ServiceHistory(
        title: 'Pinjaman Pendidikan',
        description: 'Pengajuan pinjaman untuk biaya pendidikan anak.',
        date: '2024-06-01',
        status: 'Disetujui',
      ),
      ServiceHistory(
        title: 'Simpanan Berjangka',
        description: 'Pembukaan simpanan berjangka selama 1 tahun.',
        date: '2024-05-15',
        status: 'Menunggu Persetujuan',
      ),
      ServiceHistory(
        title: 'Investasi Saham',
        description: 'Investasi pada saham koperasi.',
        date: '2024-04-10',
        status: 'Ditolak',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BackGeneralHeader(title: 'History Coperation'),
            Container(
              height: sHeightMinus(context, 70),
              width: sWidthFull(context),
              color: cBackround,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return ServiceHistoryCard(service: services[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceHistory {
  final String title;
  final String description;
  final String date;
  final String status;

  ServiceHistory({
    required this.title,
    required this.description,
    required this.date,
    required this.status,
  });
}

class ServiceHistoryCard extends StatelessWidget {
  final ServiceHistory service;

  const ServiceHistoryCard({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color getStatusColor(String status) {
      switch (status) {
        case 'Disetujui':
          return Colors.green;
        case 'Menunggu Persetujuan':
          return Colors.orange;
        case 'Ditolak':
          return Colors.red;
        default:
          return Colors.grey;
      }
    }

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.description,
                  size: 40,
                  color: Colors.blueAccent,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        service.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Tanggal: ${service.date}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: getStatusColor(service.status).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    service.status,
                    style: TextStyle(
                      color: getStatusColor(service.status),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
