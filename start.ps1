git add . 
git commit -m [string](read-host)
git push 


$DM_Name = "docker1"
$command = @"
git clone git@github.com:Nibons/DotNetCore.git \
    && cd ./DotNetCore \
    && git checkout HelloWorld \
    && docker-compose build ./dockerstuff/. \
    && docker-compose up
"@
docker-machine ssh $DM_Name $command