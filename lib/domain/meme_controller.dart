
import 'package:get_it_sample/locator.dart';
import 'package:get_it_sample/repository/meme_repo.dart';

class MemeDomainController{
  getNextMeme() async{
     return await getIt<MemeRepo>().getMeme();
  }
}