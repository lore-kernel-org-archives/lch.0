Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C3813B2B8
	for <lch@lists.linux.dev>; Fri, 13 Dec 2024 03:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734059155; cv=none; b=LK3Ih41knKy3EuKxSz4OiURanDEREIO4kHJs4tXw2vLdhU2+T/LZkZbjs369M937emhOdkJQFFEXMNnqNY0sYlGuSCM6vwDzbPfGOcCu9tr3+jN/XF7k8a1AUXkC6jGUAF/SdDNt4KzSL8Tf9mtIs0ur+58hfDmWcd9IwNo6tso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734059155; c=relaxed/simple;
	bh=mzEXTUAWhp9HReqPqC2l5CkQHZMRH0j+XJmnyGPEmlY=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=idU5HbdDPFMdQWL8dlpoPdJl5WjR5A059s7i5/Lw4L9y9tkPx9CIvsEdTqcixYt4M+tsY3XTNC3D1/zKnCdE590i1F8Ao2T8kH5OHKza7tnPWOAf/BQgOyaRrcuBcNOPowbvYaTO5H1v6OkIP3X84qZywUOY4XNCmOhVFTQ/J8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=contractor.linuxfoundation.org; spf=pass smtp.mailfrom=contractor.linuxfoundation.org; dkim=pass (2048-bit key) header.d=contractor.linuxfoundation.org header.i=@contractor.linuxfoundation.org header.b=lYH8YLW4; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=contractor.linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=contractor.linuxfoundation.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=contractor.linuxfoundation.org header.i=@contractor.linuxfoundation.org header.b="lYH8YLW4"
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so1373738e87.3
        for <lch@lists.linux.dev>; Thu, 12 Dec 2024 19:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=contractor.linuxfoundation.org; s=google; t=1734059150; x=1734663950; darn=lists.linux.dev;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o3JewgvFzKoSW8vjjTd8XT8jYijEY+pimjqollIa1fM=;
        b=lYH8YLW4QqqFtu/+9WBbk5x4dEdXlP7FJZZPm5DUXif15jlOt99h0F4Z++lF0JSX7J
         +9MLhdiYnyA5hlcXSn9Ga3MQKox+FNtkTA0ysg/kPAwoPNJaU/ckNWZ8T+5cGHoFyfef
         scseuHjGwxGqjAPpGNrmw+RFQ0HNQWU5fe8jkv33wqEieDua85w1W+GNzRWq2+x+RHRU
         m1eJaLx5+p8/nP72dHMDUMwUdrOX6OunFrHIaDMoczIGu3d+sD/RpDDMQVQqz2lcV2xN
         lIFLStsxJ9bm3clV8knmG6dnaxK9Jl1FLc7+NbVooB49R1v3TO5HxF3vIBDThzrRKyIS
         CYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734059150; x=1734663950;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3JewgvFzKoSW8vjjTd8XT8jYijEY+pimjqollIa1fM=;
        b=Q9yBN0fTUmw+wmIHWESxfrchmhviejMBwNUUimYei7wA5ejgZ7bGYi8o8P0QumdSHQ
         1JBZR32ZOrwzGn/3Th70iy2grcSw5KZYjP9i6ds3imiBKibbtBTxfY13S7oPfM5nqIS/
         XbyXlb1C09PTccV7FgyMnLXrIYekRI/V4JBzqi6G+lS8xN61/sQ+wTnh3mUl/2UQS+n7
         a5sWnakeVOiOMiOmREwPUUiUVpwgCx9bi2xJSxOrU9nC5bQEMlt70GzmyzBwQn9TShi9
         LMvpzdrFKKmW018vekeg+aw/0x6Emkl0DdDYKGst7LVM3qMu+SD/4dVEYHsiWUv5WEPb
         2OIw==
X-Gm-Message-State: AOJu0YwojJ9UbOOdEI6S+KyyilLJVba+C9DWv3uWgzaEIpultQW03ElM
	4fsl/oJo89Vsb7TEaTOQXmMKKkHZLWh0EeylETPyxFNeZCgqPYpvjESzYjhPJ9hK6wSF6ekwU0j
	WOz0DXoxMbqnE24lKa1cNhEq7aplG7rEpcOY/67mUQnPswiLhg8I=
X-Gm-Gg: ASbGncs7ffNsqYXPHTFyVg6bNSzHC6Lw1qFFvWLHJvIO0Z6jBUqyMaE8lF9PcM42qAZ
	h0qmUwf9OtvWdL19R96ZPjRdJCKvAV21M7BXdvrw=
X-Google-Smtp-Source: AGHT+IFjE/stlwe1xSeWtqtUg8HCVWVHTcHGF5snTy6iBTVgDzPQN6PNBCr1SCozscD96Juiwk7WIf9nhMN56eNWKBE=
X-Received: by 2002:a05:6512:3d26:b0:53f:8c46:42bb with SMTP id
 2adb3069b0e04-540905ab046mr167580e87.40.1734059150280; Thu, 12 Dec 2024
 19:05:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
From: Shyam Kumar <skachukattu@contractor.linuxfoundation.org>
Date: Fri, 13 Dec 2024 08:35:39 +0530
Message-ID: <CAH=dH9__Bo_QEv27Q+5tgKZT-oankKZAE1QXS_D9cqA9WBzKcA@mail.gmail.com>
Subject: Test Mail
To: lch@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hello:

 This is a test message to test successful delivery and start the
 archive for the list. Please ignore.


-- 
Regards
Shyam Kumar
The Linux Foundation Core Projects
