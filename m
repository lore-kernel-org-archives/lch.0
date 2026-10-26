Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793052749;
	b=PyKhJaHZgR6gpklBvzGMaLgzTfxU8PZ+tg/isUhptrcJCLjk4nNBF5e7BRa6d03c1rlB
	 fPArMleYjl3xL39MI5G2E0wzwly3/e2KbM0ORuhm2nTTJAUjJFkS3hw8Ec8uUdOh3U7p5
	 iZqqrjRd21RTrxr0kvsUBUUsX+2iTJBsiaK1zDLHDvKgQS5t2o5lQoOKRx8kzC+uTWlDm
	 Cuidl1QlPkVTGpoEfmdlMz7W+BemXauUg7mOaVbTC04i4Ll5tRtvqGHTJjer6z5HtJdSs
	 TMJTavVBjCNRB1kOL3FzNVR7OAiILXrglYn988G3g3R5Nw4ySKSlayfI+eeALnJ5KZw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793052749;
	h=Received:DKIM-Signature:Date:From:To:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=LjJ8YkPskY+PeA7yZLpdS0Wg3Izos4QHbWeSi3yA3mg=;
	b=Rw4rctNjhxM5yAc/paaEWbSFctOKXc+PtBJBsoU0vF4FvpNPisFOLg7U791JCWmuosdY
	 /g0lZqcxZo09WPFVCbG7ngJ9k5gVfU8aErKwjt3jQCnRzKIGLLrp9aZxOH747NQ5tpLrd
	 YMoHM/H3TK3cHu3icgYH6AuUmdCBqDkKSONgF83Cx1BPwJYyjuscTdbLkFbP2pbb3hfPd
	 Hlmy0bNYLgi/fGli2Mw/TjM2ZFRHezrlPE7OtlaS2SJeHxxpKdpQc8ZyYCC1izB9bZOKE
	 D+HUZMA8mQN5HugqseFbzaIkytTZFngv11PB/FqJ8xkrfQ0n/N/4h97ZCJl229EvgWQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=o3BKXcVD;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F5C606A31A
	for <lch@lists.linux.dev>; Mon, 26 Oct 2026 22:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=o3BKXcVD
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8731C1F01829
	for <lch@lists.linux.dev>; Mon, 26 Oct 2026 22:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793052748;
	bh=LjJ8YkPskY+PeA7yZLpdS0Wg3Izos4QHbWeSi3yA3mg=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=o3BKXcVDw2YfnULAf/fNGPaCRwZomJ+49dyFTokOoEzuoJkC+qSmXRAMv3r40kW4E
	 aIBBGkCb35LmVlNyotggX1GruKSxAXNeuqFpqzMSfUjcVbBQg1CrWlQeOczno4JDuJ
	 Wx/OP3wkZC0OSG8DxpVuwd+vjG8RakBy6PN4jkclmlf8h+r/RcMx7k4PxSzVwcIi/b
	 ZLodlYbRrObm7na8dkmij3K8Mggw334I+6uwZqSJ+ppmIi0Y5+y+KwFrsfAjzuvCAM
	 tJSK3Pmn/v+Kl/Uqx7v+AL916NgLdH2jzSVp1TS4SFRLbpmxO4yLhtoiHW9aKcIbKw
	 dNkf2CxWrOK3A==
Date: Mon, 26 Oct 2026 23:12:25 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer October
Message-ID: <at_PDlnCf0E3FPIM@zenone.zhora.eu>
References: <asoE_yLhcUDtxiX1@zenone.zhora.eu>
 <atiCzg-ui1f8LIy1@zenone.zhora.eu>
 <atjk4YWfxlilh6Fs@zenone.zhora.eu>
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
In-Reply-To: <atjk4YWfxlilh6Fs@zenone.zhora.eu>

Hi everyone,

I just wanted to thank everyone who joined the event. It was
great to catch up with some familiar faces again.

I was also very happy to see some new ones. Someone joined us
straight from Austria and someone else simply happened to walk
by, noticed us and said, "Linux? I do Linux! Cool, I'll sit with
you."

I hope everyone had a good time and I hope we can organise the
next one soon.

Thanks again,
Andi

On Wed, Oct 21, 2026 at 06:21:28PM +0200, Andi Shyti wrote:
> Hey folks,
> 
> Everything is set. I have reserved a table for 12 people at
> Kennedy's Irish Pub[*] for 7:30pm.
> 
> Looking forward to seeing you all there!
> 
> Andi
> 
> [*] https://www.openstreetmap.org/node/1760802115
> 
> On Wed, Oct 21, 2026 at 12:01:24PM +0200, Andi Shyti wrote:
> > Hi everyone,
> > 
> > I set a deadline for the poll so that we would have enough time
> > to reserve a place.
> > 
> > So far I count 10 gentlemen with a shared love for Linux and
> > beer. If anyone else wants to join, there is still plenty of
> > room. Just reply to this email, contact me privately or simply
> > show up.
> > 
> > We still do not have a venue. I am going to call a few places
> > today, so any suggestions are very welcome.
> > 
> > See you soon with more details.
> > 
> > Andi
> > 
> > On Sat, Oct 10, 2026 at 11:47:57AM +0200, Andi Shyti wrote:
> > > Hi everyone,
> > > 
> > > Long time no see. I hope you are all doing well!
> > > 
> > > I'm writing from Prague after a week of LPC and OSS, where I met
> > > quite a few people from this community. Maybe next time we should
> > > organise a small Swiss meetup there too.
> > > 
> > > Anyway, it is definitely time to meet again, have a good beer and
> > > talk about Linux and whatever else comes up.
> > > 
> > > I would propose 23 October in Zurich, at a place to be chosen by
> > > someone who knows Zurich better than I do. Suggestions are very
> > > welcome.
> > > 
> > > In the meantime, I created a poll so we can see how many people
> > > are coming:
> > > 
> > > https://framadate.org/polls/43d8ed815ca2cb840d7e
> > > 
> > > As always, feel free to invite anyone who might enjoy some good
> > > technical discussions and a good beer.
> > > 
> > > Looking forward to seeing you all again.
> > > 
> > > Andi
