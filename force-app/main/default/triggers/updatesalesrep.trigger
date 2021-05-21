trigger updatesalesrep on Account (before insert,before update) 
{
    set<id> setofacc = New set<id>();
    system.debug('setofacc.....'+setofacc);
    for(Account acc : Trigger.new)
    {
        system.debug('acc....'+acc);
        setofacc.add(acc.ownerid);
    }
    map<id,user> userofmap = New map<id,user>([select name from user where id in: setofacc]);
    system.debug('userofmap....'+userofmap);
    for(Account ac : Trigger.new)
    {
        system.debug('ac....'+ac);
        user usr = userofmap.get(ac.ownerId); 
        ac.Sales_Rep__c = usr.Name;
        system.debug('userofmap.get(ac.ownerId)....'+userofmap.get(ac.ownerId));
        system.debug('usr.Name....'+usr.Name);
    }
}