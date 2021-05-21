trigger Accountwithcontact on Account (after insert) 
{ 
    List<contact> conoflist = New list<Contact>();
       for(Account acc: Trigger.New)
       {   
           for(integer i=1 ; i<2 ;i++)
           {
               contact con = New contact();
               con.LastName = Acc.name + string.valueof(i);
               con.AccountId = acc.Id ;
               conoflist.add(con);
           }
       }
       Insert conoflist;
}