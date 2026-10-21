Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792599694;
	b=UQOxramIjUrcp+XQOvrQKSDiBT/c77aLca2s8tG75eX1rA3vCh7aDy4TDtxqsIi6FNOg
	 J7oK5fLb8px5wcZQ4kV26NIVBmJ+SwYQeaRimfPYXBcMlyud1D9fF3+mcijWu59FCoErU
	 tgzeDa4M8/s9Uu8Yy0To3oEzDZZ5Rcd4yBAzSXbf0I7gM6uY/idPxFZq4+JB2Cpj6BP4a
	 DjdHBGGn/ZSWCuSWN/nuXYpi25JJCrK5E3Lw8UxhflEWbfWgUpIG6JGkKnL81a/L8BMnV
	 1cC2m4hSml/ivKd/Sl9rS8jS/VGK3QxOZKThUukIEgLDGMy4sAdMFdIQ/tdsgj5bV6g==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792599694;
	h=Received:DKIM-Signature:Date:From:To:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=dbaL6qQ+LUc5VrsRpurnHGg2Nbqcqa5ruQKu6xFZzjc=;
	b=Sn8cvBYdSPNu3p1cQlQCraJm6xhrnQv7VYM4M9bkAq8xUSjmmD/ayW4/8dsHt2rl/kwx
	 2YgjyhaBgZbJv0TKftwOEwWG6Y9XT1ju4iKpv9T7DEFeqgsb98NJmMNqwBi4NlA4+zrDF
	 qUUF8LbPr8bAvrFpnoBV9qtjNxudigNT9+tvCKXPgtfvSZM9Rk4gSGDVJXaklkTcxZ033
	 V0REEO79R+DBCMpqHfb4nyyibjvu8Q8WRlY8jpnh0wDEzMIVwgzVwZkjsWVa/uKHV2PQn
	 Z+Z9UmT5WLXpB4noojeuHZWI3gCvTNPW7HG1ZodbWxUckdUMDMqRacUOjx1d4CjxqUA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CMbZqW1N;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71E1606A55D
	for <lch@lists.linux.dev>; Wed, 21 Oct 2026 16:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CMbZqW1N
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0512F1F000C2
	for <lch@lists.linux.dev>; Wed, 21 Oct 2026 16:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599693;
	bh=dbaL6qQ+LUc5VrsRpurnHGg2Nbqcqa5ruQKu6xFZzjc=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=CMbZqW1NGSliCsUrRttzsdquAJEuPjoDmktNVOobfV5D9z2xEAM80Z29hq2zQdjJC
	 DXoEz2bBUgCw6xozeKnESwfmkaFw221qBVEcNxNO3JaMDBsj9FksAkdtdCZipQloK9
	 ad3Y1N0/L1DuqYLN2cci1Y9+ijK0OPC6PBIo4zpqFhzPN4caocIRRZ62i1PSiFWspU
	 2YvyTtkB1EPc6jrxwd/vkMDS1TWBhIlWmt4EGiMFfIAc6mL5QCaX436cyJW0aJ3wP3
	 d8IXoDFc+4XEbRC6dAir5osHt0N2OadnCkwG5UXjGvXUf2ngBWPxy/TY7jrFxeY7Zf
	 uHuWQxIK4HQfw==
Date: Wed, 21 Oct 2026 18:21:28 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer October
Message-ID: <atjk4YWfxlilh6Fs@zenone.zhora.eu>
References: <asoE_yLhcUDtxiX1@zenone.zhora.eu>
 <atiCzg-ui1f8LIy1@zenone.zhora.eu>
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Post: <mailto:lch@lists.linux.dev>
List-Help: <mailto:lch+help@lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
List-Owner: <mailto:lch+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <atiCzg-ui1f8LIy1@zenone.zhora.eu>

Hey folks,

Everything is set. I have reserved a table for 12 people at
Kennedy's Irish Pub[*] for 7:30pm.

Looking forward to seeing you all there!

Andi

[*] https://www.openstreetmap.org/node/1760802115

On Wed, Oct 21, 2026 at 12:01:24PM +0200, Andi Shyti wrote:
> Hi everyone,
> 
> I set a deadline for the poll so that we would have enough time
> to reserve a place.
> 
> So far I count 10 gentlemen with a shared love for Linux and
> beer. If anyone else wants to join, there is still plenty of
> room. Just reply to this email, contact me privately or simply
> show up.
> 
> We still do not have a venue. I am going to call a few places
> today, so any suggestions are very welcome.
> 
> See you soon with more details.
> 
> Andi
> 
> On Sat, Oct 10, 2026 at 11:47:57AM +0200, Andi Shyti wrote:
> > Hi everyone,
> > 
> > Long time no see. I hope you are all doing well!
> > 
> > I'm writing from Prague after a week of LPC and OSS, where I met
> > quite a few people from this community. Maybe next time we should
> > organise a small Swiss meetup there too.
> > 
> > Anyway, it is definitely time to meet again, have a good beer and
> > talk about Linux and whatever else comes up.
> > 
> > I would propose 23 October in Zurich, at a place to be chosen by
> > someone who knows Zurich better than I do. Suggestions are very
> > welcome.
> > 
> > In the meantime, I created a poll so we can see how many people
> > are coming:
> > 
> > https://framadate.org/polls/43d8ed815ca2cb840d7e
> > 
> > As always, feel free to invite anyone who might enjoy some good
> > technical discussions and a good beer.
> > 
> > Looking forward to seeing you all again.
> > 
> > Andi
