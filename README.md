# certgen
Bulk generation of ssl certificates and creating vhosts for them.<br>
<br>
Usage:<br>
1.) edit certgen.cfg to fit your configuration<br>
2.) edit header.cfg and change DocumentRoot to your webservers document root<br>
4.) change ErrorLog and TransferLog according to your webservers configuration in header.cfg<br>
5.) change <Directory "/opt/lamp[...] according to your webservers configuration in footer.cfg<br><br>
6.) change CustomLog[...] according to your webservers configuration in footer.cfg
7.) generate hosts.txt with one hostname in each line<br>
8.) generate root ca key and cert using ssh-keygen<br>
9.) copy device.key (root ca key) and rootCA.\* (root ca cert) to certificate dir specified in 1.)<br>
10.) call certgen.sh
