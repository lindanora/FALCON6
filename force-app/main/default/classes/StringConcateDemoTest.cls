@isTest
public with sharing class StringConcateDemoTest {
    @isTest
    private static void testConcate(){
        string r = StringConcateDemo.concateAndUpperCase('test', 'method1');
        system.debug(r);
        system.assert(r == 'TEST, METHOD1');
        system.assertEquals('TEST, METHOD1', r);
    }
    @isTest
    private static void testConcateLower(){
        string r = StringConcateDemo.concateAndLowerCase('TEST', 'METHOD1');
        system.debug(r);
    
        system.assertNotEquals('TESTTTT, METHOD1', r);
        system.assertEquals('test, method1', r);
    }
    @isTest
    private static void testConcatePrint(){
        StringConcateDemo.printConcate('TEST', 'METHOD1');
    }
}

