#include <lib/std.mi>

//#define DEBUG
#define FILE_NAME "nowplaying.m"
#define MAIN_INFO "art.info.title"
Global Group scriptGroup, g_title, g_artist;
Global Layer lay;
Global Text t_title, t_artist;

System.onScriptLoaded ()
{
    scriptGroup = getScriptGroup();
    lay = scriptGroup.getobject("art.info.title");
    t_title.setText(getplayitemmetadatastring("title"));
    t_artist.setText(getplayitemmetadatastring("artist"));
    return t_title;
}