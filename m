Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBD622F14D
	for <lch@lists.linux.dev>; Mon, 20 Oct 2025 09:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760953752; cv=none; b=SVOHCyAlK4YY1hYNNxVP+iz2jf6DhWspK02YffeHERXAQuG+cwojqqktoK+H6jGilMTXTINtPqCsbARl3rtvD3WdwaskdLA02Sh1cIxYIeDExlNExsyU70G/OkAzDq1LJQT/fPzwGjgG+De+sHT11Or4L1a3DJTDgYwYwgM5Ifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760953752; c=relaxed/simple;
	bh=5Xxr/wuDKfyQ6pQAIpScWhPHlOu30b3T6QE0wbgN6Iw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Yq0o7pGkLtV8ElweIBdN/Vu7ePDE84Uj4pqLfgW3f+UJ9sECcFqrD5sEXcKs9jVYtjP6WCZQA7Yr8tJUX8DzAvq6tRzAgMK8jWQEfjSR/dc6uTSevGD6Zhi2XSWaexzeZIR1oPtm9MQ6nAKEb8SLm/C8dwLRnvxmSRGiprTZOrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TajmaQ7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TajmaQ7E"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 374F6C4CEF9
	for <lch@lists.linux.dev>; Mon, 20 Oct 2025 09:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760953751;
	bh=5Xxr/wuDKfyQ6pQAIpScWhPHlOu30b3T6QE0wbgN6Iw=;
	h=Date:From:To:Subject:From;
	b=TajmaQ7Ex/DkuJClqQj7SpjPUmbfKg4+9SHytnHuSPDBgKJmTtiyQADjyR76+BCPo
	 OvpXSCeYv2jyWQ3Inn39FkVsHcrY8HGnZjul9kAL2wL3uFNzdOAcWlSabv65nCYc+r
	 nLUhA5R/n1ey4J29KxzO1yarEnmSIldPiAPW+T7rKYL+aw+9U8L30z6YcWZXV3M7IY
	 knKaSFvSHC/J5Dqy8E2rC7Ow4J6//QkkLU8EoeDvFAjZt+VZA4OW3gHTeWHsgLtV3+
	 5WmcepvkWcNBME2vU+Vcwj2FTLA5CWJxAGyZ6nfg7J+4IbsB6PgQu2bmVMqRtIEu2+
	 wv7mtVVC4LesQ==
Date: Mon, 20 Oct 2025 11:49:07 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Linux CH <lch@lists.linux.dev>
Subject: Linux'n'Beer (v6)
Message-ID: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

It is time for another round of Linux'n'Beer!
Let's meet on Friday, 24 October, as usual in Zurich.

We have not chosen a place yet, so suggestions are very welcome.
Anywhere with good beer and enough space for all of us.

Please let me know if you are joining and feel free to suggest a
venue.

Cheers,
Andi
