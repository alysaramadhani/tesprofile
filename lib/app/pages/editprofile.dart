import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
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
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/user.png'),
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
                      const SizedBox(height: 10),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        initialValue: 'laporkasat123@gmail.com',
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          hintText: 'Masukkan email Anda',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        initialValue: 'Nama lengkap',
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          hintText: 'Masukkan username Anda',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ), // Atur padding input box
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Alamat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        initialValue: 'Jawa Tengah Kudus',
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          hintText: 'Masukkan alamat Anda',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 10,
                          ), // Atur padding input box
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'No. Hp',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        initialValue: '+62 85589009876',
                        style: const TextStyle(color: Colors.grey),
                        decoration: const InputDecoration(
                          hintText: 'Masukkan nomor HP Anda',
                          border: OutlineInputBorder(),
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
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Simpan action
                          },
                          child: const Text(
                            'Simpan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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
  runApp(MaterialApp(
    home: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // Jika layar lebar lebih besar atau sama dengan 600 (tablet atau desktop)
          return const EditProfilePageDesktop();
        } else {
          // Jika layar lebih kecil dari 600 (hp)
          return const EditProfilePage();
        }
      },
    ),
  ));
}

class EditProfilePageDesktop extends StatelessWidget {
  const EditProfilePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: const Center(
        child: SizedBox(
          width: 600, // Lebar konten desktop
          child: EditProfilePage(), // Tampilkan halaman edit profil
        ),
      ),
    );
  }
}
