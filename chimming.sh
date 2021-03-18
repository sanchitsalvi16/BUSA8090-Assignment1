#!/bin/bash

chimming=$(date +%M)
if [[ $chimming -ge 0 && $chimming -lt 20 ]]; then
        echo "No Chime"


elif [[ $chimming -ge 20 && $chimming -lt 40 ]]; then
        echo -e "\a"

else
        echo -e "\a"
        sleep 1
        echo -e "\a"


fi


