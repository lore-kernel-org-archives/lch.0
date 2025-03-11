Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5158B260A22
	for <lch@lists.linux.dev>; Tue, 11 Mar 2025 21:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741728968; cv=none; b=MYOrVXsQ/BNC9EmmxwRbTJvjxMQbZMQh2rJKvMWNzPFuyARuN71KEAaeVqf5nyPaFBAdLRjsQeds1swScTa8UQc5fIkkh5nSAISmAUDu3XTqgy/oX9EtX2djhSSlH2mHEpE5NoVqsesZHcF6wDlH7ApmeGa5dSh0XY8CywC+axQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741728968; c=relaxed/simple;
	bh=BPXTUF6+fwwbWTcVtZJx7xHEI21v03N4mPnGJsqU1w0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m6gOlcHcneihi4V6b14LzmXmOuyIhH3PC5KVDdDLUnkcsBTpSj94y9LOSM3siFPvobeIRkc4w5+h23/UJReNjONcsXek0R244Zkn0RY/Lqgkgy425EpheLYFD1Fi6OUlL7deJr6MQ3wvPGS6aiJWQA75cPcloIaI/lJ9D6pHRx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBhVQykX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBhVQykX"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 204A0C4CEE9;
	Tue, 11 Mar 2025 21:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741728967;
	bh=BPXTUF6+fwwbWTcVtZJx7xHEI21v03N4mPnGJsqU1w0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IBhVQykXpCSEFyhQqiGbK6ViE8OHoJXZnUiHDbd1B4toa037IH1yf3QrwDaZaTt9p
	 UNl7/n2yNO8K0jB2TjJY+oypdnFmNeG5giB9X7A6PC+T2xfGAylIQiiAOX0/2nMRub
	 aMnHmK8BWvkuzuJ7GhwJPwAlP49ukDZEiRRGYM68rccs0GsdnlTM3xyZ+Ni+YeGPgH
	 1OE1s2SMmV3lMRKJSFfdHP9I9pIK+SexFxGPSgrzgogNAnfGiH0Y5WCiuTFtlRrh04
	 FtQRykDU1zB3vOQKPfCFNXZq6jXBgTrafI8niJdaY34S0/LnSOZcnpTxBaghYlvMwm
	 jTaGa/B6Y+c9Q==
Date: Tue, 11 Mar 2025 22:36:03 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Cc: Peter Senna Tschudin <peter.senna@gmail.com>
Subject: Re: Linux'n'Beer v4
Message-ID: <ed6ffka6hx5vkw4wi3rv4rdr6ajdwgdamnulc42vhhztsqtu7o@hpru75wyuwwx>
References: <fdvjjgjrpshezzpmt3ys2i2objgldn7qjozr6srt2tjbcikgcp@wp7xwemcei46>
 <ab2b879f-e6f3-4f24-85d0-2c093b37d1d7@kernel.org>
 <6cbpcgfvlaweqvomhnievvmz37kppx72q65ocednudfkjeligv@et2uh5nlyuwe>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cbpcgfvlaweqvomhnievvmz37kppx72q65ocednudfkjeligv@et2uh5nlyuwe>

Hi Everyone,

On Wed, Feb 26, 2025 at 01:35:33PM +0100, Andi Shyti wrote:
> On Fri, Feb 14, 2025 at 10:01:14AM +0100, Krzysztof Kozlowski wrote:
> > On 13/02/2025 15:54, Andi Shyti wrote:
> > > I'm pretty happy that I won't be editing emails for the next
> > > Linux'n'Beer call!
> > > 
> > > Last time, I heard some excitement about meeting in Lugano. Since
> > > I'm currently injured and hobbling around on crutches, I fully
> > > support the idea and officially propose Lugano as our next
> > > meeting spot.
> > > 
> > > That said, I'd rather not end up alone at the pub, drinking beer
> > > and passionately telling myself how cool kernel programming is.
> > > So, I'd like to invite Krzysztof to set up a Doodle poll and see
> > > if we'd have enough people for Lugano.  If not, we can always
> > > fall back to Zurich.
> > > 
> > 
> > OK, so the vote for Lugano:
> > 
> > https://doodle.com/group-poll/participate/aOLBLyQb
> > 
> > I cannot find in Doodle any option which would distinguish between
> > "never read your email" and "I won't come to Lugano", so let's assume
> > such cases as equal - no votes means either you do not care or you do
> > not want/plan/can come to Lugano.
> 
> the poll is closed, and the vote has decided: we're meeting in
> Lugano on Friday, March 14th.
> 
> I don't expect a huge number of attendees this time, but
> switching location could be a nice change from time to time
> (plus, I'm still hobbling around on crutches).
> 
> Of course, there's still time to make up your mind and join at
> the last minute. And, as always, feel free to invite anyone you
> think might be interested.
> 
> I'll send another update with the exact place and time later and
> perhaps gather a few more attendees.
> 
> Lugano isn't as rich in pubs as Zurich, and options are more
> limited, so I'll take the lead this time in choosing the venue.
> I think I have a good overview of what the city has to offer in
> terms of beer!
> 
> Looking forward to it!

Just a few days to go until the next Linux'n'Beer!

We'll be meeting in Lugano, and I expect most of you to arrive
around 5:30 PM. I'll meet you at the train station.

The plan is to start with a short guided tour around town and
along the lakeside, followed by an aperitivo at Piazza della
Riforma before dinner.

In Lugano, food is mostly Italian, but there are also plenty of
Swiss specialties from the Ticino region. At 7 PM, we'll head to
Ristorante Commercianti, where we'll have a wide selection of
local and seasonal dishes to choose from.

After dinner, we'll continue to Il Fermento, a lakeside pub with
a local atmosphere, where we can enjoy locally brewed beers, both
bottled and on tap.

If anyone who originally planned not to come changes their mind,
please let me know so I can adjust the reservation accordingly.

Looking forward to seeing you all there!

Andi
