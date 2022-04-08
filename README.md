Latest Version: 1.2.8 ([Changelog](https://github.com/SecurityRaven/Winamp-BigBentoUP/blob/changelogs/1.2.8.txt))
# Winamp Big Bento Redux
This repository keeps alive the famous skin of Winamp 5, Big Bento by updating some componets and resolving some bugs that were present and not resolved.
<br>![img](screenshot.png)
## Version Support
The skin (both preview & stable) is tested on these Winamp Versions:

- Winamp 5.666 (b3516)
- Winamp 5.7 (b3392)
- WACUP Preview (1.0.21.7236)

Winamp 5.6x or newer are the recommended Winamp versions to run the skin properly.
<br>
WACUP Beta might have problems on it due to its ``gen_ff.dll`` (press f to pay gen_ff to work). If it works properly, then you are lucky. If not, :/
## Installing the skin:
- On the repo, press code -> Download ZIP
- Create a folder called "Big Bento Redux" on ``<your winamp installation directory>\Skins`` and extract the contents of the folder into the folder
- Run Winamp or WACUP and select the skin.
- Enjoy!
## Compiling the scripts (maki)

### "Traditional" Way:

Compile the scripts 1 by 1 using the following command ``.\mc.exe <script name>``

Therefore, it's recommended to compile them with [Vichtor's Winamp Compiler](https://drive.google.com/file/d/1rejKyZkHaDyFJh-iARvx_QIFQkzMbqO8/view) 
### Recommended Way (Vichtor's Winamp Compiler):
Place ALL the .m files on the folder and run the file ``buildall.bat``/


## Disabling the "CoverPlaying" mod

### Edits on XML file:
First, go to the XML directory from Skin's folder and open the ``player-normal-sui.xml`` file and remove these lines:

```
<Bento:TabButton
		id="switch.art"
		x="321" h="23" w="83" y="7"
		tabtext="⭐CoverPlaying"
/>
```
Press F5 if you have Winamp/WACUP already open.

