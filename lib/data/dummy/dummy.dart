import 'package:Coursitory/data/models/course.dart';
import 'package:Coursitory/data/models/course_progress.dart';
import 'package:Coursitory/r.dart';

class Dummy {
  List<Course> courses = [];
  List<CourseProgress> courseProgreses = [];

  List<CourseProgress> getProgress() {
    getCourses();
    courseProgreses.clear();

    CourseProgress courseProgress1 = CourseProgress(
      course: courses[0],
      totalChapterDone: 3,
    );
    CourseProgress courseProgress2 = CourseProgress(
      course: courses[1],
      totalChapterDone: 8,
    );
    CourseProgress courseProgress3 = CourseProgress(
      course: courses[2],
      totalChapterDone: 6,
    );

    courseProgreses.add(courseProgress1);
    courseProgreses.add(courseProgress2);
    courseProgreses.add(courseProgress3);

    return courseProgreses;
  }

  List<Course> getCourses() {
    courses.clear();

    Course course1 = Course(
      name: "Humanities & Paint Art",
      category: "History of Art",
      cover: R.assetsImagesImage1,
      totalChapter: 6,
    );
    Course course2 = Course(
      name: "Social Media Marketing",
      category: "Marketing",
      cover: R.assetsImagesImage2,
      totalChapter: 13,
    );
    Course course3 = Course(
      name: "Social Media Influencer",
      category: "Marketing",
      cover: R.assetsImagesImage3,
      totalChapter: 9,
    );

    courses.add(course1);
    courses.add(course2);
    courses.add(course3);

    return courses;
  }
}
