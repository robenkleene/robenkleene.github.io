---
layout: post
title: "On Cloudflare Warp & Privacy"
categories: 
---

[Cloudflare](https://www.cloudflare.com/) recently [announced Warp](https://blog.cloudflare.com/1111-warp-better-vpn/), their performance and security focused [VPN](https://en.wikipedia.org/wiki/Virtual_private_network). Warp will be added to the [1.1.1.1 app](https://1.1.1.1/), which, as of now, acts as an easy way to setup their ["privacy-first consumer DNS service"](https://blog.cloudflare.com/announcing-1111/), also called [1.1.1.1](https://1.1.1.1/dns/):

> Truth be told, the 1.1.1.1 App was really just a lead up to today. We had a plan on how we could radically improve the performance, security, and privacy of the mobile Internet well beyond just DNS. To pull it off, we needed to understand the failure conditions when a VPN app switched between cellular and WiFi, when it suffered signal degradation, tried to register with a captive portal, or otherwise ran into the different conditions that mobile phones experience in the field.

If you're interested in trying it out, you can claim your place in line in the 1.1.1.1 app:

> So, beginning today, what you can do is claim your place in line to be among the first to get Warp. If you already have the 1.1.1.1 App on your phone, you can update it through the Apple App Store or the Google Play Store. If you don’t yet have the 1.1.1.1 App you can download it free from Apple or Google. Once you’ve done that you’ll see an option to claim your place in line for Warp.

Until Warp arrives, the 1.1.1.1 app just configures your device to use their [DNS](https://en.wikipedia.org/wiki/Domain_Name_System) provider, which Cloudflare touts as having a couple of advantages: The first is speed, Cloudflare is a [CDN](https://en.wikipedia.org/wiki/Content_delivery_network), and therefore has the infrastructure to make a fast DNS service ([DNSPerf](https://www.dnsperf.com/#!dns-resolvers) currently lists them as the fastest DNS provider there is). The second advantage, one that's much more subtle and interesting, is privacy.

### HTTPS, DNS, SNI & Privacy

The name 1.1.1.1 refers to two things: [A DNS service](https://1.1.1.1/dns/) that can be configured manually[^manualconfiguration], and [an app in the App Store](https://1.1.1.1), that automatically configures your device to use their DNS provider via a [VPN](https://en.wikipedia.org/wiki/Virtual_private_network).

If you haven't done anything to special to configure your DNS, then you're probably using your ISPs DNS provider. This means your DNS requests are going directly to your ISP and they can see (and potentially store) the domain of every website that you visit (note that as long as you're connecting to the website over HTTPS[^httpisfirstpriority], this applies *only* to the domain, not the path, so `https://blog.robenkleene.com` would be visible but `/2019/06/16/on-cloudflare-warp-privacy/` would not). In fact, even if you've manually setup the 1.1.1.1 provider, e.g., without using the app, then your ISP can still see all of your DNS requests because DNS is in unencrypted protocol.

This is where another feature of the 1.1.1.1 app comes in: It supports [DNS over HTTPS](https://en.wikipedia.org/wiki/DNS_over_HTTPS) and [DNS over TLS](https://en.wikipedia.org/wiki/DNS_over_TLS). Neither of these protocols are supported by iOS (or macOS) by default, so this is done by setting up a local VPN. [In a comment on the 1.1.1.1 app announcement](https://blog.cloudflare.com/1-thing-you-can-do-to-make-your-internet-safer-and-faster/#comment-4190526220), Cloudflare CEO Matthew Prince shared the reasoning behind the VPN:

> iOS, unfortunately, only allows you to set DNS settings on a per-WiFi-network basis. That means, you need to set your DNS settings for each WiFi network. And, even if you do that, it won't cover you when you're using your cellular provider. Moreover, while 1.1.1.1 is fast and more privacy respecting, iOS, by default, does not support encrypted DNS (either DNS over TLS or DNS over HTTPS). The only way to support 1.1.1.1 across all networks *and* to add encrypted DNS support was to setup a VPN profile. We're hopeful that both iOS and Android will provide more flexibility in the future but, for now, that was the only technical way to make it work. Note: we are only proxying DNS traffic via the VPN. Non-DNS traffic is not routed through the VPN.

Once the VPN is turned on, your DNS queries go to Cloudflare, not your ISP, and they are encrypted.

So if you use the Cloudflare app, does that mean your ISP no longer can see which domains you're visiting? Unfortunately the answer is no, because of [Server Name Indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication). SNI is an extension to [Transport Layer Security (TLS)](https://en.wikipedia.org/wiki/Transport_Layer_Security) that sends the domain to the server in plain text (as part of the TLS handshake). This is done to support multiple domains at the same IP address (these domains may have different SSL certificates, so it has to be done before the encrypted connection is established).

So while the 1.1.1.1 app without Warp, does block of one way your ISP can see which domains you're visiting, it still leaves another one open, namely SNI. It's more of a piece of a puzzle moving towards a more private internet than a complete solution.

### Cloudflare Warp

Enter Cloudflare Warp. With a VPN, your connection to the VPN is encrypted, and then the VPN handles the connection to the ISP itself. So your HTTPS requests, which domains you're visiting, are sent from the VPN server's IP address and not from your home network's IP address. 

> This doesn't just apply to your web browser but to all apps running on your phone. Any unencrypted connections are encrypted automatically and by default. Warp respects end-to-end encryption and doesn’t require you to install a root certificate or give Cloudflare any way to see any encrypted Internet traffic we wouldn’t have otherwise. As Matthew Prince writes in the [introduction blog post](https://blog.cloudflare.com/1111-warp-better-vpn/):

> Unfortunately, a lot of the Internet is still unencrypted. For that, Warp automatically adds encryption from your device to the edge of Cloudflare’s network — which isn’t perfect, but is all other VPNs do and it does address the largest threats typical Internet users face. One silver lining is that if you browse the unencrypted Internet through Warp, when it’s safe to do so, Cloudflare’s network can cache and compress content to improve performance and potentially decrease your data usage and mobile carrier bill.

A VPN encrypts all traffic between your computer and the VPN gateway, this provides an additionally layer of privacy, assuming you trust your VPN provider, because it means unencrypted traffic will only be transmited from the VPN gateway to the destination, in other words the request will appear to be from the VPN gateway's IP address and not your home networks IP address. Thus you've obfuscated your IP address through another step, in order to trace traffic back to your home network, the VPN provider needs to be contacted first in order to map that request to your home network's IP address, and even that will only be possible if they are actually storing that information. Of course a compromised VPN then negates this protection, because then someone can simply wait for you to connect to the VPN again and then see your IP address live while watching the traffic and map the requests to your home network that way.

Cloudflare is uniquely positioned to offer a performant VPN, because a big part of their business is providing a CDN.

Of course whether this is an improvement has a lot to do with how much you trust your VPN provider, in this case Cloudflare. If you trust Cloudflare and your ISP equally, than this amounts to a marginal increase in privacy: Now your IP address and the list of domains you are visiting is seen by one company, Cloudflare, while your IP address and your personally identifiable information is seen by a different company, your ISP. This means in order to say find out which websites that *you personally visited* means having access to the data stored by both companies. And even that assumes that Cloudflare is actually even storing that data, which they [explicitly state that they are not](https://1.1.1.1/dns/), and even have hired an external firm to verify it:

> We will never log your IP address (the way other companies identify you). And we’re not just saying that. We’ve retained KPMG to audit our systems annually to ensure that we're doing what we say.

I wrote this piece because I wanted to figures out for myself whether using 1.1.1.1, and Warp, when it's available, is something I wanted to do. I end up being not quite sure, be leaning on the side of it being a good idea. Part of the problem is I'm skeptical of altruistic motives in businesses. I don't see how Warp fits into any larger business strategy beyond it being a good way to build good will in the community, without requiring too much effort to run on top of their existing infrastructure. Cloudflare has done and admirable job in of [being a company that does good](https://www.cloudflare.com/galileo/), but that reminds us of [someone](https://www.google.com) who once thought that way. At the end of the day, we shouldn't distrust every company that does something positive that might not make 100% business sense forever, or should we?

* * *

[^manualconfiguration]: 1.1.1.1 can also be configured manually as a DNS server on [macOS](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/mac/), [iOS](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/iphone/), or your [router](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/router/), but then note that *DNS traffic will not be encrypted*, which means the domains of the websites you visit will be entirely visible to your ISP (and anyone else potentially sniffing your traffic).

[^httpisfirstpriority]: Your first priority for making your use of the internet private is to use encrypted protocols, in particular, HTTPS (the lock icon in your browser indicates that you are connecting to a website via HTTPS). With HTTPS enabled, all communication is hidden from any intermediary (such as your ISP), everything is hidden except for the IP address and the domain itself (note that this only applies to the HTTPS request itself).
