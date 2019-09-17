public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accsList){
        for(Account acc: accsList){
            if(acc.ShippingState != acc.BillingState){
                acc.ShippingState = acc.BillingState;
            }  
        }
    }
}