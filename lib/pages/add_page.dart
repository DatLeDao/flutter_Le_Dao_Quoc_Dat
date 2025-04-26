import 'package:flutter/material.dart';
import 'home_page.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final TextEditingController _nameController = TextEditingController();git remote set-url origin git://new.url.here
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _paymentMethodController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tao thong tin the tro")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Ten nguoi thue tro'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'So dien thoai'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _startDateController,
              decoration: const InputDecoration(labelText: 'Ngay bat dau thue'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _paymentMethodController,
              decoration:
                  const InputDecoration(labelText: 'Hinh thuc thanh toan'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _noteController,
              decoration: const InputDecoration(labelText: 'Ghi chú'),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Tao moi'),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text('Huy'),
            ),
          ],
        ),
      ),
    );
  }
}