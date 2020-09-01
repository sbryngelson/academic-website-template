#! /bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please enter one theme name from bootswatch.com. Aborting."
    exit
fi

# Make input lower case
theme=$(echo "$1" | tr '[:upper:]' '[:lower:]')
url="https://bootswatch.com/4/$theme/bootstrap.css"

if ! command -v curl &> /dev/null
then
    echo "'curl' could not be found. Please install it. Aborting."
    exit
fi

if curl --head --fail --silent "$url" >/dev/null; then
    echo 'Theme exists at ' $url
    echo 'Downloading...'
    mv _sass/bootstrap.scss _sass/bootstrap_bak.scss
    curl $url > _sass/bootstrap.scss
else
    echo $url 'does not exist, aborting.'
    exit
fi
