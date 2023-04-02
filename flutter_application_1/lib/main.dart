import 'package:flutter/material.dart';
// import 'package:flutter_application_1/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imoets Company',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 240, 240, 240),
      ),
      home: const SplashScreen(),
    );
  }
}

Future<dynamic> CustomAlert(BuildContext context, String pesan) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Welcome",
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            pesan,
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Next"),
            ),
          ],
        );
      });
}

class firstPaging extends StatefulWidget {
  const firstPaging({Key? key}) : super(key: key);

  @override
  State<firstPaging> createState() => _firstPagingState();
}

class _firstPagingState extends State<firstPaging> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: lebar,
        height: tinggi,
        color: Colors.blue.shade50,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 150,
          ),
          child: Center(
            child: ListView(
              children: [
                const Text(
                  "Imoets Company",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                const Text(
                  "ATK STORE|| 048 || Hu,Natasya Prajna Devi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),

                // const SizedBox( height:0),

                Image.asset(
                  'assets/atk.png',
                  height: 300,
                  width: 1000,
                ),

                Container(
                  // width: 10,
                  height: 10,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 40,
                      margin: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Konfirmasi'),
                                content: Text(
                                    'Ingin Lanjut di Imoets Company?'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('Batal'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Lanjut!'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              HalamanHasil(
                                            alamat: '',
                                            namaAwal: '',
                                            namaBelakang: '',
                                            nomor: '',
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'Press Here',
                          style: TextStyle(
                            color: Colors.yellow.shade50,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 255, 253, 253),
                          backgroundColor:
                              const Color.fromARGB(255, 176, 147, 225),
                          shadowColor: const Color.fromARGB(255, 94, 91, 91),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// LOGIN PAGE
class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  int _selectedValue = 1;

  bool? check2 = false;
  bool switchOn = false;

  // String namaDepanController = "";

  // final TextEditingController namaDepanController = TextEditingController();
  final TextEditingController namaAwalController = TextEditingController();
  final TextEditingController namaBelakangController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();

  @override
  void dispose() {
    namaAwalController.dispose();
    namaBelakangController.dispose();
    alamatController.dispose();
    nomorController.dispose();
    super.dispose();
  }

//   void initState() {
//     super.initState();
//     // namaDepan.addListener(_printLatestValue);
// }
//   void _printLatestValue() {
//     print('Nama Depan      : ${namaDepan.text}');
//     print('Nama Belakang   : ${namaBelakang.text}');
//     print('Alamat          : ${alamat.text}');
//     print('Nomor Handphone : ${nomor.text}');
//   }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
        brightness: switchOn ? Brightness.dark : Brightness.light,
      ),
      home: Scaffold(
        // theme: ThemeData(brightness: switchOn ? Brightness.dark : Brightness.light),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepOrange.shade50,
          title: const Text(
            "Login Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Color.fromARGB(255, 169, 167, 167),
            ),
          ),
        ),
        body: Container(
          //Media Query
          width: lebar,
          height: tinggi,
          // color: Color.fromARGB(255, 255, 244, 248),

          child: ListView(
            padding: const EdgeInsets.all(40.0),
            children: [
              Row(
                  // theme: ThemeData(brightness: switchOn ? Brightness.dark : Brightness.light),
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("DarkMode"),
                    CupertinoSwitch(
                        value: switchOn,
                        activeColor: Colors.black,
                        onChanged: (bool value) {
                          setState(() {
                            switchOn = value;
                          });
                        }),
                  ]),
              Container(
                width: 200,
                child: TextField(
                  controller: namaAwalController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nama Depan',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                child: TextField(
                  controller: namaBelakangController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nama Belakang",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                child: TextField(
                  controller: alamatController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Alamat",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 200,
                child: TextField(
                  controller: nomorController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Nomor Handphone",
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Checkbox(
                  value: check2,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
                    });
                  },
                ),
                title: const Text('Sudah Benar?'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HalamanHasil(
                                    namaAwal: namaAwalController.text,
                                    namaBelakang: namaBelakangController.text,
                                    alamat: alamatController.text,
                                    nomor: nomorController.text)));
                      },
                      child: const Text(
                        'Submit Here',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(
                            255, 164, 214, 255), // background color
                        foregroundColor: Colors.white, // foreground color
                        elevation: 3, // button shadow
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // button border radius
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HalamanHasil extends StatelessWidget {
  final String namaAwal;
  final String namaBelakang;
  final String alamat;
  final String nomor;
//Belum pakai ini, masih Project selanjutnya
  bool isLoggedIn = false;

  HalamanHasil({
    required this.namaAwal,
    required this.namaBelakang,
    required this.alamat,
    required this.nomor,
  });
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      //Drawer

      drawer: Drawer(
        backgroundColor:
            const Color.fromARGB(255, 238, 247, 255), // background color
        // surfaceTintColor: Colors.black,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Nama : $namaAwal $namaBelakang'),
                accountEmail: Text('Alamat : $alamat'),
                currentAccountPicture: const CircleAvatar(
                    // backgroundImage: AssetImage('assets/user.png')
                    )),

            //RENCANA > PENAMBAHAN PROFILE BUAT NGELIAT KESELURUHAN
            ListTile(
              leading: const Icon(Icons.login),
              title: const Text('Login'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),

      //AppBarr
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepOrange.shade50,
        title: const Text(
          "Imoets Store",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),

      // BODY
      body: Center(
        child: ListView(
          children: [
            //TAMPILAN PALING ATAS
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //MediaQuery
                  width: lebar,

                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2021/11/12/12/42/bookshop-6788892_960_720.png',
                    width: 500,
                    height: 250,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 248, 221, 221),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ],
            ),

            // ROW TAMPILAN TENGAH
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 121,
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2014/04/03/10/50/book-311437_960_720.png',
                  ),
                ),
                const SizedBox(height: 20),
                const Text('  Buku Tulis '),
                Container(
                  width: 60,
                  height: 121,
                  child: Image.network(
                    'https://png.pngtree.com/png-clipart/20210912/original/pngtree-pencil-case-cartoon-cute-education-sticker-png-image_6721099.jpg',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(' Kotak Pensil '),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 350,
              height: 10,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 221, 221),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            const Text(
              '(!) Saat Ini barang yang disediakan di catalog hanya sebagian kecil dari produk, dan akan di proses seiiring berkembangnya aplikasi ini',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 40,
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RakBuku()));
                    },
                    child: Text(
                      'See More',
                      style: TextStyle(
                          color: Colors.yellow.shade50,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 255, 253, 253),
                      backgroundColor: const Color.fromARGB(255, 176, 147, 225),
                      shadowColor: const Color.fromARGB(255, 94, 91, 91),
                    ),
                  ),
                ),
              ],
            ),

            //  Image.network(
            //         'https://cdn.pixabay.com/photo/2014/04/03/10/50/book-311437_960_720.png',
            //       width: 30,
            //       height: 21,
            //       ),
            // Text('Image 1 '),
          ],
        ),
      ),
    );
  }
}

