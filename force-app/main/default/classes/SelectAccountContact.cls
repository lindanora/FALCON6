public with sharing class SelectAccountContact {
    public static void selectAccCont(string accName, string contName) {
        list<account> accs = [select id, name, phone, website from account where name = :accName];
        system.debug('accs = ' + accs);

        List<Contact> contacts = [select id, accountid, lastname from contact where lastname = :contName];
        system.debug('contacts = ' + contacts);


    }
}
