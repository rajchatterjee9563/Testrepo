trigger coderinme on Account (before insert) 
{
    List<Account> acc = trigger.new ;
    
    set<Account> accset = New set<Account>();
    accset.addall(acc);
}