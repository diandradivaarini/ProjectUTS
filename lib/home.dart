import 'package:flutter/material.dart';
import 'package:trial_fp/detail.dart';
import 'package:trial_fp/detail_profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> programStudiData = [
    {
      'nama': 'S-1 Agroteknologi',
      'image': 'assets/agroteknologi1.png',
      'profil':
          'Jurusan Agroteknologi, Fakultas Pertanian UPN “Veteran” Jawa Timur berdiri pada tanggal 17 Mei 1968 dan diresmikan oleh Menteri Urusan Veteran dan Demobilisasi Republik Indonesia, dengan Surat Keputusan Pendirian Kajian Program No: 062/Kpts/Mentransvet/68, SK Izin Operasional No. 321/D/T/2008 didukung dengan SK penggabungan Program Studi No. 321/D/T/2008: 321/D/T/2008 didukung dengan surat keputusan penggabungan Program Studi No. 2449/D/T/2009: 2449/D/T/2009.',
      'visi':
          '“Menjadi program studi Agroteknologi unggul dalam penyelenggaraan pendidikan pertanian yang berkualitas berbasis IPTEK dan kewirausahaan guna pengembangan IPTEKS pertanian yang berkarakter belanegara.”',
      'misi':
          '''1. Menyelenggarakan pendidikan pertanian yang berkualitas berbasis ipteks dan kewirausahaan untuk menghasilkan lulusan yang berkarakter dan berdaya saing di dunia kerja
2. Menyelenggarakan dan mengembangkan penelitian yang berorientasi global untuk meningkatkan kesejahteraan masyarakat
3. Menyelenggarakan pengabdian kepada masyarakat melalui pembinaan dan pendampingan berbasis ipteks dan kearifan lokal
4. Mengimplementasikan kerjasama terdapat dengan stakeholder nasional dan internasional
5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial di bidang Agroteknologi
6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu
7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang Agroteknologi baik dalam dan luar negeri''',
      'akreditasi': 'A',
      'ketua': {
        'name': 'Dr. Ir. Bakti Wisnu Widjajani, M.P.',
        'image': 'assets/ketuaagroteknologi1.png'
      },
      'dosen': [
        {
          'name': 'Dr.Ir.Ramdan Hidayat, MS',
          'image': 'assets/dosenagroteknologi1.jpeg'
        },
        {
          'name': 'Dr.Ir.Wanti Mindari, MP',
          'image': 'assets/dosenagroteknologi2.jpg'
        }
      ],
      'website': 'https://agrotek.upnjatim.ac.id/en/',
      'prestasi': [
        {
          'title': "Juara 2 ",
          'image': 'assets/prestasiagrotek1.png',
          'description':
              'Juara 2 Porprov VIII Jatim 2023, KONI Jatim, Tim Bola Tangan Putri Kabupaten Gresik, Medali Perak'
        },
        {
          'title': "Juara 2",
          'image': 'assets/prestasiagrotek2.png',
          'description':
              'Juara 2 AMN CUP, Asrama Mahasiswa Nusantara 2023 Perlombaan Tim'
        },
        {
          'title': "Juara 2",
          'image': 'assets/prestasiagrotek3.png',
          'description':
              'Juara 2 Komite Senior Putri Kelas A tingkat Nasional Lomba Kejuaran Jujitsu Unesa Open (KJUO) XVII 2023'
        }
      ],
    },
    {
      'nama': 'S-1 Agribisnis',
      'image': 'assets/agribisnis1.png',
      'profil':
          'Jurusan Agribisnis memiliki tiga program studi yaitu jenjang S-1 Agribisnis dan jenjang S-2 Magister Agribisnis dan S3 Program Doktor Agribisnis. Program studi S1 Agribisnis mendapatkan akreditasi A untuk yang kedua kalinya dari BANPT-DIKTI yang dikeluarkan pada tanggal 7 Nopember 2015. Program studi S2 Magister Agribisnis mendapatkan akreditasi A untuk yang kedua kalinya dari BANPT-DIKTI yang dikeluarkan pada tanggal 9 April 2019.',
      'visi':
          'Visi Keilmuan Program Studi Agribisnis, Fakultas Pertanian, UPN “Veteran” Jawa Timur adalah terwujudnya Program Studi Agribisnis Fakultas Pertanian UPNVJT yang unggul dalam Agripreneurship Digital, menghasilkan sumberdaya manusia profesional, dan berkarakter bela negara.',
      'misi':
          '''1. Meningkatkan komunikasi selaras yang bernafaskan kekeluargaan
2. Mengoptimalkan kinerja HIMMAGRI
3. Mengembangkan karakter dinamis, sadar IPTEK, serta berintegritas tinggi''',
      'akreditasi': 'Unggul',
      'ketua': {
        'name': 'Prof. Dr. Ir. Syarif Imam Hidayat M.M.',
        'image': 'assets/ketuaagribisnis1.jpg'
      },
      'dosen': [
        {
          'name': 'Dr. Ir. Mubarokah, M.T.',
          'image': 'assets/dosenagribisnis1.jpg'
        },
        {
          'name': 'Prof. Dr. Ir. Teguh Soedarto, M.P.',
          'image': 'assets/dosenagribisnis2.jpg'
        }
      ],
      'website': 'https://agribis.upnjatim.ac.id/',
      'prestasi': [
        {
          'title': "Medali Emas ",
          'image': 'assets/prestasiagribisnis1.png',
          'description':
              'Peraih Medali Emas Ajang Olimpiade Sains Tingkat Nasional ( KSPI) 2023'
        },
        {
           'title': "Medali Emas",
          'image': 'assets/prestasiagribisnis2.png',
          'description':
              'Gold Medal Business Plan Competition yang diadakan oleh Edutainer Nusantara Fair Indonesia'
        },
        {
          'title': "Juara 3",
          'image': 'assets/prestasiagribisnis3.png',
          'description':
              'Juara 3 International Students Virtual Mobility Program (ISVMP) 2022 dengan kategori Best Presentation'
        }
      ],
    },
    {
      'nama': 'S-2 Agroteknologi (Magister Agroteknologi)',
      'image': 'assets/agroteknologi2.png',
      'profil':
          'Program Magister Agroteknologi Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 2017, dengan ijin operasi pendirian Program Studi Magister Agroteknologi nomor 224/KPT/I/2017. Pada tahun 2020 PS Magister Agroteknologi dengan 9 standar penialaian terakreditasi Baik dari BAN-PT Nomor : 7065/SK/BAN-PT/Akred/M/XI/2020.',
      'visi':
          'Menjadi penyelenggara pendidikan yang unggul dalam pengembangan IPTEKS pertanian berkelanjutan dan kewirausahaan, berjejaring global serta berkarakter belanegara” Program Studi Magister Agroteknologi Fakultas Pertanian UPN “Veteran” Jatim bertekad untuk berperan lebih luas dalam memajukan IPTEKS pertanian untuk menghasilkan solusi aplikatif bagi dunia usaha/industri dan pembangunan nasional melalui riset-riset unggul, serta mampu berkompetisi di tingkat global namun tidak lupa dengan akar budaya bangsa Indonesia',
      'misi':
          '''1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara.
2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian
3. Menyelenggarakan pengabdian kepada masyarakat  melalui penerapan TTG berbasis kearifan lokal.
4. Meningkatkan Kerjasama Institusional dalam dan luar negeri melalui Litdimas''',
      'akreditasi': 'baik',
      'ketua': {
        'name': 'Dr. Ir. Bakti Wisnu Widjajani, M.P.',
        'image': 'assets/ketuaagroteknologi1.png'
      },
      'dosen': [
        {'name': 'Dr.Ir.Sukendah, M.Sc', 'image': 'assets/dosenagrotek3.jpg'},
        {'name': 'Dr.Ir.Tri Mujoko, MP', 'image': 'assets/dosenagrotek4.png'}
      ],
      'website': 'https://magrotek.upnjatim.ac.id/',
      'prestasi': [
        {
          'title': "Juara 1 ",
          'image': 'assets/prestasiagroteknologi21.png',
          'description':
              'Prodi Magister Agroteknologi UPNVJT Studi Banding ke Fakultas Pertanian UNRAM'
        },
        {
          'title': "Juara 2",
          'image': 'assets/prestasiagroteknologi22.jpeg',
          'description':
              'PRAKTIKUM LAPANGAN “Pengembangan Pengetahuan dan Keterampilan Pertanian'
        },
        {
          'title': "Juara 3",
          'image': 'assets/prestasiagroteknologi23.jpeg',
          'description':
              'KULIAH TAMU “Inovasi Teknologi Pengembangan Buah Tropika Unggul dalam Rangka Mengisi'
        }
      ],
    },
    {
      'nama': 'S-2 Agribisnis (Magister Agribisnis)',
      'image': 'assets/agribisnis2.png',
      'profil':
          'Program Magister Agribisnis Pascasarjana Fakultas Pertanian Universitas Pembangunan Nasional “Veteran” Jawa Timur berdiri tepat pada tahun 1999, dengan membuka program studi Magister Manajemen Agribisnis, (SK Dirjen Dikti No. 390/Dikti/Kep/1999). Pada Tahun Akademik 2016/2017 jumlah mahasiswa aktif Magister Agribisnis sebanyak 39 orang. Sampai Semester Gasal Tahun 2016/2017 telah meluluskan Magister Agribisnis 490 orang. ',
      'visi':
          'MENJADI PROGRAM STUDI MAGISTER AGRIBISNIS YANG UNGGUL DAN BERKARAKTER BELA NEGARA',
      'misi':
          '''1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agroindustri dan pemasaran sehingga mampu menciptakan/ mengisi peluang kerja dalam bidang agribisnis
2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berdaya guna untuk kesejahteraan masyarakat.
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset di bidang agribisnis dan kearifan lokal.
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.
5. Mengembangkan kualitas sumberdaya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan menajerial di bidang agribisnis.
6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu.
7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis baik dalam dan luar negeri.''',
      'akreditasi': 'Unggul',
      'ketua': {
        'name': 'Prof. Dr. Ir. Syarif Imam Hidayat M.M.',
        'image': 'assets/ketuaagribisnis1.jpg'
      },
      'dosen': [
        {
          'name': 'Prof. Dr. Ir. Akhmad Fauzi, MMT',
          'image': 'assets/dosenagribisnis3.jpeg'
        },
        {
          'name': 'Dr. Ir. Pawana Nur Indah, MSi',
          'image': 'assets/dosenagribisnis4.jpg'
        }
      ],
      'website': 'https://magri.upnjatim.ac.id/',
       'prestasi': [
        {
          'title': "Juara 1 ",
          'image': 'assets/prestasiagribisnis21.jpg',
          'description':
              'Workshop Penulisan dan Finalisasi Self Evaluation Report Akreditasi Internasional FIBAA'
        },
        {
          'title': "Juara 2",
          'image': 'assets/prestasiagribisnis22.jpg',
          'description':
              'SIMPOSIUM DAN BEDAH BUKU'
        },
        {
          'title': "Juara 3",
          'image': 'assets/prestasiagribisnis23.jpg',
          'description':
              'PERSIAPAN VISITASI PROGRAM STUDI MAGISTER AGRIBISNIS'
        }
      ],
    },
    {
      'nama': 'S-3 Agribisnis (Doktor Agribisnis)',
      'image': 'assets/agribisnis3.png',
      'profil':
          ' Program studi doktor Agribisnis UPN “Veteran” Jawa Timur merupakan program studi doktor agribisnis pertama dan satu-satunya di Surabaya. Keberadaan Program Doktor di Fakultas Pertanian UPN “Veteran” Jawa Timur memiliki perjalanan yang panjang. Program Doktor Agribisnis merupakan satu – satunya program doktor yang dimiliki oleh UPN “Veteran” Jawa timur. Program doktor agribisnis dimulai dari pengusulan tahun 2019 hingga akhirnya resmi berdiri di tahun 2020.',
      'visi':
          'Pengembangan Integrasi Smart FarmingBerkelanjutan yang Berwawasan Global untuk Kesejahteraan Masyarakat',
      'misi':
          '''1. Menyelenggarakan pendidikan berkarakter bela negara yang berorientasi pada pengembangan agribisnis yang berbasis sumberdaya dan kearifan lokal sehingga mampu menciptakan/ inovasi kasanah keilmuan dalam bidang Pertanian khususnya agribisnis.
2. Meningkatkan budaya riset dalam pengembangan bidang agribisnis yang berbasis sumberdaya dan kearifan lokal yang berdaya guna untuk penguatan  kesejahteraan masyarakat di tingkat nasional maupun internasional.
3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset berskala nasional di bidang agribisnis dan memanfaatkan  kearifan lokal.
4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabiitas pengelolaan anggaran.
5. Mengembangkan kualitas sumberdaya manusia unggul dalam pengetahuan,  sikap dan tata nilai, pendalaman /penguasaan pengetahuan dan menajerial di bidang agribisnis.
6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu dalam upaya untuk penyelenggaraan Pendidikan S3 / Doktor Agribisnis.
7. Menyelenggarakan kerjasama institusional dengan stakeholder baik di bidang agribisnis di tingkat nasional maupun internasional.''',
      'akreditasi': 'Baik',
      'ketua': {
        'name': 'Prof. Dr. Ir. Syarif Imam Hidayat M.M',
        'image': 'assets/ketuaagribisnis1.jpg'
      },
      'dosen': [
        {
          'name': 'Prof. Dr. Syamsul Huda S.E., M.T.',
          'image': 'assets/dosenagribisnis5.png'
        },
        {
          'name': 'Dr. Ir. Hamidah Hendrarini, M.Si.',
          'image': 'assets/dosenagribisnis6.jpg'
        }
      ],
      'website': 'https://dokgri.upnjatim.ac.id/',
        'prestasi': [
        {
          'title': "Juara 1 ",
          'image': 'assets/prestasiagribisnis31.png',
          'description':
              'Lokakarya Doktor agribisnis'
        },
        {
          'title': "Juara 2",
          'image': 'assets/prestasiagribisnis32.png',
          'description':
              'Studi Banding Assasement dan Konversi Program MBKM'
        },
        {
          'title': "Juara 3",
          'image': 'assets/prestasiagribisnis33.png',
          'description':
              'Workshop Pengembangan Kurikulum Doktor Agribisnis'
        }
      ],
    },
  ];

  final List<Map<String, String>> teamMembers = [
    {
      'name': 'Diandra Diva Arini',
      'ttl': 'Mataram, 11 Oktober 2003',
      'address': 'Asrama Mahasiswa Nusantara Surabaya',
      'phone': '+6287865928140',
      'email': '22082010052@studentupnjatim.ac.id',
      'github': 'https://github.com/diandradivaarini',
      'education':
          'UPN "Veteran Jawa Timur 2022 - present" , "SMAN 5 Mataram 2020-2022"',
      'awards':
          'Third Place UI UX Design by Indoneris IT Competition AMIKOM Purwekorto',
      'image': 'assets/diva.jpg',
    },
    {
      'name': 'Fidyah Salsabila Putri Sillehu',
      'ttl': 'Tempat, Tanggal Lahir Anggota 2',
      'address': 'Alamat Anggota 2',
      'phone': '087654321',
      'email': 'email2@example.com',
      'github': 'URL Profil Github Anggota 2',
      'education': 'Riwayat Pendidikan Anggota 2',
      'awards': 'Penghargaan Anggota 2 (jika ada)',
      'image': 'assets/profile2.jpg',
    },
  ];

 _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendEmail(String email) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Subject&body=Body',
    );
    var emailLaunch = params.toString();
    if (await canLaunch(emailLaunch)) {
      await launch(emailLaunch);
    } else {
      throw 'Could not launch $email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 193, 238, 193),  // Aesthetic and eye-catching shade of green
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fakultaspertanian.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
         Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _launchURL('https://faperta.upnjatim.ac.id/');
                  },
                  icon: Icon(Icons.public),
                  label: Text('Visit Website'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _sendEmail('info@faperta.upnjatim.ac.id');
                  },
                  icon: Icon(Icons.email),
                  label: Text('Email Us'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, -120 / 2.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/profileupn.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Fakultas Pertanian saat ini memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
                      style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: programStudiData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        programStudi: programStudiData[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Color.fromARGB(255, 61, 143, 61), offset: Offset(0, 5)),
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 0),
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        programStudiData[index]['image']!,
                        height: 400,
                      ),
                      Text(
                        programStudiData[index]['nama']!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                ],  
              ),
            ),
          );
        },
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Profil Tim',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: teamMembers.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 0.8),
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailProfileScreen(
                        profile: teamMembers[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(color: Color.fromARGB(255, 61, 143, 61), offset: Offset(0, 5)),
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 0),
                          blurRadius: 4)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.asset(
                              '${teamMembers[index]['image']}',
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                              fit: BoxFit
                                  .cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          teamMembers[index]['name']!,
                          style: const TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

