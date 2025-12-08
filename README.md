# libgif.a

From the GIFLib Project 5.1.1 to /opt/cross-mint/m68k-atari-mint/lib/

Targets: 68000, 68020-060, ColdFire

# installation for makefiles

- /opt/cross-mint/m68k-atari-mint already installed 

- in an empty folder,  

- get /libgif.a/ from [gifdec_r4_src.zip](https://ptonthat.fr/files/gifdec/gifdec_r4_src.zip) and unpack the contents to ./  
  
  Some files have been modified to change malloc/calloc/free/realloc and use ldg functions, also memset(..., '\0', ...)
  have been replaced by calloc. These changes made it more stable under MagiC environment.

- libgif.xcodeproj is for Xcode 26.1, you may not need it if you use something else.
