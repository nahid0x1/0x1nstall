#!/bin/bash

#TOOLS: subfinder, assetfinder, findomain, amass, chaos, gf, snap, knockpy, sublist3r, gau, uro, nuclei, nmap,
# photon, arjun, dirbuster, dirb, secretfinder, Mantra, katana, paramspider, cewl, anew, ffuf, aws, s3scanner,
# puredns, feroxbuster, xnLinkFinder, subzy

#requirement
apt update #update repo
apt upgrade -y #upgrade system
apt install -y python3 golang

#golang
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest #subfinder
go install -v github.com/tomnomnom/assetfinder@latest #assetfinder
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest #chaos
go install github.com/tomnomnom/waybackurls@latest #waybackurls
go install github.com/tomnomnom/gf@latest #gf
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest #naabu
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest #httpx
go install github.com/hahwul/dalfox/v2@latest #dalfox
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest #nuclei
go install github.com/MrEmpy/Mantra@latest #Mantra
go install -v github.com/projectdiscovery/katana/cmd/katana@latest #katana
go install -v github.com/tomnomnom/anew@latest #anew
go install github.com/ffuf/ffuf/v2@latest #ffuf
go install github.com/d3mondev/puredns/v2@latest #puredns
go install -v github.com/LukaSikic/subzy@latest #subzy


#golang tools setup
mv ~/go/bin/* /bin

#GF Patterns Setup
git clone https://github.com/1ndianl33t/Gf-Patterns
git clone https://github.com/tomnomnom/Gf
mkdir -p ~/.gf && cd ~/Gf/examples && cp * ~/.gf && cd ~/Gf-Patterns && cp * ~/.gf

#findomain install
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux-i386.zip #findomain
unzip findomain-linux-i386.zip #findomain
chmod +x findomain #findomain
sudo mv findomain /usr/bin/findomain #findomain


#tools from repo
apt install -y amass snap knockpy sublist3r nmap photon arjun dirbuster dirb cewl aws s3scanner feroxbuster


#github
git clone https://github.com/lc/gau.git #gau
cd gau/cmd #gau
go build #gau
sudo mv gau /usr/local/bin/ #gau

git clone https://github.com/m4ll0k/SecretFinder.git secretfinder #secretfinder
cd secretfinder #secretfinder
pip3 install -r requirements.txt #secretfinder

git clone https://github.com/xnl-h4ck3r/xnLinkFinder.git #xnLinkFinder
cd xnLinkFinder #xnLinkFinder
sudo python3 setup.py install #xnLinkFinder

git clone https://github.com/devanshbatham/paramspider #paramspider
cd paramspider #paramspider
pip3 install . #paramspider

#python pip3
pip3 install uro #uro
