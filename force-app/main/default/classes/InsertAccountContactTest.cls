@isTest
public with sharing class InsertAccountContactTest {
    @isTest
    private static void insertAccCntTest(){
        InsertAccountContact.insertAccCont('test acc name', 'cnt last name');

        // SOQL
        list<account> acc = [select id, name FROM Account where name = 'test acc name'];
        system.assert(acc.size ()== 1);

        list<contact> cont = [select id, lastName, accountId from contact where lastName = 'cnt last name'];
        system.assertEquals(acc[0].id, cont[0].AccountId);

    }
}
