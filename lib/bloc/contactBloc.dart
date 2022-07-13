import 'dart:async';

import 'package:latihan_bloc/models/contact.dart';

class ContactBloc {
  List<Contact> _contactList = [
    Contact('Cheese', 'assets/images.png', 'Sweet ~'),
    Contact('Chocolate', 'assets/images.png', 'More than cheese'),
    Contact('Mango', 'assets/images.png', 'Sweeeeeeeet'),
    Contact('Ice Cream', 'assets/images.png', 'Cooooldddderr'),
    Contact('Smartphone', 'assets/images.png', 'Tech'),
  ];

  final _contactListStreamController = StreamController<List<Contact>>();

  final _deleteTapStreamController = StreamController<Contact>();

  Stream<List<Contact>> get contactListStream => _contactListStreamController.stream;

  StreamSink<List<Contact>> get contactListSink => _contactListStreamController.sink;

  StreamSink<Contact> get deleteTapSink => _deleteTapStreamController.sink;
}