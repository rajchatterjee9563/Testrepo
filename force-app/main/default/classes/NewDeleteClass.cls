public class NewDeleteClass
{
    public static void deleteMethod(string Riya)
    {
        List<Library__c> lst = New List<Library__c>();
        lst = [Select id from Library__c where name =: Riya];
        set<Id> libidset = New Set<Id>();
        for(Library__C L : lst)
        {
            Libidset.add(L.Id);
        }
        List<student__c> stulist = New List<Student__c>();
        stulist = [Select id from student__c where L_lookup__c In:Libidset];
        system.debug('stulist....'+stulist);
        if(!stulist.isempty())
        {
              delete stulist ;
              system.debug('delete....');
        }
        List<Book__c> blist = New List<Book__c>();
        blist = [Select id from Book__c where Library__c In:Libidset];
        system.debug('blist....'+blist);
        if(!blist.isempty())
        {
            delete blist ;
            system.debug('delete....');
        }
    }
}