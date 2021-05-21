trigger namewithAccountcon on Account (after insert) 
{
  List<contact> conoflist = New list<contact>();
    for(Account acc : Trigger.new)
    {
        for(integer i=0 ; i<2 ; i++)
        {
            contact con = New contact();
            con.Lastname = acc.contact_name__c + string.valueOf(i);
            con.AccountId = acc.Id ;
            conoflist.add(con);
        } 
    }
    insert conoflist ;
}