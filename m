Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92A41EA90
	for <lch@lists.linux.dev>; Thu, 19 Dec 2024 12:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734611170; cv=none; b=Yu+BkTsZ3avogc3Op+l65yAzkHg7eS4lJA6SvAsgYxxqrpkjPtxn8GyKfrNNiTEUCIxexApDCjzydKFzgojKVqxOkWSPPJqjD00bXd1vCFDPypNlP6w31wwJILSRJaXraF2k20zVgAAVn1ZVi1XSUHkPk50uUzxN3sd4z4rN12s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734611170; c=relaxed/simple;
	bh=CrcyOx0HUCN1mq2PyvKD/DvH4fhApd/EqeH8ti3va1g=;
	h=From:To:References:In-Reply-To:Subject:Date:MIME-Version:
	 Message-ID:Content-Type; b=Y4Wh1nYB5bIxg3OCK7l6wc87crdwxMTlWnYo3eAUipNbXFTLIdMmY8DUepWoOnnV0jGdtM+Ya3onTYHPXdcTHDUL1zB4P++aqtizijjxPHyY2LRwOBI/pF0sqr8tjOsKd87oiijs81Xa+xv23IwU3rHOkkIi7FRsGkYfWOMPxqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gSqmDmdR; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gSqmDmdR"
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434b3e32e9dso8082815e9.2
        for <lch@lists.linux.dev>; Thu, 19 Dec 2024 04:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734611165; x=1735215965; darn=lists.linux.dev;
        h=content-language:thread-index:message-id:mime-version:date:subject
         :in-reply-to:references:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OcU6TwwopPRHyjXXClWep8D9/lwlqXGmiPIvrO5vXsA=;
        b=gSqmDmdRpDYbAa+/6FN3JEPizglc8CXVMFbvdrdMGss8T+2sMSiDou/S4JWTiOHcTJ
         DJL5uFRPWNGNFUj00DvTGttzvdjrQoDtQRx5GhAyZxcpwoF4pBQ1yvL55xj7BpKAtqbU
         quAdGEwr8OePqqp1cZPlU069oKJ0X6PoF+gJb6gV5WVI08szwHNdR4KT6qFjaXudoLdb
         4SfgcZ5oxUu02YMcv7hIFTAM3Z1uwpa3NuWy2x0PvDgpuWOgO0KRC5Op2Bke0VkYj0KY
         gIIgJzD6fWCqNohbrFYTtzBkHtKq/0lKxxrh0KbjqJOHOt4RzLp4TxW5GWGtG+bqI9+S
         0xXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734611165; x=1735215965;
        h=content-language:thread-index:message-id:mime-version:date:subject
         :in-reply-to:references:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OcU6TwwopPRHyjXXClWep8D9/lwlqXGmiPIvrO5vXsA=;
        b=RbOWHyPJ/Uv+IDbzcVB8dQyneltBQu2DQKfaTeC4wNSzsUvQ+7Ht9U6VNbGnsLgfDm
         YwVxWesIHHMYEaTj7oS/cbPjnuvalj3A+U0aVIIcmtGfGm7EIGPnKxcRr841cV1XSRN6
         jIao+USbluFQ7a9LE35WKD2C3nxzLPrWCp1Bd27fZ3zcJKZwTcIfZcLE7BpOBLNeWUNl
         ORNkDLDdyLMEevZ2VNMcqIVfiGRGOrvRm5SKZxvfIBl/I4VvG4YwVPmsuGS1rkuXP39R
         iEKwKCugqCYbeBvjzKNBwZSYssxQDGXUOJfD81xc3oALfpYtrBU84/UtL4aHYQHrkG83
         qPSg==
X-Gm-Message-State: AOJu0YxvW7qUh9LWg2T0JheKHlkRl1M3Ciy5R4IxK3z7jw4limuC/jj3
	DDp3PU9g8bHGGwV+zctzdqxzDgDlNwkksuOLHiSN+f+akHJGmk/lQo0AwcRumGg=
