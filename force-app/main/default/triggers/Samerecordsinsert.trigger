trigger Samerecordsinsert on Account (before insert) 
{
  list<contact> conoflist = New list<contact>();
    for(Account acc : trigger.new)
    {
        if(acc.Industry == 'Banking')
        {
            contact con = New contact();
            con.LastName = acc.Name ; 
            con.Phone = acc.Phone ;
            con.AccountId = acc.Id ;
            conoflist.add(con);
            system.debug('conoflist....'+conoflist);
        }
    }
    insert conoflist ;
}