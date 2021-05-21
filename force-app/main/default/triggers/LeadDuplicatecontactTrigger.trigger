trigger LeadDuplicatecontactTrigger on Lead (before insert) 
{
    List<String> lastName = New List<String>();
    List<String> firstName = New List<String>();
    
    for(Lead l : Trigger.new)
    {
            lastName.add(l.Lastname);
            firstName.add(l.Firstname);
            system.debug('lastname....'+lastname);
            system.debug('firstname...'+firstname);
    }
    
        List<Lead> listoflead = New List<Lead>();
        List<Contact> listofContact = New List<Contact>();
        listofContact = [select name,id from Contact where LastName = :lastName and FirstName = :firstName];
        
     for(Lead l : Trigger.new)
     {
        if(listoflead.size()>0)
        {
            l.adderror('duplicate value not allow') ;
        }
        if(listofContact.size()>0)
        {
            l.adderror('This Lead already converted into contacts') ;
        }
    }
}