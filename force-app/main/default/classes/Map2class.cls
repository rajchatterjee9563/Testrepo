public class Map2class
{
   public static void mapmethod()
   {
       map<id, Library__c> libmap = New map<id, Library__c>(); 
       List<Library__c> liblist = New List<Library__c>([select name,id from Library__c]);
       system.debug('liblist....'+liblist);
       for (Library__c l : liblist)
       {
           libmap.put(L.id, L);
       }
         id libid = id.valueOf('a0H7F00000mCmh9UAC');
         string str = string.valueOf('a0H7F00000mCmh9UAC') ;
         system.debug('libmap...'+libmap);
         system.debug('m....'+libmap.get(libid));
   }
}