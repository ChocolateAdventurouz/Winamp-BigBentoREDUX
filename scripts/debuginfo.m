#include <lib/std.mi>

System.onScriptLoaded()
{
    Group scriptGroup = getscriptGroup();
    scriptGroup.findObject("winamp.albumart")
    if (isKeyDown(VK_ALT) && isKeyDown(VK_CONTROL))
    {
        messagebox("Winamp Information \n \n Winamp Version:" + System.getWinampVersion() + "\n Build Number:" + IntegerToString(System.getBuildNumber()) + "\n MAKI Runtime Version:" + System.getRuntimeVersion() + "\n Pro Version:" + system.isProVersion() + "\n Now Playing:" + removePath(getPlayItemString()) + "\n\n\n\n\n Debug Info - Coded by Rel@m aka SecurityRaven", "Debug Info", 0, "");
        return;
        return;
    }
}
System.onScriptUnloading()
{
    return;
}