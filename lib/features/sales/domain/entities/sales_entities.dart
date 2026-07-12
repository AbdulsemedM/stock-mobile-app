import 'package:equatable/equatable.dart';

/// Sales home summary data.
class SalesHomeData extends Equatable {
  const SalesHomeData({
    required this.salesTotal,
    required this.expiringCount,
    required this.lowStockWarehouse,
    required this.lowStockShop,
  });

  final double salesTotal;
  final int expiringCount;
  final int lowStockWarehouse;
  final int lowStockShop;

  @override
  List<Object?> get props =>
      [salesTotal, expiringCount, lowStockWarehouse, lowStockShop];
}

/// Stock item for warehouse/shop lists.
class StockItem extends Equatable {
  const StockItem({
    required this.id,
    required this.name,
    required this.partNumber,
    required this.location,
    required this.locationType,
    required this.price,
    required this.quantity,
    this.imageUrl,
  });

  final String id;
  final String name;
  final String partNumber;
  final String location;
  final String locationType;
  final double price;
  final double quantity;
  final String? imageUrl;

  bool get isWarehouse => locationType == 'warehouse';
  bool get isShop => locationType == 'shop';

  @override
  List<Object?> get props => [id, name, partNumber, location, locationType, price, quantity, imageUrl];
}

/// Credit/unpaid entry.
class CreditEntry extends Equatable {
  const CreditEntry({
    required this.id,
    required this.customerName,
    required this.amount,
    required this.itemCount,
    required this.status,
    required this.date,
  });

  final String id;
  final String customerName;
  final double amount;
  final int itemCount;
  final String status;
  final DateTime date;

  @override
  List<Object?> get props => [id, customerName, amount, itemCount, status, date];
}

/// Store profile for profile header.
class StoreProfile extends Equatable {
  const StoreProfile({
    required this.name,
    required this.address,
  });

  final String name;
  final String address;

  @override
  List<Object?> get props => [name, address];
}

/// Generic named entity for list screens.
class NamedEntity extends Equatable {
  const NamedEntity({
    required this.id,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  final String id;
  final String title;
  final String? subtitle;
  final String? trailing;

  @override
  List<Object?> get props => [id, title, subtitle, trailing];
}

/// Sale line item in cart.
class SaleLineItem extends Equatable {
  const SaleLineItem({
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
  });

  final String productId;
  final String name;
  final double price;
  final double quantity;

  double get lineTotal => price * quantity;

  @override
  List<Object?> get props => [productId, name, price, quantity];
}
