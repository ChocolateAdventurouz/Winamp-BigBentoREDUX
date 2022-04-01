/*---------------------------------------------------
-----------------------------------------------------
Filename:	albumart.m
Version:	1.0

Type:		maki
Date:		20. Sep. 2007 - 16:54 
Author:		Martin Poehlmann aka Deimos
E-Mail:		martin@skinconsortium.com
Internet:	www.skinconsortium.com
		www.martin.deimos.de.vu
-----------------------------------------------------
---------------------------------------------------*/

#include <lib/std.mi>
#include <lib/com/songinfo.m>

Global AlbumArtLayer AlbumArt;

System.onScriptLoaded ()
{
	AlbumArt = getScriptGroup().findObject(getParam());
}

AlbumArt.onRightButtonDown (int x, int y)
{
	popupmenu p = new popupmenu;

	p.addCommand("Refresh Album Art", 1, 0, 0);
	p.addCommand("About...", 3, 0, 0);
	String path = getPath(getPlayItemMetaDataString("filename"));
	if(path != "")
	{
		p.addCommand("Open Folder", 2, 0, 0);
	}

	int result = p.popatmouse();
	delete p;

	if (result == 1)
	{
		AlbumArt.refresh();
	}
	else if (result == 2)
	{
		if(path != "")
		{
			System.navigateUrl(path);
		}
		else
		{
			String url = getPlayItemMetaDataString("streamurl");
			if(url != "")
			{
				System.navigateUrl(url);
			}
		}
	}
	else if (result == 3)
	{
		messagebox("\n Original Developers/Designers: Martin Pöhlmann, Taber Buhl, Ben Allison \n Unofficial Maintainer: Rel@m aka SecurityRaven \n \n Whip the llama's ass ;)", "🦙 Big Bento Redux [Version 1.2.9 Beta]", 0, "🦙");
		return;
	}
}

AlbumArt.onLeftButtonDblClk (int x, int y)
{
	String path = getPath(getPlayItemMetaDataString("filename"));
	if(path != "")
	{
		System.navigateUrl(path);
	}
	else
	{
		String url = getPlayItemMetaDataString("streamurl");
		if(url != "")
		{
			System.navigateUrl(url);
		}
	}
}