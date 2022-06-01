public class StringArray {
    public static List<String> generateStringArray(integer n) {
        List<String> lstString = new List<String>();
        for (Integer i = 0; i <n; i++) {
            string str = 'Test' + i;  
            lstString.add(str);
        }
        System.debug(lstString);
        return lstString;
        
        
    }
}
