#!/bin/bash

# range to in which order/pattern to delete repos.
repos=(
#        "fetch-merge"
#        "Netflix-"{1..20}
#here repos and init indicates repository name in github repository

)

# account authorix=zation token
token="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"

# For loop  to execute the  above mentioned range
for i in "${repos[@]}"
do
   curl -X DELETE -H "Authorization: token $token" "https://api.github.com/repos/PiyushN-24/$i"
   	# $token ... calls above token variable
	# PiyushN-24 ... account name
   	# $i ... to call for..loop
done

