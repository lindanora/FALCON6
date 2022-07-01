@isTest
public with sharing class CreateTaskForContactTest {
    @TestSetup
    static void makeContactData(){
        List<Contact> listContact = new List<Contact>();
        for (Integer i = 0; i < 1100; i++) {
            contact c = new contact();
            c.LastName = 'test contact' + i;
            listContact.add(c);  
        }
        insert listContact;
    }
    @isTest
    private static void testTaskCreate(){
        // 1.data preparation
        contact c = new contact();
        c.LastName = 'test contact';
        insert c;

        // 2.1.
        test.startTest();
        // 3.call actual method
        CreateTaskForContact.createTasks('test contact');
        // 2.2.
        test.stopTest();
        // 4.assertion
        list<task> allTasks = [select id, subject, whoid from task where whoid = :c.id];
        system.assert(allTasks.size() >= 0);
        system.assertNotEquals('call', allTasks[0].subject);
        system.assertEquals('Email', allTasks[0].subject);  
    }

    @isTest
    private static void testTaskCreate2() {
        // 1.data prep
        List<Contact> listContact = new List<Contact>();
        for (Integer i = 0; i < 1100; i++) {
            contact c = new contact();
            c.LastName = 'testContact'+i;
            listContact.add(c);   
        }
        insert listContact;
        // 2.1.
        Test.startTest();

        // 3. call actual method
        CreateTaskForContact.createTasks('testContact');

        // 2.2.
        Test.stopTest();

        // assertion
        list<task> allTasks = [select id, subject, whoId from task];
        system.assert(allTasks.size() == 1100);
        for (task t : allTasks) {
            system.assertNotEquals('call', t.subject);
            system.assertEquals('Email', t.subject);  
        }
    }
        @isTest
        private static void testOppsCreate2() {
            List<Contact> listContact = [select id, name, Lastname from contact];
        
            Test.startTest();

            // call actual method
            CreateTaskForContact.createOpps(listContact);

            Test.stopTest();

            // assertion
            List<Opportunity> allOpps = [select id, name, contactid from opportunity where contactid = :listContact];
            system.assert(allOpps.size() == 1100);
    }
}

