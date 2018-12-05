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
ns1.mandialand.com.               IN      A       192.168.100.101

; 192.168.100.0/24 - A records
mandialand.com.                   IN      A      192.168.100.150
prometheus.mandialand.com.        IN      A      192.168.100.151
grafana.mandialand.com.           IN      A      192.168.100.152