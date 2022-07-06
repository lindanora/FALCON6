Account acc = [select id, ownerid from account where industry = 'Biotechnology' limit 1];
System.debug(acc.Id);
Map<String,Object> inputs = new Map<String,Object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountOwnerId', acc.OwnerId);
flow.Interview flow = new flow.Interview.Account_Updates(inputs);
flow.start();