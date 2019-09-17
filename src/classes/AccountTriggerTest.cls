@isTest
public class AccountTriggerTest {
	
    @isTest static void createTestRecords(){
        
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i,
                                      BillingState = 'NY',
                                      ShippingState = 'NY');
            accts.add(acct);
        }              
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        
        List<Account> accList =[Select id from Account];
        System.assertEquals(200, accList.size());
    }
    @isTest static void createTestRecords2(){
        
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i,
                                      BillingState = 'NY',
                                      ShippingState = 'CN');
            accts.add(acct);
        }              
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        
        List<Account> accList =[Select id from Account];
        System.assertEquals(200, accList.size());
    }
}