import 'package:fintrack_app/fintrack_app.dart';
import 'package:fintrack_app/models/finance_model.dart';
import 'package:fintrack_app/models/history_bill_model.dart';
import 'package:fintrack_app/screens/finance/finance_bloc/finance_bloc.dart';
import 'package:fintrack_app/screens/statistics/statistics_bloc/statistics_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Hive.initFlutter();
  Hive.registerAdapter(FinanceModelAdapter());
  Hive.registerAdapter(FinanceTypeAdapter());
  Hive.registerAdapter(HistoryBillModelAdapter());
  await Hive.openBox('incomes');
  await Hive.openBox('expenses');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<FinanceBloc>(create: (context) => FinanceBloc()),
        BlocProvider<StatisticsBloc>(create: (context) => StatisticsBloc()),
      ],
      child: FinTrackApp(),
    ),
  );
}
