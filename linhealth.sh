echo "******************************"
echo "     System information "
echo "******************************"
echo "Operating system : $(uname)"
echo "******************************"
echo "     eth0 Configuration "
echo "******************************"
ipvar= ifconfig eth0 | grep "inet addr"
echo "******************************"
echo "          Hostname "
echo "******************************"
echo "      "$HOSTNAME
