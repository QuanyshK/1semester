public class Course {
    String course;
    String student;
    int grade;
    public Course(String course, int grade) {
        this.course = course;
        this.grade = grade;
    }
    public String getcourse() {
        return course;
    }
    public int getgrade() {
        return grade;
    }
    public void setgrade(int grade){
        this.grade = grade;
    }
    public void setcourse(String course) {
        this.course = course;
    }
    public String getinfo1() {
        return "course:" + course + " grade:" + grade;
        }
    }