void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  List<double> temps = [];

  for (var day in weatherData) {
    if (day['temp'] != null) {
      temps.add(day['temp']!);
    }
  }

  double avgTemp = temps.isNotEmpty ? temps.reduce((a, b) => a + b) / temps.length : double.nan;

  print('Durchschnittstemperatur: ${avgTemp.isNaN ? "unbekannt" : avgTemp}°C');
}