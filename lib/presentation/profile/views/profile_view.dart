import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icaleg/infrastructure/theme/theme_utils.dart';
import 'package:icaleg/presentation/profile/controllers/profile.controller.dart';

Widget profileCaleg() {
  ProfileController controller = Get.put(ProfileController());
  return ListView(
    padding: const EdgeInsets.only(top: 140),
    children: [
      Column(children: [
        Text(
          controller.authController.userModel.name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: colorTextPrimary,
          ),
        ),
        Text(
          controller.authController.userModel.ketStatus.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorTextPrimary,
          ),
        ),
      ]),
      listviewTitle(
        title: 'Partai Politik',
        subTitle: 'Partai Selalu Damai (PSD)',
      ),
      listviewTitle(
        title: 'Daerah Pemilih',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'Jenis Kelamin',
        subTitle: controller.authController.userModel.gender,
      ),
      listviewTitle(
        title: 'Tempat Tanggal Lahir',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'Email',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'No. Handphone',
        subTitle: controller.authController.userModel.phone,
      ),
      const Divider(thickness: 2),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Edit Profil')),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
        child: ElevatedButton(
            onPressed: () => controller.onTapLogout(),
            style: ElevatedButton.styleFrom(backgroundColor: colorRad),
            child: const Text('Keluar')),
      ),
      const SizedBox(height: 100),
    ],
  );
}

Widget profileSaksi() {
  return const SizedBox();
}

Widget profileKoor() {
  ProfileController controller = Get.put(ProfileController());
  return ListView(
    padding: const EdgeInsets.only(top: 140),
    children: [
      Column(
        children: [
          Text(
            controller.authController.userModel.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: colorTextPrimary,
            ),
          ),
          Text(
            controller.authController.userModel.ketStatus.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorTextPrimary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '658',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: colorTextPrimary,
            ),
          ),
          const Text('Total Anggota')
        ],
      ),
      const SizedBox(height: 20),
      Container(
        padding:
            EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 8),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(width: 2, color: colorGray))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tim Suskes',
              style: TextStyle(color: colorTextPrimary),
            ),
            Text(
              'Jokowi 3 Periode',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: colorTextPrimary,
              ),
            ),
          ],
        ),
      ),
      listviewTitle(
        title: 'Partai Politik',
        subTitle: 'Partai Selalu Damai (PSD)',
      ),
      listviewTitle(
        title: 'Daerah Pemilih',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'NIK',
        subTitle: controller.authController.userModel.nik,
      ),
      listviewTitle(
        title: 'Jenis Kelamin',
        subTitle: controller.authController.userModel.gender,
      ),
      listviewTitle(
        title: 'Tempat Tanggal Lahir',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'Email',
        subTitle: 'tes',
      ),
      listviewTitle(
        title: 'No. Handphone',
        subTitle: controller.authController.userModel.phone,
      ),
      const Divider(thickness: 2),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
        child:
            ElevatedButton(onPressed: () {}, child: const Text('Edit Profil')),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 10),
        child: ElevatedButton(
            onPressed: () => controller.onTapLogout(),
            style: ElevatedButton.styleFrom(backgroundColor: colorRad),
            child: const Text('Keluar')),
      ),
      const SizedBox(height: 100),
    ],
  );
}

Container listviewTitle({required String title, required String subTitle}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: marginHorizontal, vertical: 8),
    decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 2, color: colorGray))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: colorTextPrimary),
        ),
        Text(
          subTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
