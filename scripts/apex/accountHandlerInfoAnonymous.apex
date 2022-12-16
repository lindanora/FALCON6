List<String> lstString = new List<String>();
// this is just a practice!
this is from 
lstString.add('aaa');
lstString.add('bbb');
lstString.add('ccc');

list<account> lstAcc = AccountHandlerInfo.insertNewAccount(lstString);
System.debug(lstAcc);

AccountManage.updateAccounts(lstAcc);
