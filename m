Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A111B042E
	for <lch@lists.linux.dev>; Wed, 18 Dec 2024 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734530379; cv=none; b=KwhUPZHVJP1TMKkcYcymJ/5Q9eai4QUAioWQyX5fuRDSOuraTYi7WVNC5LzQe3F8/kgrQ3GkRKwgjtNbtoekFXSiJsCHkZzMidqeGqFR5kKidGCYt/unmwdXgr/BAfsVLx8AewJzDvrDHcNh/Zegr/p+41gIGBix7C+qEeNNSJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734530379; c=relaxed/simple;
	bh=Epe1bg6G9bNhH8sYHrPXaLpY/P9mMOSFDj7opKEq/sY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U62VlaAJ0OWgOgV2xp/cQDvGcgizvisYpIqcDqCVqyOT4gM7BFtaeYmcZQG+E96Y/DTC8qqVHmBsTw7IuXWJ3zxWf/+zXmI3qCMWARKw9tgB+Nxo7AUV+t5jaaIARJimg++tPbEjAGNcyGo1NtucDd6ZgrxXLa2EViCNjf0n+fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKapyPbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKapyPbW"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D913C4CECD;
	Wed, 18 Dec 2024 13:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734530378;
	bh=Epe1bg6G9bNhH8sYHrPXaLpY/P9mMOSFDj7opKEq/sY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jKapyPbWj7T/1v7/5x7xzy5mIbHLZwiUML7i1cWD4xd55bfOLuaGVvvMqRtMRpgWT
	 8hbud82V2comVX4BFvTOJQOgFAn646++TGaxSIEQOje/tknK9xuPtatRp++EjKV0ws
	 oCQZz8N1GFUvserwo0pib6BEP1RGEb+KR/E2FwsT9YmB7eXP/Cvl1eBGulaf80MxAF
	 F7WqgYS5k1Tw/97oHtm+HC4cZqixyC/AXRS+TsXPwPz/qIgPB3uUwTYUQiG6/YXETs
	 pky5dp/V6B20NrW9cQvhWXUrbsoFCu15ijIUmWy11qaTXTAUrlrcGXHORTzB0gDhSN
	 8vFqJPpPzMwLQ==
Date: Wed, 18 Dec 2024 14:59:34 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Adrian =?utf-8?Q?Freihofer=C2=A0?= <adrian.freihofer@gmail.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Andrejs Cainikovs <andrejs.cainikovs@gmail.com>, 
	"ankwyell@gmail.com Christoph Zimmermann" <nussgipfel@brain4free.org>, Dominik Sliwa <dominik@sliwa.io>, 
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Ezra Buehler <ezra@easyb.ch>, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, Frieder Schrempf <frieder.schrempf@kontron.de>, 
	Hans Pabst <hans.pabst@intel.com>, Jann Horn <jannh@google.com>, 
	Johannes Schneider <johannes.schneider@leica-geosystems.com>, Juerg Haefliger <juergh@proton.me>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Lothar Rubusch <l.rubusch@gmx.ch>, 
	Marcel Ziswiler <marcel@ziswiler.com>, Max Krummenacher <max.krummenacher@toradex.com>, 
	Mehmet Fide <mehmet.fide@gmail.com>, Michel =?utf-8?Q?D=C3=A4nzer?= <michel.daenzer@mailbox.org>, 
	Patrick Wicki <patrick.wicki96@gmail.com>, Parth Pancholi <parth.pancholi@toradex.com>, 
	Peter Newman <pnewman@gmail.com>, Peter Senna Tschudin <peter.senna@gmail.com>, 
	Philippe Schenker <dev@pschenker.ch>, Reto Schneider <mail@reto-schneider.ch>, 
	Sima <simona.vetter@ffwll.ch>, Stefan Agner <stefan@agner.ch>, Stefan <code@stefan-gloor.ch>, 
	Stefan Eichenberger <eichest@gmail.com>, Tomasz Ciesla <ciesla.tomasz@gmail.com>, 
	Vasileios Anagnostopoulos <anagnostopoulos@hotmail.com>, Victor Lavaud <qdii@google.com>, 
	Walter Schweizer <walter.schweizer@siemens.com>
Cc: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux CH Switzerland mailing list
Message-ID: <enzlpirj42hryyjdb7zb3qnja3zyz7rhotgxm2c2neuwn53pqg@xx7tnhzficur>
References: <e4jrk4i53bh47gf73kdtutw4ussnr6pqhbm7qsg75izylz2tdx@lghwojrhi3qo>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e4jrk4i53bh47gf73kdtutw4ussnr6pqhbm7qsg75izylz2tdx@lghwojrhi3qo>

Hello everyone,

Just a quick reminder to subscribe to the Linux CH mailing list.
All notifications will be sent through it moving forward.

If you're up for it, please feel free to test the mailing list
during this initial period. There have been a few cases of
delivery failures, and we need to report any issues to the admins.

You can test it by sharing some Swiss poetry, a fancy joke, or
even simple junk like "this is a test"—whatever works!

Thanks,
Andi

On Mon, Dec 16, 2024 at 06:43:36PM +0100, Andi Shyti wrote:
> Hi everyone,
> 
> This will probably be the last broadcast email I send to
> everyone, because starting today, we have our own mailing list
> on kernel.org!
> 
> You can find it here:
> 
>   https://subspace.kernel.org/lists.linux.dev.html
> 
> as:
> 
>   lch   Linux CH - Switzerland
> 
> To subscribe to the mailing list, simply send an email to:
> 
>   lch+subscribe@lists.linux.dev
> 
> To post messages, use:
> 
>   lch@lists.linux.dev
> 
> A big thank you to the kernel.org administrators for helping us
> set this up.
> 
> The name we have chosen is Linux CH ('lch'). It is definitely
> less fancy than Linux'n'Beer, but I think a simpler, more
> conventional name is better suited if we want to grow into
> something more serious in the future.
> 
> Please make sure to subscribe so we can avoid chaotic To: or Cc:
> lists in the future.
> 
> Thanks,
> Andi
