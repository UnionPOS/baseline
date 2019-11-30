<!--

  ** DO NOT EDIT THIS FILE
  **
  ** This file was automatically generated by the `build-harness`.
  ** 1) Make all changes to `README.yaml`
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file.
  **

  -->
# Baseline



UNION POS baseline provisioning of OSX workstations

## Quick Start

On a fresh mac you won't have git or other required dependencies installed..
open a Terminal and run...

```sh
curl https://raw.githubusercontent.com/UnionPOS/baseline/master/bin/bootstrap | bash
```





## Usage

the slower start

1. `git clone https://github.com/UnionPOS/baseline` to pull down the repository
1. `make init` to initialize the [`build-harness`](https://github.com/UnionPOS/build-harness/)
1. `make bootstrap` to initialize project dependencies

this script does the following

- install XCode Command Line Tools
- create a git clone of this repo in your home directory
- install Homebrew package manager https://brew.sh

- install CLI applications using homebrew
  - python 2
  - python 3
  - chamber - https://github.com/segmentio/chamber
  - direnv - https://direnv.net
  - pyenv - https://github.com/pyenv/pyenv
  - pyenv-virtualenv - https://github.com/pyenv/pyenv-virtualenv

- install GUI applications
  - aws-vault - https://github.com/99designs/aws-vault
  - docker - https://www.docker.com/community-edition
  - google-chrome - https://www.google.com/chrome/
  - keybase - https://keybase.io
  - Slack - https://slack.com
  - Tunnelblick - https://tunnelblick.net
  - ZeroTier - https://zerotier.com## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/UnionPOS/baseline/issues) to report any bugs or file feature requests.

### Developing

PRs are welcome. We follow the typical "git-flow" Git workflow.

 1. **Clone** the project to your own machine
 1. **Commit** changes to your own branch
 1. **Push** your work back up to your fork
 1. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest upstream changes before making a pull request!
