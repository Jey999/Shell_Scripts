git remote update;
if [[ -d ~/.shell_scripts ]]; then
    if ! git status -uno | grep -q 'up to date'
    then
        ~/.shell_scripts/setup.sh;
    fi
    clear
fi

sh="$( cd "$( dirname "$0" )" && pwd )"

# configuration
GLOBAL_NGINX_HTML='/usr/local/var/www'; # directory where nginx websites are located
GLOBAL_NGINX_CONF='/usr/local/etc/nginx';

# configuration aliases
alias php56='/usr/local/Cellar/php@5.6/5.6.36_1/bin/php';
alias php71='/usr/local/Cellar/php@7.1/7.1.19/bin/php';
alias composer56='php56 /usr/local/bin/composer';
alias composer71='php71 /usr/local/bin/composer';
alias php='php71'; # Use php@7.1 by default
alias composer='composer71'; # Use php@7.1 by default for composer

# source scripts
source $sh/.rockar.sh
source $sh/.sparta.sh
source $sh/.git.sh

# Please use the following link to generate ascii banners
# http://patorjk.com/software/taag/#p=display&c=echo&f=Ogre&t=Packages%20%0AInstalled

# Please use the following link to minify bash scripts
# http://bash-minifier.appspot.com
