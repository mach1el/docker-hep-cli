# Heplify Client on Docker

![license](https://img.shields.io/github/license/mach1el/docker-hep-cli?color=pink&style=plastic)
![Size](https://img.shields.io/github/repo-size/mach1el/docker-hep-cli?style=plastic)
![imgsize](https://img.shields.io/docker/image-size/mich43l/hep-cli?color=grey&style=plastic)

### Pull from hub
	docker pull mich43l/hep-cli

### Build from source
	git clone https://github.com/mach1el/docker-hep-cli.git && cd docker-hep-cli
	docker image build -t docker-hep-cli .
	
### Run
*	docker run -tid --rm --name=hep-cli --network=host mich43l/docker-hep-cli
* docker run -tid --rm --name=hep-cli --network=host -e HEP_SERVER=10.10.20.10 mich43l/hep-cli
