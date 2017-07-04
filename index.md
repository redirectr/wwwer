---
layout: default
---

wwwer.org is a simple service for redirections from non-www to www domains.

## What?

* We simply redirect example.com to www.example.com for you.
* We use [301 HTTP redirections](https://tools.ietf.org/html/rfc7231#section-6.4.2).
* That's it.

## Wait, what?!

Some services are only working properly if you use a `CNAME` record to connect your domain with these services.
Subdomainless addresses are usually connected with `A` and/or `AAAA` records.

## Usage

Use the IP address **`185.102.93.27`** for the content of an A record for your domain.
If you're able to add AAAA records, use **`[2a06:2380:0:1::16c]`** as well.

## Features

1. We support `IPv6`.
2. We support `HTTP/2`.
3. We support `HTTPS` (See below).
<!-- 4. For even more possibilities visit [redirectr.io](https://redirectr.io) -->

## Some candy: HTTPS

We support `HTTPS` as well.

* Edit your `DNS` records as described in **Usage**.
* Visit your non-www domain via `HTTPS`.
* We will create a certificate for your domain with [Let's encrypt](https://letsencrypt.org).
* The administrative email address **`admin`**`@example.com` will be used for your Let's encrypt account.
* Now we will accept `HTTPS` connections as well.

**Remarks:**

- Protocol will stay as requested (`http://example.com` to `http://www.example.com`, `https://example.com` to `https://www.example.com`).
- We do **not** support connections via `SSLv2` and `SSLv3`.
- `HTTPS` only works in browsers with `SNI` support.
- Take a look at [ssl labs](https://www.ssllabs.com/ssltest/analyze.html?d=towww.de).

## Contact

If you have any questions feel free to contact us. [wwwer@proux.net](mailto:wwwer@proux.net)

## Legal

This service is provided “as is” and “as available”.
You accept the [Let’s Encrypt Subscriber Agreement](https://letsencrypt.org/repository/) with the use of this service.

## Imprint

<small>proux ug (haftungsbeschränkt), sievekingsallee 114a, 20535 hamburg, germany, +49 40 2093 3981,<br/>
managing director: nico lindemann, vat-id: DE305787148, commercial register: ag hamburg hrb 138858</small>
