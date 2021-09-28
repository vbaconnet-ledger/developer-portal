# Ledger Developer Portal

This repository contains the documentations for third-party developers wishing to develop Nano Applications and to integrate Coins, Tokens or DApp to Ledger Live.

The compiled version of this repository is [developers.ledger.com](https://developers.ledger.com/).

The documentation is in the \_docs folder. Make a pull request if you want to contribute.

Steps to install for Linux:
1. `sudo apt install git`
2. `sudo apt install gnupg2`
3. `sudo apt-get install libicu-dev`
4. `sudo apt-get install cmake`
5. Install RVM : https://rvm.io/rvm/install
6. Restart your computer or virtual machine
7. `rvm install 2.7 && rvm --default use 2.7`
8. `gem install bundler:2.2.28`
9. `gem install jekyll`
10. Run `bundle install`
11. `./dp_dev.sh`to build the Developer Portal and start the local server
12. Visit localhost:4000 


Steps to install for MacOS: 
1. Install Commmand Line Developer Tools
2. Install Homebrew with `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. `brew install icu4c`
4. `brew install cmake`
7. Install RVM : https://rvm.io/rvm/install
8. Restart the Terminal
9. `rvm install 2.7 && rvm --default use 2.7`
10. `sudo gem install bundler:2.2.28`
11. `sudo gem install jekyll`
12.  Run `bundle install`
13. `./dp_dev.sh`to build the Developer Portal and start the local server
14. Visit localhost:4000 


Steps for Windows coming soon.
