$TTL    604800
@       IN      SOA     ns1.jacobo.com. root.jacobo.com. (
                          2         ; Serial
                      604800         ; Refresh
                       86400         ; Retry
                     2419200         ; Expire
                      604800 )       ; Negative Cache TTL

; Registros NS
@       IN      NS      ns1.jacobo.com.

; Registros A
ns1     IN      A       172.20.0.2
www     IN      A       172.20.0.3

; Registro CNAME
alias   IN      CNAME   www

; Registro TXT
txtrecord   IN  TXT     "Este es un registro de prueba"
