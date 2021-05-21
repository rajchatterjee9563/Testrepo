trigger TwomorethanContacts on Account (before delete) {   
    set<id> acctid = new set<id>();
    system.debug('acctid.....'+acctid);
    for(account a : trigger.old){
        system.debug('a.....'+a);
        acctid.add(a.id);
    }
    map<id,account> accounts = new map<id,account>([select id, name, (select lastname, firstname from contacts) 
                                                    from account where id in : acctid]); 
    system.debug('accounts....'+accounts);
    for(account acc : trigger.old){
        system.debug('acc....'+acc);
        if(accounts.get(acc.Id).contacts.size()>=2)
        {
            acc.adderror(' record can not deleted ');  
        }
    }
}