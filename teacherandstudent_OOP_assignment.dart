//create a program that create two classes (Teacher and Student)

//create student class
class Student{
  String name;
  int age;
  int grade;
  Student(this.name, this.age, this.grade);
  String info(){
    return "The student information is:\n Name: ${this.name}\n Age: ${this.age} years\n Grade: ${this.grade} percent";
  }
}

//create teacher class
class Teacher{
  String name;
  int age;
  String subject;
  Teacher(this.name, this.age, this.subject);
  String info(){
    return "The teacher information is:\n Name: ${this.name}\n Age: ${this.age} years\n Subject: ${this.subject}";
  }
}

//create third class that that create student and teacher object and calls the method to print out information
class studentandteacher{
  //create an instance of Student object
  var student=Student("Bright Akaraiwe", 16, 75);
  //create an instance of Teacher object
  var teacher=Teacher("Mrs Johnson Akanbi", 40, "Mathematics");
  //create method info that call the student and teacher info method and prints their information
  void info(){
    print(student.info());
    print(teacher.info());
  }
}

void main(){
  //create instances of studentTeacher objects
  var studentTeacher=studentandteacher();
  studentTeacher.info();
}