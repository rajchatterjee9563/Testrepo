trigger StandardErrorTrigger on Account (before insert) 
{
    for(Account a : Trigger.new) 
    {
        List<Account> acc=[select ID from account where Name=:a.Name and Rating=:a.rating];
        if(acc.size()>0)
        {
            a.adderror('You cannot create a dulplicate account');
        }
    }
}