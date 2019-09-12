# bformdec2

Linux:

g++ -O2 -shared -o /usr/lib64/csound/plugins64/bformdec2.so -fPIC bformdec2.cpp -I /usr/local/include/csound/

OSX:

g++ -O2 -dynamiclib -o bformdec2.dylib bformdec2.cpp -DUSE_DOUBLE -I/Library/Frameworks/CsoundLib64.framework/Headers
