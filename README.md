## Usage

```
docker run --rm -e EMAIL=admin@example.com -e DOMAIN=www.example.com -v /etc/letsencrypt:/etc/letsencrypt -p 80:80 thomasyuan/certbot
```
Please replace the `admin@example.com` with​ your real email and the domain `www.example.com` to your real domain name.


