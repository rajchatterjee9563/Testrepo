trigger errortrigger on Account(after insert,before insert)
{
    for(Account a : Trigger.new)
    {
        List<Account> acclist = New List<Account>();
        acclist = [Select name,id from Account];
        system.debug('acclist...'+acclist);
    }
}