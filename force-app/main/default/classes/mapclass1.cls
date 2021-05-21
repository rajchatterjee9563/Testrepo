public class mapclass1 
{
   public static void mapMethod()
   {
       map<Integer, string> m = New map<integer, string>();
       m.put(1, 'Fahad');
       m.put(2, 'Fahad');
       m.put(3, 'Rajesh');
       system.debug('m...'+m);
       system.debug('keyset....'+m.keyset());
       system.debug('values....'+m.values());
       system.debug('m....'+m.get(3));
       For(string s : m.values())
       {
           system.debug('s.....'+s);
       }
       For(integer i : m.keyset())
       {
           system.debug('i....'+i);
       }
   }
}