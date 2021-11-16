#!/bin/bash

echo "Exporting Variables"
export SNPSLMD_LICENSE_FILE=27000@172.21.9.211
export VCS_HOME=/home/gcastrolocal/tools/vcs/R-2020.12-SP2/
export SYNOPSYS=/home/gcastrolocal/tools/icc/R-2020.09-SP5-1

PS3='Please enter your choice: '
options=("Design Compiler" "VCS" "Tetramax" "Verdi" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Design Compiler")
            /home/gcastrolocal/tools/syn/R-2020.09-SP5-1/bin/design_vision;;
        "VCS")
            /home/gcastrolocal/tools/vcs/R-2020.12-SP2/bin/vcs -full64
            ;;
        "Tetramax")
            /home/gcastrolocal/tools/icc/R-2020.09-SP5-1/linux64/syn/bin/tmax64
            ;;
         "Verdi")
            /home/gcastrolocal/tools/verdi/R-2020.12-SP2/bin/verdi
            ;;
        "Quit")
            break
            ;;
        *) break;;
    esac
done
