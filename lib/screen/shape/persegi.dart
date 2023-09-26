import 'package:flutter/material.dart';

class PersegiScreen extends StatefulWidget {
  const PersegiScreen({super.key});

  @override
  State<PersegiScreen> createState() => _PersegiScreenState();
}

class _PersegiScreenState extends State<PersegiScreen> {
  double luas = 0;
  TextEditingController sisi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Luas : $luas',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xff222C87),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                controller: sisi,
                decoration: InputDecoration(
                  hintText: 'Masukkan Sisi',
                  fillColor: Colors.brown[100],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black12,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  luas = double.parse(sisi.text) * double.parse(sisi.text);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff222C87),
                fixedSize: const Size(340, 60),
              ),
              child: const Text(
                'Hitung',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
