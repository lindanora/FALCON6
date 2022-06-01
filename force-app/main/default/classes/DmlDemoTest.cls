@isTest
public class DmlDemoTest {
    @isTest
    public static void dmlDemoTest1(){
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from Account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].name); 
    }
    @isTest
    private static void dmlDemoTest2() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlUpdateDemo_2();

        List<Contact> listCnt = [select id, name from contact];
        system.assertEquals(1, listCnt.size());
        system.assertEquals('Biden', listCnt[0].name);
        
    }
}
