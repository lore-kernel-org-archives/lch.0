Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3B9348866
	for <lch@lists.linux.dev>; Sun, 17 May 2026 10:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779012275; cv=none; b=eBA+oM/vCRX8ht3dY1w356wGPhLSfBEmbvrDnrg1s7HIJvsb+Os9un/pVadIDOJQ+Qbxgqf4z6KtN8tHMZbTpwfMVS8VcMbDnzR5bFG6lvKQgEIiTHRQ1JosyUbcCqc5zOzGX2/D4iA84h+onAiZD2WWB+3KXxCILRwY8yeyCmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779012275; c=relaxed/simple;
	bh=boJwGmflVwTiyTMs6xZUQE1MQdO6WJTpq3YIbtQ26uo=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=V0PKGvEC4bT3pK92gn+GB0mbsRR4O5cQLBNVn+k3bByyOhH12gKUdmpXv2C/gsjRrT3c9a0KryGWuHUwNHlUgImp5A/9F8s/iy+u7mpEplzP09Rv5hd05oPo1QON0yXj1a/acMeuJUfA2NdCbkS+0XkIRmLkdwt1LIfy/XZyqM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=IxmNFFVP; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="IxmNFFVP"
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4gJGkG6tz1z9t9l;
	Sun, 17 May 2026 12:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1779012263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=boJwGmflVwTiyTMs6xZUQE1MQdO6WJTpq3YIbtQ26uo=;
	b=IxmNFFVPep/n2yLjtM0sXTtnWe4T7Wc2nsGqFLwXdQ5bA4WkAyCDcmCaCWs2rrZv7f9ORD
	jHpMlcCGQJy/OYXzv4TVwIoGAk7XFqVN17yvB/2ACZqL3cUiYHUhr+HnR4mUJNWEHB7xaV
	AGZe0EthAEpSmcGFgFzDg/egQY67s0/oI54leuOjgTAO6aR85u+rRoN1+piVgLmzdhj+SR
	QOxHUcN0rb9Bw6RP5YQjDIV7uiIZDNUM597tC2JNwOC7Iv6c8ShyFy9spQXETYgTeSoBon
	GWhJvWeadlkoOk6CH2G3IfFOmiO9msVTbIYtLMsiQi6jwr3Vf0zbG8SShi7+Kw==
Message-ID: <eef444c7be2ee006b77779d6d2519ff0137f1eb5.camel@mailbox.org>
Subject: Re: Linux'n'Beer v7
From: Manuel Ebner <manuelebner@mailbox.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Linux CH <lch@lists.linux.dev>
Date: Sun, 17 May 2026 12:04:20 +0200
In-Reply-To: <e7c412ca-3bee-4b68-b005-2f3224c936f2@kernel.org>
References: <73f0845c-b312-4c41-94fe-81a22d70a418@kernel.org>
	 <e7c412ca-3bee-4b68-b005-2f3224c936f2@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MBO-RS-ID: 35c91ae8a121c6f9310
X-MBO-RS-META: jx6qhhiffztg6jg3s1wecrdq9g5a7dbq

On Wed, 2025-11-26 at 11:58 +0100, Krzysztof Kozlowski wrote:
> On 17/11/2025 22:14, Krzysztof Kozlowski wrote:
> > [...]
>=20
> Thanks for coming, I hope you enjoyed the place.
>=20
> We'll take a break for now and we target the next meetup for January.

I'm pinging this.

With kind regards
 Manuel

>=20
> Best regards,
> Krzysztof

