export ACKRC=".ackrc"

git-blame() {
  ruby ~/bin/git-blame-colored $1 | less -R
}

for file in ~/.{extra,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

export PATH="/usr/local/opt/llvm/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
