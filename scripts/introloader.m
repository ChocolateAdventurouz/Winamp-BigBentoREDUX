// Skin Audio Intro Loader  

#include "lib/std.mi"

Global Int PLIndex;
Global Int PLLength;

// That's my own configuration
System.onScriptLoaded ()
{   PLIndex = System.getPlaylistIndex();
    PLLength = System.getPlaylistLength();
    String intro = "file://D:\Documents\Winamp\Files/demo.aac"; // Winamp doesn't like the location without a prefix (thanks dro)
    if (PLLength == 0)
    {
        System.PlayFile(intro);
        System.clearPlaylist(); // Fix with the crossfader loop which makes Winamp crash
    }
    else
    {
        if (removePath(getPlayItemString()) == "demo.mp3") // Check if we are playing DJ Mike
        {
            if (getPlayitemmetadatastring("artist") == "DJ Mike Llama" && getplayitemmetadatastring("title") == "Llama Whippin' Intro")
            {
                return;
            }
        }

        else if (removePath(getPlayItemString()) == "demo.aac") // Check if we are playing 5.1 DJ Mike
        {
            if (getPlayitemmetadatastring("artist") == "DJ Mike Llama" && getplayitemmetadatastring("title") == "Llama Whippin' Experience")
            {
                return;
            }
        }
    }
      
}
