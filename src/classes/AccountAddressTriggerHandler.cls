public class AccountAddressTriggerHandler {
	public static void CreateAccounts(List<Account> accsList){
        for(Account acc: accsList){
            if(acc.Match_Billing_Address__c == true){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            else{
                
            }
        }
    }
}