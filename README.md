# certbot-nginx

Basic certbot image with nginx plugin. 
This can be used on systems with a baremetal nginx already installed in order to us certbot from a docker container.

This image installs nginx binary to be able to use the `certbot --nginx` functionality but is not built to run nginx by itself!
## How to use?

```
sudo docker run \ 
   -it \ 
   --rm \
   -v "/etc/letsencrypt:/etc/letsencrypt" \ 
   -v "/var/lib/letsencrypt:/var/lib/letsencrypt" 
   -v "/etc/nginx:/etc/nginx" \
   masonen/certbot-nginx --nginx
```

### Why?

I needed it for a environment which will be migrated to docker step-by-step with nginx being one of the last things to be dockerized.
