import 'package:dobeld_project/pages/add/add_project.dart';
import 'package:dobeld_project/pages/add/add_task.dart';
import 'package:dobeld_project/pages/auth/forgot.dart';
import 'package:dobeld_project/pages/auth/login.dart';
import 'package:dobeld_project/pages/auth/register.dart';
import 'package:dobeld_project/pages/splash/splash_screen.dart';
import 'package:dobeld_project/pages/splash/welcome.dart';
import 'package:dobeld_project/pages/view/announcement.dart';
import 'package:dobeld_project/pages/view/client.dart';
import 'package:dobeld_project/pages/view/detail_project.dart';
import 'package:dobeld_project/pages/view/home.dart';
import 'package:dobeld_project/pages/view/profile.dart';
import 'package:dobeld_project/pages/view/project.dart';
import 'package:dobeld_project/pages/view/team.dart';
import 'package:dobeld_project/pages/widget/home/search.dart';
import 'package:dobeld_project/pages/widget/profile/chat.dart';
import 'package:dobeld_project/routes/navbar.dart';
import 'package:get/get.dart';

class AppPage {
  static String splash = '/';
  static String welcome = '/welcome';
  static String login = '/login';
  static String register = '/register';
  static String forgot = '/forgot';
  static String navbar = '/navbar';
  static String home = '/home';
  static String team = '/team';
  static String client = '/client';
  static String profile = '/profile';
  static String addproject = '/addproject';
  static String addtask = '/addtask';
  static String search = '/search';
  static String project = '/project';
  static String detailProject = '/detailproject';
  static String announcement = '/announcement';
  static String chat = '/chat';

  static getSplash() => splash;
  static getWelcome() => welcome;
  static getLogin() => login;
  static getRegister() => register;
  static getForgot() => forgot;
  static getNavbar() => navbar;
  static getHome() => home;
  static getTeam() => team;
  static getClient() => client;
  static getProfile() => profile;
  static getAddproject() => addproject;
  static getAddtask() => addtask;
  static getSearch() => search;
  static getProject() => project;
  static getDetailProject() => detailProject;
  static getAnnouncement() => announcement;
  static getChat() => chat;

  static List<GetPage> pages = [
    GetPage(name: splash, page: () => const SplasScreen()),
    GetPage(name: welcome, page: () => const Welcome()),
    GetPage(name: login, page: () => const Login()),
    GetPage(name: register, page: () => const Register()),
    GetPage(name: forgot, page: () => const Forgot()),
    GetPage(name: navbar, page: () => NavBar()),
    GetPage(name: home, page: () => const Home()),
    GetPage(name: team, page: () => const Team()),
    GetPage(name: client, page: () => const Client()),
    GetPage(name: profile, page: () => const Profile()),
    GetPage(
        name: addproject,
        page: () => const AddProject(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.circularReveal),
    GetPage(name: addtask, page: () => const AddTask()),
    GetPage(
        name: search,
        page: () => const Search(),
        transitionDuration: const Duration(milliseconds: 200),
        transition: Transition.upToDown),
    GetPage(name: project, page: () => const Project()),
    GetPage(name: detailProject, page: () => const DetailProject()),
    GetPage(name: announcement, page: () => const Announcement()),
    GetPage(name: chat, page: () => const Chat())
  ];
}
