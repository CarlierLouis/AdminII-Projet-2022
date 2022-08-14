;$ ORIGIN mes-b3.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.mes-b3.ephec-ti.be. root.mes-b3.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

;Attribution du name server
mes-b3.ephec-ti.be.   	IN      NS      ns.mes-b3.ephec-ti.be.
ns.mes-b3.ephec-ti.be.   	IN      A       37.187.225.241			

;Attribution des nom de domaine pour les sites web publics
b2b					IN 		A		37.187.225.241		; Web serveur pour revendeur
www					IN		A		37.187.225.241		; Web serveur pour client de tous les jours

;Attribution du nom de domaine pour le mail
mail				IN		A		37.187.225.241	; Serveur mail
@					IN		MX		10	mail.mes-b3.ephec-ti.be.

voip		IN		A		37.187.225.241		; Serveur voIP

_sip._tcp		86400		IN	SRV		10		100		5060		voip.mes-b3.ephec-ti.be.
_sip._udp		86400		IN	SRV		10		100		5060		voip.mes-b3.ephec-ti.be.