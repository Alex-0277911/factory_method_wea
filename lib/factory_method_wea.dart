// Factory Method для створення об'єктів погоди:

// абстрактний клас погоди
// метод getWeather - отримати погоду
abstract class Weather {
  String getWeather();
}

// клас Sunny реалізація абстрактоного методу Weather
class Sunny implements Weather {
  // реалізація
  @override
  String getWeather() {
    return "Sunny weather!";
  }
}

class Rainy implements Weather {
  @override
  String getWeather() {
    return "Rainy weather!";
  }
}

// абстрактний клас WeatherCreator
abstract class WeatherCreator {
  Weather createWeather();
}

class SunnyCreator implements WeatherCreator {
  @override
  Sunny createWeather() {
    return Sunny();
  }
}

class RainyCreator implements WeatherCreator {
  @override
  Rainy createWeather() {
    return Rainy();
  }
}

void main() {
  WeatherCreator creator;
  Weather weather;

  // Створення сонячної погоди
  creator = SunnyCreator();
  weather = creator.createWeather();
  print(weather.getWeather());

  // Створення дощової погоди
  creator = RainyCreator();
  weather = creator.createWeather();
  print(weather.getWeather());
}
