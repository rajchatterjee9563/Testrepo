trigger AcivestatusTrigger on Account (before delete) 
{
    if(trigger.isbefore && trigger.isdelete)
    {
        for(Account acc : Trigger.old)
        {
            if(acc.active__c == 'yes')
            {
                acc.adderror('You can not delete acive status account records');
            }
        }
    }
}