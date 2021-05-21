public class Debugclass 
{
    public static void debugMethod()
    {
        map<id, list<Faculty__c> > facwithmap = New map<id, list<Faculty__c> >();
        List<Faculty__c> listoffac = New List<Faculty__c>();
        List<Collage__c> collist = New list<Collage__c>();
        collist = [Select name,id, (select id,name from Facultys__r) from Collage__c ];
        system.debug('collist...'+collist);
        for(Collage__c coll : collist)
        {
            for(Faculty__c fac : coll.Facultys__r)
            {
                system.debug('fac...'+fac);
                if(facwithmap.containskey(coll.Id))
                {
                    facwithmap.get(coll.Id).add(fac);
                }
                else
                {
                    facwithmap.put(coll.Id, New list<Faculty__c>{fac});
                }
                system.debug('fac...'+fac);
                update fac ;
            }
        }
    }
}