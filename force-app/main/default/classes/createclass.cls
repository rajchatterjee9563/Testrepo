public class createclass
{
    public static void createMethod(string Riya,integer nooflibrary)
    {
        List<Library__c> liblist = New List<Library__c>();
        liblist = [Select name,Id from Library__c where name =: Riya];
        set<id> libidset = new set<id>();
        system.debug('liblist....'+liblist);
        for(Library__c L : liblist)
        {
            Libidset.add(L.id);          
            List<student__C> stulist = New List<student__C>();
            //stulist = [Select id from student__C where L_lookup__c In:Libidset];
            For(integer i = 0; i<nooflibrary; i++)
            {
                student__C stu = New  student__C();
                stu.Name = 'paris'+ string.valueOf(i);
                stu.L_lookup__c = L.Id ;
                stulist.add(stu);               
            }
             system.debug('stulist...'+stulist);
             insert stulist ;
            
            List<book__c> blist = New List<book__c>();
            for(integer i = 0; i<nooflibrary;i++)
            {
                book__c b = New book__c();
                b.name = 'paris'+ string.valueOf(i);
                b.Library__c = L.id ;
                blist.add(b);
            }
             system.debug('blist....'+blist);
             insert blist ;
        }        
    }
}