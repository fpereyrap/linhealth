echo "******************************"
echo "     System information "
echo "******************************"
echo "Operating system : $(uname)"
echo "******************************"
echo "     eth0 Configuration "
echo "******************************"
ifconfig eth0 | grep "inet addr"
echo "******************************"
echo "          Hostname "
echo "******************************"
echo "      "$HOSTNAME
echo "***********************"
echo "*** Network routing ***"
echo "***********************"
netstat -nr
echo "**************************************"
echo "*** Interface traffic information ***"
echo "**************************************"
netstat -i
echo "**************************************"
echo "*** List of Users ***"
echo "**************************************"
cut -d: -f1 /etc/passwd
echo "*********************************"
echo "*** Current Log on Users ***"
echo "*********************************"
who
echo "***********************************"
echo "*** Last logged on Users ***"
echo "***********************************"	
ps auxf | sort -nr -k 4 | head -5
echo "*********************************"
echo "*** Virtual memory statistics ***"
echo "*********************************"
vmstat
echo "***********************************"
echo "*** Top 5 memory eating process ***"
echo "***********************************"	
ps auxf | sort -nr -k 4 | head -5