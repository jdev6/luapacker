# luapacker
Tool that uses [srlua](http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua/#srlua) to compile lua scripts into executable files

# Usage
Install with 

    sudo ./install.sh

and uninstall with

    sudo ./uninstall.sh

These will use the directories '/usr/bin/luapacker' and '/opt/luapacker' by default.

If you need to change them, just change the lines in the scripts:

    optdir='/path/to/srlua_and_glue/' #for the srlua and glue executables (folder)
    bindir='/path/to/luapacker' #for the actual executable
