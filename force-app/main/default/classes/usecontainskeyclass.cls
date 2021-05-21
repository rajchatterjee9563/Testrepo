public class usecontainskeyclass 
{
    public static void containsMethod()
    {
        map<integer, string> containsmap = New map <integer, string>();
        containsmap.put(1 ,'Salesforce');
        containsmap.put(2, 'Trailhead');
        containsmap.put(3, 'Badges');
        system.debug(containsmap.containskey(3));
        system.debug('containsmap....'+containsmap.get(3));
    }
}