import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  XFile? _image;
  final ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Framer')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Choose an image from your gallery'),
            _buildPhotoArea(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      getImage(ImageSource.camera);
                    },
                    child: const Text('Camera'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      getImage(ImageSource.gallery);
                    },
                    child: const Text('Gallery'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoArea() {
    return Column(
      children: [
        _image != null
            ? SizedBox(
                width: 300,
                height: 300,
                child: Image.file(File(_image!.path)),
              )
            : Container(
                width: 300,
                height: 300,
                color: Colors.grey,
              ),
        const SizedBox(height: 20),
        _buildFilterList(),
      ],
    );
  }

  Widget _buildFilterList() {
    return Container(
      color: Colors.grey,
      height: 80,
      child: _image != null
          ? ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 80,
                color: Colors.black,
                child: const Text('hi'),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: 10,
            )
          : Container(),
    );
  }

  Future getImage(ImageSource imageSource) async {
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path);
      });
    }
  }
}
