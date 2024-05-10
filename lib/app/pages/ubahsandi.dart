import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UbahSandiPage extends StatelessWidget {
  const UbahSandiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue, // Background color biru keseluruhan halaman
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10), // Tambahkan spasi atas
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10), // Tambahkan margin top dan bottom
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/kunci.png'),
                      ),
                    ),
                    const SizedBox(
                        height: 10), // Tambahkan spasi antara gambar dan teks
                    const Text(
                      'Ubah Kata Sandi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Buat kata sandi baru anda',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                  height: 15), // Tambahkan spasi antara gambar dan card
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20), // Jarak dari atas
                      const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ), // Icon untuk Masukkan Sandi
                          SizedBox(width: 10),
                          Text(
                            'Masukkan sandi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Masukkan kata sandi lama anda',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ), // Atur padding input box
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.lock,
                              color: Colors.grey), // Icon untuk Buat Kata Sandi
                          SizedBox(width: 10),
                          Text(
                            'Buat kata sandi',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'buat kata sandi baru anda',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ), // Atur padding input box
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ), // Icon untuk Konfirmasi Kata Sandi
                          SizedBox(width: 10),
                          Text(
                            'Konfirmasi kata sandi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Konfirmasi sandi baru anda',
                          hintStyle: TextStyle(color: Colors.grey),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ), // Atur padding input box
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Simpan action
                          },
                          child: const Text(
                            'Ubah Kata Sandi',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: UbahSandiPage(),
  ));
}
