function ip --description 'Dispalys public IP.'
	dig +short myip.opendns.com @resolver1.opendns.com
end