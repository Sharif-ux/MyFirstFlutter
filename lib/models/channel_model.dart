// import 'package:youtube_player_flutter/models/youtube_player_flutter.dart';

// class Channel{
//   final String id;
//   final String title;
//   final String profilePictureUrl;
//   final String subscriberCount;
//   final String videoCount;
//   final String uploadPlaylistId;
//   List<Video> videos;
  
//   Channel({
//     this.id,
//     this.title,
//     this.profilePictureUrl,
//     this.subscriberCount,
//     this.videoCount,
//     this.uploadPlaylistId,
//     this.videos,
//   }
//   );
//   factory Channel.fromMap(Map<String, dynamic> map){
//     return Channel(
//       id: map['id'],
//       title: map['snippet']['tittle'],
//       profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
//       subscriberCount: map['statistics']['subscriberCount'],
//       videoCount: map['statistics']['videoCount'],
//       uploadPlaylistId: map['contentDetails']['relatedPlaylist']['uploads']


//       );
//   }
// }