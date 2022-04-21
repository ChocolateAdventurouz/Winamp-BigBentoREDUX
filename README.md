![size](https://img.shields.io/github/repo-size/SecurityRaven/Winamp-BigBentoREDUX?style=flat-square)
![tweet](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2FSecurityRaven%2FWinamp-BigBentoREDUX)
<br>
Latest Version: 1.2.8 ([Changelog](https://github.com/SecurityRaven/Winamp-BigBentoUP/blob/changelogs/1.2.8.txt))
<br>
News: It is back! New features are coming...
# Winamp Big Bento Redux
This repository keeps alive the famous skin of Winamp 5, Big Bento by updating some components and resolving some bugs that were present and not resolved.
<br>![img](screenshot.png)
## Version Support
The skin (both preview & stable) is tested on these Winamp Versions:

- Winamp 5.666 (b3516)
- WACUP Preview (1.0.21.7236)
- Winamp 5.571
- Winamp 5.8
<br>
[STABLE] Winamp 5.6x or newer are the required Winamp versions to run the skin properly.
<BR>
[PREVIEW] Winamp 5.6x or newer are the required Winamp versions to run the skin properly.
<br>
WACUP Beta might have problems on it due to its ``gen_ff.dll`` (press f to pay gen_ff to work). If it works properly, then you are lucky. If not, :/

<br><h2> Installing the skin: </h2>
- On the repo, press code -> Download ZIP
- Create a folder called "Big Bento Redux" on ``<your Winamp installation directory>\Skins`` and extract the contents of the folder into the folder
- Run Winamp or WACUP and select the skin.
- Enjoy!
## Compiling the scripts (maki)

### "Traditional" Way:

Compile the scripts 1 by 1 using the following command ``.\mc.exe <script name>``

Therefore, it's recommended to compile them with [Vichtor's Winamp Compiler](https://drive.google.com/file/d/1rejKyZkHaDyFJh-iARvx_QIFQkzMbqO8/view) 
### Recommended Way (Vichtor's Winamp Compiler):
Place ALL the .m files on the folder and run the file ``buildall.bat``/

## Modifications

### Change the holdtime for the cycling mcv fileinfo
```	
	// A quick guide to the modders in order to change the holdtime for the cycling mcv fileinfo -Rel@m

	cycler = new Timer;
	// Here is the time in ms to hold every fileinfo
	cycler.setDelay(4000);

	delayLoad = new Timer;
	// Here is the time in ms for the transistion progress to cycle
	delayLoad.setDelay(10);
```
Don't forget to compile the script!
## Known Issues/Bugs

### The Winamp branding overlays with the eq
... The issue was discovered older (AOL Era or so). The issue was fixed but they did not provide the fixed `fileinfo.m` file on WASDP 1.14