X-Gm-Gg: ASbGncuC2hSpfBTKguUltTox9QEow7mEyIEIfl2GHpci/YM5bN95zU4NNyvhlfO4AXg
	paJpHKgvtQY9JLe7UtLfUBXtDoHIAYBvXq9vx+pUe5JItvYUWH4QjPDRt5QXQYFf76fjpK2i1/H
	1qTOXhPB2zWn72ck9Chg67Yt7T5vFRgcK9iNQvYLy3P4TMB4V/u48icTUaslrt7hx3QmTQ6TaUu
	fNm/ZikT36zmVlTaIH4xbonuQI40IinxLuK18j3g7awDmzI2vhrkpYi7dlbXw==
X-Google-Smtp-Source: AGHT+IG6+OSR8ytmGT4wOaaBigbtu2hjjw6D1e9EFxXsmNL8CP2JfYmFL4gx1JqbGnheT8nUL1XRJA==
X-Received: by 2002:a05:600c:4f89:b0:434:fff1:1ade with SMTP id 5b1f17b1804b1-4365535b845mr59178385e9.13.1734611164648;
        Thu, 19 Dec 2024 04:26:04 -0800 (PST)
Received: from fideamdpc ([2a04:ee41:3:736a:60e3:71b2:ca6e:cbaf])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b119d7sm50503705e9.20.2024.12.19.04.26.03
        for <lch@lists.linux.dev>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2024 04:26:03 -0800 (PST)
From: <mehmet.fide@gmail.com>
To: <lch@lists.linux.dev>
References: <e4jrk4i53bh47gf73kdtutw4ussnr6pqhbm7qsg75izylz2tdx@lghwojrhi3qo> <enzlpirj42hryyjdb7zb3qnja3zyz7rhotgxm2c2neuwn53pqg@xx7tnhzficur>
In-Reply-To: <enzlpirj42hryyjdb7zb3qnja3zyz7rhotgxm2c2neuwn53pqg@xx7tnhzficur>
Subject: RE: Linux CH Switzerland mailing list
Date: Thu, 19 Dec 2024 13:26:04 +0100
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Message-ID: <000001db5211$2c68a9e0$8539fda0$@gmail.com>
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFV/Ma2SfcriG0gCyhtz09VoV6NqwJ50AkUs+Q8iWA=
Content-Language: en-ch
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=U+8CheLG+KB7bC=-="

This is a multipart message in MIME format.

--=-=U+8CheLG+KB7bC=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Andi,

I thank thee heartily for the list so graciously provided by the kernel.org=
 administrators.
Methinks this marks the first occasion upon which a community list hath bee=
n introduced with a focus upon nations.=20
A most curious and commendable endeavor indeed! :)

With regards,
Mehmet


-----Original Message-----
From: Andi Shyti <andi.shyti@kernel.org>=20
Sent: Wednesday, December 18, 2024 3:00 PM
To: Adrian Freihofer=C2=A0 <adrian.freihofer@gmail.com>; Alexander Sverdlin=
 <alexander.sverdlin@gmail.com>; Andrejs Cainikovs <andrejs.cainikovs@gmail=
.com>; ankwyell@gmail.com Christoph Zimmermann <nussgipfel@brain4free.org>;=
 Dominik Sliwa <dominik@sliwa.io>; Emanuele Ghidoli <emanuele.ghidoli@torad=
ex.com>; Ezra Buehler <ezra@easyb.ch>; Francesco Dolcini <francesco.dolcini=
@toradex.com>; Frieder Schrempf <frieder.schrempf@kontron.de>; Hans Pabst <=
hans.pabst@intel.com>; Jann Horn <jannh@google.com>; Johannes Schneider <jo=
hannes.schneider@leica-geosystems.com>; Juerg Haefliger <juergh@proton.me>;=
 Krzysztof Kozlowski <krzk@kernel.org>; Lothar Rubusch <l.rubusch@gmx.ch>; =
