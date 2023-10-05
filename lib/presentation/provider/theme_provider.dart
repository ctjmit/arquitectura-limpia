import 'package:riverpod/riverpod.dart';
import 'package:widget_formato/config/theme/app_theme.dart';


//listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//un boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//un int
final selectedColorProvider = StateProvider((ref) => 0);

//un objeto de tipo apptheme
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, Apptheme>((ref) => ThemeNotifier());

//controler o notifier
class ThemeNotifier extends StateNotifier<Apptheme> {
  ThemeNotifier() : super(Apptheme());

  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode );
  }
  void changeColorIndex(int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex );
  }
}
