#!/usr/bin/env fish

if ! test -d ~/.gvm
	sh -c "$(curl -fsLS https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"
end