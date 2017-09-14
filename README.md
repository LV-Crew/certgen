# certgen
Bulk generation of ssl certificates and creating vhosts for them.<br>
<br>
Usage:<br>
1.) edit certgen.cfg to fit your configuration<br>
2.) edit header.cfg and change DocumentRoot to your webservers document root<br>
3.) generate hosts.txt with one hostname in each line<br>
4.) generate root ca key and cert using ssh-keygen<br>
5.) copy device.key (root ca key) and rootCA.\* (root ca cert) to certificate dir specified in 1.)<br>
6.) call certgen.sh
