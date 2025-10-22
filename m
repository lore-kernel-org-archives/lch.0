Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E2B34B19F
	for <lch@lists.linux.dev>; Wed, 22 Oct 2025 13:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140739; cv=none; b=ma+6Gb2sCQmMZqDSJrgkvDDT7rkyMg/r6avw320drZbkJb42gvScGGNiOi/sWfGCdcngDZc93BWFYyJk6JEuXUvGHvZg4YC9cjBEPPHVTThRL6Y/vhj2eYzXxYQp5IQvg+c/OoXZEPuwcFfXQi8cMk3pzoNsx2VJbsKkerC548M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140739; c=relaxed/simple;
	bh=o+udUTdXKuCvIX3tDhHP8FLQVXdl5//brWqFuf0ON3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pvMl/3TDI78PvFfK4DHIp7LwSAyBLkqEqJ65bzXlToBV8A3mJW3OZfcmDo3ohz4u0dgKkJjKEiXdm9W23H178H1b2wNBeH+7G+SGrJH9x7PO416E0vM+ECML2MDwOhPvaYlGZgxpoAnyUwkC2U3t6xQFUsmZj0ZhQ0dMyl6obOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afPtWYKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afPtWYKs"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC999C4CEE7;
	Wed, 22 Oct 2025 13:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761140738;
	bh=o+udUTdXKuCvIX3tDhHP8FLQVXdl5//brWqFuf0ON3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=afPtWYKsZo3eq1n+QDmqyJUZQo+Zuf/+Cjtt+6yD1xzJQ6L+MlLhO0SpOOVKHz6Am
	 6ooMlPQtxcyTPOfPdelZ6gmOLbX7q8XXT2S4UJ4Z0G826SMrzws17XYNcfO0aWPdSl
	 Q3Lfxq529tsBhsJgHUZVFaqt8u0XaX0sSvqbFHPDsbSikCWjOOGoiJmhHSumi3PpqR
	 aggPX4EE0nmsbcyVJwz6vA4V4o2dcIlLkdcT8sHXSpUXMMrJWze4ESaXZb38T2w8uL
	 PhUxXleZrc2docxt/utwXmlfKhvFzgxHBVYRxTtq+jQmJ/P8icb7bCvl/Ykq6yM2vU
	 C7Iz2yqmbTAvA==
Date: Wed, 22 Oct 2025 15:45:32 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Cc: Peter Senna Tschudin <peter.senna@gmail.com>
Subject: Re: Linux'n'Beer (v6)
Message-ID: <cipyiurvxg4fqec4jsbhhx6bn4h2i3chtqzss33kxbgpihufsq@b4aes5g4zgjq>
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

Hi everyone,

It is always a pleasure to organise these events and it is great
to see so many of you joining again.

Thanks to everyone who suggested places. I called a few but they
were all fully booked. I have to admit it was a bit of a late
reservation this time.

In the end I managed to book a table under my name (Andi) for
Friday at 7pm at Rheinfelder Bierhalle(*). We have been there
once before so you know what to expect.

See you all there,
Andi

(*) https://www.openstreetmap.org/node/317769175

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
