CMD=$(filter-out $@,$(MAKECMDGOALS))
webapp: ; @docker-compose exec webapp ${CMD}
composer: ; @make webapp CMD="php composer.phar ${CMD}"
%: ; @: