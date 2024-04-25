import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:school/models/product_model.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());
  final List<ProductModel> products=[];
  addOrRemoveProduct({required ProductModel productModel}){
    final isSelected=products.contains(productModel);
    if(isSelected){
      products.remove(productModel);
    }else{
      products.add(productModel);
    }
    emit(AddProductloaded());
  }
}
