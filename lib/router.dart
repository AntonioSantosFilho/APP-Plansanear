import 'package:Plansanear/formularios/lista_presenca.dart';
import 'package:Plansanear/formularios/todas_respostas.dart';
import 'package:Plansanear/main.dart';
import 'package:Plansanear/view/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: AuthScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: BottomNavBar(),
      ),
    ),
    GoRoute(
      path: '/formularios',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: AdminScreen(),
      ),
    ),
    GoRoute(
      path: '/:idFormulario',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ResponderFormularioScreen(
          idFormulario: state.pathParameters['idFormulario']!,
        ),
      ),
    ),
  ],
);
