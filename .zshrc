# zmodload zsh/zprof
export ZSH="/Users/sean/.oh-my-zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

skip_global_compinit=1

source $ZSH/oh-my-zsh.sh

alias  ..="cd .."
alias  ...="cd ../.."
alias  ....="cd ../../.."
alias  .....="cd ../../../.."
alias  ......="cd ../../../../.."
alias  .......="cd ../../../../../.."
alias  ........="cd ../../../../../../.."
alias  .........="cd ../../../../../../../.."

alias bat="bat --theme=TwoDark"

alias dg="d | grep"
alias deit="docker exec -it"
alias di="docker images"
alias dil="docker images | sed -n '2p' | awk '{print \$3}' | pbcopy"
alias dk="docker kill"
alias dkl="docker ps | sed -n '2p' | awk '{print \$1}' | xargs docker kill"
alias dps="docker ps"
alias dpsl="docker ps | sed -n '2p' | awk '{print \$1}'"
alias dritrm="docker run -it --rm"
alias drmid="docker rmi $(docker images --filter 'dangling=true' -q --no-trunc)"
alias drmif="docker rmi -f"
alias ecc="cp ~/code/github/seanturner026/dotfiles/.editorconfig ."
alias eccf="cp -f ~/code/github/seanturner026/dotfiles/.editorconfig ."

alias ga="git add"

alias gb="git branch"
alias gbd="git branch -d"
alias gbD="git branch -D"

alias gcmsg="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"

alias gd="git diff"

alias gfo="git fetch origin"

alias ggu="go get -u"

alias gl="git log --format=format:'%C(auto)%h %C(green)%aN%Creset %s' --graph"

alias gpap="git pull --all --prune"
alias gpo="git push origin"

alias grai="git rebase --autosquash -i"
alias gri="git rebase -i"

alias gs="git show"
alias gsl="git stash list"
alias gspi="git stash pop --index"
alias gss="git stash save"
alias gss0="git stash show -p stash@{0} >~/.diff && vim ~/.diff"
alias gss1="git stash show -p stash@{1} >~/.diff && vim ~/.diff"
alias gss2="git stash show -p stash@{2} >~/.diff && vim ~/.diff"
alias gst="git status"

alias hg="history | grep"

alias ip="curl -s icanhazip.com | pbcopy"

alias k="kubectl"

alias kctx="kubectx"

alias kdcm="kubectl describe configmap"
alias kdelp="kubectl delete pod"
alias kdelpn="kubectl delete pod --now"
alias kdi="kubectl describe ingress"
alias kdp="kubectl describe pod"
alias kds="kubectl describe service"
alias kdsa="kubectl describe serviceaccount"
alias kdsec="kubectl describe secret"

alias keit="kubectl exec -it"

alias kgcm="kubectl get configmap"
alias kgcmy="kubectl get configmap -o yaml"
alias kgd="kubectl get deployment"
alias kgdy="kubectl get deployment -o yaml"
alias kgi="kubectl get ingress"
alias kgiy="kubectl get ingress -o yaml"
alias kgn="kubectl get node"
alias kgp="kubectl get pod"
alias kgpw="kubectl get pod -w"
alias kgpy="kubectl get pod -o yaml"
alias kgs="kubectl get service"
alias kgsa="kubectl get serviceaccount"
alias kgsay="kubectl get serviceaccount -o yaml"
alias kgsec="kubectl get secret"
alias kgsecy="kubectl get secret -o yaml"
alias kgsy="kubectl get service -o yaml"

alias kl="kubectl logs"
alias klf="kubectl logs -f"

alias kns="kubens"

alias ls="/usr/local/opt/coreutils/libexec/gnubin/ls \
  -lhAGH \
  --color=always \
  -I .DS_Store \
  -I .ipynb_checkpoints \
  -I .vscode \
  -I __pycache__"

alias ng="cat ~/Dropbox/notes.md | grep"

alias pip="pip3"
alias python="python3"
alias pylc="cp ~/python/github/dotfiles/.pylintrc ."
alias pylcf="cp -f ~/python/github/dotfiles/.pylintrc ."

alias rl="source ~/.zshrc"

alias sls="serverless"
alias slsd="serverless deploy"
alias slsws="serverless wsgi serve"

alias t="tree -C -I '.DS_Store|.git|.ipynb_checkpoints|__pycache__|node_modules|vendor|*.pyc|venv'"
alias ta="tree -a -C -I '.DS_Store|.git|.ipynb_checkpoints|__pycache__|node_modules|vendor|*.pyc|venv'"
alias td="tree -d -C -I '.DS_Store|.git|.ipynb_checkpoints|__pycache__|node_modules|vendor|*.pyc|venv'"
alias tda="tree -d -a -C -I '.DS_Store|.git|.ipynb_checkpoints|__pycache__|node_modules|vendor|*.pyc|venv'"

alias tfa="aws-vault exec wcc-terraform -- terraform apply"
alias tfc="aws-vault exec wcc-terraform -- terraform console"
alias tfi="aws-vault exec wcc-terraform -- terraform import"
alias tfinit="aws-vault exec wcc-terraform -- terraform init"
alias tfo="aws-vault exec wcc-terraform -- terraform output"
alias tfp="aws-vault exec wcc-terraform -- terraform plan"
alias tfsl="aws-vault exec wcc-terraform -- terraform state list"
alias tfsm="aws-vault exec wcc-terraform -- terraform state mv"
alias tfsp="aws-vault exec wcc-terraform -- terraform state pull"
alias tfsrm="aws-vault exec wcc-terraform -- terraform state rm"
alias tfss="aws-vault exec wcc-terraform -- terraform state show"

alias tfa12="aws-vault exec wcc-terraform -- terraform12 apply"
alias tfc12="aws-vault exec wcc-terraform -- terraform12 console"
alias tfi12="aws-vault exec wcc-terraform -- terraform12 import"
alias tfinit12="aws-vault exec wcc-terraform -- terraform12 init"
alias tfo12="aws-vault exec wcc-terraform -- terraform12 output"
alias tfp12="aws-vault exec wcc-terraform -- terraform12 plan"
alias tfsl12="aws-vault exec wcc-terraform -- terraform12 state list"
alias tfsm12="aws-vault exec wcc-terraform -- terraform12 state mv"
alias tfsp12="aws-vault exec wcc-terraform -- terraform12 state pull"
alias tfss12="aws-vault exec wcc-terraform -- terraform12 state show"

alias tmuxr="tmux source-file ~/.tmux.conf"

alias ytop="ytop -c solarized-dark"

alias zg="cat ~/.zshrc | grep"

export DOCKER_BUILDKIT=1
export PROMPT_EOL_MARK=""

# serverless
export PATH="$HOME/.serverless/bin:$PATH"
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# brew
export PATH="/usr/local/sbin:$PATH"

# go
export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PIP_REQUIRE_VIRTUALENV=true
source ~/.p10k-sean.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sean/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sean/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sean/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sean/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(rbenv init -)"

# zprof

