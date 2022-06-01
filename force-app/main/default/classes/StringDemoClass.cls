public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'Learning string methods in apex language.';
        // 1. Length
        integer lengthOfString = sessionDescription.length();
        system.debug('Length of the string is: ' + lengthOfString);
        // 2.capitilize the sentence
        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug(sessionDescriptionInCaps);
        // 3. check if session description contains Apex in it
        Boolean sessionDescriptionContainsApex = sessionDescription.contains('apex');
        system.debug('System Description contains apex? ' + sessionDescriptionContainsApex);
        // 3.b no case sensitivity
        Boolean sessionDescriptionContainsApex2 = sessionDescription.containsIgnoreCase('ApeX');
        system.debug('System Description contains ApeX? ' + sessionDescriptionContainsApex2);
        // 3.a System Description contains Salesforce?
        Boolean sessionDescriptionContainsSalesforce = sessionDescription.containsIgnoreCase('Salesforce');
        system.debug('system Description contains salesforce? ' + sessionDescriptionContainsSalesforce);
        // 4.
        string apexx='apex';
        string ap = 'APEXX';
        Boolean apexCheck = apexx.equals('ap');
        system.debug('apex check ' + apexCheck);
    }
}
