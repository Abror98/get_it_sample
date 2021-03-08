
import 'package:get_it/get_it.dart';
import 'package:get_it_sample/domain/meme_controller.dart';
import 'package:get_it_sample/repository/meme_repo.dart';

final GetIt getIt = GetIt.instance;

void setUp(){
  getIt.registerLazySingleton<MemeRepo>(
      () => MemeRepo(),
  );
  
  getIt.registerLazySingleton<MemeDomainController>(
      ()=>MemeDomainController(),
  );
}