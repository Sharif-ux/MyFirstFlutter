// import 'package:magang/constant.dart';

// import 'models/channel_info.dart';

// class Services{
  
//   static const CHANNEL_ID = 'UCyMCfWxVHoxDYfcL950Ejpw';
//   static const _baseUrl = 'www.googleapis.com';
//   /*
//   curl \
//   'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=UCyMCfWxVHoxDYfcL950Ejpw&access_token=AIzaSyCoFx8Y6vmwVAY3hzsZLmHvy1hCuBH4Bk0&key=[YOUR_API_KEY]' \
//   --header 'Authorization: Bearer [YOUR_ACCESS_TOKEN]' \
//   --header 'Accept: application/json' \
//   --compressed

//   */
//   static  Future<ChannelInfo> getChannelInfo()async{
//     Map<String, String> parametes = {
//       'part':'snippet,contentDetails,statistics',
//       'id': CHANNEL_ID,
//       'key': Constant.API_KEY,
//     };
//   }
// }