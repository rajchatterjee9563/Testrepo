public class customMethodPassclass 
{
    public static void passMethod(string Nameofcollage)
    {
        Map<id,List<Faculty__c>> mapofcustom = New Map<id,list<Faculty__C>>();
        List<Faculty__c> facoflist = new list<Faculty__c>();
        List<collage__c> coloflist = New list<collage__C>();
        coloflist = [select id, (select name,id from Facultys__r) from collage__c where name = :Nameofcollage];
        system.debug('coloflist.....'+coloflist);
        if(coloflist.isempty())
        {
            List<collage__c> listofcol = New list<collage__c>();
            collage__c col = New collage__c();
            col.name = Nameofcollage ;
            listofcol.add(col);
            system.debug('listofcol....'+listofcol);
            insert listofcol ;
        }
    }
}