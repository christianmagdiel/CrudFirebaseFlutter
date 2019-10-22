import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Product {
  String _id;
  String _name;
  String _codebar;
  String _descripcion;
  String _price;
  String _stock;

  Product(this._id,this._name,this._codebar,this._descripcion,
          this._price,this._stock);

  Product.map(dynamic obj){
    this._name = obj['name'];
    this._codebar = obj['codebar'];
    this._descripcion = obj['descripcion'];
    this._price = obj['price'];
    this._stock = obj['stock'];
  }

  String get id => _id;
  String get name => _name;
  String get codebar => _codebar;
  String get descripcion => _descripcion;
  String get price => _price;
  String get stock => _stock;

  Product.fromSnapShop(DataSnapshot snapshot){
    _id = snapshot.key;
    _name = snapshot.value['name'];
    _codebar = snapshot.value['codebar'];
    _descripcion = snapshot.value['descripcion'];
    _price = snapshot.value['price'];
    _stock = snapshot.value['stock'];
  }

}