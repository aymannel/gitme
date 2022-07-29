#!/bin/zsh

path_obsidian="/path/to/obsidian/folder"


if [ -z $1 ]
then
    echo "gitme: please specify either update/revert"

elif [ $1 = 'update' ]
then
    if [ -z $2 ]
    then
        echo "gitme: please specify README source filename"

    elif [ $2 = '--all' ]
    then
        echo "gitme: --all support coming"

    else
        {
        cp $path_obsidian$2.md $PWD/README.md
        } && {
        echo $path_obsidian$2".md --> "$PWD/"README.md"
        git add $PWD/README.md
        git commit -m 'updated README.md'
        git push origin master
        }
    fi

elif [ $1 = 'revert' ]
    then
        log=$(git log --oneline)
    
    if [ -z $2 ]
        then
            echo 'gitme: please specify README source filename'

    else
        if [ -z $3 ]
            then
                for (( c=0; c<(1+1); c++ )); do read line; done <<< "$log" # get first line of commit history
                echo $line | cut -d " " -f1 | read commitid # pipe first word of line into $commitid
                git checkout "$commitid" README.md # revert README.md from $commitid
                git add README.md
                git commit -m 'README.md from previous commit restored'
                git push origin master
                cp $PWD/README.md $path_obsidian/$2.md                

        elif [[ "$3" =~ ^[0-9]+$ ]]
            then
                for (( c=0; c<($3+1); c++ )); do read line; done <<< "$log" # get nth line of commit history
                echo $line | cut -d " " -f1 | read commitid # pipe first word of line into $commitid
                git checkout "$commitid" README.md # revert README.md from $commitid
                git add README.md
                git commit -m "README.md from "$3" commits ago restored"
                git push origin master
                cp $PWD/README.md $path_obsidian/$2.md                
        else
            echo "gitme: unknown argument: "$2
        fi  
    fi
else
    echo "gitme: unknown argument: "$1
fi
