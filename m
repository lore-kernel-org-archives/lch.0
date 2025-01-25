Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch [217.26.49.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E36820766F
	for <lch@lists.linux.dev>; Sat, 25 Jan 2025 12:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.26.49.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737808851; cv=none; b=L2P5fWspW8zYlkSfi5EIyEBfDn9ddjl21a+n10ikczDK9/Qh0VIL8FvfIUi4IRzb0OaFPqWWIbixSsdKakNGK0Y9tiqij0NtyXFZArfzlnIRBPkeFG0hGIsJcsd5AmzVnbtUQOOI6ZL1zJG0lqrf7JltH+vU7+PXNindaNJlOa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737808851; c=relaxed/simple;
	bh=q1a6MCULQqxACV09Vp9UghIuqaIAPzbYfxw8p2oyxXU=;
	h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type; b=JNuGAX8zRUsJgIgEqaRB07ivOmriZcXU1hhwsLano8ojO34V10Ow0ixLx5J1f+NhbTNiVufmzy3tiNUb186FYnXRZsZdcbSuqLKyc9vey0SfdD+0EnPVpUaL4uSbfbWh3FN8l0HTwj1FOig4WDuig4rynlXh3t1uO4zWsxl/OsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reto-schneider.ch; spf=pass smtp.mailfrom=reto-schneider.ch; arc=none smtp.client-ip=217.26.49.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reto-schneider.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=reto-schneider.ch
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtps  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98 (FreeBSD))
	(envelope-from <mail@reto-schneider.ch>)
	id 1tbfRm-00000000GvQ-1Obh
	for lch@lists.linux.dev;
	Sat, 25 Jan 2025 13:39:34 +0100
Received: from [2a02:16a:3e26:1:ca96:9d95:4eae:172b]
	by asmtp013.mail.hostpoint.ch with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98 (FreeBSD))
	(envelope-from <mail@reto-schneider.ch>)
	id 1tbfRm-00000000BCl-0iUL
	for lch@lists.linux.dev;
	Sat, 25 Jan 2025 13:39:34 +0100
X-Authenticated-Sender-Id: reto-schneider@reto-schneider.ch
Message-ID: <c330ed96-3ba3-41c2-b7d3-e912ae6ac75e@reto-schneider.ch>
Date: Sat, 25 Jan 2025 13:39:33 +0100
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux CH <lch@lists.linux.dev>
Content-Language: en-US
From: Reto Schneider <mail@reto-schneider.ch>
Subject: Linux'n'Beer at FOSDEM
Autocrypt: addr=mail@reto-schneider.ch; keydata=
 xjMEXsRRExYJKwYBBAHaRw8BAQdAvw3GH8aeA8Pay1QqPdjlETAUDAa8WmHHXZRDk5a0DHbN
 J1JldG8gU2NobmVpZGVyIDxtYWlsQHJldG8tc2NobmVpZGVyLmNoPsKYBBMWCgBAAhsDCAsJ
 DQgMBwsKBRUKCQgLBBYDAgECHgECF4AWIQQ/b+1tpIOf0oCRNDK/uT6PQiWG4AUCZIhQWwUJ
 C2eZyAAKCRC/uT6PQiWG4OfmAPoDN/TrhVCGZYZ9S+AFHfgL0SuviLL+/VcN888p21NN9gD6
 A5k9a97efFcKmDw1yDbCzYp0kZwoRn+w6gkR8aEKjQ/OOARexFETEgorBgEEAZdVAQUBAQdA
 6PW5+rUjfrKbl3623SR35Drobzij2XjkGFY6zswMz3EDAQgHwn4EGBYKACYCGwwWIQQ/b+1t
 pIOf0oCRNDK/uT6PQiWG4AUCZIhQawUJC2eZ2AAKCRC/uT6PQiWG4HJ1AQDKaQ6c8BZuH2zu
 41ik49RnS3p8dRDTKIMj6G9lv8ysLAD/fLo1nSZ2dHxl6u9/zyx+cYU5GV4SQOLl6CpjgRCj vwA=
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6L8mI8w0wLVmyE8sq1vC7mBr"
X-Vs-State: 0

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6L8mI8w0wLVmyE8sq1vC7mBr
Content-Type: multipart/mixed; boundary="------------c3EhlAXy3E98d5ECgfP0kn3j";
 protected-headers="v1"
From: Reto Schneider <mail@reto-schneider.ch>
To: Linux CH <lch@lists.linux.dev>
Message-ID: <c330ed96-3ba3-41c2-b7d3-e912ae6ac75e@reto-schneider.ch>
Subject: Linux'n'Beer at FOSDEM

--------------c3EhlAXy3E98d5ECgfP0kn3j
Content-Type: multipart/mixed; boundary="------------yRmqZbtkE0akknZ0b5Z07Mt4"

