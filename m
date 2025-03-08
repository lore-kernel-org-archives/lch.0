Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE32A8C1
	for <lch@lists.linux.dev>; Sat,  8 Mar 2025 19:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741462972; cv=none; b=HLzKmqwDWsXYPkdyHDtYvT/KSpdz/g8+6kgrQoG8ZB3QT5m6z6vMN8tXdkM+62qdA5ZAP06RvwtFb5xly5mia+pJGjeEkDOsUGPK086HDW1gCzvM0EreVlOhG/9Xka/QuZYLlntxGrmxTZ7jH8w69npxfhTDBNXy2++5OyVdoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741462972; c=relaxed/simple;
	bh=wQlHsYW3WVYQ0xv3sORLzhP5DxsJzqjUAH7x3fdUbcI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FEC/23yqRB7I6KgN00LeX5cY0zwES7gbXNgRtL6XzwIYtv0pV8Qij7h46hQ03FgOKQ5qE/hrZNureUWLZlnAi1JJzZnoMKcP64dhL5uc/nnaQLaZjQ0EFtLGEUkZyFxVkdWICwXqNOh/3KVuAROW+mNPpIcP3OlqSEHICmkb8Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QC+jdoIc; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QC+jdoIc"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43bcc04d4fcso17523315e9.2
        for <lch@lists.linux.dev>; Sat, 08 Mar 2025 11:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741462969; x=1742067769; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wQlHsYW3WVYQ0xv3sORLzhP5DxsJzqjUAH7x3fdUbcI=;
        b=QC+jdoIc4VJ3pGjfvh3xTfXZOfO7NEE6nZ+squwnmKhr0b8lrbo1zO/YN7chEuoSvL
         wQ7g8l+4/zKnk2pNXfQQnfhI0trej+Ti/y1edhXQ3mWG1uR3i1NLwo8EMueEt8RTPjlj
         Iu0ffHrI6TLZBji8eVcprjYDziC0y9ViLGbDk8+G50jnQSeOTjh9BzKfwQ7q+V+Ej4yM
         m9u3ZmU1owjRLeWE4Uv8lNYHBAFYQgYHspFPn/fi0JTCdtsXUvBYHtM55IGEwUZLRyKW
         4gHidtTpqSygCoUcKXGJGt/LQvcJuj0d4SQVv8JHotuXjPQnApMDFrawfRKRcog2PDFn
         jEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741462969; x=1742067769;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wQlHsYW3WVYQ0xv3sORLzhP5DxsJzqjUAH7x3fdUbcI=;
        b=qjXjLcUtVZFA05fgueVyz1jxibVvzxLqO4UKiNEFEPavoHi95ZyHeChjkRctUa4jws
         faTSVtysm211Eaxz0xEe5AMBz6/B6HGN+PbfKOVUJS9LcBWjV3irGRANP9ZFp3wFrQSL
         lbHTxMtNtz9aJgRdzKLNEqTsvDZXsdqtm8/otfmDmhJHGQnfu4wELYjITkjjm7cJU+M2
         m4va2lEuk+9waSKpaQagayRW2aXBHBKJ5QLLa1CKWdW8EN5vGUlfdGAWTwWu7FixDI2g
         I2mfO6toU6x7B9oecGi5NQj4GPIum+VM4RDlWzHidjpUO3Ze9bWHdTaiJfXAW42gSchz
         +1Kg==
X-Gm-Message-State: AOJu0YxGAV2ZIjBdBv8DTUQidYXOjFwJ16ch/0u4mPHUwyzPdgnHpiwv
	bXBxWDnAPfvSMQO7jUu6IROOUiItMFBaiK2gHqQfkO3uay+z5zRBaLGWXQ==
X-Gm-Gg: ASbGncuAHBuDr77a6gI9qdF/i0SmFbFTAWbWgfiJmT6SSeuCC4WUjlj8KQXOjP+9hra
	GIl0LV/yx3FmeYbz2enm/qRqFezvJ0dqdg+bET57qceDSBAqCsMxJXh1PD3Bzg4i0UtXovMY6Tw
	Z7RqBtHv1V57/oyfqcgTa4vO3h4+UHEmratzFgn0tMfG58wjH6zJW+0SqGPw8iiZMSUOBLws/qh
	Mi08aiSZ9M4JRjf6rF1+6L23ObM44mhPqEwBmmAK9jdjmXIkEHKvVk4d+efFnw4aEeXqAE2bsZj
	1VMy6nVBtczmBPaQZj3BR7S4SY2zvvZJeFp/7H+q50C0gKRMC/UK7Lib9LpfZg==
X-Google-Smtp-Source: AGHT+IHUSFZK9kX5xa3OsMX8HL0WP4Ai2quF91E7f2hi9cbHpSLleL2G5c/L1F9oqd/l2glzKDSXaA==
X-Received: by 2002:a05:600c:444c:b0:43b:c7ad:55f0 with SMTP id 5b1f17b1804b1-43c601cfdf5mr63753655e9.5.1741462969008;
        Sat, 08 Mar 2025 11:42:49 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ceeb5995esm11615725e9.16.2025.03.08.11.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Mar 2025 11:42:48 -0800 (PST)
Message-ID: <7c8bd8546d325fd5f4fc5f686dd3a078d3316561.camel@gmail.com>
Subject: Re: Linux'n'Beer v4
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Linux CH <lch@lists.linux.dev>, Enrico Zanda <e.zanda1@gmail.com>, Peter
 Senna Tschudin <peter.senna@gmail.com>
