# Create a file in root path .sh
# Always start with: #!/bin/bash
# give the permissions with
# chmod 755 run.sh

#!/bin/bash

# Update Gems
#bundle update

# Install Gems
#bundle install

clear
echo -e '\e[100m***************************************************************************************************************\e[49m'
echo -e '\e[100m*** PROGRAM:      CODEBOXX ODSSEY                                                                           ***\e[49m'  
echo -e '\e[100m*** WEEK 4:       Use and Program the Web                                                                   ***\e[49m'
echo -e '\e[100m*** DELIVERABLE:  website in Ruby on Rails in architecture (Model - View - Controller)                      ***\e[49m'
echo -e '\e[100m*** BY:           \e[41mJOSHUA KNUTSON   \e[49m\e[100m                                                                         ***\e[49m'
echo -e '\e[100m***               \e[42mVANESSA POLLICE  \e[49m\e[100m                                                                         ***\e[49m'
echo -e '\e[100m***               \e[43mALEXIS GRENIER   \e[49m\e[100m                                                                         ***\e[49m'
echo -e '\e[100m***               \e[44mJORGE CHAVARRIAGA\e[49m\e[100m                                                                         ***\e[49m'
echo -e '\e[100m*** DATE:         6-Mar-2020                                                                                ***\e[49m'
echo -e '\e[100m***************************************************************************************************************\e[49m'
sleep .60

echo ' '
echo ' '
echo ' '
echo ' '
echo -e '      \e[34m  `-:::::::                      -::              \e[39m/++++++++/.\e[34m                                       '
echo -e '      \e[34m.oyyyssssss                      oys              \e[39mdMMMNNNMMMMy\e[34m                                      '
echo -e '      \e[34moyy+`         .------.     .-----sys    `.---.    \e[39mdMM+    .NMM`\e[34m    ``````   \e[39m-//:   -//:   :::.  `///'
echo -e '      \e[34msyy-        `oyyyyyyyys- -syyyyyyyys  :oyysssys/` \e[39mdMMs////oMMd\e[34m   .syyyys/+` \e[39m`yMMh`+MMm.   /NMN:.dMMo'
echo -e '      \e[34msyy-        /yy-    .syo`sys.`   oys :yy:.```-yy: \e[39mdMMMMMMMMMM/\e[34m  -syyyyo+yyo`\e[39m  +MysMMy`     .dMM+hN: '
echo -e '      \e[34msyy.        /yy`     syo.yy/     oys oyyyyyyyyyy/ \e[39mdMMo.....yMM+.\e[34mooooo++yyyys`\e[39m  :+MMd        `NMM:-  '
echo -e '      \e[34moyy/``````` :yy-    .yyo`sys.    oys +yy:....```` \e[39mdMM+`````yMM+\e[34m /yyyyy+syys-  \e[39moMyoMMh`     .mMN+dN/ '
echo -e '      \e[34m`+yyyyyyyys `oyyyyyyyys- .syyyyyyyys `+syyyyyyy+  \e[39mdMMMMMMMMMMh`\e[34m  :yyyyy+os. \e[39m`hMM+ -mMN:   /NMd.`sMMs'
echo -e '      \e[34m  `.-------   .------.`    .--------    ..-----.  \e[39m:////////:`\e[34m     .:::::.`  \e[39m://-   `///  `///`   ://'
echo ''
echo ''
echo ''
echo ''
sleep .60

fortune | cowsay
sleep .3

echo ''
echo ''
echo ''
# Run Rails server
rails server
