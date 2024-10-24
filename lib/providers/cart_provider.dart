

import 'package:e_commerce_app/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends Notifier<Set<Product>>{

  //initial value 
     @override
  Set<Product> build() {
return const  {
  Product(id: '7', title: 'Roller Skates', price: 52, image: 'assets/products/skates.png'),
};
  }

  //method to update the state
 void addProducts(Product product){
  if(!state.contains(product)){
    state={...state ,product}; 
  } 
 }
  void removeProducts(Product product){
  if(state.contains(product)){
    state=state.where((p)=>p.id != product.id).toSet();  
  } 
 }
}

final cartNotifierProvider = NotifierProvider<CartNotifier,Set<Product>>((){
  return CartNotifier();
});