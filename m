Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770C6145B18
	for <lch@lists.linux.dev>; Wed, 18 Dec 2024 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.198.163.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734532309; cv=fail; b=dSQlxpXImh6B88Ua5V3/sB2tiib0gdFY8aThp5Ms1QB7a2WDyfjZ0o5hyOTNfcyU2mM5Sjz9eXHBCCxXaoTrM/hFc5hglCvOdcADuOnRLg5ldsTaRsb36AbUaQwe+/aLoXZUqRzy1e95+8Q5J8SOZdyYwwiMGYzehID1S3F4mWs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734532309; c=relaxed/simple;
	bh=sgLnOjrYPrVS99wmmpVEGeOacPtJXdWdm1Qp/lswAyU=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=WV9IpmwAZN1TtNMwWSaksd6ibAjUYiHYNtJ3Uafa88STo7h3qPv5meQrvWSCg6OmfsH2aBckcP9KrL6WTm1grrutDAOgwiYdkg1FdcBr6lZYOVwkdxxxEGF1fbSpqABhtIf24Q0UrIIuln7gPg63LJzdt36dR9n56wVTXFDW+RA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=anaqdIQI; arc=fail smtp.client-ip=192.198.163.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="anaqdIQI"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1734532307; x=1766068307;
  h=from:to:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=sgLnOjrYPrVS99wmmpVEGeOacPtJXdWdm1Qp/lswAyU=;
  b=anaqdIQI/Isafr7inwySea/FCRW6AWP0wSKzZVt9LszZm3DTNVFpkJfP
   7uggezcDI6dHHs2BKhYcoFUL5NId2e0LVYE/qn28cw2pWxV3w+gszJLZn
   9OtB95IoXsNBKmDO+6hCYnTlH4pfiZr39Xj28tat7p8JXhYyP0ojV9db4
   QVJubtkZLzg1/VHMg3sqBu08yOkqCSiX8eaGrGm9EE/f6nn0enXsBRiAL
   rfnTRQ/fTWtOCJ3lXPZZOS6lm3kVer4hRL17e81mpCCD+zbEP/K04LZ7U
   C2k3HmxVXBEKIQftA2ss6c9zKgbUvGtZl6rXWVzKetFfQqP1vPx5ZfDv1
   A==;
X-CSE-ConnectionGUID: IS32RvYTSt2a2EGvOEYB9Q==
X-CSE-MsgGUID: 7JDZ0nBXR4qdrutZI9DQtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="37848823"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; 
   d="scan'208";a="37848823"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2024 06:27:24 -0800
X-CSE-ConnectionGUID: M1ATg+kASemPE9D7Me7xXQ==
X-CSE-MsgGUID: 0jxBMGnLSLK4dWzWsbOJMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; 
   d="scan'208";a="97671880"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 18 Dec 2024 06:27:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 06:27:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 06:27:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 06:27:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zi3cF5cd1GM44ZtXbZtCUYq3R6ZP+7BiCNCvMe9763yDop3FqqkLw8fuiCVCljlr1kUIOydo5wyd3UdSvyD58RvOIhCo0au4CpM4bTlOuvJG+F0y4I8nt5gie7AHuGfMstDheOrHxrVnTcQaqYd1IMyTAWqEirId/7DpchKhp8Fhg+Vmw4T8J/3KzopAxPsqlBh46CEWfNZXrjNgQr6UTKH0wMQsVpdzzg+JOvaORdhIafau88vX2gTKL8XIn9uO3gBFEfZvJy/jRCNGJGTioJihttUZZYAz8yvrafWLaJOgdEam8OCXApUHgJrYsl33rarplw/nCoUumdHq9hH+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nl0MPFHU9j5EpChG1auUppLORCUCT5hmYeE91+6tmzM=;
 b=y6kS5O03gD9pLf3WLxSMSo+6AZHpb6RfTedIacfhEkixihDfeicWUDsVH0e22CnSN/KHS+pidcNi7EIoBBQothGInLDLGvhjf0gMLBRojzdz1LigiNsDonxz/d/7J5sEkPfrLb7C6iwQBeFVF2y/CgeUnBxEBb58dwxiZyVWfZy1EpWCY0SgQSNc9PoUKr6lJG+FHbM+8me7u1N/3RZsogAu73uTrwgUfkcVaxKOS7it4ggQM012CHHpZ++P1/WJXPJIfWyBpBu6dTt9A53kVo9jfE7mFlwFT4nAoec+/13i4LUwRVpOk5lRIReUIMvXZ+Y17WyuNPt5fyTHLFr+HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7591.namprd11.prod.outlook.com (2603:10b6:806:32b::18)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Wed, 18 Dec
 2024 14:27:19 +0000
