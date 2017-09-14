# certgen
Bulk generation of ssl certificates and creating vhosts for them.<br>
<br>
Usage:<br>
1.) edit certgen.cfg to fit your configuration<br>
2.) generate hosts.txt with one hostname in each line<br>
3.) generate root ca key and cert using ssh-keygen
4.) copy device.key (root ca key) and rootCA.\* (root ca cert) to certificate dir specified in 1.)<br>
5.) call certgen.sh
