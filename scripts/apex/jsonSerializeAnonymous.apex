Account a = new Account();
a.Name = 'Mona';
a.Phone = '';
a.AnnualRevenue = 90909854;

Account b = new Account();
b.Name = 'Lisa';
b.Phone = '435637849';
b.Site = '';

List<Account> ab = new List<Account>{a,b};
String accountJSON1 =JSON.serialize(ab);
system.debug(accountJSON1);

list<account> listAccount = [select id, name, phone, site, annualrevenue from account limit 5];
string accountJSON22 = JSON.serialize(listAccount);
system.debug(accountJSON22);
