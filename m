Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63488224AEF
	for <lch@lists.linux.dev>; Wed, 22 Oct 2025 06:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115408; cv=none; b=Vv1O6U4TfwKCBGCsNxRKKhGai/wNHIhTZGuqmbnzH5nJ0SBPB1kOh6d/FWI6W1ga7RaYMN2Ae2QPH8YpCvb3JWSBAAWouJvAbdMAQBWYLuiFu/CTwNVznSLpk5DEJd+x5fufMj442tFMoR3CRQ/clHLjCYdLJdhEe5UREYMTU5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115408; c=relaxed/simple;
	bh=DNTL4mLYiBG6G52W+A9Sg8q9wNNydszW7xJo3DAlyVQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IyT8ddbLnUUXAfNRnOVC+JqQ0pSfU539YasgvaB7OplazsUf8vxBmVvznoJDwqAT0YBMFl0HPmBSRIsRPEm3J2j70kBEKXoKHQLDx3QJQpogyJk3mWhL4H+utGhVasbrakr50TO+fycslx5vxaD6ddPgl0xuqRZOCGsbCRZ6ync=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gw9wLogE; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gw9wLogE"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b6d2ef066c7so90583966b.1
        for <lch@lists.linux.dev>; Tue, 21 Oct 2025 23:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761115404; x=1761720204; darn=lists.linux.dev;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DNTL4mLYiBG6G52W+A9Sg8q9wNNydszW7xJo3DAlyVQ=;
        b=gw9wLogEoFy9COuW3ufEWcQ9fX4QGKmlUzDUfuXXyJjsbZ9hfA4kJP9KGupQKruZuR
         A1W3qe1n/9GcJy7PQO36v5h3aK3xSQ7tACeS5cc32xz1FvpjuKegWfyQcbyVY+O3SwBz
         v2tfglhyh0zrtyzuWpe4ccsHWgRvWKjzHotA8fQVLRPdQortEPg6ErwYKsEG04dklcLG
         gvRT77fRGwIBRU29XwdKfHX/OqqE1Oi6nmr9w/VK3bARjx+P9B9y6Tk3VnSPO6rlu4gm
         Zab4c3EoAF1mUjzSrkdM8oob7E+TSzGCYRvwfD0JYeRYezMO83DsShByPi1h02PwnhL0
         oOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115404; x=1761720204;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DNTL4mLYiBG6G52W+A9Sg8q9wNNydszW7xJo3DAlyVQ=;
        b=QlbEqXT8FKLlac5goKZiJveYSveUWE9XrgGy3kFE0HiXokQGUJuHyQ1VRUm/+/1E8h
         WtO1OkmOge1r5PoVdA6l4M6DiZ5SDiWb+jcZsgVHihHIoBi94DG7ofvbp344ny3ImUiJ
         NfCufKEJVzuKAVKEkmfjqbzjrNQ11FwGrwI8c6NcFZ8Z8Coo6hPbL7ymrDiDggnVbfI2
         GMeLz8AHrWkGUne7uiLMBV58E3MiJlGUhsVYLA9AXupQgzQyTMBeOzXkZ9zBOlLAhKzI
         dlu6g7jqcnu0/rdA+LY9cWbxoP2jbuDcMa9XSs7205gwA6QIz29vchv6LRev1Pw83zU9
         mkyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAyQXu7aCiw+NasYbMEkqNxWdhxc6oL83TzzsGUggAvAt2wyyzKsuP7W34UmoK4bmYAfE=@lists.linux.dev
X-Gm-Message-State: AOJu0YwFfv3ZBJPbXKIZ8yeadcGhrBwSY86ba7lYzO0dI7nGdVmONrit
	3T3OmdwxvbwMhXyiXBdi6lDlCbE9qeMOONUEKf5wfCPqA3fliWftzvoK
X-Gm-Gg: ASbGncsxgf7YZBjismEJsMoqD0ggbeV7iHRG6/a3WtKejH60VxcS0t8z2Ye0eZNbQGE
	Hrtvx8hWfmLnBjIdfLXbqu8A92VFzm0Pm9hTQYopsACts28rKfiGZSR7TtVfWQeD2VGuPidyNci
	oaqL6Q9DCkzUzmKyh4KiSSbu6HBVSy42rEu6/yp0q+g0W2P2gFuIwrDfhH4uxSjXDHC9FvkKTYz
	0Y6U61xAGlpHJd6uVwHt9Zpx4zIBOprkbnfDK+va6t1m7eSdlWUALkHHsOlOwxBfkYJA6SDVzMr
	J+pkX2oqn9fVdIPsR8lAyF1ncs1AiI0ldqtvAd5BdsfVgn3N4rmb7GnNf+tQ5BekiQQCe1RSXvk
	ddkVIy2t54UIhi+e0B/sDp9tXtdIEkMlYXxQt95CMOmutgWIsuw5l5zI3UbRpn7RXQuA8vRIw3X
	VMmOl+UczCxcYznLMCvk9tlwZqSGhMWQAkJzSiz5Pznl1wazgcH9O9eH+r
X-Google-Smtp-Source: AGHT+IEZX0MUJIUxtNQeVeDkJAlc3btn2dXQq5W566O+RJoWzHD/az7UGAKKTGTHwdi1v/+CigS0hw==
X-Received: by 2002:a17:907:6eac:b0:b40:a71b:151f with SMTP id a640c23a62f3a-b6474b36b58mr2463693466b.30.1761115404320;
        Tue, 21 Oct 2025 23:43:24 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c4943027fsm11334397a12.26.2025.10.21.23.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:43:24 -0700 (PDT)
Message-ID: <3fcb75f8af04aa8def3542011c0a4e4aff2977ff.camel@gmail.com>
Subject: Re: Linux'n'Beer (v6)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>, Linux CH <lch@lists.linux.dev>
Date: Wed, 22 Oct 2025 08:43:23 +0200
In-Reply-To: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
References: 
	<m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0

Hi Andi!

On Mon, 2025-10-20 at 11:49 +0200, Andi Shyti wrote:
> It is time for another round of Linux'n'Beer!
> Let's meet on Friday, 24 October, as usual in Zurich.
>=20
> We have not chosen a place yet, so suggestions are very welcome.
> Anywhere with good beer and enough space for all of us.

Thanks for organizing the meetup again!

My interaction with "AI" ended up with "TURBINENBR=C3=84U", but I have no
personal experience with the location.

Link: https://www.restaurant-turbinenbraeu.ch/

--=20
Alexander Sverdlin.