Received: from SN7PR11MB7591.namprd11.prod.outlook.com
 ([fe80::be58:c76e:ef00:3524]) by SN7PR11MB7591.namprd11.prod.outlook.com
 ([fe80::be58:c76e:ef00:3524%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 14:27:19 +0000
From: "Pabst, Hans" <hans.pabst@intel.com>
To: "lch@lists.linux.dev" <lch@lists.linux.dev>
Subject: Swiss Poetry
Thread-Topic: Swiss Poetry
Thread-Index: AdtRWM+enh2HGIvQQQGDOI3SvXh6AQ==
Date: Wed, 18 Dec 2024 14:27:19 +0000
Message-ID: <SN7PR11MB7591BEE7F61E9BF3ED67C69181052@SN7PR11MB7591.namprd11.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7591:EE_|SJ2PR11MB8321:EE_
x-ms-office365-filtering-correlation-id: 11ece05e-7ac3-4991-48ea-08dd1f701482
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?M73q8RirH4ONXkbkcuhUVUSZHpuIkzuSQeZn9s6Ho83ROngntJRM4ZuwzUSh?=
 =?us-ascii?Q?MCBoYWaFxcrWyv/wg3CaEa+VG2VZEkbE2FRDPs59Gn7BGKoDCOwE7XmmsuNb?=
 =?us-ascii?Q?YZ4Fl0LG4huDoLt5FmEywZnsxE0KwBCQHQ34UK9gqJXVVtppAmxFhOygOVpb?=
 =?us-ascii?Q?pblOemxJqGvLYnrck613dY+VMTFzm7vvpVuJL17gl6SapicxsZ0n99e5Y3u7?=
 =?us-ascii?Q?+jjQ7Gd4kPCVFJUjEpp6KNIIaLrQhwEK/lUlqcajSyjAZnRU4Wrx/6HEPxP3?=
 =?us-ascii?Q?23jxW3UinKBkgbjF3RtD21CVwtLrI1C7N5v7fxAHPpyKgLVw54Sdj9UV54gq?=
 =?us-ascii?Q?a7xLP+i6uNDx2MQT+lXPoQNqRRgxIuzRRYdv/DLN3OHRqCiHf59znfqp1nRz?=
 =?us-ascii?Q?t67CuulGiMSU+esR8LxaP5iPi7spWm4lsK8A4+rfBBfNJgz473IwCumfAwGE?=
 =?us-ascii?Q?X7MNb0y1RyEqbEaAxF5BzXHvlzNyjhD6qYUqamop6llBGRmMDAzW9gndyJ7q?=
 =?us-ascii?Q?BmrmzG2j4e/yibuchv/j3Y0YhErliMar/cNzRFH9mwczY0nw/KEWOBId/dqW?=
 =?us-ascii?Q?KP2lH+sp1aZOlUJS7tG1YR5K7Z8JDdmAhzVz0q2dfAddd7JOfl3eTfSjFwqe?=
 =?us-ascii?Q?0k0nZP0Dcg6xDwH/VsXgZgoK6Ki+v+CEtfkwl3ehlC+WZ6raBC7pQTLlO1VY?=
 =?us-ascii?Q?KmX+zBCf/Rl64GXd1Ui+t0NwglAHXV5qU/xnKxXeb2rPYrPS33JSN+ZkoImT?=
 =?us-ascii?Q?Toiw7iQni/xujMon2qJlZxEjQsVu0hETKD5VNbITsgkgNq/DtdkpilYsUTM1?=
 =?us-ascii?Q?6so+kdXO6X2IBVYJD0ks8FlIBY3WtAKmrgOVQUAe561lnuHjyaK6yJrMF97n?=
 =?us-ascii?Q?9Vu5fg6D1uvZ6+HZEtfEYxMYkdYqroE/4VZTVinEY7Ar2Fi00FS/xccvpPNk?=
 =?us-ascii?Q?IWu6DIhfw3sUa+ddFXO0WtyxMoQtzH8RnHA5/ejxWly2Nl6JUbYWZVyP3jnT?=
 =?us-ascii?Q?LyavfjDVRPEB8EKvO26tnlGcoDZFv0lT29ZNejfG+iryDrgmCQNAck1lYVD7?=
 =?us-ascii?Q?m3eNdoslGuZK5C+GwkIQXZahjE3g95oUsmNJKjDa7rtolggBgxkkN+QKJlPI?=
 =?us-ascii?Q?jsCz8FKUoy6EDxZwuN0BVyXo1vInIMRUsgf+hBwKt9gAdoATk5/7KyE51cxD?=
 =?us-ascii?Q?q1cycl9/ohTW0coizDA85rSkXQwwzHGlmili9AavMKMwstYzJrXDjsKTvqf6?=
 =?us-ascii?Q?A8q67d63wuvx/RGK4fuRPy3IXYuSc7T4+cJBSt2LLqskdA5OisZtrT3trgF5?=
 =?us-ascii?Q?qW8iODRqzfwWILG9u9LPwHbx9lcKSpZ2q2Eaa9j2QuuCeB4m82wDb8qaqXrs?=
 =?us-ascii?Q?CQ1kEOf1OavcPEWmChNZNIwHQhrJg0GJpCvlJwmRNZqbB2z55Z8X2k2qYP7g?=
 =?us-ascii?Q?6jNhIxrhe2928JCCvoeO0dl6ze2RmRTK?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR11MB7591.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zxDYB1HCCAEQbz8vMdpYkPzlxFLeIjJ3vnobF5qNnCKXsXbHhEdqBioDT+HU?=
 =?us-ascii?Q?YMiPLIhekQ3MP75MebayRI8nHvXwUCmflYiTj7WWdFiP48tpxuFlcmOcLy4Q?=
 =?us-ascii?Q?d1ce/rLL99jHgqng0/xmxxMOEZVyIfXvGzY0pBntifi1Dn7RFS3bX8+H4AG/?=
 =?us-ascii?Q?j1wYjlzDbz/DjVd3vCp6pxTfl2uMNzbEr4acCrOjL0iWAGU9zvwbfMhOYvld?=
 =?us-ascii?Q?NA24pz3AytLcv68chrYUiVxeGWI8uTOcArLtnplof3Bpf7NOOftTYLe0Us4h?=
 =?us-ascii?Q?VefUV7edChyUvLfiLieimnLt8rPMVrq1l7Ek2Hr3IJs3IiXMDdtlt+ep0d3U?=
 =?us-ascii?Q?0Ikg2lTBHP/xje89CrNLtjxJ10uhJ5O4y2U+ZUQXR3Qul6L8b9hfbrZEPHvc?=
 =?us-ascii?Q?Zz2TNkErokGKh5I0Kgqz8eDRuo3JCygXDpgFIPS7JR7cfREuQiE6GtJ9s8Hu?=
 =?us-ascii?Q?ptA1AhIHOS1zp50ZbjDzD9kMmpeDxEQfkv8DpZujwnLGuCHil0eXynzYf7Il?=
 =?us-ascii?Q?6MDfA6jmkd5232ZBiFRWZTLbPxtx3txltE5cDsZkY5oklZxi7l6G88nyN9WV?=
 =?us-ascii?Q?3brKv/dXYDCvsDvAknD9+gQ5v9Rud6EGxPqYh5MP257gBGJBK3SDBSaccV5C?=
 =?us-ascii?Q?lCzkYWEgWufV0zmuU1pN1bZEmJuX9MJ2OyyC730FVOaRgeJK+cNPd6d/XaSn?=
 =?us-ascii?Q?s+Z3zYwwopS0FAk5rH+MWMjpGW2E34/asGQdGh4G3DTgo9/DbYwjZ/1F/TC/?=
 =?us-ascii?Q?dV+KOlObs8j9ec/06Oj+xWbdKUoVSv5ONH+DI6huCC+LBp2J5Xm8XRgjYh4U?=
 =?us-ascii?Q?RTYKwcBgi2aPmNmw91GY3AfJ5ZUdfsi8mAmSbtEZbvSWkYs5a0yeTOkIT6I3?=
 =?us-ascii?Q?oT/kw6qzyPgXlYMS6rNwAuzFbrdIUH3kd6ChHDvKGB4exfumzuvaeLBvV/lK?=
 =?us-ascii?Q?3VV665K3OWmKGL6Nl/PBmJj1PaO6JuyGtY1T32WBASTRBV+WnHQ1vi8UyO2e?=
 =?us-ascii?Q?RqX6L8R8xBnEb5KFc8+3ipx10bBTNfX+1+mNQsRBn2mkgwi24YUHlUvVtRFA?=
 =?us-ascii?Q?giFR4nPSEZo425tXWqnWioljX/FuU9yGnyFQhqwke89vh8lGJWXQA04ihvNv?=
 =?us-ascii?Q?m6ko/7WTh2nlyQzf6rJK90/WZYPPHF5yuDCGM8e7JdeXfsjc08JH0fRPhFIk?=
 =?us-ascii?Q?JY/DLBqrJy+/eZtFdDX3OyRKhnELfuyLsKPSa50jeTXf++VbR4Uk/4NkGj1b?=
 =?us-ascii?Q?NaRggeXBCrc8UMw8hGH6CAlk685NU1+lUXNuIigUcipej7Xw8BYnJ9BeEPf6?=
 =?us-ascii?Q?FWOs/q5L8WBV9zcMHWH2OP1jKqoplFU8DKGM65LrrB0FenAAjlRbll1AXfXv?=
 =?us-ascii?Q?onkzKKlGfka0eMSHMJ8T5irJ/DLWTOqJvuSzCQTPLxsyrKLNWzA+mjrXGQjK?=
 =?us-ascii?Q?vuMAzwL2kLVZKwGpsXurmPdgHdmCscAUQo7tGjHCMfkvfSiBM/5txVIO3qF7?=
 =?us-ascii?Q?B8bCzMQef752ztY8z/dBsYEY8RaVnYF5vjjCV3NtMSfwvAmsapyI8m29LSts?=
 =?us-ascii?Q?TTBuugSXZrq+cJb0IbE=3D?=
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7591.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ece05e-7ac3-4991-48ea-08dd1f701482
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 14:27:19.6719
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cx3aTNfvzUUSqPLnUR56O7SLR2ziz/2QHVJvLZy/i0Ea8QWIRnhML+UVgGoQOoaB4ASjnCEVZRfcOoJIeRktA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable

Not exactly poetry but I like Swiss German, e.g., "Falsche Richtig".

My best wishes,
Hans


Intel Semiconductor AG
Registered No. 020.30.913.786-7
Registered Office: Dufourstrasse 101 , 8008 Zurich, Switzerland

