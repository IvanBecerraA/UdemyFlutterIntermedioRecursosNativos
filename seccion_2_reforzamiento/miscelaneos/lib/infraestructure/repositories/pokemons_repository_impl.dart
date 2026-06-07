import 'package:miscelaneos/domain/domain.dart';
import 'package:miscelaneos/infraestructure/datasources/pokemons_datasource_impl.dart';



class PokemonsRepositoryImpl implements PokemonsRepository{

  final PokemonsDatasource datasource;

  PokemonsRepositoryImpl({PokemonsDatasource? datasource})
    : datasource = datasource ?? PokemonsDatasourceImpl();


  @override
  Future<(Pokemon?, String)> getPokemon(String id) async {
    return datasource.getPokemon(id);
  }  

}