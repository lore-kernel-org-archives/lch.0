Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED59344D9D
	for <lch@lists.linux.dev>; Sat, 10 Oct 2026 09:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791625686; cv=none; b=qoDHYqA5o1nICWbqQNZFhTRUV8p6w+vBIxDh4oYnWSbxVHWABMiWe/GGM7mV72+U5plE7tnnmqWrNrRQGhO++egWsANplHAwIwFW4G5MziCHe4zKI/L2AGWr0vi1JA+uNOSDm+bBaMwPUyHKw6h0GpsxF8jBJpJW9Whj7/b/ioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791625686; c=relaxed/simple;
	bh=AgYPEW1PgUPJUcfWfnYgkLP+/CRk02k++YbDKEzYstY=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bECawLzOL90v62AvxUU23+MYCcwF3ww78EJHegySydIvMo8jDHEHFxdYCbH6ngolpqOeTmizk3VtM1MqBeIeV4eDpO47FlJ6dVFlkyFB/086XCTliofaiIM2fCc4avzDhyj4CF8q35lrGL+X+EQACsni/0Wnn5tOfMMa1FJuBVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDqC+baY; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDqC+baY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B9501F000FF
	for <lch@lists.linux.dev>; Sat, 10 Oct 2026 09:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791625684;
	bh=AgYPEW1PgUPJUcfWfnYgkLP+/CRk02k++YbDKEzYstY=;
	h=Date:From:To:Subject;
	b=HDqC+baYZ3El4ubpgiNzfZn9B5sdi874TXxaL9KIRsCIZLr5rt/8yRdy2lhhjd8m2
	 tp6dkM2yGdpIVLELFKHH+lwHGHqXYCuaNqnJUxbQCdir17fofPrfMbXXZ4rRM81Ik4
	 0chlfNWCMsVj3zM2ZLSx6piFM+RaA19rHBdU7jrMxOUuR2zG4XGuDpizgbBphkJrY1
	 Fk4HLTS9DZ1qCdSgw5DsEexphCCx+A44i1N/WtXjM3KcgxEOKk9n5mbAAgAmPK6KCg
	 xjQgFatZwyG8/222bSh0W0fQitFjRLEOUYrj9Wyq8sfzHB0MUR4qpR9cfGUyuroEyg
	 WGEyuA2WechIQ==
Date: Sat, 10 Oct 2026 11:47:57 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Linux'n'Beer October
Message-ID: <asoE_yLhcUDtxiX1@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

Long time no see. I hope you are all doing well!

I'm writing from Prague after a week of LPC and OSS, where I met
quite a few people from this community. Maybe next time we should
organise a small Swiss meetup there too.

Anyway, it is definitely time to meet again, have a good beer and
talk about Linux and whatever else comes up.

I would propose 23 October in Zurich, at a place to be chosen by
someone who knows Zurich better than I do. Suggestions are very
welcome.

In the meantime, I created a poll so we can see how many people
are coming:

https://framadate.org/polls/43d8ed815ca2cb840d7e

As always, feel free to invite anyone who might enjoy some good
technical discussions and a good beer.

Looking forward to seeing you all again.

Andi
