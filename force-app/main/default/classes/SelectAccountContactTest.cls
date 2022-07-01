@isTest
public with sharing class SelectAccountContactTest {
    @isTest
    private static void selectAccContactsTest(){
        
        // 1. prepare data
        account a = new account ();
        a.Name = 'any account';
        insert a;

        Contact c = new contact ();
        c.LastName = 'literally';
        c.AccountId = a.Id;
        insert c;

        SelectAccountContact.selectAccCont('any account', 'literally');

    }
    
    
}
