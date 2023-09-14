class JobModel {
  final String description, iconUrl, location, salary, title;
  final List<String> photos;

  JobModel(
      {required this.photos,
      required this.description,
      required this.iconUrl,
      required this.location,
      required this.salary,
      required this.title});
}
