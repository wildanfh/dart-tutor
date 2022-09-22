enum Weather {
  sunny, cloudy, rain, storm;
}

enum Weather2 {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather2(this.rainAmount);

  @override
  String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
}