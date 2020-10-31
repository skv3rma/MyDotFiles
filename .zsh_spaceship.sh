# ORDER
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  java          # Java section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
	user
	pyenv
)
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_USER_SHOW=true
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
# SPACESHIP_CHAR_SYMBOL="λ "

# USER
# SPACESHIP_USER_PREFIX="" # remove `with` before username
# SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX='in ' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='5' # show only last directory

# GIT
# Disable git symbol
# SPACESHIP_GIT_SYMBOL="" # disable git prefix
SPACESHIP_GIT_BRANCH_PREFIX="" # disable branch prefix too
# Wrap git in `git:(...)`
SPACESHIP_GIT_PREFIX='git:('
SPACESHIP_GIT_SUFFIX=") "
SPACESHIP_GIT_BRANCH_SUFFIX="" # remove space after branch name
# Unwrap git status from `[...]`
SPACESHIP_GIT_STATUS_PREFIX=""
SPACESHIP_GIT_STATUS_SUFFIX=""

# NODE
SPACESHIP_NODE_PREFIX="node:("
SPACESHIP_NODE_SUFFIX=") "
SPACESHIP_NODE_SYMBOL=" "

# RUBY
SPACESHIP_RUBY_PREFIX="ruby:("
SPACESHIP_RUBY_SUFFIX=") "
# SPACESHIP_RUBY_SYMBOL=""

SPACESHIP_RUBY_PREFIX="rust:("
SPACESHIP_RUBY_SUFFIX=") "
SPACESHIP_RUST_SYMBOL=" "
# SPACESHIP_RUST_SYMBOL="🦀 "

# XCODE
SPACESHIP_XCODE_PREFIX="xcode:("
SPACESHIP_XCODE_SUFFIX=") "
# SPACESHIP_XCODE_SYMBOL=""

# SWIFT
SPACESHIP_SWIFT_PREFIX="swift:("
SPACESHIP_SWIFT_SUFFIX=") "
# SPACESHIP_SWIFT_SYMBOL=""

# GOLANG
# SPACESHIP_GOLANG_PREFIX="go:("
# SPACESHIP_GOLANG_SUFFIX=") "
SPACESHIP_GOLANG_SYMBOL=" "

# DOCKER
SPACESHIP_DOCKER_PREFIX="docker:("
SPACESHIP_DOCKER_SUFFIX=") "
# SPACESHIP_DOCKER_SYMBOL=""

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "
# SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_VENV_SYMBOL=" "

# PYENV
SPACESHIP_PYENV_PREFIX="python:("
SPACESHIP_PYENV_SUFFIX=") "
# SPACESHIP_PYENV_SYMBOL="🐍"

# JAVA
SPACESHIP_PYENV_PREFIX="java:("
SPACESHIP_PYENV_SUFFIX=") "
# SPACESHIP_PYENV_SYMBOL="🐍"
