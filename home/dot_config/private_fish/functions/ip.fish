function ip --description 'Displays public ip address'
	dig +short myip.opendns.com @resolver1.opendns.com
end