class RakBuku extends StatefulWidget {
  const RakBuku({super.key});

  @override
  State<RakBuku> createState() => _RakBukuState();
}

class _RakBukuState extends State<RakBuku> {
  @override
  bool selected = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepOrange.shade50,
        title: const Text(
          "BookShelf",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30,
              color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: AnimatedContainer(
                width: selected ? 100.0 : 100.00,
                height: selected ? 100.0 : 100.0,
                // child: Image.network('https://www.shutterstock.com/image-vector/yummy-smile-emoji-tongue-lick-260nw-2122476482.jpg'),
                color: selected
                    ? Color.fromARGB(255, 255, 43, 43)
                    : Color.fromARGB(255, 194, 251, 211),
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,

                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,

                child: const Hero(
                  tag: "hero",
                  child: Text(
                    "TS Buku",
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 10,
            height: 1,
            color: Color.fromARGB(255, 255, 153, 98),
            child: const Center(
              child: Text(
                "Penghapus",
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 255, 126),
            child: const Center(
              child: Text(
                "Rautan",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 153, 255, 139),
            child: const Center(
              child: Text(
                "Pensil",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 156, 247, 255),
            child: const Center(
              child: Text(
                "Pulpen",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 156, 192, 255),
            child: const Center(
              child: Text(
                "Tip-ex Cair",
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 161, 156, 255),
            child: const Center(
              child: Text(
                "Spidol Papan",
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 222, 156, 255),
            child: const Center(
              child: Text(
                "Spidol warna",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 156, 253),
            child: const Center(
              child: Text(
                "Pensil Warna",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 156, 209),
            child: const Center(
              child: Text(
                "Tip-ex Kertas",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 156, 206),
            child: const Center(
              child: Text(
                "BK Ktk Besar",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 156, 156),
            child: const Center(
              child: Text(
                "BK ktk Kecil",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 219, 219),
            child: const Center(
              child: Text(
                "BK Tulis Indah",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 215, 156),
            child: const Center(
              child: Text(
                "Tas Selempang",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 156, 247, 255),
            child: const Center(
              child: Text(
                "Tas Ransel",
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
