Received: from mail-gateway-shared02.cyon.net (mail-gateway-shared02.cyon.net [194.126.200.224])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758F71BEF9D
	for <lch@lists.linux.dev>; Sun, 12 Jan 2025 19:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.126.200.224
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736709909; cv=none; b=EkZbtlMMcP4/K09FwwlgmT+cAFoojyjw1cWnY0kqkCxD0rEx/R56skDWk5Mr+ZUkv5gDYajCQZpPvSOfMWbzg7FBO8IuqgwS8uArLKhEv+Gc+WLJGigIS0qcmsM4s+UzD8QePBjeQo3UDaW3CwksyapAjGf92crTxLZhZWbtBkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736709909; c=relaxed/simple;
	bh=rDbO4AvFdMjXB+tzj6oaT3kKkaOMxMfY15g4oG+Urbs=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; b=azcADvLCNlQR3r4wPjlpC6UXDMOtmTMsx49XYAFcn69WWHDDynYAKpwJSIrAqLoXXXY2C6vAmgZvbcB5qG1NnhnspzvIARYUIVpn72vTWEZ4TF3UUEGRS6kyRAiK/e2bonBo0mbCkBcr8cpHowEc4nxMIh6hcfNgRcTn7S2oU1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brain4free.org; spf=pass smtp.mailfrom=brain4free.org; dkim=pass (2048-bit key) header.d=brain4free.org header.i=@brain4free.org header.b=kniX02zl; arc=none smtp.client-ip=194.126.200.224
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brain4free.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=brain4free.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brain4free.org header.i=@brain4free.org header.b="kniX02zl"
Received: from s075.cyon.net ([149.126.4.84])
	by mail-gateway-shared02.cyon.net with esmtpsa (TLS1.2:ECDHE_SECP256R1__RSA_SHA512__AES_256_GCM:256)
	(Exim)
	(envelope-from <nussgipfel@brain4free.org>)
	id 1tX3WO-00BhjR-0v
	for lch@lists.linux.dev;
	Sun, 12 Jan 2025 20:21:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=brain4free.org; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description; bh=rDbO4AvFdMjXB+tzj6oaT3kKkaOMxMfY15g4oG+Urbs=; b=kniX0
	2zljcG+PKvlkRGBL+VrlIMqvWcvu1qz/0KDMaskLSOKU8DlBwGBVCiH2B2VTYVk2AwzFXmua4Ymq0
	NJNgpwZPHXp+YfDK7t7Nm+o4HxOfPPwav51zofRXJZHFZ4ZJz3SL4wR74HyhkSh1U0xxBj3Awr1Bw
	6BzpqwnvfyH+KMUM/tZT4cYz+aAGzxfCV6mU2zj59XMWVVhl7r6QkcopoLCblZqmJv9N4e8+ov1/S
	ZphUgF66NIiGVWY0vmEOpW2DDvfM9D6OqRuX4BEXyPZF5qDF6+yQSaWWJ9kTfLrmkWRvlCkszoRmZ
	VBmQtLBOK2LDHB2CDRVomMU1ynX3Q==;
Received: from [10.20.10.231] (port=48818 helo=mail.cyon.ch)
	by s075.cyon.net with esmtpa (Exim 4.96.2)
	(envelope-from <nussgipfel@brain4free.org>)
	id 1tX3WJ-0007YK-0a
	for lch@lists.linux.dev;
	Sun, 12 Jan 2025 20:21:11 +0100
Date: Sun, 12 Jan 2025 20:21:10 +0100
From: Christoph Zimmermann <nussgipfel@brain4free.org>
To: Linux CH <lch@lists.linux.dev>
Subject: In search for reviewer/tester for Risc-V JH7110/Star64
Message-ID: <20250112202110.64d3a9d2@fastfrinz>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - s075.cyon.net
X-AntiAbuse: Original Domain - lists.linux.dev
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - brain4free.org
X-Get-Message-Sender-Via: s075.cyon.net: authenticated_id: nussgipfel@brain4free.org
X-Authenticated-Sender: s075.cyon.net: nussgipfel@brain4free.org

Hi

I ask here for a friend. He achieved quite some progress in bringing
missing pieces of the Risc-V JH7110 SoC to mainline and/or bugfixing
dts stuff.

Problem is now that he needs reviewers/testers and it seems that only
few can do that or are missing hardware.

"they need participation, even if it is only "Tested-by"
some of the patches need a deep understanding of JH7110, and it may be
such technical knowledge that a competent Linux developer will give us
advice how we can find answers for our questions most of the patches
are simple and can be easily examined and tested for, if having JH7110
hardware (like Star64) one example of easy to test
patch: https://lore.kernel.org/lkml/20250102194530.418127-5-e@freeshell.de/
"

The full list of the discussions:
Liste: https://lore.kernel.org/lkml/?q=star64

I my self am far away of being useful for this (I did writing how-to's
to install Debian and kind of things for this platform) but I have a
Star64 board and the needed accessories. So if someone in Switzerland
is interested I'm willing to lend the hardware to someone for this.

All the best and happy hacking in 2025
Christoph
