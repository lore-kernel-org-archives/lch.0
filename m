Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A16221DA0
	for <lch@lists.linux.dev>; Thu, 19 Dec 2024 10:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734604108; cv=none; b=aUUHWKrJeMXf5adBpnUZWvg9R1FJ2kYxlepikRzUtHlwveWdZg8TEynZ/TANeqUPi4iFhjPyqY+gNqr/VpwoJ6qUCHt6OYjTb1cMT+JiaYCkuBpRxcK9iUn7B0Lz6oC+lQ5NrskY0bP1+zbQcfBvZ6MzaZb/3K7WFUbNNqLBlKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734604108; c=relaxed/simple;
	bh=wE7NXSkgnx9PGiavN4OZhJztvkqPDlemV3OGuEnLwNo=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=C365MN7l+i1n98dAVUlV2ObLY0AZKCak38qZ7fPfWyet0yhugbvfPYpMqz0rwiQoCBXOg3eOuMUYAdDmwAVBPpi5WOLNcUcWnFSeFaD4pCLjiBMPCXxGacQG8V9g3wDgGM4QrjSZHZFvU9n4VPmVTC5MEZ1SwlwzlJjcsPH0FSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mW5+Clya; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mW5+Clya"
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-38633b5dbcfso548059f8f.2
        for <lch@lists.linux.dev>; Thu, 19 Dec 2024 02:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734604104; x=1735208904; darn=lists.linux.dev;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wE7NXSkgnx9PGiavN4OZhJztvkqPDlemV3OGuEnLwNo=;
        b=mW5+ClyawyAJ9EILOHBXpPw+jyXYBP8kFyOtXZ49ZqtFDp+C7UtjShjzrUmu9HbPja
         HSpcZMrAEswu789jT5qstsd1sk8NEf/KD4cy9eZ5uTzJYh2/82U0ftvu6bpqC0leQcoV
         fBArN7Z2Et72a907iPjlwgwtQJ15at8/JizZyxlpEo0TLEsLfrIKpbe+RR4wtX7Mc3Wx
         g/axV6iQ/Rt+usbBAkDDIxeCzw+EBdABtacYHslgRQukC7r+Pm0OfB/1LJQnLYcrU8AW
         wnsVd1YsFDEYZf2jgB4wzsIxYdYGwuqI777pdARN/gIriPPcoFb9FdcLc+VbHkSknyrB
         3Prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734604104; x=1735208904;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wE7NXSkgnx9PGiavN4OZhJztvkqPDlemV3OGuEnLwNo=;
        b=JZ1uiVdkfgTJuskHPXK3KSoWQkMPSZ/oJzeoT2JSMLA7yXIU24N3x9oAhWT1xZORUz
         CN5o/MzVtcPXLGo7cMYrmCt708CAbOHnUGMtC7/L7Lzp8j7lPF1wHc2nhhN7vc+Mb2yN
         OkJEw4oYATcuwUWyn/QoQAwGYoCCVFY9xk2/XFb5GQo5vr9z+lQCtm1LsBt/ZC+riTIX
         XXIGz5SBQvoRyuNWZdzX+YNn8GkpZB5i8Wgl0djCzZzAYdAwCsKceUai6trVcHA2cfwY
         N0hT26xMl7EpJxfLs1wlO5U5cOGHy46dDFQ2R6vciCuIzDH1GBiNtmvDpZ0rVyxo28Gu
         LEHw==
X-Gm-Message-State: AOJu0YzJnaKk1wYSNcPtE0FWbal4LDErh7q/tlnIxzQ8WesADL3TmhfL
	rtt+dR1wdjOZThGOqaf1jo4PJyRNcb1MKFHEoqGNpBjQtN2XmVmx7alNXvZMX38=
X-Gm-Gg: ASbGncsvptod1NtVCNlXo2PGLnxSxAIFSWbxPpvTtXqF95W40OwYeNdXxNDWxCiotXs
	tHaZvNZOM9FP6ji5BAVgaCRB2Rh2snpfnzsolL84aLvn162+iNbyrUroD/Im68ofMDvWJtRZmKf
	k96kbuk9FPauBVbHZGLtFl6sxl6kah8dga2zItmAxzXtmKVV6rG75I/SlY/vNktolP7PJdy7U8d
	8ZszWubvTyGIWv1OGJOdWvJ2gH38BJQZpsYsy+NkPjysU3n3J+UVUSFAdibLg==
X-Google-Smtp-Source: AGHT+IE4N/dBzcsZA4ihCtJp4ApwElRqwuxvkPy+tGRtDag9FpXlX2b9x8NCk8Bsh541XXTyRXKfNQ==
X-Received: by 2002:a05:6000:188c:b0:385:dc88:8214 with SMTP id ffacd0b85a97d-38a19b34d50mr2764828f8f.43.1734604103933;
        Thu, 19 Dec 2024 02:28:23 -0800 (PST)
Received: from fideamdpc ([2a04:ee41:3:736a:6d2c:8e5b:4d07:3b5d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8287adsm1207038f8f.16.2024.12.19.02.28.23
        for <lch@lists.linux.dev>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2024 02:28:23 -0800 (PST)
From: <mehmet.fide@gmail.com>
To: <lch@lists.linux.dev>
Subject: hello linux ch - a test message
Date: Thu, 19 Dec 2024 11:28:24 +0100
Message-ID: <000201db5200$bc29b850$347d28f0$@gmail.com>
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-ch
Thread-Index: AdtSADl+wzBULCIpRy29JBtPTdEsAQ==

This is a test message.

