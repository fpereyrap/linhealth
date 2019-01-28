echo "******************************"
echo "     System information "
echo "******************************"
echo "Operating system : $(uname)"

function host_info(){
	local dnsips=$(sed -e '/^$/d' /etc/resolv.conf | awk '{if (tolower($1)=="nameserver") print $2}')
	echo "******************************"
	echo " Hostname and DNS information "
	echo "******************************"
	echo "Hostname : $(hostname -s)"
	echo "DNS domain : $(hostname -d)"
	echo "Fully qualified domain name : $(hostname -f)"
	echo "Network address (IP) :  $(hostname -i)"
	echo "DNS name servers (DNS IP) : ${dnsips}"
}

host_info ;;