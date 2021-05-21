trigger noofcontacts on Contact (after insert,after update,after delete) 
{
    List<Account> acclist = New list<Account>();
    acclist = [select name,id,(select name,id from contacts)from Account];
    system.debug('acclist....'+acclist);
    for(Account acc : acclist)
    {
        system.debug('acc....'+acc);
        acc.Number_of_contacts__c = acc.contacts.size();
        system.debug('acc.contacts....'+acc.contacts);
        system.debug('acc.contacts.size()....'+acc.contacts.size());
    }
    update acclist ;
}