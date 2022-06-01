public class StudentInfo {
    public StudentInfo() {
        System.debug('Welcome!');
    }
    public void listOfNames(){
        List<String> listOfStudents = new List<String>();
        listOfStudents.add('Ayse');
        listOfStudents.add('Fatma');
        listOfStudents.add('Ali');
        listOfStudents.add('Veli');
        System.debug('My students are ' + listOfStudents);
    }
}
