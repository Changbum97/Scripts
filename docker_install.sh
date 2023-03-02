# 업데이트
sudo apt-get update -y

# HTTP 패키지 설치
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# gpg 키 및 저장소 추가
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository --yes \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Docker 엔진 설치
sudo apt-get install docker-ce docker-ce-cli containerd.io -y