Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24E2315D32
	for <lch@lists.linux.dev>; Fri, 24 Oct 2025 11:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761304638; cv=none; b=MMVKeUCanyz38U/pTz+kbtVVrS/Xm9DLmb5EdWm6jUR9+OSVcvMF86SAvHZBYbsjZFG45oKw2+9oqlrqojFwtUNoRBlPUxJ43rGYv5eKMHnHTmUyMrIdk+3yppgoWU8O7AgDJLSpSeZrHceTZmG0JtAZX76KEsqOnkgaJOstUw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761304638; c=relaxed/simple;
	bh=h2eSflkf+VTb3uLavwFPKGu93bIhR+kCF61gXXjnxww=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h5RfNACjlQ46lzkNERrO/PdIc/oE+OSQM0jBDFIcHQxGWY+HYdk9qRz4Nep+PB7hxhKJb7jNtO5Bk0nyJH6ZWpg00zquGlpvm5VnMVeXrem9RuXYPwDl/UNe8wYqbabmI0qrFAcISoPX/tDFK+NmhfAzoPi3YGanwpQ7CZS6HyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dg8cJUow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dg8cJUow"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECA13C4CEF1
	for <lch@lists.linux.dev>; Fri, 24 Oct 2025 11:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761304638;
	bh=h2eSflkf+VTb3uLavwFPKGu93bIhR+kCF61gXXjnxww=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=dg8cJUowwrmzE2355KOr74WA/tkNm9XZLe2YtP2DwMAAIB5Hsp9qV3Jxmn19R6Kuf
	 RAC1xaOIYSPzJ7HFTqcOHT10SgyAI2WzWFGwwdCd75IizZ9e2ZRti3SAIXxB/GfGTa
	 BwRFfk1Q8m+p+V3zCI4hd/pXUaH9wflSbKyGpTpVygnKZAMG6+PTfOTc/nTs5lLEk7
	 FIuBrp1BROTA0Q/oS+Aj73cgbMORngCvOK0Q7qnoGakSbiJGp+m/P42/2/gMcEjims
	 lOUzA/VaN/ELWQ2v4HPI5P5/Xd5QojQxFgLhnYhO2/7cs5c0shk+0cp8tNUGMibAdV
	 z0X2HFACxS95A==
Date: Fri, 24 Oct 2025 13:17:14 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer (v6)
Message-ID: <7lpmueqcyhgxpdzllpborktwqcg47a7k7kuastshz2ei6bib5z@dmtz472zbiv2>
References: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>

Hey guys,

Unfortunately I will not be able to join this time either.
My wife got sick and I need to stay with my boy, who (at 5) still
cannot drink beer and only knows Linux through SuperTux.

The meeting is confirmed for 7pm at Rheinfelder Bierhalle.

Have fun and enjoy a pint for me,

Andi

On Mon, Oct 20, 2025 at 11:49:07AM +0200, Andi Shyti wrote:
> Hi everyone,
> 
> It is time for another round of Linux'n'Beer!
> Let's meet on Friday, 24 October, as usual in Zurich.
> 
> We have not chosen a place yet, so suggestions are very welcome.
> Anywhere with good beer and enough space for all of us.
> 
> Please let me know if you are joining and feel free to suggest a
> venue.
> 
> Cheers,
> Andi
