enum UrlType {
  information,
  video,
  user,
  routes,
  club,
  page,
  upload,
  usersTrumb,
  storyImage,
  storyVideo,
  complaintImage,
  adProductImage,
  festival,
  gallery,
}

extension UrlTypeExtension on UrlType {
  String get baseUrl {
    switch (this) {
      case UrlType.usersTrumb:
        return 'https://t2icdn.b-cdn.net/wcl/userstrumb/';
      case UrlType.information:
        return 'https://t2icdn.b-cdn.net/wcl/information/';
      case UrlType.video:
        return 'https://t2icdn.b-cdn.net/wcl/videos/';
      case UrlType.user:
        return 'https://t2icdn.b-cdn.net/wcl/users/';
      case UrlType.routes:
        return 'https://t2icdn.b-cdn.net/wcl/routes/';
      case UrlType.club:
        return 'https://t2icdn.b-cdn.net/wcl/clubs/';
      case UrlType.festival:
        return 'https://t2icdn.b-cdn.net/wcl/festivals/';
      case UrlType.page:
        return 'https://t2icdn.b-cdn.net/wcl/pages/';
      case UrlType.upload:
        return 'https://t2icdn.b-cdn.net/wcl/';
      case UrlType.storyImage:
        return 'https://t2icdn.b-cdn.net/wcl/stories/';
      case UrlType.storyVideo:
        return 'https://t2icdn.b-cdn.net/wcl/stories/videos/';
      case UrlType.complaintImage:
        return 'https://t2icdn.b-cdn.net/wcl/complaints/';
      case UrlType.gallery:
        return 'https://t2icdn.b-cdn.net/wcl/gallery/';
      case UrlType.adProductImage:
        return 'https://t2icdn.b-cdn.net/wcl/adds/';
    }
  }
}
