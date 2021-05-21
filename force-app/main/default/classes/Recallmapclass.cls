public class Recallmapclass 
{
   public static void recallMethod()
   {
       map<integer, string> m = New map<integer, string>();
       m.put(1,'Raj');
       m.put(2,'salesforce');
       m.put(3, 'trailhead');
       system.debug('m....'+m);
       system.debug('keyset...'+m.keyset());
       system.debug('values...'+m.values());
       system.debug('m...'+m.get(2));
       for(string s : m.values())
       {
           system.debug('s....'+s);
       }
       for(integer i : m.keyset())
       {
           system.debug('i...'+i);
       }
   }
}