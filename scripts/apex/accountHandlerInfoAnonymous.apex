List<String> lstString = new List<String>();
lstString.add('aaa');
lstString.add('bbb');
lstString.add('ccc');

list<account> lstAcc = AccountHandlerInfo.insertNewAccount(lstString);
System.debug(lstAcc);

AccountManage.updateAccounts(lstAcc);
