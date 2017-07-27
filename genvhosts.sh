source certgen.cfg
cat ./header.conf > $CONFDIR/$1.conf
#sed -i "s/\*\:443/$1\:443/g" /opt/lampp/etc/sites-enabled/$1.conf
echo "ServerName $1" >> $CONFDIR/$1.conf
echo "SSLCertificateFile $CERTDIR/$1.crt" >> $CONFDIR/$1.conf
echo "SSLCertificateKeyFile $CERTDIR/device.key" >> $CONFDIR/$1.conf
echo "SSLCertificateChainFile $CERTDIR/rootCA.pem" >> $CONFDIR/$1.conf
cat ./footer.conf >> $CONFDIR/$1.conf
