
/*------------------------

	 CoverPlaying
	 =========
   Metadata Transmitter

	Version 1.0.3

Coded by: ChocolateAdventurouz
Description: It obtains the song title and "transmits" it to the mod
------------------------*/

#include <lib/std.mi>

#include <lib/com/songinfo.m>

Global GuiObject sg_title;
Global Text cp_title;

Function loadmetadata();
System.onScriptLoaded()
{
	Group mainnormal = getContainer("main").getLayout("normal");

	sg_title = mainnormal.findObject("CoverPlaying.Title");
	cp_title = sg_title.findObject("text");



	loadmetadata();

}

loadmetadata()
{
	String METATITLE = System.getplayitemmetadatastring("title");
	String METARTIST = System.getplayitemmetadatastring("artist");
	String NULLTitle = System.removePath(getPlayItemString());

	if (getplayitemmetadatastring("title") == "")
	{
			sg_title.setXMLParam("text", "Loading Metadata...");
			sg_title.setXMLParam("text", "Now Playing: " + NULLTitle);

	}
	else{
		if (getplayitemmetadatastring("artist") != "")
		{
			sg_title.setXMLParam("text", "Loading Metadata...");
			sg_title.setXMLParam("text", "Now Playing: " + METATITLE + " - With: " + METARTIST);
		}
		else{
			sg_title.setXMLParam("text", "Loading Metadata...");
			sg_title.setXMLParam("text", "Now Playing: " + METATITLE);
		}
	}
}
System.onStop()
{
	sg_title.setXMLParam("text", "Stopped.");
}
System.onResume()
{
	loadmetadata();
}
System.onTitleChange(String newtitle)
{
	loadmetadata();
}