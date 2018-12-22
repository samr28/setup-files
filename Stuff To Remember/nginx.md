# Nginx

## Adding new server

1. Create server file in `/etc/nginx/sites-available`
2. Make symlink to `/etc/nginx/sites-enabled` (use: `ln -s /etc/nginx/sites-available/NEWSITE /etc/nginx/sites-enabled/`)
3. `sudo nginx -t` to test server configurations
4. `sudo service nginx restart` to update nginx with new configs

## SSL certificates

`sudo certbot --nginx -d site.domain.com`

## Error log

error log location (debian) = `/var/log/nginx/error.log`

## Simple server config

```
server {

        root /var/www/html;
        index index.html;
        server_name site.domain.com;

        location / {
                try_files $uri $uri/ =404;
        }

}
```
