;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns1.mandialand.com. admin.mandialand.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
    IN      NS      ns1.mandialand.com.

; name servers - A records
ns1.mandialand.com.               IN      A       192.168.200.101

; 192.168.100.0/24 - A records
mandialand.com.                   IN      A      192.168.200.152
prometheus.mandialand.com.        IN      A      192.168.200.152
grafana.mandialand.com.           IN      A      192.168.200.152
kibana.mandialand.com.            IN      A      192.168.200.152
jenkins.mandialand.com.           IN      A      192.168.200.152
argocd.mandialand.com.            IN      A      192.168.200.152
securitydb.mandialand.com.        IN      A      192.168.200.152
restaurant.mandialand.com.        IN      A      192.168.200.152
