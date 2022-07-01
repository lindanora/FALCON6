@isTest
public with sharing class AssetTriggerTest {
    @isTest
    private static void testAssetTrig1(){
        account acc = new account(name = 'test acc');
        insert acc;
        List<Asset> listAsset = new List<Asset>();
        for (Integer i = 0; i < 1100; i++) {
            asset a = new asset();
            a.Name = 'test asset';
            a.AccountId = acc.id;
            listAsset.add(a);              
        }
        insert listAsset;
    }   
}
