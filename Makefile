.PHONY: clean format get upgrade upgrade-major pigeon outdated

clean:
	@echo "Cleaning the project"
	@rm -rf pubspec.lock
	@flutter clean

format:
	@echo "Formatting the code"
	@dart format -l 140 --fix ./lib/
	@dart fix --apply .

get:
	@echo "Geting dependencies"
	@flutter pub get

upgrade: get
	@echo "Upgrading dependencies"
	@flutter pub upgrade

upgrade-major: get
	@echo "Upgrading dependencies --major-versions"
	@flutter pub upgrade --major-versions

pigeon: get
	@echo "Running codegeneration"
	flutter pub run pigeon --input "pigeons/ticker.dart"

outdated:
	@flutter pub outdated
