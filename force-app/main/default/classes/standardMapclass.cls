public class standardMapclass 
{
    public static void Mapmethod()
    {
         map<id, list<Faculty__c> > mapfac = New map<id, list<Faculty__c> >();
        List<Faculty__c> faclist = New list<Faculty__c>();
        List<collage__c> collist = new list<collage__c>();
        collist = [Select id, (select id,name from Facultys__r) from collage__c where name ='AIEC'];
        system.debug('collist....'+collist);
        for(collage__c col : collist)
        {
            for(Faculty__c fac : col.Facultys__r)
            {
                if(mapfac.containsKey (col.ID))
                {
                    mapfac.get(col.ID).add(fac);
                }
                else
                {
                    mapfac.put(col.ID, new List<Faculty__c>{fac});
                }
            }
        }
        system.debug('mapfac.....'+mapfac);
    }
}