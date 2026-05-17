Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A93218BA
	for <lch@lists.linux.dev>; Sun, 17 May 2026 14:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779029480; cv=none; b=SzzzzaRA2EPvNXq73huF15ZyBomw2ihqkHt6AU5VAKXpuJ67z3eyZ8K/fqGA1oWrFkqhSoB1gkcFqz/dhuOXpoTdLK0S2boFad7aF10/SLcMjkpQ/KQhrAlSW5D/QaYrG5S8H8fOihBRE9CQMjh2YkjjnwxHtAfma/6nDJM0Gm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779029480; c=relaxed/simple;
	bh=E6PvNYAllGcH7XdG1dj+QtpXZWXjjRIQP4t0mj1AYH0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=sUhAo/A6eI3SzMLzFET1g3sG17x/5spn8XkaCwsMVWUXlpnx9DvHm/4cWwsz3v5O/VwTd9htQggTfHzqxqZOh34K5+QoZdOB3mOM+ub9DQQk61Q/D4yBEdNrY1VMKivMOP6kJgzDpZIuIykj5BE0Awmg2oIzz1NxIB4+Wz2vsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/W2yTGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/W2yTGx"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A906C2BCB0;
	Sun, 17 May 2026 14:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779029480;
	bh=E6PvNYAllGcH7XdG1dj+QtpXZWXjjRIQP4t0mj1AYH0=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=W/W2yTGxfhkgFBSoC19aSj+27+GS5g/tS0hwvrj5RDUht1NXklCCrAx77j/maSnGd
	 ZTxoHNuAAkcd8174vrIaKIUjaEwxv1ldFjVZgdHdpsRf37hlnoGuMutmMMwhk4AEaC
	 bJ4qlmNtqduOS4zWEZxkfV2ILgWtNVGMR4rw9NjU/GfQXCQFd9GW+XG3EdjkafvtL9
	 maB75cjMmk5Plh2copXAquVJIL4xbrMV4VdaDB1sgc22atrp1lMaBUvL6l05dcpUZg
	 E1NwYGdf+oAkTR6VCT2rZ38uf/PYyQKfAFj0wcgiGnD7w1/xoziJyd89AmkgyAGyhd
	 B8BfLDoD9UIiA==
Message-ID: <76147dc4-1eea-4be8-bfa2-91671dc96953@kernel.org>
Date: Sun, 17 May 2026 16:51:17 +0200
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux'n'Beer v7
To: Manuel Ebner <manuelebner@mailbox.org>, Linux CH <lch@lists.linux.dev>
References: <73f0845c-b312-4c41-94fe-81a22d70a418@kernel.org>
 <e7c412ca-3bee-4b68-b005-2f3224c936f2@kernel.org>
 <eef444c7be2ee006b77779d6d2519ff0137f1eb5.camel@mailbox.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <eef444c7be2ee006b77779d6d2519ff0137f1eb5.camel@mailbox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 17/05/2026 12:04, Manuel Ebner wrote:
> On Wed, 2025-11-26 at 11:58 +0100, Krzysztof Kozlowski wrote:
>> On 17/11/2025 22:14, Krzysztof Kozlowski wrote:
>>> [...]
>>
>> Thanks for coming, I hope you enjoyed the place.
>>
>> We'll take a break for now and we target the next meetup for January.
> 
> I'm pinging this.

Oh yes, I am terrible at this.

<terrible excuse mode>
I planned to do something in January, but I forgot, then February, but
some trips happened, then April, but I was too lazy, now May and I have
multiple events coming, so tend to postpone it...
</terrible excuse mode>

Timing is a bit tricky, because:
This week there is Siemens Open Source conference, I won't be there but
some folks will.
Next week there are Embedded Recipes and week after I have travel.
Then in June there is OSS India...

so basically always something will be interrupting and I need to stop
procrastinating and pick a date.

Therefore, let's be well organized and meet for the next Linux'n'Beer
this week, shortly after Siemens Open Source conference hoping people
can have two events in a week:

Date: Friday, 22nd May 2026, starting at 18:00
Place (probably, I will make a booking once knowing amount of people):
Kennedy's Irish Pub
https://maps.app.goo.gl/T9cSVjJ9PhngPvSW8

Please confirm by responding to email or participating in survey:
https://doodle.com/group-poll/participate/dyAjmQVd

Best regards,
Krzysztof
