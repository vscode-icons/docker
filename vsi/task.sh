#!/bin/bash
RED='\033[1;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
if [[ -n ${task} ]]; then
	if [[ ${task} = 'build' || ${task} = 'dist' ]]; then
	    if [[ ${task} = 'build' ]]; then
          git pull
      fi
      npm i --unsafe-perm -q
      npm run build
	    if [[ ${task} = 'dist' ]]; then
	        echo -e "Copying dist files to 'vsi-out'..."
	        cp -R -p out/src/* ../vsi-out
	        if [[ $? -eq 0 ]]; then
	            echo -e "${GREEN}Dist files copied to 'vsi-out'${NC}"
	        fi
      fi
  else
	    echo -e "${RED}Please provide a task parameter: '-e task=[dist, build]'${NC}"
	fi
else
    echo -e "${RED}Please provide a task parameter: '-e task=[dist, build]'${NC}"
fi
