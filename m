Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A4F221282
	for <lch@lists.linux.dev>; Mon, 15 Sep 2025 22:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757975804; cv=none; b=tN/KnpZhmuGzCH6zurw+COvCHX+y9x5ZQYXm/qKD8znlFlroq5guVZ20XH///HZvE4SxAtdMIOiwE+Wh7fUW6eeTDDqJjV5eVumTAgigXMLiUd+K3j4+GIItRDCofuEHMdrF0OlGqSjFLuEeumTxPhfbeFJWZMO3d9PDBfPVLG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757975804; c=relaxed/simple;
	bh=v1m1f1NPmhOPYTtA7R1Kuuf6sfdqUuAd846AXlhu4lY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dtmMwJv9suCg4M/dHxDxm7tNyomn7lvzBxngDomE6Nh6jNqGO7UOQfLLMrtKhMf93wPQz8E/yrCc84Ze/cEBfsGfAUUZZn6pdxvX3eirRszMVphwAWjbdmV4OP6m6cWUoOtKi/DCNWF1pxyeOZqz2bLRdG5LJolxN5mFxXZKUdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkS/VmRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkS/VmRV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC79BC4CEF5;
	Mon, 15 Sep 2025 22:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757975804;
	bh=v1m1f1NPmhOPYTtA7R1Kuuf6sfdqUuAd846AXlhu4lY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fkS/VmRVNjIyFTw2tAGM+dNehKRtRxVSYWV1s6D2oup9Q9jKYUY6jAYje4gtZGTHv
	 rE3e21IS8P79M40YOggxHkSGCQ4OuEpTRnGUpywm7dSt893mq1GRGyxlJICbAXFJg2
	 ozxgKAq4TOd/Z0Za8qSMEWfEitieM0J+VjXRbRL7xG3CcacViourhPFiBf+UOnDvUY
	 PwpOzkA0OPyR1GlEAkugBwDjIFvT751n0EEe+2loAnUS/2HdkcPEx9VZfpywdJVik7
	 uyLclrnhZa3N0d2hFDHQEXEpHggz7m1Xm2N0kv7tqYME3S7HgaqIS9qrhoBzUGtwix
	 7JdbyuNUBLL+Q==
Date: Tue, 16 Sep 2025 00:36:39 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linux CH <lch@lists.linux.dev>
Subject: Re: Next Linux'n'Beer (v5)
Message-ID: <czvyeet4wu5wu4jugry2cwgqeaxhpxatap2by2wgnlugoeb35h@xl6ybivem6er>
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

Hi Everyone,

I'm really sorry I missed the event. I was looking forward to it,
but something came up at the last minute and I had to stay home.

I'll do my best to make sure not too much time passes before the
next meeting, and I'll be there no matter what.

Thanks a lot for keeping this series of events alive. Looking
forward to seeing you all soon!

Andi
