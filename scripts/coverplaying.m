
/*------------------------

	 CoverPlaying
	 =========
   Metadata Transmitter

	Version 1.0.0

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
	sg_title.setXMLParam("text", METATITLE);

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