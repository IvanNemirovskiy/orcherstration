which -s brew
if [[ $? != 0 ]] ; then
    echo "installing homebrew"
    # shellcheck disable=SC2164
    cd
    git clone https://gitlab.ucode.world:8443/services/ubrew
    # shellcheck disable=SC2164
    cd ./ubrew
    zsh install.sh
    echo "brew successfully installed"
else
    echo "homebrew already installed"
fi

which -s docker
if [[ $? != 0 ]] ; then
    echo "installing docker"
    brew install docker
    echo "docker successfully installed"
else
    echo "docker already installed"
fi

which -s minikube
if [[ $? != 0 ]] ; then
    echo "installing minikube"
    brew install minikube
    echo "minikube successfully installed"
else
    echo "minikube already installed"
fi
which kubectl
which hyperkit
which minikube