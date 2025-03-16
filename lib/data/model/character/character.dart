import 'package:equatable/equatable.dart';

import 'info.dart';
import 'result.dart';

class Character extends Equatable {
  final Info? info;
  final List<Result>? results;

  const Character({this.info, this.results});

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        info: json['info'] == null
            ? null
            : Info.fromJson(json['info'] as Map<String, dynamic>),
        results: (json['results'] as List<dynamic>?)
            ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'info': info?.toJson(),
        'results': results?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [info, results];
}
