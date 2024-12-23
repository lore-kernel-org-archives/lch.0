Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB3C45979
	for <lch@lists.linux.dev>; Mon, 23 Dec 2024 14:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734965530; cv=none; b=I2qI7JhYt99u9/CDeEY9r0JLrYnHPpMFJGqxmgHE8CYOp1RMkULnXlff+GGaLmdWk5scKnJ2R6Ea7v+fZhrY58CmAQe0/7bjgXbAGTEKSZmbYoERLASHTINpwnd8uXWq6ryE3DwLIeRzEJalZeAkFRDE0CEISqutXIlp0OFfEEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734965530; c=relaxed/simple;
	bh=Hi3Pqu1zjlnVLYSJJNMkMUbGg4D3hpqtump3jG8drCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=orIm7hII/cGcI5I2PxynpJpWVl8kZ05LpXw0ToTmi3gEiJrrJ4QYuU26dKq8aVvrkjBny3O+v+Sehx6PF0XwtW7TxzEC+8zL1P/oJgZzjggkh83zmhMrpMhLCacRiRlPfRo0bC4dfMf+VtpFT1oSF49vrVEcEq68iEdYZtHZ7vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL1DvD2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL1DvD2k"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D1C7C4CED3;
	Mon, 23 Dec 2024 14:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734965530;
	bh=Hi3Pqu1zjlnVLYSJJNMkMUbGg4D3hpqtump3jG8drCg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XL1DvD2kTAE8Rg7H2ST2OBC0fC/CYKtPpO7T+bbOk4h+XQ7aZXzeJfzwx6bQAbhFk
	 zs6BJjTHm+1mpCHJjLfjJ6aOciqaKGHIhkJvuV0AzXljAGNPPP+kXhma+2ctIfuQbS
	 27DzLB79ePPTvLzlLlfLr4xOJsEw9pXJBF9n8eubhQN1xkBQVN5g2JUmqLLVcAtZs+
	 35Asn9RLKrQE5v9zmw/rJ2bpDcSb0AdyoVHM4eGnqq78ge8a/EvdSxQLkFxMhI6I6m
	 hBFGXxGct0EeMZVt8qnejSCSkJnLmW7MXi4hxsM0KE9sr0oeTgYHvd8pgpiZjtKBZW
	 z2WWFfTKjVrXA==
Message-ID: <815be8dd-b920-4be8-875d-7cd28c1ef012@kernel.org>
Date: Mon, 23 Dec 2024 15:52:00 +0100
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux CH Switzerland mailing list
To: Andi Shyti <andi.shyti@kernel.org>,
 Adrian Freihofer <adrian.freihofer@gmail.com>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Andrejs Cainikovs <andrejs.cainikovs@gmail.com>,
 "ankwyell@gmail.com Christoph Zimmermann" <nussgipfel@brain4free.org>,
 Dominik Sliwa <dominik@sliwa.io>,
 Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Ezra Buehler
 <ezra@easyb.ch>, Francesco Dolcini <francesco.dolcini@toradex.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Hans Pabst <hans.pabst@intel.com>, Jann Horn <jannh@google.com>,
 Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 Juerg Haefliger <juergh@proton.me>, Lothar Rubusch <l.rubusch@gmx.ch>,
 Marcel Ziswiler <marcel@ziswiler.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Mehmet Fide <mehmet.fide@gmail.com>,
 =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>,
 Patrick Wicki <patrick.wicki96@gmail.com>,
 Parth Pancholi <parth.pancholi@toradex.com>, Peter Newman
 <pnewman@gmail.com>, Peter Senna Tschudin <peter.senna@gmail.com>,
 Philippe Schenker <dev@pschenker.ch>, Reto Schneider
 <mail@reto-schneider.ch>, Sima <simona.vetter@ffwll.ch>,
 Stefan Agner <stefan@agner.ch>, Stefan <code@stefan-gloor.ch>,
 Stefan Eichenberger <eichest@gmail.com>,
 Tomasz Ciesla <ciesla.tomasz@gmail.com>,
 Vasileios Anagnostopoulos <anagnostopoulos@hotmail.com>,
 Victor Lavaud <qdii@google.com>,
 Walter Schweizer <walter.schweizer@siemens.com>
Cc: Linux CH <lch@lists.linux.dev>
References: <e4jrk4i53bh47gf73kdtutw4ussnr6pqhbm7qsg75izylz2tdx@lghwojrhi3qo>
 <enzlpirj42hryyjdb7zb3qnja3zyz7rhotgxm2c2neuwn53pqg@xx7tnhzficur>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <enzlpirj42hryyjdb7zb3qnja3zyz7rhotgxm2c2neuwn53pqg@xx7tnhzficur>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 18/12/2024 14:59, Andi Shyti wrote:
> Hello everyone,
> 
> Just a quick reminder to subscribe to the Linux CH mailing list.
> All notifications will be sent through it moving forward.
> 
> If you're up for it, please feel free to test the mailing list
> during this initial period. There have been a few cases of
> delivery failures, and we need to report any issues to the admins.
> 
> You can test it by sharing some Swiss poetry, a fancy joke, or
> even simple junk like "this is a test"—whatever works!

Web interface reports 25 subscribers, so not bad, but still might not be
enough. If someone did not subscribe, you can always fetch list contents
with lei directly to your mailbox: either local (Maildir) or to Gmail.
Posting is open for everyone, so basically this allows to skip
subscribing. Just remember to actually run lei to fetch the emails.

More on lei:
https://people.kernel.org/monsieuricon/lore-lei-part-1-getting-started
https://people.kernel.org/monsieuricon/lore-lei-part-2-now-with-imap
(the IMAP to Gmail is how I use it)

Best regards,
Krzysztof
