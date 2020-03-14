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

mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT id, created_at, business, email, project_name FROM leads;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/leads.csv
mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT id, created_at, business, email, nb_cages FROM quotes;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/quotes.csv


#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM users;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/users_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM customers;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/customers_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM employees;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/employees_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM batteries;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/batteries_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM columns;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/columns_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM elevators;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/elevators_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM leads;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/leads_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM quotes;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/quotes_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM building_details;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/building_details_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM buildings;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/buildings_full.csv
#mysql -ucopydb -pCodeBoxx myapp_development -B -e "SELECT * FROM addresses;" 2>/dev/null | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g" > /home/jachavar/Rocket_Elevators_Information_System/tmp_data/addresses_full.csv

sleep 2m 30s
psql -h localhost -d postgres -U dbpostgresql -c "\TRUNCATE TABLE factquotes RESTART IDENTITY"
psql -h localhost -d postgres -U dbpostgresql -c "\TRUNCATE TABLE factcontact RESTART IDENTITY"



sleep 2m 30s

psql -h localhost -d postgres -U dbpostgresql -c "\COPY factquotes FROM '/home/jachavar/Rocket_Elevators_Information_System/tmp_data/quotes.csv' with csv header"
psql -h localhost -d postgres -U dbpostgresql -c "\COPY factcontact FROM '/home/jachavar/Rocket_Elevators_Information_System/tmp_data/leads.csv' with csv header"


sleep 5m
cd /home/jachavar/Rocket_Elevators_Information_System/tmp_data/
rm -f -r *.csv