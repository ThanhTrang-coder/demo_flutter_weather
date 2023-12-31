part of 'weather.dart';

//convert json to Weather
Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Weather',
  json,
    ($checkedConvert) {
      final val = Weather(
        location: $checkedConvert('location', (v) => v as String),
        temperature: $checkedConvert('temperature', (v) => (v as num).toDouble()),
        condition: $checkedConvert('condition', (v) => $enumDecode(_$WeatherConditionEnumMap, v)),
      );
      return val;
    }
);

//convert weather to json
Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic> {
  'location': instance.location,
  'temperature': instance.temperature,
  'condition': _$WeatherConditionEnumMap[instance.condition],
};

const _$WeatherConditionEnumMap = {
  WeatherCondition.clear: 'clear',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.unknown: 'unknown',
};