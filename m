Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C1F2F3C28
	for <lch@lists.linux.dev>; Mon,  8 Sep 2025 10:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757327884; cv=none; b=uD91aaZAaWQ9ii1tf2kojQITrFYV+20j5sLeiK53DMIzOD4gedCS1v/lQ9hQ4EG2DCZI8lX6nOVqn5zmDXbrSSP3Vn9JOirLPhAdevSenUu/4ofmxfWHk6RIkYee7ENaxZODlSbyENj3qAqXxg0yxQu3SmmYvqWD9lpFRszwEkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757327884; c=relaxed/simple;
	bh=DuImEo/m5KfoTLKKIiIz02tA7bs2sRB6aMMe3ET0G2I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AyRGVTtIuNVaXboSiSh4HpgEe2UgCRNvTB2JQCsyGQUSaWImaZhz2HkLaXdwGt54jbY++nuHDwNdIAxX1vtosRUPljAp2CfMrd53TGdxwE/a8RUh2sWGpKF6drA6fAjT7YSlYaK7YVp/qLO9V25jdVKTVbplCazu0hm7iJhXfig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLSgy6qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLSgy6qs"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63775C4CEF1;
	Mon,  8 Sep 2025 10:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757327884;
	bh=DuImEo/m5KfoTLKKIiIz02tA7bs2sRB6aMMe3ET0G2I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aLSgy6qsW94s/3s4Y97QjL6WbYU7jj0Xl3+iAkv7EWKcedOMjzpkAaulOuztTIJLq
	 E2XxXw3uuVr82WwnS+5ZpNz5LIDvwARr6rF2oF6OOoXFgJj97Kk+A+p+B80IxLX7a5
	 6HE4/YkeG+Kk/K01yjjVDSFm3PUCIOvhiqAYcVW/bT952oS/T+sA3liCJcyed3azvl
	 e/q+/Yjh9hDkJvvaQZa1R3euh+M2s2LeZWEUdEcAMTkEaqG1UgeJAE7CcnX114IlqH
	 NAcFCHX7k84Uu+8LYwIvWRs4NQ2GoBvOrkCtCg9eFZlbhhEdoWJKuo3YRYK9Wtj/g5
	 5GUk31Z4dWeRg==
Date: Mon, 8 Sep 2025 12:37:59 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linux CH <lch@lists.linux.dev>
Subject: Re: Next Linux'n'Beer (v5)
Message-ID: <t5zmh5wqbkpn5zqtr2jtusd22m6exaelsdruy6apwi3gnpnwvv@wgfzu63pgqec>
References: <0ae7aed1-3171-4e3e-bef6-afaa90fb6d3f@kernel.org>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ae7aed1-3171-4e3e-bef6-afaa90fb6d3f@kernel.org>

> When: Friday, 12th Sep, 18:00
> (if you come before me, table is booked on my name)
> Where: Bierwerk Zuri, https://maps.app.goo.gl/unN5AkKQUVj6DQ3H6

Thanks Krzysztof for organizing it! See you all there.

Andi
