#/bin/sh

#FUPGRB Fast Update Program from Github and Run it in Bash
#This is example file, you can use it to easy run Processing 4 (but you must run "git clone https://github.com/processing/processing4.git" first)

cd $HOME/processing4/ #Git folder

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
                cd build
                ant build
                cd ..
        fi;
    else
        echo "Offline"
fi
cd build/linux/work #Build folder
./processing
