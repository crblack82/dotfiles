#!/usr/bin/env fish

if ! test -d ~/.gvm
	sh -c "$(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"
end