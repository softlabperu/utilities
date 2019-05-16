#!/bin/bash
if [ -f .pakage ]
then
    usage()
    {
        echo "usage: [[-n <namefile>] | [-h]]"
    }
### MAIN
    case $1 in
        -n | --name )   shift
                        if [ -n "$1" ]
                        then
                            zip -r $1.zip $(for i in $(cat .package);do echo $i;done | xargs)
                        else
                          usage
                        fi
                        ;;
        -h | --help )   usage
                        exit
                        ;;
        * )             usage
                        exit 1
    esac
    shift
else
    echo "No existe archivo pakage"
fi
