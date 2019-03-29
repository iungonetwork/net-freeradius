# Freeradius service #

This service is part of IUNGO service gateway and is not intended to run as standalone. 

Expects mounted /pki (managed by net-pkim service) with /pki/certs/radius.crt, /pki/certs/radius.key and /pki/ca.crt.

Freeradius configuration for IUNGO network. Notable settings:
- setup for TTLS (PAP, MSCHAPV2),
- dynamic clients (NAS), individual secret for every client,
- reporting all session updates to controller via REST,
- passwords are stored in cleartext as they are generated access tokens.

TODO: 
- forward auth call to controller to check user account status.