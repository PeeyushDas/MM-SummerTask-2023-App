import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_summertask_2023_app/page/home.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/page/search.dart';

import 'page/mm_route_constants.dart';

class Approuter{
    GoRouter router = GoRouter(routes:
    [GoRoute(
      name: MMapprouteConstants.homeRouteName,
        path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: MM());
      }
    ),
      GoRoute(
          name: MMapprouteConstants.adminRouteName,
          path: '/admin',
          pageBuilder: (context, state) {
            return MaterialPage(child: admin());
          }
      ),
      GoRoute(
          name: MMapprouteConstants.articleRouteName,
          path: '/article',
          pageBuilder: (context, state) {
            return MaterialPage(child: articl());
          }
      ),
      GoRoute(
          name: MMapprouteConstants.searchRouteName,
          path: '/search',
          pageBuilder: (context, state) {
            return MaterialPage(child: search());
          }
      ),
    ]
    );
}
