import 'package:flutter/material.dart';
import 'package:flutter_application/pages/add_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Danh sach phong tro")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DataTable(
              columns: const [
                DataColumn(
                  label: Text('STT'),
                ),
                DataColumn(
                  label: Text('Ma phong tro'),
                ),
                DataColumn(
                  label: Text('Ten nguoi thue tro'),
                ),
                DataColumn(
                  label: Text('So dien thoai'),
                ),
                DataColumn(
                  label: Text('Ngay bat dau thue'),
                ),
                DataColumn(
                  label: Text('Hinh thuc thanh toan'),
                ),
                DataColumn(
                  label: Text('Ghi chu'),
                ),
              ], 

              rows: const [
              DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('PT-001')),
                  DataCell(Text('Nguyen Van A')),
                  DataCell(Text('0123456789')),
                  DataCell(Text('10-10-2020')),
                  DataCell(Text('Theo thang')),
                  DataCell(Text('Phong co dieu hoa')),
                ])
              ]
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddPage(),
                  ),
                );
              },
              child: const Text('Tao moi'),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: const Text('Xoa'),
            ),
          ],
        )
      )
    );  
  } 
}