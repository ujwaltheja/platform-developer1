public class AccountUtils {
	
    public static list<Account> accountsByState(String BillingState){
        
        List<Account> accountList =[SELECT
                               			Id,
                               			Name
                               	FROM
                               			Account
                                WHERE
                               		BillingState = :BillingState];
        if(accountList.size()>0){
            return accountList;
        }
        else{
            return null;
        }
    }
}