# kapujino-batch-gitbrowser

First of all: Many thanks to the kodi team for this amazing software.
Also big thanks to the community and addon developers investing their private time to make things so easy and handy. Thank you.

What is this?
This build was created with the intention to have only (or mostly) german sources available and to play them easily.
It's also pretty small as only needed addons are included.

Requirements
- clean kodi installation
- kodi addon - gitbrowser (Installation instructions can be found at https://www.tvaddons.co/git-browser-kodi/)

Tested on
- osmc (kodi 18.3) @ Raspberry Pi 3B
- raspbian lite (kodi 18.4) @ Raspberry Pi 4B
- arch linux (kodi 18.4)
- android tv (kodi 18.4) @ phillips android tv

Installation
Attention: It's highly recommended to install this build on top of a clean kodi installation. There might be issues when you install it afterwards (especially when there are addons like Metalliq or EIM4QED).

- TODO


Usage
- openmeta player: You can browse content with either OpenInfo or OpenMeta. When the desired content was found you just have to click on it to query a search in xstream, isn't that easy? :)
- context search: For the context search it doesn't matter where you're currently browsing. It uses the titel of the actual selected item and creates the search query out of it. When you highlighted a menu item just open the context menu (e.g. the menu button on your remote), select 'Quick launch Super Favourites' and chose 'xStream_search'. This will query the xStream globalsearch function.


Known issues
- After you searched something with the xstream context search via Super Favourites the parent window of the search results has the same value as the search query. Therefore if you press back from the search results page it will query another search. The next "back" action will work as expected.
- When searching from OpenInfo's themed script interface the search results are in the background. So you have to click play, let the search finish and click "back" to close the script interface (your search results are shown in a typical kodi folder).
