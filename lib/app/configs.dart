import 'package:portfolio/core/models/project.dart';
import 'package:portfolio/core/models/skill_model.dart';
import 'package:portfolio/core/models/timeline_experience.dart';

//*Social Media Links
mixin SocialLinks {
  static String linkedinUrl =
      "https://www.linkedin.com/in/shashi-kumar-58ab1b1a4/";
  static String mediumLink = "https://medium.com/@ben75930";
  static String twitterLink = "https://twitter.com/Shashi35744438";
  static String githubLink = "https://github.com/shashiben";
}

//*System Defaults
mixin SystemProperties {
  static String fontName = "Montserrat";
  static String titleFont = "Lato";
}

//*Personal details
mixin PersonalDetails {
  static List<Project> projectsList = [
    Project(
        title: "Hostel Management",
        githubLink: "https://github.com/shashiben/Hostel-Management",
        websiteLink: "https://hostel-app-test.herokuapp.com/login",
        description:
            "Created a hostel management web app to track students where they are, and download data of attendance for each day",
        tools: ["Redux", "Node Js", "Express Js", "Mongo DB", "React Js"]),
    Project(
        title: "E Commerce",
        githubLink: "https://github.com/shashiben/MERN-ECommerce",
        websiteLink: "https://nsd-solutions.herokuapp.com/",
        description:
            "An ECommerce application similar to amazon or flipkart where users can buy products,contains admin panel",
        tools: ["Redux", "Node Js", "Express Js", "Mongo DB", "React Js"]),
    Project(
        title: "Flutter Custom Graph",
        githubLink: "https://github.com/shashiben/flutter_custom_graph",
        description:
            "Created a flutter package for building customized and aesthetic graphs.Built with the help of custom graphs.",
        tools: ["Flutter"]),
    Project(
        title: "Face Mask Detection",
        githubLink: "https://github.com/shashiben/flutter-face-mask-detection",
        description:
            "Mobile Application to detect whether person wears a mask or not.Built with Flutter and tensorflow lite.",
        tools: ["Flutter", "Tflite", "CNN", "Python"]),
    Project(
        title: "FReMP Stack",
        githubLink: "https://github.com/shashiben/FReMP-Stack",
        description:
            "Created a simple application to show how to perform crud operations using flask,react and mongo db and includes how to search by name.",
        tools: ["Flask", "React", "Mongo DB", "Python"]),
    Project(
        title: "Motion Detection Using OpenCv",
        githubLink: "https://github.com/shashiben/Motion-Detection-with-Opencv",
        description:
            "Detects motion of an object or a person and draws bounding box over it",
        tools: ["Python", "OpenCv"]),
    Project(
        title: "Alarm Managaer",
        githubLink: "https://github.com/shashiben/Flutter-Alarm",
        description:
            "An application to schedule alarms on multiple devices supports for both android and ios,built using mongo db and flutter.",
        tools: ["Flutter", "Mongo DB", "Node Js", "Express Js"]),
    Project(
        title: "Cache With Hive",
        githubLink: "https://github.com/shashiben/Flutter-anime",
        description:
            "Application which shows how to cache rest api data,so that user can view data even though he is offline.Presently supports for web, android and ios",
        tools: ["Flutter", "Hive"]),
    Project(
        title: "College Fest App",
        playstoreLink:
            "https://play.google.com/store/apps/details?id=com.cse.cynosure",
        githubLink: "https://github.com/shashiben/College-Fest-app",
        description:
            "Created an app for college fest where users can register for events and get live notifications regarding events and has payment gateway integration.",
        tools: ["Java", "Firebase", "Paytm"]),
    Project(
        websiteLink: "https://shashiben.github.io",
        description:
            "Created portfolio using flutter,Supports for mac os,windows,linux,web,ios,android",
        githubLink: "https://github.com/shashiben/portfolio",
        title: "Portfolio",
        tools: ["Flutter"]),
    Project(
        title: "Node Mailer",
        githubLink: "https://github.com/shashiben/node-mailer",
        description:
            "Backend for sending mails.Used to add functionality of sending mail without opening any other applications",
        tools: ["Node JS", "Email JS", "Express JS"])
  ];
  static List<String> skillsList = [
    "Flutter",
    "MERN Stack",
    "FReMP Stack",
    "Git",
    "Firebase",
    "Java Developer",
    "Open Cv",
    "OOPS",
    "C",
    "Python",
    "Flask",
    "Problem Solving",
  ];

  static List<ExperienceTimeline> experienceList = [
    ExperienceTimeline(
        title: "TopRecur",
        position: "Internship",
        timePeriod: "Jan 2021 - Feb 2021",
        description: [
          "Worked as an intern for mobile app developement and front end developer",
          "Application is similar to Workflowy for note taking",
          "Added export service of all the data present in the parent node",
          "Added Functionality to customize text styling dynamically"
        ],
        tools: [
          "Flutter",
          "Html",
          "Css",
          "JS",
          "React",
          "Flask",
          "Celery",
          "Mongo DB"
        ]),
    ExperienceTimeline(
        title: "ITI Hindupur",
        position: "Freelancer",
        timePeriod: "Dec 2020 - Jan 2021",
        description: [
          "Developed UI for ITI Hindupur and developed mobile application",
          "Designed Admin Panel to send notifications or add notes or create tests",
          "Designed College Application to create quiz for different batches",
          "Able to add or delete or update notes",
          "Added Contact Support using Freshchat",
          "Can check analysis of his previous test"
        ],
        tools: [
          "Flutter",
          "Firebase",
          "FreshChat",
          "Figma"
        ]),
    ExperienceTimeline(
        title: "Tefso",
        position: "Mobile App Developer",
        timePeriod: "Aug 2020 - Sep 2021",
        description: [
          "Worked collaboratively with designer to bring mobile app to life",
          "Developed UI for application similar to doubtnut",
          "Created frontend application to check user profile and quiz",
          "Added voice support for adding questions",
          "Designed UI for asking doubts or to check others questions.",
        ],
        tools: [
          "Flutter",
          "Figma"
        ]),
    ExperienceTimeline(
      tools: ["Firebase", "DialogFlow", "Agora", "GCP", "Node js", "Mongo"],
      timePeriod: "May 2020 - July 2020",
      title: "Naaniz",
      position: "Developement Team Lead",
      description: [
        "Managing a team of 25 members, able to divide and assign works to them",
        "Designed DB Schema and made the UI of the app responsive",
        "Integrated Payment Gateway Integration (Razorpay)",
        "Implemented Video Broadcasting feature,Chat bot,Voice Search"
      ],
    ),
  ];
  static String email = "kumarshashi5294@gmail.com";
  static List<SkillModel> featuredSkills = [
    SkillModel(name: "Mobile Application Developement", percent: 95),
    SkillModel(name: "Web Developer", percent: 90),
    SkillModel(name: "UI/UX Designer", percent: 84),
    SkillModel(name: "Backend Developer", percent: 89),
  ];

  static String userName = "Shashi Kumar";
  static String shortIntro =
      "A dexterous builder for mobile and web application.";
  static String intro =
      "I started my career into developement as android developer.First I built android applications in native android.Later I heared about flutter which helps in building cross platform applications.After gaining experience in flutter,I applied to internships,through which I was able to learn communication skills and code architectures.After that I worked as a freelancer and gained experience of how to build applications in production level.Presently I'm focusing on web developement.I learnt MERN Stack.And working projects on it.";
}

//*Education Details
mixin EducationDetails {
  static String collegeName = "Sri Chaitanya Jr College";
  static String collegeTimeline = "2015 - 2017";
  static String schoolName = "Cattamanchi Ramalinga Reddy High School";

  static String schoolTimeline = "2014 - 2015";
  static String universityName = "Sri Venkateswara University";
  static String universityTimeline = "2017 - 2021";

  static String universityStream = "B.Tech (CSE)";
  static String schoolStream = "SSC";
  static String collegeStream = "Intermediate (MPC)";
}
