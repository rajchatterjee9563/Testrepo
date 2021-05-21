trigger Errorleadtrigger on Lead (before insert,before update) 
{
   set<string> lemail = New set<string>();
    for(lead l : trigger.new)
    {
        lemail.add(l.email);
    }
    List<contact> conlist = New list<contact>();
    conlist = [select name,id,email from contact where email = :lemail];
}