Marcel Ziswiler <marcel@ziswiler.com>; Max Krummenacher <max.krummenacher@t=
oradex.com>; Mehmet Fide <mehmet.fide@gmail.com>; Michel D=C3=A4nzer <miche=
l.daenzer@mailbox.org>; Patrick Wicki <patrick.wicki96@gmail.com>; Parth Pa=
ncholi <parth.pancholi@toradex.com>; Peter Newman <pnewman@gmail.com>; Pete=
r Senna Tschudin <peter.senna@gmail.com>; Philippe Schenker <dev@pschenker.=
ch>; Reto Schneider <mail@reto-schneider.ch>; Sima <simona.vetter@ffwll.ch>=
; Stefan Agner <stefan@agner.ch>; Stefan <code@stefan-gloor.ch>; Stefan Eic=
henberger <eichest@gmail.com>; Tomasz Ciesla <ciesla.tomasz@gmail.com>; Vas=
ileios Anagnostopoulos <anagnostopoulos@hotmail.com>; Victor Lavaud <qdii@g=
oogle.com>; Walter Schweizer <walter.schweizer@siemens.com>
Cc: Linux CH <lch@lists.linux.dev>
Subject: Re: Linux CH Switzerland mailing list

Hello everyone,

Just a quick reminder to subscribe to the Linux CH mailing list.
All notifications will be sent through it moving forward.

If you're up for it, please feel free to test the mailing list
during this initial period. There have been a few cases of
delivery failures, and we need to report any issues to the admins.

You can test it by sharing some Swiss poetry, a fancy joke, or
even simple junk like "this is a test"=E2=80=94whatever works!

Thanks,
Andi

On Mon, Dec 16, 2024 at 06:43:36PM +0100, Andi Shyti wrote:
> Hi everyone,
>=20
> This will probably be the last broadcast email I send to
> everyone, because starting today, we have our own mailing list
> on kernel.org!
>=20
> You can find it here:
>=20
>   https://subspace.kernel.org/lists.linux.dev.html
>=20
> as:
>=20
>   lch   Linux CH - Switzerland
>=20
> To subscribe to the mailing list, simply send an email to:
>=20
>   lch+subscribe@lists.linux.dev
>=20
> To post messages, use:
>=20
>   lch@lists.linux.dev
>=20
> A big thank you to the kernel.org administrators for helping us
> set this up.
>=20
> The name we have chosen is Linux CH ('lch'). It is definitely
> less fancy than Linux'n'Beer, but I think a simpler, more
> conventional name is better suited if we want to grow into
> something more serious in the future.
>=20
> Please make sure to subscribe so we can avoid chaotic To: or Cc:
> lists in the future.
>=20
> Thanks,
> Andi

--=-=U+8CheLG+KB7bC=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEH4UMxXjomgTV7NEs0xxlOW1KVMsFAmdkENwACgkQ0xxlOW1K
VMueNA/8Dr/Zc9zWKAiebGkcAGRHiDKztTv9rqnJ0Bn8691+0E75dO8Wjro8Bfur
LGI4HlXrfplocDZxcvd2sFTzgbFHknAunyfEAxLZLDFMH7xQ2su18Jiar8D1fm2U
rl5LqY9uX6J+/SPA9cR7AumGI85ErZBc2o3/CXR7mAv5N5opNHnCtjqcn9w/z1Vg
nra5RxeSoW5OKrwYuQmMZN1Z9xcIJun0JRH1Kmip5HCVSHoINiJCwNU/t9M/PJ5e
nPdlcGnAUKg75lgcvdCSLcs71oVrwc8+ER3TEHG/ibMXLaRUSciPjmDpTcy+VMqF
D24FjEfRTjG7qdxYOqPEI2LD3mE64rEGn3fVQ3DYyeHn7+MB980kJ4S9idmPkLvQ
y7JMM3vnlGH5xs4NbWW7JPR75JBcm8ZnA2ypD/kb4zH7ZTqYpOHa1wB5JkID2OWR
LvV6l5FsVdxfs+6qDs76kU2lI+Lj0Lyz0fmQVazYqwUip1p75LHeNTmi2ipeoWTq
qUBG4TpQYmk89uzWq6BjhtJ29vJucsVHvu/vGbPY7OklL+K4qkROP8IXP9ODJqXa
aDUcpkiYQVIoJMi3O7oRbwd8K0QtxoQv4rduvPay7rwhqncG0r9PDhrvyXZcf8iK
/rR8kjGt95/8SKYO0P0hMOBOPzGe2o5y9I2pW0vVKqIZiVI0Lkk=
=bWBD
-----END PGP SIGNATURE-----


--=-=U+8CheLG+KB7bC=-=--

