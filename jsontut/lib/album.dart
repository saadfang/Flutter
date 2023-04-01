//Group 13	k191092	k180327	k191081	Rao Saqib	Saad Rasheed	Huzaifa Rafique

import 'dart:async';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:build_runner/build_runner.dart';
import 'package:json_serializable/json_serializable.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

part 'album.g.dart';

@JsonSerializable()
class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
  /*{return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }*/
}