Date: Sat, 08 Mar 2025 20:42:40 +0100
In-Reply-To: <b8112a54-6ff7-490d-8f46-089e257e19e5@kernel.org>
References: 
	<fdvjjgjrpshezzpmt3ys2i2objgldn7qjozr6srt2tjbcikgcp@wp7xwemcei46>
	 <ab2b879f-e6f3-4f24-85d0-2c093b37d1d7@kernel.org>
	 <6cbpcgfvlaweqvomhnievvmz37kppx72q65ocednudfkjeligv@et2uh5nlyuwe>
	 <b8112a54-6ff7-490d-8f46-089e257e19e5@kernel.org>
Autocrypt: addr=alexander.sverdlin@gmail.com; prefer-encrypt=mutual;
 keydata=mQINBGWpGj8BEACy09IxfduHTzAdqKkf3SmGIHIEquHWHIXqgVIoZo/ufP8mIpsWYwFKP
 9gsCvVvNNugtK8YPN92lbHol35nfZiXLIp16ASRQXYFtBjXj4GAVjUPjaTkQbcedIgD2nEZ/HQSio
 hfnUSS0YmxI0UUJmZFulwQZil6OmPVbbQoda8/In5h/wNRo6y5vJreRhsjqcP5LckLRov3t+jabUz
 n0/1twHNO0SnI508dXenEhQcBX7Wns+JfwRqO8jxBK1P3DntW+n0OJ8DkjSMJjm0zk9JtY28WK332
 Vpq8smZxNDNCfs1YtRMzfEEZKRvxsSMzTxri/cw7VXJa7m138LlyPBkXizjAKqad/Mrthx4ambsWu
 RXyjklYOBYqMEAdlZNLPQnhnIICFwkJ/lnLE8Ek6Dh0NYl1HpsOyvu1ii7VPEXHLMGTKFmFmWtrmC
 UrHIBrAvStMJ2jIRhEyCGDpf6f5dfKNOb3GWRtX36326TDOa2eXWqaTQEPKWRSUwhC3f3j/C/o/vj
 6bDHQ8ZsNcKYxwtSoh+elHT5xtHOMvPBP6gavgZRDnH6wBSHWnXYxyOmZPKr2NuhMwhEyhpvkEq5z
 W6Z/hp5POzZ74GNkIKB5/FpETobgoV/XB2HMnlIUAJE2RYRYwvbgIkKTJxFD4FIIP2DVt/7cT/8ry
 5Nhe2fouscuDQARAQABtDFBbGV4YW5kZXIgU3ZlcmRsaW4gPGFsZXhhbmRlci5zdmVyZGxpbkBnbW
 FpbC5jb20+iQJUBBMBCAA+FiEEYDtVWuq7d7K0J3aR+5lQra83LKgFAmWpGj8CGwMFCQPCZwAFCwk
 IBwIGFQoJCAsCBBYCAwECHgECF4AACgkQ+5lQra83LKjUHA/+KlP0no2WRK1co+2yi0Jz2kbSY61Z
 oX+RqbLqkCoo1UxsU/MddscgjKOfggNASZ1l//jUkx39smTBONmxcauTtY4bB4Q9X8Djk+XO1M9iw
 Gb7feCbnIuRHyvI3qygC+k3XgLIJScui3/yEL0aikd5U4F6nkKyQiPQk7ihKWKyBQXQ+tXS06mUH4
 p0O5BYvxijW32Z9esVB15OB8vUcx2bsdjogEuNc0uwOGMHsVIsW4qupoHRHPc1865uAqzv9vW3a2/
 GOG6IpBFjmXqg7Wy9zwVjSJFMvVxu2xs3RCdpS99aMrfA2na1vjC5A7gNFnr+/N2vtMBP0d0ESfd/
 54zSglu3FW0TIOIz7qkrWQKwiennfUun/mAvCynCrKpCpUMkEgeQw1rHCWpSfnJ6TPG0UfQGNUFyz
 zmBheQRSEksaepfCtqwCxtjF19JZ6yapLi/lQt7YBjwxIPkZRHJNelPkK/bs6yeRJul90+X6UAJst
 Wh4mC7HzVvmopJoCxbInS4+L6qlefdjqhB6NYw9Q5GsRmTKalaqJoW1/kXopeGExCY4r1FP5ZoLHF
 s0xNbycpD2tp/GnI8GlYCIzQED3TNab7IkWP2otXnWAnF8CrqhglBbYnp8oCkgBPatYftO4dWFP3Y
 LVWE0EtoWLLrmiWzHkbWc8YKpWAiFX8OhUJLKtA=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Hi Krzysztof!

On Sat, 2025-03-08 at 19:19 +0100, Krzysztof Kozlowski wrote:
> Therefore we plan to take the direct train from ZH, EC at 15:33 from ZH.
>=20
> For folks with half-fare, saver Day Pass SBB ticket is still available
> and goes for 59 CHF, so not so bad. Smart would be to buy it 4 days
> earlier for 39 CHF :) (the prices now change 10 days before the date).
>=20
> Anyone wants to join us on this train?

I've just bought a ticket to the same train to board it in Zug.
See you in 6 days!

--=20
Alexander Sverdlin.

