#export MAVEN_HOME="/Users/berkin/devel/Maven/apache-maven-3.3.9"
#export PATH=$PATH:$MAVEN_HOME/bin

export ACKRC=".ackrc"
# install vim with "brew install vim" to provide clipboard support and add alias
#alias vim="/usr/local/bin/vim"

git-blame() {
  ruby ~/bin/git-blame-colored $1 | less -R
}

for file in ~/.{extra,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
export PATH="/Users/berkincirak/bin/Sencha/Cmd/6.0.1.76/..:$PATH"
export PATH="/Users/berkincirak/bin/Sencha/Cmd/6.1.1.76/..:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
