all: bof

bof:
	@(mkdir _bin 2>/dev/null) && echo 'creating _bin directory' || echo '_bin directory exists'
	@(x86_64-w64-mingw32-gcc -w -Wno-int-conversion -Wno-incompatible-pointer-types -I _include -Os -c ./inject_poolparty.c -o _bin/inject_poolparty.x64.o -DBOF && x86_64-w64-mingw32-strip --strip-unneeded _bin/inject_poolparty.x64.o) && echo '[+] inject_poolparty' || echo '[!] inject_poolparty'

clean:
	@(rm -rf _bin)