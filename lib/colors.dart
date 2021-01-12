import 'dart:ui';

enum AppColors {
  RED,
  ORANGE,
  YELLOW,
  LIGHT_GREEN,
  DARK_GREEN,
  LIGHT_BLUE,
  DARK_BLUE,
  PURPLE
}

extension ColorsEx on AppColors {
  static const colors = {
    AppColors.RED: const Color(0xFFE76F51),
    AppColors.ORANGE: const Color(0xFFF4A261),
    AppColors.YELLOW: const Color(0xFFE9C46A),
    AppColors.LIGHT_GREEN: const Color(0xFF65AA6C),
    AppColors.DARK_GREEN: const Color(0xFF40A35A),
    AppColors.LIGHT_BLUE: const Color(0xFF2A9D8F),
    AppColors.DARK_BLUE: const Color(0xFF264653),
    AppColors.PURPLE: const Color(0xFF55345A),
  };

  Color get color => colors[this];

  
}