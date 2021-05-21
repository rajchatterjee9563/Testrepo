public class onlydebugclass 
{
    public static void debugmethod()
    {
        map<id, list<Faculty__c> > facwithmap = New map<id, list<Faculty__c> >();
        List<Faculty__c> listoffac = New List<Faculty__c>();
        List<Collage__c> collist = New list<Collage__c>();
        collist = [Select name,id, (select id,name from Facultys__r) from Collage__c where name='boar'];
        system.debug('collist...'+collist);
        for(Collage__c coll : collist)
        {
            system.debug('coll..'+coll);
            for(Faculty__c fac : coll.Facultys__r)
            {
                system.debug('fac...'+fac);
            }
        }
    }
}