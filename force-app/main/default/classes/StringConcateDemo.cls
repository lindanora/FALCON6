public with sharing class StringConcateDemo {
    public static string concateAndUpperCase(string a, string b) {
        system.debug('Entered method');
        string result = a + ', ' + b;
        result = result.toUpperCase();
        return result;   
    }
    public static string concateAndLowerCase(string a, string b) {
        system.debug('Entered method lowercase');
        string result = a + ', ' + b;
        result = result.toLowerCase();
        return result;   
    }
    public static void printConcate(string a, string b){
        string result = a + ', ' + b;
        system.debug(result);

    }
}
