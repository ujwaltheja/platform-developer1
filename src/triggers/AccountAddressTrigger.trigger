trigger AccountAddressTrigger on Account (before insert) {
	if(Trigger.isBefore && Trigger.isInsert){
        List<Account> accList = Trigger.new;
        AccountAddressTriggerHandler.CreateAccounts(accList); 
    }
}