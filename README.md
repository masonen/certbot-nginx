# certbot-nginx

Basic certbot image with nginx plugin. 
This can be used on systems with a baremetal nginx already installed in order to us certbot from a docker container.

This does NOT provide a nginx environment from within the container!
## How to ues?


### Why?

I needed it for a environment which will be migrated to docker step-by-step with nginx being one of the last things to be dockerized.
