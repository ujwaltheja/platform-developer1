trigger AccountTrigger on Account (before insert) {
	
    if(Trigger.isBefore && Trigger.isInsert){
        List<Account> accList = Trigger.new;
        AccountTriggerHandler.CreateAccounts(accList); 
    }
}