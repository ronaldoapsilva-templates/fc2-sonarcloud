
include .env
export

test:
	go test

go_converage:
	go test -coverprofile=coverage.out

set_sonarqube:
	export SONAR_SCANNER_VERSION=5.0.1.3006
	export SONAR_SCANNER_HOME=$HOME/.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux
	export PATH=$SONAR_SCANNER_HOME/bin:$PATH
	export SONAR_SCANNER_OPTS="-server"
	export SONAR_TOKEN=${SONAR_TOKEN}

