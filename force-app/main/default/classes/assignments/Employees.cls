public class Employees {
    public static void printListOfEmployees(){
        List<String> listOfEmployees = new List<String>();
        listOfEmployees.add('Ali');
        listOfEmployees.add('Veli');
        listOfEmployees.add('Ayse');
        listOfEmployees.add('Fatma');
        listOfEmployees.add('Zehra');

        listOfEmployees.sort();
        System.debug('Employee name is: ' + listOfEmployees);
    }  
}
