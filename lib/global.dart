import 'models/job.dart';

List<JobModel> jobList = [
  JobModel(
    description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl: "https://picsum.photos/200/300",
    location: "Austin, TX",
    title: "Flutter Developer",
    salary: "\$70,000 - 120,000\$",
    photos: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  JobModel(
    description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl: "https://picsum.photos/200/300",
    location: "Company, San Francisco, CA",
    title: "Web Developer",
    salary: "\$50,000 - 80,000\$",
    photos: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  JobModel(
    description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl: "https://picsum.photos/200/300",
    location: "Company, San Francisco, CA",
    title: "Backend Developer",
    salary: "\$170,000 - 230,000\$",
    photos: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  JobModel(
    description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl: "https://picsum.photos/200/300",
    location: "Company, San Francisco, CA",
    title: "Web Designer",
    salary: "\$30,000 - 60,000\$",
    photos: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
  JobModel(
    description:
        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum culpa ab vitae, totam voluptatum laudantium excepturi accusantium, incidunt sunt quos nihil, odit consequuntur non modi vel veniam. Eligendi, dicta? Eius.",
    iconUrl: "https://picsum.photos/200/300",
    location: "Company, Austin, TX",
    title: "AI Developer",
    salary: "\$120,000 - 160,000\$",
    photos: [
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
      "https://picsum.photos/200/300",
    ],
  ),
];
// import 'models/job.dart';
// import 'package:mongo_dart/mongo_dart.dart';

// Future<List<JobModel>> fetchJobListings() async {
//   String connection =
//       'dbstring';
//   Db db = await Db.create(connection);
//   await db.open();
//   final jobsCollection = db.collection('jobs');

//   final jobListings = await jobsCollection.find().toList();
//   db.close();

//   // Convert MongoDB documents to JobModel objects
//   final jobModels = jobListings.map((job) {
//     return JobModel(
//       title: job['title'],
//       description: job['description'],
//       iconUrl: job['iconUrl'],
//       location: job['location'],
//       salary: job['salary'],
//       photos: List<String>.from(job['photos']),
//     );
//   }).toList();

//   return jobModels;
// }

// // You can initialize your jobList directly using fetchJobListings
// List<JobModel> jobList = [];

// void initJobList() async {
//   jobList = await fetchJobListings();
// }
