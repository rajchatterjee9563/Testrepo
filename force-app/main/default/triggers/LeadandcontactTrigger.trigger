trigger LeadandcontactTrigger on Lead (before insert) 
{
   for(Lead l : Trigger.new)
   {
       List<lead> leadoflist = New list<lead>();
       leadoflist = [select id from lead where name = :l.lastname and company = :l.company];
       if(leadoflist.size()>0)
       {
           l.adderror('Lead is already exist');
       }
   }
}