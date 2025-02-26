Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7590A85931
	for <lch@lists.linux.dev>; Wed, 26 Feb 2025 12:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740573338; cv=none; b=qQLAqPi8EkbagL919pRhUOfyQ0OHqK/AINV8eZj9op/exzm15uFc2QoK+3yUCRQ2mtoAPCHeZ5ZHBGBNMuZ7w7ev85lK3U82PgRxSk/dwYcHyK/ka0Faf+nn6z5dUM6PQ1iGHFEc7qMHrmPRQslU/x+Qu/xgCJwFm7WsD9ntc6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740573338; c=relaxed/simple;
	bh=Cm9E9YWW6Vz5RNXVvaT54k0YwPFLcjFk7+Svi/J8B5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fK/aylRZHiCFVkbsafqhWCBqzjSDL1aKGJfknrsQ3IGFNmy/QV0c1VWk5cG6xsVjEEAHMB4zugfh5HN08+gDAvzWaiRgzWj6ULZ+CJ4UaEZsVhv4ZVwg5Pcdufrof2xFT4G/LjniRUpGNMa9p09pbk8V4ljGqyccwdcvJp2uF9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/O0vNjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/O0vNjX"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35FABC4CEE8;
	Wed, 26 Feb 2025 12:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740573337;
	bh=Cm9E9YWW6Vz5RNXVvaT54k0YwPFLcjFk7+Svi/J8B5c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R/O0vNjXD/Bsk0atqHB8fmXHRK5p5MptO/0gmkpQUvpPZbAC2SAbCeGOkuQxatoe9
	 rVFcGz0TFILH5KDwHI7zGqWQ2um6knQCIxP8eb49LY5NxE410oZTXJ5SzJqRffNZY9
	 gHTYiWe/+Sz0x7+SpgxDAfczJmf2VkkX4XRKXHLUhd5SQnG75PMoZWI6kuy/S9bS3O
	 xv+VIu3mgkekIJxfR28KM+Q0G9Yh2ZKCBBP+8c2x3KvNFrtkXYwe6gWua7DzfKScY2
	 fCwerQAf/7LpCCH/xRhhVZkwS6+TDCyZgvNDvcy5WMLeKhFcFbZVYfmw9CCOIz4t5Y
	 zMib93wLn+SIQ==
Date: Wed, 26 Feb 2025 13:35:33 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linux CH <lch@lists.linux.dev>, Enrico Zanda <e.zanda1@gmail.com>, 
	Peter Senna Tschudin <peter.senna@gmail.com>
Subject: Re: Linux'n'Beer v4
Message-ID: <6cbpcgfvlaweqvomhnievvmz37kppx72q65ocednudfkjeligv@et2uh5nlyuwe>
References: <fdvjjgjrpshezzpmt3ys2i2objgldn7qjozr6srt2tjbcikgcp@wp7xwemcei46>
 <ab2b879f-e6f3-4f24-85d0-2c093b37d1d7@kernel.org>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab2b879f-e6f3-4f24-85d0-2c093b37d1d7@kernel.org>

Hi Everyone,

On Fri, Feb 14, 2025 at 10:01:14AM +0100, Krzysztof Kozlowski wrote:
> On 13/02/2025 15:54, Andi Shyti wrote:
> > I'm pretty happy that I won't be editing emails for the next
> > Linux'n'Beer call!
> > 
> > Last time, I heard some excitement about meeting in Lugano. Since
> > I'm currently injured and hobbling around on crutches, I fully
> > support the idea and officially propose Lugano as our next
> > meeting spot.
> > 
> > That said, I'd rather not end up alone at the pub, drinking beer
> > and passionately telling myself how cool kernel programming is.
> > So, I'd like to invite Krzysztof to set up a Doodle poll and see
> > if we'd have enough people for Lugano.  If not, we can always
> > fall back to Zurich.
> > 
> 
> OK, so the vote for Lugano:
> 
> https://doodle.com/group-poll/participate/aOLBLyQb
> 
> I cannot find in Doodle any option which would distinguish between
> "never read your email" and "I won't come to Lugano", so let's assume
> such cases as equal - no votes means either you do not care or you do
> not want/plan/can come to Lugano.

the poll is closed, and the vote has decided: we're meeting in
Lugano on Friday, March 14th.

I don't expect a huge number of attendees this time, but
switching location could be a nice change from time to time
(plus, I'm still hobbling around on crutches).

Of course, there's still time to make up your mind and join at
the last minute. And, as always, feel free to invite anyone you
think might be interested.

I'll send another update with the exact place and time later and
perhaps gather a few more attendees.

Lugano isn't as rich in pubs as Zurich, and options are more
limited, so I'll take the lead this time in choosing the venue.
I think I have a good overview of what the city has to offer in
terms of beer!

Looking forward to it!

Andi
