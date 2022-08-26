import 'package:quizapp/column/column_demo.dart';
import 'package:quizapp/listview/pageview_demo.dart';
import 'package:quizapp/notification/local_notification.dart';
import 'package:quizapp/notification/notification.dart';
import 'package:quizapp/row/row_demo.dart';
import 'package:quizapp/gridview/gridview_demo.dart';
import 'package:quizapp/listview/listview_export.dart';
import 'homepage/homepage.dart';

var appRoutes = {
  '/': (context) => const HomePage(),
  '/column': (context) => const ColumnDemo(),
  '/grid': (contex) => GridViewDemo(),
  '/row': (context) => const RowApp(),
  '/animatedlist': (context) => const AnimatedListViewDemo(),
  '/diftypelist': (context) => DiffTypeListViewDemo(),
  '/horizlist': (context) => const HorizontalListViewDemo(),
  '/listbuild': (context) => const ListViewBuilderDemo(),
  '/listseperate': (context) => const ListViewSeperatorDemo(),
  '/reorderlist': (context) => const ReorderableListViewDemo(),
  '/singlechildlistview': (context) => const SingleChildScrollViewDemo(),
  '/pageview': (context) => const PageViewDemo(),
  '/notification': (context) => const FirebaseCloudNotificationPage(),
  '/localnotification': (context) => const LocalNotificationPage(),
};
