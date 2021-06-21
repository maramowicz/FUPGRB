#/bin/sh

#FUPGRB Fast Update Program from Github and Run it in Bash
#This is template file, only check internet connecton ;)

cd /path/to/data #on this line write the path to the cloned repository folder

echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ];
    then
        git fetch
        UPSTREAM=${1:-'@{u}'}
        LOCAL=$(git rev-parse @)
        REMOTE=$(git rev-parse "$UPSTREAM")
        BASE=$(git merge-base @ "$UPSTREAM")

        if [ $LOCAL = $REMOTE ];
            then
                echo "Up-to-date"
            elif [ $LOCAL = $BASE ]; then
                echo "Updating..."
                git pull
                echo "Rebuilding..."
                #Below this line write the recompilation code

                #Above this line write the recompilation code
        fi;
    else
        echo "Offline"
fi
#Below this line write the run code

#Above this line write the run code

