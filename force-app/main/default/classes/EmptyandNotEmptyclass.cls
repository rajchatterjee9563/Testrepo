public class EmptyandNotEmptyclass 
{
    public static void emptyMethod(string nameofcollage)
    {
        List<collage__c> colloflist = New list<collage__c>();
        colloflist = [select name,id from collage__c where name = :nameofcollage];
        if(colloflist.isempty())
        {
            List<collage__c> listofcoll = New List<collage__c>();
            collage__c c1 = New collage__c();
            c1.Name = nameofcollage ;
            listofcoll.add(c1);
            system.debug('listofcoll....'+listofcoll);
            insert listofcoll ;
            List<collage__c> colllist = New list<collage__c>();
            colllist = [select name,id from collage__c where name = :nameofcollage];
            id collageid ;
            for(collage__c ca : colllist)
            {
                collageid = ca.id ;
                system.debug('colllist....'+collageid);
            }
            List<faculty__c> facoflist = New List<faculty__c>();
            for(integer i=0 ; i<3 ; i++)
            {
                faculty__c fac = new faculty__c();
                fac.name = 'Avishek' +string.valueof(i);
                fac.Collage__c  = collageid ;
                facoflist.add(fac);
            }
            system.debug('facoflist......'+facoflist);
            insert facoflist ;
        }
        if(!colloflist.isempty()) 
        {
            List<collage__c> coflist = New List<collage__c>();
            coflist = [select name,id from collage__c where name = :nameofcollage];
            id collid ;
            for(collage__c co : coflist)
            {
                collid = co.id ;
                system.debug('coflist....'+collid);
            }
            List<faculty__c> foflist = New List<faculty__c>();
            faculty__c f = New faculty__c();
            f.name = 'Raj' ;
            f.Collage__c = collid ;
            foflist.add(f);
            system.debug('foflist....'+foflist);
            insert foflist ;
        }
        map<id, list<Faculty__c> > mapfac = New map<id, list<Faculty__c> >();
        List<Faculty__c> faclist = New list<Faculty__c>();
        List<collage__c> collist = new list<collage__c>();
        collist = [Select id, (select id,name from Facultys__r) from collage__c where name = :nameofcollage];
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
        system.debug('mapfac....'+mapfac);
    }
}