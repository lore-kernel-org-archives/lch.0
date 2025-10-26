Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF40481B1
	for <lch@lists.linux.dev>; Sun, 26 Oct 2025 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761498454; cv=none; b=nCBypeppHpseMkmDTaeAqVBvm94FKbGgx5NhcZ6KiJzRGZHIpxh0HBXBH4JaTZAeEWN4bLlplyKgxOl9FQu0g1TsehtjzKuVPLruhHMBwZnc3e96BgoBTMODGSviSkbJLmFGitbCUb6zn3+XhUGZ40BxUSywcgZuvwtLg4YlQKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761498454; c=relaxed/simple;
	bh=FTWIAwhzrMph/Z5xaWQkDqCdkcoqOiHH6Y808+9ZsP4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KewQZwDbQH1X8pVXHgY1iDwPBl8g4nCa3DXAvAFnvG7GzW1EB8cQv7C4ARVu2vTiWqHthNFQYEKVThZHElgQq/u0XrDgYW+Q4O54P6yuWrFrOBeFTzP9jNoknyT0tE5lwr5RFf5zZdUODR7JS7O7hBFYVHuuO21grzdJ1XzYkMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfEHVHtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfEHVHtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF59C4CEE7;
	Sun, 26 Oct 2025 17:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761498454;
	bh=FTWIAwhzrMph/Z5xaWQkDqCdkcoqOiHH6Y808+9ZsP4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jfEHVHtQ8wEXC48LhlxPIW0WR0/jUwX31UwWBhPXp0DWhAbK6hAYXxDKmdwyMW8Yt
	 FI0sDCoNKMqW6XetGuvXalppuECNkax5nVlNpZAgBH+P65Nl9uKP5sdAn2uBZkpM0s
	 bEMs0SzCUT39LE+pSnXbrkEqqJj3l03p3eeTUVJkKejYRsjfh+NUVBv1OqHt0s/Zwf
	 MlhilDV5g/PM36JLPz+2VsdoCZtg4Ajb2bFHaYnQkTKtBIGQuQ+kv7R5jlLxvVLcpy
	 3e6S6SzDB0px2OEc1WnlMyCLW+9LVD9ttSTa4ahsvlDFMU6KzAeo8RzmCGK/hcsUrd
	 ZY+iyfRvshzWQ==
Message-ID: <a03cfb96-4d85-4d2b-b358-70f8b6379dfe@kernel.org>
Date: Sun, 26 Oct 2025 18:07:31 +0100
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux'n'Beer (v6)
To: Andi Shyti <andi.shyti@kernel.org>, Linux CH <lch@lists.linux.dev>
Cc: Peter Senna Tschudin <peter.senna@gmail.com>
References: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
 <cipyiurvxg4fqec4jsbhhx6bn4h2i3chtqzss33kxbgpihufsq@b4aes5g4zgjq>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <cipyiurvxg4fqec4jsbhhx6bn4h2i3chtqzss33kxbgpihufsq@b4aes5g4zgjq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/10/2025 15:45, Andi Shyti wrote:
> Hi everyone,
> 
> It is always a pleasure to organise these events and it is great
> to see so many of you joining again.
> 
> Thanks to everyone who suggested places. I called a few but they
> were all fully booked. I have to admit it was a bit of a late
> reservation this time.
> 
> In the end I managed to book a table under my name (Andi) for
> Friday at 7pm at Rheinfelder Bierhalle(*). We have been there
> once before so you know what to expect.


Thanks everyone for coming (pity you could not join Andi!), that was
unexpectedly and positively big group! Happy to see new faces.

In case this email was forwarded to you, quick reminder:

1. You can register at:
https://subspace.kernel.org/lists.linux.dev.html
There is a link to subscribe which will lead to composing email.
Registering is useful as that way you will be notified about next event.

2. No HTML - neither for subscribing, nor for posting.

3. We also have IRC channel at Libera (https://libera.chat/): #linuxnbeer-ch

4. Next event... I am thinking of something either just before OSS
Japan/LPC conferences or squeezing it after these conferences but before
December holidays. We'll see, maybe I will setup a poll for that.

Best regards,
Krzysztof
