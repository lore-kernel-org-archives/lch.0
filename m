Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB02640681C
	for <lch@lists.linux.dev>; Mon, 29 Jun 2026 13:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782738780; cv=none; b=ThlSrrbU+29GnQ3ikMOFraYWORTNxD660Hep38oNKCnc3cVAA8G7Skiwsquk0Q/X88MtAqfCWDF9w/7/zSM3Vw2o/YVHlbPv/aZ2YBnFThCWbyl13/wMXZK2qd4WZ9L25uIkP19unxUTipOtxkX2RRgiR91pOZnrSqC2E4SaAmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782738780; c=relaxed/simple;
	bh=N9DXq1Vatnhhl1J1uhZhGNhZRioawqpM+H9QUHVZaLo=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=hFbu/rOh9xpJTYoqesGKScDKyfDJVsgzVFGMaSa7OpWDR8wPIbUUoSJfHcp1sE7xzec5JToVz+htIh73NOxmNmml9JjkjhAVgcMlG/JQZ1ZrTv4nxNvM6A2ZVCnnthBLLMN/UHLlmjdKFMJkpA/rXk7pcgo/iKURns7RaSPtO9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAijAevp; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAijAevp"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E21A1F000E9;
	Mon, 29 Jun 2026 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782738779;
	bh=IuhhUlelcDY0u2ABqIkKmJTVj4pn9Mcn+fI+jmfpxPs=;
	h=Date:Subject:From:To:References:In-Reply-To;
	b=XAijAevpJ9zR96EA6WF5kt2A6VAT4HNEMJShLm2nFSlWuA/M1j47QYzuHpRsFpLv7
	 mZfTexmUjvwgf+NpIFDc0K1piorIJ+CAq3Vs2pCyjXEMmnFBfT2TlIiruNYuGhGShL
	 wvxxeRoCuCrqdWvrei4quX8pRmwzmfIqY5q7Uhu5ppMw7D3y+SslxxP8EGGjJVj1nN
	 yDDITAzNjO5g3ufsPeXa4zDFhsKvmJ6XeB4cyhx91VSeGBEpUkFh3YtmK8b8WXzSlL
	 pqyxTPKzAquj5olftt6qzUr9to8TlyjqReoA1RqTxqu2ZQ8C2Ytp8rNPt/NBOKHhG8
	 mNuliyFTU280w==
Message-ID: <4f827c46-80bc-44af-be69-6a4af3c9379e@kernel.org>
Date: Mon, 29 Jun 2026 15:12:57 +0200
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux'n'Beer, July 2026
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Linux CH <lch@lists.linux.dev>
References: <49d3a2a8-68bd-4579-8223-bccc0fa61cac@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <49d3a2a8-68bd-4579-8223-bccc0fa61cac@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 29/06/2026 14:16, Krzysztof Kozlowski wrote:
> Hey everyone,
> 
> For next Linux'n'Beer event, I was thinking about Craft Beer Hike,
> previously proposed by Christoph.
> 
> This is an outdoor event on 11th July around Zurich:
> https://craftbeertrail.ch/
> 
> It is a hike with visiting local breweries/pubs with good beer. It
> requires buying tickets, though.
> 
> However, more importantly: not sure if with this weather I could do a
> hike/walk in the middle of day. :)
> 
> If the weather on 11th July is good, as in not melting, I will probably
> go for the hike and we can meet there as well.
> 
> 
> But except the hike, let's try to meet in a outside-dining option a bit
> earlier:
> 
> Date: Thursday, 9th of July 2026, starting at 18:00
> Place: Zum Frischen Max, Oerlikon
> https://maps.app.goo.gl/spKYFpU1tCtVtKSQ7
> 
> Please confirm attendance on 9th of July, by responding to email or on
> IRC (Libera/#linuxnbeer-ch) or in Whatsapp group, so I could book
> appropriate table.
> 

Change of plans! Embedded software meetup happens that time, so let's
not create conflicting events.

New planned time, one week later - 16th July:

Date: Thursday, 16th of July 2026, starting at 18:00
Place: Zum Frischen Max, Oerlikon
https://maps.app.goo.gl/spKYFpU1tCtVtKSQ7


Best regards,
Krzysztof
