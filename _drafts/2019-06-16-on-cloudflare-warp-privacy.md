---
layout: post
title: "On Cloudflare Warp & Privacy"
categories: Privacy
---

[Cloudflare](https://www.cloudflare.com/) recently [announced Warp](https://blog.cloudflare.com/1111-warp-better-vpn/), their performance and security focused [VPN](https://en.wikipedia.org/wiki/Virtual_private_network). Warp will be added to the [1.1.1.1 app](https://1.1.1.1/), which, as of now, acts as an easy way to setup their ["privacy-first consumer DNS service"](https://blog.cloudflare.com/announcing-1111/), also called [1.1.1.1](https://1.1.1.1/dns/), on your mobile device:

> Truth be told, the 1.1.1.1 App was really just a lead up to today. We had a plan on how we could radically improve the performance, security, and privacy of the mobile Internet well beyond just DNS. To pull it off, we needed to understand the failure conditions when a VPN app switched between cellular and WiFi, when it suffered signal degradation, tried to register with a captive portal, or otherwise ran into the different conditions that mobile phones experience in the field.

If you're interested in trying it out, you can claim your place in line in the 1.1.1.1 app:

> So, beginning today, what you can do is claim your place in line to be among the first to get Warp. If you already have the 1.1.1.1 App on your phone, you can update it through the Apple App Store or the Google Play Store. If you don’t yet have the 1.1.1.1 App you can download it free from Apple or Google. Once you’ve done that you’ll see an option to claim your place in line for Warp.

Until Warp arrives, the 1.1.1.1 app just configures your device to use their [DNS](https://en.wikipedia.org/wiki/Domain_Name_System) provider, which Cloudflare touts as having a couple of advantages: The first is speed, Cloudflare is a [CDN](https://en.wikipedia.org/wiki/Content_delivery_network), and therefore has the infrastructure to make a fast DNS service ([DNSPerf](https://www.dnsperf.com/#!dns-resolvers) currently ranks them as the fastest DNS provider there is). The second advantage, one that's much more subtle and interesting, is privacy.

### HTTPS, DNS, SNI & Privacy

The name "1.1.1.1" refers to two things: [A DNS service](https://1.1.1.1/dns/) that can be configured manually[^manualconfiguration], and [an app in the App Store](https://1.1.1.1), that automatically configures your device to use their DNS provider via a [VPN](https://en.wikipedia.org/wiki/Virtual_private_network).

If you haven't done anything to special to configure your DNS, then you're probably using your ISP's DNS provider. This means your DNS requests go straight to your ISP and they can see (and potentially store) the domain of every website that you visit (note that as long as you're using HTTPS, this applies *only* to the domain, not the path, so `https://blog.robenkleene.com` is visible but `/2019/06/16/on-cloudflare-warp-privacy/` is not). In fact, even if you've just manually setup the 1.1.1.1 as your DNS provider, without using the app, then your ISP can *still* see all of your DNS requests, because DNS is an unencrypted protocol.

This is where another feature of the 1.1.1.1 app comes in: It also supports [DNS over HTTPS](https://en.wikipedia.org/wiki/DNS_over_HTTPS) and [DNS over TLS](https://en.wikipedia.org/wiki/DNS_over_TLS). Neither of these protocols are supported by iOS (or macOS) by default, so it's implemented with a VPN. Cloudflare CEO Matthew Prince shares the reasoning behind the VPN [in a comment](https://blog.cloudflare.com/1-thing-you-can-do-to-make-your-internet-safer-and-faster/#comment-4190526220) on the 1.1.1.1 app announcement:

> iOS, unfortunately, only allows you to set DNS settings on a per-WiFi-network basis. That means, you need to set your DNS settings for each WiFi network. And, even if you do that, it won't cover you when you're using your cellular provider. Moreover, while 1.1.1.1 is fast and more privacy respecting, iOS, by default, does not support encrypted DNS (either DNS over TLS or DNS over HTTPS). The only way to support 1.1.1.1 across all networks *and* to add encrypted DNS support was to setup a VPN profile. We're hopeful that both iOS and Android will provide more flexibility in the future but, for now, that was the only technical way to make it work. Note: we are only proxying DNS traffic via the VPN. Non-DNS traffic is not routed through the VPN.

Once the VPN is turned on, your DNS queries go to Cloudflare's DNS, not your ISP's, and they are encrypted.

So if you're using the Cloudflare app, does that mean your ISP can no longer see which domains you're visiting? Unfortunately the answer is no. The domain is also sent unencrypted as part of the initial TLS handshake when establishing an HTTPS connection. This is done for [Server Name Indication (SNI)](https://en.wikipedia.org/wiki/Server_Name_Indication), so that multiple domains can have the same IP address. Since these domains might have different SSL certificates, it has to be done before the encrypted connection is established.

In addition to the domain being sent unencrypted for SNI, the IP address of the server you are visiting is of course always sent unencrypted as part of the lower-level [TCP](https://en.wikipedia.org/wiki/Transmission_Control_Protocol) connection that HTTPS uses. The IP address doesn't reveal as much as the actual domain, and especially with the proliferation of [Cloud platforms](https://en.wikipedia.org/wiki/Cloud_computing#Private_cloud), in many cases it's impossible to map an IP address back to a single domain.

So while the 1.1.1.1 app without Warp does block one of the ways your ISP can see which domains you're visiting, it still leaves another open with SNI. And the IP address of the server you're visiting is always visible. So it's more of a steps towards a more private internet than a complete solution.

### Cloudflare Warp

Enter Cloudflare Warp. With Warp, all traffic is routed through the VPN and the VPN encrypts the traffic. So the domains you are visiting are no longer visible to your ISP, the only thing they can see is that you are visiting the IP address of one of Cloudflare's VPN servers. Here's Prince again in a [blog post introducing Warp](https://blog.cloudflare.com/1111-warp-better-vpn/) summarizing its benefits:

> This doesn't just apply to your web browser but to all apps running on your phone. Any unencrypted connections are encrypted automatically and by default. Warp respects end-to-end encryption and doesn’t require you to install a root certificate or give Cloudflare any way to see any encrypted Internet traffic we wouldn’t have otherwise.

> Unfortunately, a lot of the Internet is still unencrypted. For that, Warp automatically adds encryption from your device to the edge of Cloudflare’s network — which isn’t perfect, but is all other VPNs do and it does address the largest threats typical Internet users face. One silver lining is that if you browse the unencrypted Internet through Warp, when it’s safe to do so, Cloudflare’s network can cache and compress content to improve performance and potentially decrease your data usage and mobile carrier bill.

The privacy benefit of a VPN is that now who you are, and which websites you are visiting, are now only visible to entirely separate entities[^identifiedthroughtraffic]. With a VPN, your ISP knows who you are (because presumably they are billing you), but they don't know which websites you are visiting. whether this is an improvement has a lot to do with how much you trust your VPN provider, in this case Cloudflare. This means in order to find out which websites that *you personally visited* means having access to the data stored by both companies. And even that assumes that Cloudflare is actually even storing that data, which they [explicitly state that they are not](https://1.1.1.1/dns/), and even have hired an external firm to verify it:

> We will never log your IP address (the way other companies identify you). And we’re not just saying that. We’ve retained KPMG to audit our systems annually to ensure that we're doing what we say.

Given all the benefits of using a VPN for privacy, why aren't they already more widespread? Traditionally, the problem with a VPN is performance. Since all your traffic has to be routed through the VPN, it means that your traffic cannot take the most direct route to its destination. This introduces lag, here's how Prince describes it:

> VPNs suck, especially on mobile. They add latency, drain your battery, and, in many cases, are run by companies with motivations that are opposite to actually keeping your data private and secure.

He goes into some more details of how they're planning to improve performance, suffice to say Cloudflare is in a great position to offer a performant VPN, because they can leverage the infrastructure of their CDN service.

I wrote this piece to try and figure out for myself whether 1.1.1.1 and Warp are worth using, and I've come to the conclusion that they are. Hiding the domains you're visiting, not to mention the rest of your unencrypted traffic, from your ISP is privacy improvement---even if it means sharing them with Cloudflare. Cloudflare doesn't already know who you are, like your ISP does, and Cloudflare has at least has made a promise not to store your information, unlike the ISPs who not only have made no such promises, but [lobbied for the right *share* your browsing history for profit](https://www.theverge.com/2017/3/29/15100620/congress-fcc-isp-web-browsing-privacy-fire-sale).

* * *

[^manualconfiguration]: 1.1.1.1 can also be configured manually as a DNS server on [macOS](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/mac/), [iOS](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/iphone/), or your [router](https://developers.cloudflare.com/1.1.1.1/setting-up-1.1.1.1/router/), but note that if configured manually, DNS traffic, including the domains you are visiting, *will not be encrypted*.

[^identifiedthroughtraffic]: In reality a VPN provider could probably uniquely identify you by analyzing your traffic, so [trusting your VPN provider](https://drewdevault.com/2019/04/19/Your-VPN-is-a-serious-choice.html) is very important (but no more so than trusting your ISP already is).
