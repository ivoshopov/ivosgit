gitconfig_origin=$(HOME)/.gitconfig_origin
gitconfig=$(HOME)/.gitconfig

#q=echo
#q=@
q=

all: $(gitconfig_origin)
	$q cp .gitconfig $(gitconfig)

$(gitconfig_origin):
	if [ -f $(gitconfig) ]; then \
		$q cp $(gitconfig) $@; \
	fi

clean:
	if [ -f $(gitconfig_origin) ]; then \
		$q echo mv $(gitconfig_origin) $(gitconfig); \
	fi

diff:
	-diff $(gitconfig) .gitconfig
