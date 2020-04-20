

if [ ! -d $HOME/bin ]; then
    echo create bin directory under '$HOME'
    mkdir $HOME/bin
fi

# put script names below
readonly scripts=$(cat << END
cs
kc
END
)

readonly scriptPath="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

for s in $scripts; do
    if ln -s $scriptPath/$s $HOME/bin/$s; then
        echo link $s to bin
    fi 
done
