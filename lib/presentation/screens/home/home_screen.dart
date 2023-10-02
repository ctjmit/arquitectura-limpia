import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_formato/config/menu/menu_items.dart';
//import 'package:widget_formato/presentation/screens/buttons/buttons_screen.dart';
//import 'package:widget_formato/presentation/screens/cards/cards_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter + Material 3'),
        ),
        body: const _HomeView(),
    );
  }
}

class _HomeView  extends StatelessWidget{
  const _HomeView();

  @override
  Widget build(BuildContext context){

    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index){
        final menuItem = appMenuItems[index];

        return _CustomLisTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomLisTile extends StatelessWidget{
  final MenuItem menuItem;

  const _CustomLisTile({
    required this.menuItem
  });

  @override
  Widget build(BuildContext context){
    final colors = Theme.of(context).colorScheme;             //referencia al archivo dart.json
    return ListTile(
      leading: Icon( menuItem.icon, color: colors.primary,),          //es el primero que muestra
      trailing: Icon( Icons.arrow_forward_ios_rounded, color: colors.primary,),     //es el ultimo que muestra
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}


//go_router installar
