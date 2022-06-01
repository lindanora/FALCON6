public class MapDemo {
    // returns month name to month number
    // exp: February-->2
    Public static string retrieveMonth(integer m){
        string monthName = '';
        map<integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'OCtober');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        Boolean keyExists = monthMap.containsKey(m);
        if(keyExists){
            monthName = monthMap.get(m);
        }else{
            monthName = 'No such month exists.Please behave!';
        }
        return monthName;
    }
}
