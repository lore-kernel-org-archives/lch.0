Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406CB216E30
	for <lch@lists.linux.dev>; Thu, 27 Mar 2025 14:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084511; cv=none; b=igd061VkD9ltRNitmF4JIH5WCykH+MWFJZUcOUNvTqKoBJPTrpIdM9g/NJgLRhm6kAxORc/4rM18otrhA4U0YMJ269KF7oEqcfcN6v/sXiQPk/fqr9gxasJcn2KJkUb4qyjlo3Q+kqhpoojt00vQXIcl7P2MvvPq1CZ1bNyYkpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084511; c=relaxed/simple;
	bh=U3RiO96GUl/Mr4qO6lqTsgQOY+H9szTBM9w5o9T/xFs=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fr/JZ7Rcrf+7dqufjyIflWuqKHgkUD8d1DMoDYlrs3zf62HyUccmmRU3TRMxoafckbnOs9p70VXscezpDs1JiRFhqMjbZmjRb7oioZUk7zkXLuq8NKZLxKei/BrPLbxgxq8BnHsD5yiiNMgz/OJIOF2DqWfPOgk0N2jXgMDtBVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB43zImM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB43zImM"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1D6C4CEE4
	for <lch@lists.linux.dev>; Thu, 27 Mar 2025 14:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743084510;
	bh=U3RiO96GUl/Mr4qO6lqTsgQOY+H9szTBM9w5o9T/xFs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=VB43zImMD1BYBr1/q0u5RVaX/69Hwvfj+MEwgu/tDSji6vTa0v1lb3Ef01Ut0FfOl
	 sdbJhLVVg+V3Mp5N1gZ1TIhFWSGzEzBbcG4cAUx0rgbcEAjn24BkAYcTdMUs7/j9OQ
	 gy03XWVFX0Wa2BYfaeRktcdsEay7trjOvjPnC00jUubma6Aw0TWaKlLIYqTHAnlTdq
	 IAoUziXNqEf1MdUuq52I2WUF8ObKAWri9sDZ+aJJJaClpZX0oGdt+4kvtOdJco3/6H
	 cwU7kekr1ayi6625BzMIHa+FZGJB1B9nY2bjfzLSkxvMh3JOy6A52773eOsLpkwqNl
	 dx94uaHckv3oQ==
Date: Thu, 27 Mar 2025 15:08:27 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer v4
Message-ID: <siuasg4jrommfda6khfuf7j2ynpfx55qeq44mguw5i62mod4yf@zkowzi5oms4a>
References: <fdvjjgjrpshezzpmt3ys2i2objgldn7qjozr6srt2tjbcikgcp@wp7xwemcei46>
 <ab2b879f-e6f3-4f24-85d0-2c093b37d1d7@kernel.org>
 <6cbpcgfvlaweqvomhnievvmz37kppx72q65ocednudfkjeligv@et2uh5nlyuwe>
 <ed6ffka6hx5vkw4wi3rv4rdr6ajdwgdamnulc42vhhztsqtu7o@hpru75wyuwwx>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ed6ffka6hx5vkw4wi3rv4rdr6ajdwgdamnulc42vhhztsqtu7o@hpru75wyuwwx>

Hi Everyone,

On Tue, Mar 11, 2025 at 10:36:03PM +0100, Andi Shyti wrote:
> On Wed, Feb 26, 2025 at 01:35:33PM +0100, Andi Shyti wrote:
> > On Fri, Feb 14, 2025 at 10:01:14AM +0100, Krzysztof Kozlowski wrote:
> > > On 13/02/2025 15:54, Andi Shyti wrote:
> > > > I'm pretty happy that I won't be editing emails for the next
> > > > Linux'n'Beer call!
> > > > 
> > > > Last time, I heard some excitement about meeting in Lugano. Since
> > > > I'm currently injured and hobbling around on crutches, I fully
> > > > support the idea and officially propose Lugano as our next
> > > > meeting spot.
> > > > 
> > > > That said, I'd rather not end up alone at the pub, drinking beer
> > > > and passionately telling myself how cool kernel programming is.
> > > > So, I'd like to invite Krzysztof to set up a Doodle poll and see
> > > > if we'd have enough people for Lugano.  If not, we can always
> > > > fall back to Zurich.
> > > > 
> > > 
> > > OK, so the vote for Lugano:
> > > 
> > > https://doodle.com/group-poll/participate/aOLBLyQb
> > > 
> > > I cannot find in Doodle any option which would distinguish between
> > > "never read your email" and "I won't come to Lugano", so let's assume
> > > such cases as equal - no votes means either you do not care or you do
> > > not want/plan/can come to Lugano.
> > 
> > the poll is closed, and the vote has decided: we're meeting in
> > Lugano on Friday, March 14th.
> > 
> > I don't expect a huge number of attendees this time, but
> > switching location could be a nice change from time to time
> > (plus, I'm still hobbling around on crutches).
> > 
> > Of course, there's still time to make up your mind and join at
> > the last minute. And, as always, feel free to invite anyone you
> > think might be interested.
> > 
> > I'll send another update with the exact place and time later and
> > perhaps gather a few more attendees.
> > 
> > Lugano isn't as rich in pubs as Zurich, and options are more
> > limited, so I'll take the lead this time in choosing the venue.
> > I think I have a good overview of what the city has to offer in
> > terms of beer!
> > 
> > Looking forward to it!
> 
> Just a few days to go until the next Linux'n'Beer!
> 
> We'll be meeting in Lugano, and I expect most of you to arrive
> around 5:30 PM. I'll meet you at the train station.
> 
> The plan is to start with a short guided tour around town and
> along the lakeside, followed by an aperitivo at Piazza della
> Riforma before dinner.
> 
> In Lugano, food is mostly Italian, but there are also plenty of
> Swiss specialties from the Ticino region. At 7 PM, we'll head to
> Ristorante Commercianti, where we'll have a wide selection of
> local and seasonal dishes to choose from.
> 
> After dinner, we'll continue to Il Fermento, a lakeside pub with
> a local atmosphere, where we can enjoy locally brewed beers, both
> bottled and on tap.
> 
> If anyone who originally planned not to come changes their mind,
> please let me know so I can adjust the reservation accordingly.
> 
> Looking forward to seeing you all there!

as per my usual delay, here comes a big thank you for the great
event we had!

Thanks to the folks who travelled down from Zurich and to those
from Lugano who joined in, we had a fantastic time. I really
think it's nice to explore new places for our meetups, it helps
grow the community and keeps things fun.

One of the hot topics this time was the idea of making the event
a bit broader in both topics and activities. A few opinions have
started to bubble up... stay tuned for what comes next!

Thanks again, and I'm already looking forward to Linux'n'Beer v5!

Andi
