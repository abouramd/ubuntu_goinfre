# abouramd

CACHE_GOFR=$(ls $HOME/goinfre/ | grep .cache);
CACHE_SYM=$(ls -la $HOME/ | grep .cache | grep lrwxr);
if [ "$CACHE_GOFR" = "" ]; then
    mkdir -p $HOME/goinfre/.cache
fi
if [ "$CACHE_SYM" = "" ]; then
    echo "MOVING CACHE TO GOINFRE :)"
    mv $HOME/.cache $HOME/goinfre/.cache_backup
    rm -rf $HOME/.cache; ln -s $HOME/goinfre/.cache $HOME/.cache;
fi

VSCODE_EXT=$(ls $HOME/goinfre | grep .vscode);
VSCODE_EXT_SYM=$(ls -la $HOME | grep .vscode | grep lrwxr);
if [ "$VSCODE_EXT" = "" ]; then
    mkdir -p $HOME/goinfre/.vscode
fi
if [ "$VSCODE_EXT_SYM" = "" ]; then
    echo "MOVING VSCODE EXTENSIONS TO GOINFRE :)"
    rm -rf $HOME/.vscode; ln -s $HOME/goinfre/.vscode $HOME/.vscode;
fi

VAR_EXT=$(ls $HOME/goinfre | grep .var);
VAR_SYM=$(ls -la $HOME | grep .var | grep lrwxr);
if [ "$VAR_EXT" = "" ]; then
    mkdir -p $HOME/goinfre/.var
fi
if [ "$VAR_SYM" = "" ]; then
    echo "MOVING VAR TO GOINFRE :)"
    rm -rf $HOME/.var; ln -s $HOME/goinfre/.var $HOME/.var;
fi
