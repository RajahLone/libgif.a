# libgif.a

From the GIFLib Project 5.2.2 to /opt/cross-mint/m68k-atari-mint/lib/

Targets: 68000, 68020-060, ColdFire

# installation for makefiles

- /opt/cross-mint/m68k-atari-mint already installed 

- in an empty folder,  

- get [giflib-5.2.2.tar.gz](https://giflib.sourceforge.net/), you'll need only to unpack  
   ```./*.h``` and  
   ```./*.c``` to the current folder.  

- get /libgif.a/ from [gifdec_r2_src.zip](https://ptonthat.fr/files/gifdec/gifdec_r3_src.zip) and unpack the contents to ./  
   ```./README.md```  
   ```./Makefile```  
   ```./libgif.xcodeproj```  
   ```./dgif_lib.c``` (modified param in calloc)  
   ```./gif_lib.h``` (modified param malloc, by macro)  
   ```./gifalloc.c``` (modified param in calloc)  

- libgif.xcodeproj is for Xcode 16.3, you may not need it if you use something else.