--------------yRmqZbtkE0akknZ0b5Z07Mt4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpBbnlvbmUgZ29pbmcgdG8gRk9TREVNIGFuZCB1cCBmb3Igc29tZSBMaW51
eCduJ0JlZXI/DQoNCkknbGwgYXJyaXZlIGluIEJydXNzZWwgb24gMjAyNS0wMS0yOCBhbmQg
bGVhdmUgb24gMjAyNS0wMi0wMy4gTm8gcmVhbCANCnBsYW5zIHlldCBmb3IgdGhlIGV2ZW5p
bmdzLg0KDQpMRw0KUmV0bw0K
--------------yRmqZbtkE0akknZ0b5Z07Mt4
Content-Type: application/pgp-keys; name="OpenPGP_0xBFB93E8F422586E0.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBFB93E8F422586E0.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEXsRRExYJKwYBBAHaRw8BAQdAvw3GH8aeA8Pay1QqPdjlETAUDAa8WmHHXZRD
k5a0DHbNJ1JldG8gU2NobmVpZGVyIDxtYWlsQHJldG8tc2NobmVpZGVyLmNoPsKY
BBMWCgBAFiEEP2/tbaSDn9KAkTQyv7k+j0IlhuAFAl7EURMCGwMFCQWjmoAICwkN
CAwHCwoFFQoJCAsEFgMCAQIeAQIXgAAKCRC/uT6PQiWG4IsVAP9xonMRrcrTBWFx
PMjEYVWUMHi8BssqkzMdc1QQXwpCKwEAqdBF1odOUr4SUHVQmadIE5eRpF9MbyBM
QdR3ms8DrQ7CmAQTFgoAQAIbAwgLCQ0IDAcLCgUVCgkICwQWAwIBAh4BAheAFiEE
P2/tbaSDn9KAkTQyv7k+j0IlhuAFAmRIQLcFCQsniiQACgkQv7k+j0IlhuCUSgEA
5nUr/Gz+2xpHTs10+eScYUEuBgJHXZUWfMyGnwrgAo0A/R6kKe8dDIwGje9VRSbp
TukS4NX1RFyDi3XLF5gufxMCwpgEExYKAEACGwMICwkNCAwHCwoFFQoJCAsEFgMC
AQIeAQIXgBYhBD9v7W2kg5/SgJE0Mr+5Po9CJYbgBQJkiFBbBQkLZ5nIAAoJEL+5
Po9CJYbg5+YA+gM39OuFUIZlhn1L4AUd+AvRK6+Isv79Vw3zzynbU032APoDmT1r
3t58VwqYPDXINsLNinSRnChGf7DqCRHxoQqND844BF7EURMSCisGAQQBl1UBBQEB
B0Do9bn6tSN+spuXfrbdJHfkOuhvOKPZeOQYVjrOzAzPcQMBCAfCfgQYFgoAJhYh
BD9v7W2kg5/SgJE0Mr+5Po9CJYbgBQJexFETAhsMBQkFo5qAAAoJEL+5Po9CJYbg
jIcBAKqaPAFMbJUB8tk5VBJQ+pKW79EZwJY9AURc/4F7aZ01AQDTlJwrj4aABKFU
TzBQ5tumN2X+7l2NkXyEQZBHcp5XC8J+BBgWCgAmAhsMFiEEP2/tbaSDn9KAkTQy
v7k+j0IlhuAFAmRIQNYFCQsnikMACgkQv7k+j0IlhuACqgD8CwtIHg39qTQZkswc
nMuoN/DEuu56wyLPUkqcBAgsjZoA/iMB02ns0iAz4vEVk4MHFOk5qR0Gqbe4N5cV
SB5w22kCwn4EGBYKACYCGwwWIQQ/b+1tpIOf0oCRNDK/uT6PQiWG4AUCZIhQawUJ
C2eZ2AAKCRC/uT6PQiWG4HJ1AQDKaQ6c8BZuH2zu41ik49RnS3p8dRDTKIMj6G9l
v8ysLAD/fLo1nSZ2dHxl6u9/zyx+cYU5GV4SQOLl6CpjgRCjvwDOMwRexFexFgkr
BgEEAdpHDwEBB0AjMM+kNm6MHogUBZyw8FuwAQmrk0Lmi2zdpsq7oWHKwcJ+BBgW
CgAmFiEEP2/tbaSDn9KAkTQyv7k+j0IlhuAFAl7EV7ECGyAFCQWjmoAACgkQv7k+
j0IlhuDdEgD+M9hze+TTi/FPqizlk0DRwVvnmQoxDr4R1dJ4R+mbhOUA/RyffTQE
k6kRiSSVOjwT6Wk2nltenFOBj3gi2zsFnCkHwn4EGBYKACYCGyAWIQQ/b+1tpIOf
0oCRNDK/uT6PQiWG4AUCZEhA1gUJCyeDpQAKCRC/uT6PQiWG4HrJAQC1Rzq67W6E
aC4qEAAlXMhxOdNLrzxeFiD414TiMFc0egD9FpM15cQwo8OA2C19AciIIa26kkZs
k7ma9LDY+j4feQDCfgQYFgoAJgIbIBYhBD9v7W2kg5/SgJE0Mr+5Po9CJYbgBQJk
iFBsBQkLZ5M6AAoJEL+5Po9CJYbgWmUBAMbBIBosfdFWYBVE3+5UpsWhEWOTqE4n
vHX1kEsaPWYGAQDray/mQ+uUZCkAoVeqHvdcmEMyYy+3HlKwLBfNGqBVDQ=3D=3D
=3Dd7WB
-----END PGP PUBLIC KEY BLOCK-----

--------------yRmqZbtkE0akknZ0b5Z07Mt4--

--------------c3EhlAXy3E98d5ECgfP0kn3j--

--------------6L8mI8w0wLVmyE8sq1vC7mBr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQQ/b+1tpIOf0oCRNDK/uT6PQiWG4AUCZ5TbhQAKCRC/uT6PQiWG
4Pp1AP9Ch+GYS13oJwBJRMf2H6qZMs4CVrgVTApj+Cvnyu5epgD/WWzaCXqLfGAW
0+bi1igV2wY/PUzNQ/TJ8AWzkXSZLAM=
=D7Js
-----END PGP SIGNATURE-----

--------------6L8mI8w0wLVmyE8sq1vC7mBr--
