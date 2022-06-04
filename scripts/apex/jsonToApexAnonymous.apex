string jsonAccountString = '{"Name":"JsonToApex", "Type":"Prospect", "AnnualRevenue":50}';
Object ab = JSON.deserialize(jsonAccountString, Account.class);
Account acc = (Account)ob;
insert acc;