Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792576889;
	b=adsaFMNvxo6ifEHiScCOP00TOImnDs/j0600fM2r3CnD8svE9J9yUkeR3Of4YuVNiC1h
	 Zs6Jwy9IL4CuuZoS98XK16ZgaKmatldXfLoU/6AA+N1ZccwW2r8rvc9maYW0jOgjYeypX
	 Riwsvf9tAhxJWuaef7csO82WXWgHTX3UzIe78UOYHSQAciUggnWLolJ32yq/8K0Kc+9Qj
	 ZuS1l2zuWje97YrIv2Peu3UJCv0zKO9Smp6q7XCI60AQAsGwyk9hXphdrblBWxTToMhbe
	 nnDzOg+ILTZsU9RWeBI3eAb6uUcVn8jHXMnTwir4udsGrszxObt1gMDz0u9425/ulsg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792576889;
	h=Received:DKIM-Signature:Date:From:To:Subject:Message-ID:References:
	 MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=Gcwg7kIVClu0amqB43V5WWDTPWf7Gv+oiDARsRwLVGA=;
	b=Zzf6Pv/wQaE9zTOLtUBCXtdXpmhnr/9FxbY7/7Wd25ph/V8L9GceO/+Ayi3V8huJsUx0
	 B1UYOtJwG5eIS/mYzLTY01tOdUXiQ1Pw0USZQKeVKySgKeW692r3fygGVPBy7N/jc/T2M
	 0U4qp0YPRu0tFNd/L0nRlLZ8APxBzMZUmvvdMr6FMWPdXrWWQ+eBK2PIlpha0RKlC0AAZ
	 nB4T95zdAfEXeNZKw63f0Mvoh6+wnuytNBRguAEQYWhUQEM/pcG9UA0ZIJva7Nh0ViMrx
	 oT4vsE+ev8Yad0LIkw8oWOxSchuOpUeAZDAA415IYlwKsZYyndTJxUMorItqEN45lXA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g7Kxaa6b;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90ED606A319
	for <lch@lists.linux.dev>; Wed, 21 Oct 2026 10:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=g7Kxaa6b
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D3F21F000C9
	for <lch@lists.linux.dev>; Wed, 21 Oct 2026 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792576888;
	bh=Gcwg7kIVClu0amqB43V5WWDTPWf7Gv+oiDARsRwLVGA=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=g7Kxaa6bLfALCVe0uJyXvBz/wLBTystXECnW3ZMoC1IUxiqG25U+GQIXEoMlY/4IY
	 mb8UVVnww9YwMeynfO3xK8KZrPMiAMhMlyNI8+8mC/rrBmhrOuagJg74tQoJWPfqIM
	 xkX3AWCApYHmtKvXJZ/QrvXb1W3GenRI8UCZYX+1DEwV92IsEa+nV8oxpfYVUXZj1Z
	 JXbdZkgIhZvuohGDOXcT2wMeQoxnzsJ0lfla2BZhH0nGdr918CuwwuDKyP8o4ydLlF
	 CcLI9NYnR1CZI3pjdXtSv4rjWjHKsyU6bwSHIuNPKCEYaIz6J/rNtwBncBCjufUzm7
	 8U6Cme446uC2g==
Date: Wed, 21 Oct 2026 12:01:24 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer October
Message-ID: <atiCzg-ui1f8LIy1@zenone.zhora.eu>
References: <asoE_yLhcUDtxiX1@zenone.zhora.eu>
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
In-Reply-To: <asoE_yLhcUDtxiX1@zenone.zhora.eu>

Hi everyone,

I set a deadline for the poll so that we would have enough time
to reserve a place.

So far I count 10 gentlemen with a shared love for Linux and
beer. If anyone else wants to join, there is still plenty of
room. Just reply to this email, contact me privately or simply
show up.

We still do not have a venue. I am going to call a few places
today, so any suggestions are very welcome.

See you soon with more details.

Andi

On Sat, Oct 10, 2026 at 11:47:57AM +0200, Andi Shyti wrote:
> Hi everyone,
> 
> Long time no see. I hope you are all doing well!
> 
> I'm writing from Prague after a week of LPC and OSS, where I met
> quite a few people from this community. Maybe next time we should
> organise a small Swiss meetup there too.
> 
> Anyway, it is definitely time to meet again, have a good beer and
> talk about Linux and whatever else comes up.
> 
> I would propose 23 October in Zurich, at a place to be chosen by
> someone who knows Zurich better than I do. Suggestions are very
> welcome.
> 
> In the meantime, I created a poll so we can see how many people
> are coming:
> 
> https://framadate.org/polls/43d8ed815ca2cb840d7e
> 
> As always, feel free to invite anyone who might enjoy some good
> technical discussions and a good beer.
> 
> Looking forward to seeing you all again.
> 
> Andi
