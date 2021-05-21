public class newinsertmapclass 
{
   public static void insertmapMethod()
   {
       Map<id, contact> mapofcon = New map<id, contact>([select id,name from contact]);
       system.debug('mapofcon...'+mapofcon);
   }
}