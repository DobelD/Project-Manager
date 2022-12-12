import 'package:dobeld_project/model/project_model.dart';
import 'package:get/get.dart';

class ProjectController extends GetxController {
  RxBool isShimmer = true.obs;

  List<Project> project = [
    Project(
        namaProject: 'Monitoring Gardu Distribusi',
        platform: 'Android',
        dedline: '20/10/2022',
        task: '4',
        persentase: 70),
    Project(
        namaProject: 'Gaji Sehat',
        platform: 'Android & Ios',
        dedline: '10/10/2022',
        task: '10',
        persentase: 30),
    Project(
        namaProject: 'Siakad SMK',
        platform: 'Website',
        dedline: '20/10/2022',
        task: '7',
        persentase: 50),
    Project(
        namaProject: 'Kalkulator Falaq',
        platform: 'Android & Ios',
        dedline: '20/10/2022',
        task: '15',
        persentase: 10),
    Project(
        namaProject: 'Siakad SMA NU',
        platform: 'Website',
        dedline: '20/10/2022',
        task: '20',
        persentase: 100),
    Project(
        namaProject: 'Kasir Indomaret',
        platform: 'Desktop',
        dedline: '20/10/2022',
        task: '26',
        persentase: 40),
    Project(
        namaProject: 'Scan Barcode',
        platform: 'Android',
        dedline: '20/10/2022',
        task: '17',
        persentase: 100),
    Project(
        namaProject: 'Landing Page',
        platform: 'Weordpress',
        dedline: '20/10/2022',
        task: '10',
        persentase: 100),
    Project(
        namaProject: 'Sales Page',
        platform: 'Wordpress',
        dedline: '20/10/2022',
        task: '401',
        persentase: 25),
    Project(
        namaProject: 'E Commerce',
        platform: 'Android & Ios',
        dedline: '20/10/2022',
        task: '14',
        persentase: 80),
  ];
}
