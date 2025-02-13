Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C02938389
	for <lch@lists.linux.dev>; Thu, 13 Feb 2025 14:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739458501; cv=none; b=TFbpvoNWxuubR2NpNJbvpUlj/XhQnXtu4ymbdzrIJ5oDWTW33nUDBCUvzf7vBj22ykGEVZS7WwhtJh3VEObyBt0eNtnfr2cJtZqOemq281aI0wMLbM07GuAadeDfl2hP+tN0RvMr+wUDRl2jOgmO8t/S96MHP/C7R3f+E/Smkbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739458501; c=relaxed/simple;
	bh=EebALdO1qov465szB/NYUDe4m0V49fZtrTHfaCpwawU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UmVQJYF7zzeaIyeFy85PtCVUoL0hcqLCTXMTU75ADDOGjR2hQzz4jCfn+tV2/DRmBMQQdFRu2cZ/DKhyJeA0n+uqEW3Zrbn5fvIMWyAigr67/ifVS+dET93H3jZcuViHSVX0X/7RVMWcv6uWCO/WNkZXYo0Cgedx+PkcfVUkOT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEH1Ok1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEH1Ok1X"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FBD0C4CED1;
	Thu, 13 Feb 2025 14:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739458500;
	bh=EebALdO1qov465szB/NYUDe4m0V49fZtrTHfaCpwawU=;
	h=Date:From:To:Cc:Subject:From;
	b=JEH1Ok1XLU0dFLHj25cxDdFS0vyv52dzyUJtc7rbTU4LU1NxYDmRNGHbqJZWHs5Sj
	 qIYU7sZnoENFMgf2MijWU2U4QVkQl5a7U/KVA8+F+oceBhV3AgPgVNKe1UZVFIREZI
	 RWf8OTeVNlVfOAJDczfWKk2VsMs1Lbc3VE0t4ax95UxpcsRPItJYMdY8r0e3wzkAmM
	 cl3S5JRTxGaPNx9TbVxTQgY9DPu6+9YwyF+QLka0NdgEdg7oavxwjehqjoR7uixNjD
	 ngyv08hknPjWtm+fRQuDEWI7gGaZHHG7iqIQvxYo8G5av7sOKS9+XonAk0dS/iAPjD
	 xD8dn2u+aJYGg==
Date: Thu, 13 Feb 2025 15:54:57 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Cc: Enrico Zanda <e.zanda1@gmail.com>
Subject: Linux'n'Beer v4
Message-ID: <fdvjjgjrpshezzpmt3ys2i2objgldn7qjozr6srt2tjbcikgcp@wp7xwemcei46>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

I'm pretty happy that I won't be editing emails for the next
Linux'n'Beer call!

Last time, I heard some excitement about meeting in Lugano. Since
I'm currently injured and hobbling around on crutches, I fully
support the idea and officially propose Lugano as our next
meeting spot.

That said, I'd rather not end up alone at the pub, drinking beer
and passionately telling myself how cool kernel programming is.
So, I'd like to invite Krzysztof to set up a Doodle poll and see
if we'd have enough people for Lugano.  If not, we can always
fall back to Zurich.

As always, feel free to forward the invitation to anyone who
might be interested!

Let's get things rolling!
Andi
