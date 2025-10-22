Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95F1346E77
	for <lch@lists.linux.dev>; Wed, 22 Oct 2025 13:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.19
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761140654; cv=fail; b=dfFQ9JR87CIwMmhMT3caLwNLBu/QOZBcmkmH1NJTAAenQWO9BChBFN5ocTeLV0lcSBMeN3sQXCNnOMSTowU1JhkGt2AtdmarUp7ZxsCnRXxcVnOk7MNJgZZpZVXFXrMCH8bI1HigczHgjYCi3hOGn7K6X3OAQ7OHvyXehWxNoGM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761140654; c=relaxed/simple;
	bh=AblyxGU2KSL195CblokR7I/x3T9ZFRurWNUFzpXINlE=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=QB4S51El2xWAn0U3ij68fKFW4oj4ZVCyswxvFslHJfCWunfd8Tpy/0ATdgzcURKqolq3bIwUKuLwyRCUE83v6tOX3I/3/TsCqQMy6RuGAq6NsFVX9svMw2cbjMO4r/uTs9p5CgYc9sdiAKQ3/oFVYhrPC8s7I32sChy8G4uL0jg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=j3pCR+wn; arc=fail smtp.client-ip=198.175.65.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="j3pCR+wn"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761140653; x=1792676653;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version:content-transfer-encoding;
  bh=AblyxGU2KSL195CblokR7I/x3T9ZFRurWNUFzpXINlE=;
  b=j3pCR+wnZ3ivXxAWcPlOn7f3F07pehuysq5bT56DgJrPr079NMqrKMRT
   wMKF9E9/KU0B0mD59HI9aCPcoZjxF/bcqdSFNIOxz98X4AxGciyhTzLjZ
   DZBOClEiLqnxcevPb7WzTmveTM52s8xP8Wg/+4PTGMEQjdsQIzQTVqy6D
   3RtfEeA4d+A8qFP8Hu4/LnBpx58vXcW5lh4LrDZ7BCXNENge36wYHqvwY
   abThWrrqTO2mW3MFMrGHZcYJbfpUay/PJtsM8XkUBwRC29MSEaJTqhyFE
   bHrU/zZYfwPofkSzcBFsC52wUf+XQEeFTwT6/oXx+EXJ8jxrxfm4kJ6hH
   g==;
X-CSE-ConnectionGUID: nrej+XFsS7ifeduafGX27g==
X-CSE-MsgGUID: XvBnA0a6Tt6cz3jykHnToA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63184323"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; 
   d="scan'208";a="63184323"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2025 06:44:12 -0700
X-CSE-ConnectionGUID: EPJEWNwNT5O4HDRe0sWrzQ==
X-CSE-MsgGUID: BjRrL5pxRfWb1Fw0kndJjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; 
   d="scan'208";a="184360049"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
  by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Oct 2025 06:44:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 06:44:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 22 Oct 2025 06:44:10 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 22 Oct 2025 06:44:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TguKzLNXsqvYwLi3Fxarr0XoaxevvyoO43KGIKowcjcr3Wi+txOvBCwyG2hblsPJFTTfIUHq/pJ1+bFy7aUq3AQVkh0qvBm8uGX+rny68jsLsR37JRkTkP20WbVyX2jMKboCWVAFKHup/wcfnAf8CDvh+vE5eJgV6Dg2K/5v6FvcFHM2LCCRknfm+tHwjyl+NYFKtzzQZZZ98iXJYun3uaacs5NLDpFe89cFfvVEK4/Gh3ihmUOgyZ8/dcnFxTOdiv3YvCK5Jx+vb7gESxqweK+X+mjudDnq/TvYIQo+0RHxcjcp6NjbqYgVPbBoDl03rfDD7EhnAlQ+r4+vomPHFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/KdoywGnUKIJkS/XwNbGvoOfJ2x/jPgDascEa9u0vU=;
 b=tADQqQMeL0gfHmxNksnRftz3E25+qD1sktoAaKE2T5mfb01WRz6w6+g2CeNlubS5k05IZWMKyi0RpFmMDFBS3lyPzYhhc6RMyVULrV1yVSTlfNLV9EdbTAYEqwq1gyiagsJxI/YkLZeCbJ0OTazGDSmOxXFBb0PDaKNm6JgwwRrbnHOZca7mInqhAJlmlt0O7e+OBEJmPqx3kr0aBzemdybSdsKMNGbQqtA3lCO1VH4bP+2LhSlUX8Irt/BicHlL4ddoEbk/sQ5/SL1eDZzi3N4bh6WlwBTCrlHYU/62ljvj67B36SkvdXZSogfCDasEQOOBAlVGcY1uNfpVmIw+FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7591.namprd11.prod.outlook.com (2603:10b6:806:32b::18)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Wed, 22 Oct
 2025 13:44:08 +0000
Received: from SN7PR11MB7591.namprd11.prod.outlook.com
 ([fe80::be58:c76e:ef00:3524]) by SN7PR11MB7591.namprd11.prod.outlook.com
 ([fe80::be58:c76e:ef00:3524%7]) with mapi id 15.20.9253.011; Wed, 22 Oct 2025
 13:44:07 +0000
From: "Pabst, Hans" <hans.pabst@intel.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, Andi Shyti
	<andi.shyti@kernel.org>, Linux CH <lch@lists.linux.dev>
Subject: RE: Linux'n'Beer (v6)
Thread-Topic: Linux'n'Beer (v6)
Thread-Index: AQHcQabfviBcGPCpM0Cms8YtH6StB7TNuwSAgAB0ubA=
Date: Wed, 22 Oct 2025 13:44:07 +0000
Message-ID: <SN7PR11MB75913675CA6BAB6D7CE22BEE81F3A@SN7PR11MB7591.namprd11.prod.outlook.com>
References: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
 <3fcb75f8af04aa8def3542011c0a4e4aff2977ff.camel@gmail.com>
In-Reply-To: <3fcb75f8af04aa8def3542011c0a4e4aff2977ff.camel@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7591:EE_|SJ0PR11MB4781:EE_
x-ms-office365-filtering-correlation-id: 4e4a8e3b-ddcc-4cb0-da6b-08de117112e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZDlWMnEvZTQxMVdEL1pDWmEra015eWRtNkU0M29ybk8vcVlLOXZLclI5R3lV?=
 =?utf-8?B?clgxSHlwK3g5MjRDbVJaM2ZtbDJPTW90VnNaRzlZSGhiK3FMamhUQzVKNVVz?=
 =?utf-8?B?QVpUdDBzVGRiYUxSRTRlZ0ZOYnFHRmxyUUdiQ0hXSG14MjI4WGhncmlTK3g3?=
 =?utf-8?B?UlBtNHArWkNUc0x5bi9DeitGVGNqaE9yQmtibjRRelV6T0FUMkcxUkdyOFhI?=
 =?utf-8?B?TnpHcGNHS0hJTERuckFlb1hxZnZDV2lnVzVKeE8yODlPczh2SVR2VVhFQ2Er?=
 =?utf-8?B?cWR2VDlINEZPak9MVnlrdkp3UVhPR3NXdEN6WWlmMDJEMDB5b2Fnc1BaSGxC?=
 =?utf-8?B?NUgxdTlseXZ3ZnNKRWlZRUUrYkU5QUVCM2d4RnJ6WUc0d1F2a0hobEFYVkNL?=
 =?utf-8?B?MFZWcWZzaTJ3aHIyMy9sYzRaZzc3V2tQdGNjVzBuSWRRd2JrWmFLSWVnOGhH?=
 =?utf-8?B?c3BJVXB2cmFITHFQMjQ4eUFPbzJXME15elJISEh6ZThHT1BaUjl5SUVlc1pC?=
 =?utf-8?B?Nmo5SEFMRUg0TVdaV09GNmtCYk9tZVNUNWVMUTF2REppQnhzU0ZtNnVwS1Fm?=
 =?utf-8?B?MDhTVm1RTGR4UUlkdVpxMjdNTFFrQjlvc0FhT3hsUDdxYVFSN1JibDQ1Ni8y?=
 =?utf-8?B?NFFSQ0ZTVUwySnNURi9VSVhDMzVhd3lVSE9ybHd0YUgxRTFMVHlVbWpubTVh?=
 =?utf-8?B?WThTMUNJV2FiZlRPNmYrTld3RGloQnIzcFY1YVo5RmZHZ0ViRExiTG1YS3J6?=
 =?utf-8?B?WHU1VytIVWlTK0FHL0Q5TVU2b3l1MUhnKzB6dkNicUhiVXhrdUdKUnBkSGda?=
 =?utf-8?B?cmtyRXpjMkJRZU5EVXZIemhOZWdIb0RQRU5TTlExcjRIMmtGdDJ6Ulo4ZjFH?=
 =?utf-8?B?UFFyTVB0WmNlQlk0Um1GWW1qYVJSMk9Kd0pSQWQyZXByVTg4SXc3QUlmaUJ0?=
 =?utf-8?B?TGNkRFdPbTlndjhXQS93a3Z0SVBxZncyd0lPaDZjM3FJcjBKS1VMaW1PbVZQ?=
 =?utf-8?B?Rk40NE5mb0hxVTNBMnJwRkk1NmJESUEveGNOdWVKVjNTRUxFRGUyYktoZTB4?=
 =?utf-8?B?U2NGeXRZQ2hMOVhqUk5hVHNqVXExZXBqU0xqY2tTa3RHN1R0bTB5RXlPQTAx?=
 =?utf-8?B?WFpuRmd2UXBmeFM2eGdJSXluZGVuOFNINWxNNEJJYWVlQ0xpanlsQUVsTXRo?=
 =?utf-8?B?YUdPQUpOY3dxT2V6c2h6OUZmNjM4R3ZucmVxWkVOWFRQdHdabU5LSVZJRG85?=
 =?utf-8?B?dy92bVpYMHFLOERTMGZ4cFhGYWZoSURPaWU2RTZjbkt4WEpYYmhtUGROb2ZG?=
 =?utf-8?B?akdTQmt3dko3YklxZWI5QkczTndaTFVDT2ozTStwckc4NjQyUDhGNlNlWUlN?=
 =?utf-8?B?SFV0c1NxWXpjcTFseGt0dnR1UlpxVHJJcWRZZTJRTzhqTTYwcUxvUTBSWngx?=
 =?utf-8?B?M2VTZjVPOElLbEVnam43Yks4emovbEhUTEhNbnpDd1ZuVXlxVFg5YkRhOHQ4?=
 =?utf-8?B?c3Z4QVlIN2ZLMGI4dkFNTEt2YWN0aEpaaHFsMXNUd24vcWVLT3pJL1RWWWpy?=
 =?utf-8?B?dlAwT1F4emNzQXJJQndMVXBYY3IxMlZJRkxwSGFJM2RzS1dUWFBRbjhzMHlx?=
 =?utf-8?B?RDhGeS9zdUhNbmVZU2huSEJua3RQVmxUYm5DSFdpNCtCOTdPcnA2WndVTlQ5?=
 =?utf-8?B?bjUveG00WTJMS3FoTjc3VG5QcGV0bG5Yc09mVnR1RHVzZG9UcDZSUmI2NFk5?=
 =?utf-8?B?d0pINjVZelRjYzA1Vys4dHhzVC9pd1JzM21TMXFHVWJzVGVpQXgvdnVrdndo?=
 =?utf-8?B?bFVCd3VRdWFRbE5DUWlKSjBTeE10NWtDV1RMbVhWVTEwMjZWU1Vua1V4akhE?=
 =?utf-8?B?bkV2S3g4Q0tDU3AyQjV4RnBRRzBYS2F3N3NaZEpoNVgybWhRWmVHcjkxQlBy?=
 =?utf-8?Q?P/QdUB+astJDgZJjNtAcLGySit7q+taF?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR11MB7591.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1Q0dldxQzRKdHRGTjFZVk1mUTd0dkxwSXd5V2U0bXJOVm5rM1FTWkloNzJC?=
 =?utf-8?B?cElhanIrWUJ2bWpsV0g4T004VFRkbkJESkViRzY3MW9mb1dOMGZHVXFXSmpT?=
 =?utf-8?B?cE9YYU5kWUExczFyYW4xQmdta3p4UmtMbzJrQmNDM3UzLzVoZ2FlcVVFcVFa?=
 =?utf-8?B?bEVqTCtLOG0rY2w2U0ZFdHBRVUdvaTlEanJnSGg4WlRVeU5zcGE5QVcxMWxn?=
 =?utf-8?B?eDF1WkgrVHRGYnFIMVBWb1RNRU9tTXQwQlVlK0hKWVNFRDFIVVNMYml1Mkh3?=
 =?utf-8?B?U3RVSzh5dTdsUWs1bGFQeFhpZ1hWbWNSOXFpOWVmbFN5Q3llZnFqSzIxaHZw?=
 =?utf-8?B?dmxGUGVDUGQ0ME5mOVdqZ01hcUdNYzFCRnZKU3FpWXp4a0hqYThhcW9kNlRs?=
 =?utf-8?B?ODk1eW1lSThmc1ZNajkzOUZDM0t2SlE3eExhNkZ5dlhWcWt3Y01pZ3ZTdzJv?=
 =?utf-8?B?Q29PNzZIZDlUODZuelpodnlXN3VrRVovVktPUUYrUzJWOEk5OXE4RUZwOENx?=
 =?utf-8?B?VksvMndwYWZlSE1LZDYydzBXZ2Vpc2duLzdBdlVJYTRaSmJVaEZuRjlTUnR2?=
 =?utf-8?B?eGtlNGlhM01ZU0pmV0VibDdOdjFLekd3cDlMd3FzcDdkNTNaMXRNUnA4TTlh?=
 =?utf-8?B?MUs2aTdUVUJKWW01aW1wQUR4bXBUWTNxVXhUaGhoalF3aVExVE9HVjB4SkVj?=
 =?utf-8?B?VUNNOVJ5ZmdUK3JaZmZFZStvbGpYaGc5ejJkMk5PSXh4VkVySW4rZ2wrdnpL?=
 =?utf-8?B?clc1eTk5aHFQWUIzSXJzazdDLzY1OXRxS1pnZVZkeWVuWnR0M29UeUQ4eDJ4?=
 =?utf-8?B?TE5lUFhFaHE3NEFhMCsxQ1hOM1pKOWlxdkkyR0ZpVEJlT2J0aTdyTDFSOTdT?=
 =?utf-8?B?cC8yY1NXVm9va0p2dFh3Zkw3WExzUUQ2Yk1lajBSWURRaFVtZ25pMVk4bEFn?=
 =?utf-8?B?MHZtcVYva1E1a1U0cVBleDVuVGIrZ0tMeWVqY2swcnpmbUk4QkRTdGFMVENR?=
 =?utf-8?B?SWRXclh0UzRRQlh0WFE3anZjNWd5czkzNmdtRk5BQUxBSDh4QTQ4Mkdta3Bs?=
 =?utf-8?B?bUp1TG9nYzliYzg2czlyOHhFN0pIczh4bnhkQlZQenVlWlIwRFlxUVAyTUJG?=
 =?utf-8?B?dmdmVkhaeGZPNWlWcmdTdE9jYjlLOUtzTlEwcnQxU2tGUkdabzJ2NlBBSjNq?=
 =?utf-8?B?T1VqbzNYR2hyMnV1Tk5aR1ErR0VlbFJXemlFNTJwTFp5NGVhSVdQR0VXTkRD?=
 =?utf-8?B?dW9tZFlVMGtKeHk3Rmp1VVB2bWlHZnpicndmYU1FcmorNXgzaWdZZlZoOXBl?=
 =?utf-8?B?TTd6ZVBYR3prSWcxc3RmMkRtWFRLT3VxMkJHY1ZnSEdTRGU2dU1ETURGR1o5?=
 =?utf-8?B?T0ZvT0pMSy96Q0pCR0p4endmaFdzVUgyMkh4cCt3ZWtYSGFWTjduWW83RVB1?=
 =?utf-8?B?QlR3RGU4bC9UTXBBODE2RUtZb0pnOXZDMkVlU2RJdVVFLzYwQzRnMFVHaExH?=
 =?utf-8?B?U3dTNms1bDJKbWZqR2htRmt4TVpMbDBMaTVHK3FEbFVGU1NBM0JjNFQwL09N?=
 =?utf-8?B?KzFmaEs0cHFPdE5pYmhTWTVTYVVTZFIyR0hlNlNEc2tHSVh5Uk1MWXJDMit0?=
 =?utf-8?B?aVJsSG9aRzlKelFNOVZGZFFLM0Z2UkZoUjVqNDdseTNFUUtnSmFzeVJxalBh?=
 =?utf-8?B?ZEt3YWUwNFZKNzNmYjV3TktGMmNBZmdHYW1XWE12ZC9hTFRWKzdZLysxQkdE?=
 =?utf-8?B?ZmtFaWR2SWdxd29teW9tOUpOSWF0V3ZsZkNQTnBnaUx3L2lrdTBZTkFiVEFL?=
 =?utf-8?B?T2ZsMmxpTFY1Y284UGpoaCtwZmtod1hPcjlPK0VQamJUeEVGZjFxOVRidHdO?=
 =?utf-8?B?RG9sQzdiOTE1cE0yNjZHNmpMemNOWmljNzJsU2hrMFZyMno3T2htY2VQbHRR?=
 =?utf-8?B?SHlHTEZ1RjU1TW03QnZZMUNNeFN0QlZIelFpemR6aDM0cWl5MTczU0VNNE1I?=
 =?utf-8?B?OGYxaFA2UmliSnhQU2pTMURBR2JKbDg0S0prRUg1ZGFaUVlheGQ1MWpsd0do?=
 =?utf-8?B?c05MVURKN3dxUDc3TnI4N1ZHSG5oanN4aEhML2tNMUlNVmRKS095d3lmRERi?=
 =?utf-8?Q?V+jI=3D?=
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7591.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4a8e3b-ddcc-4cb0-da6b-08de117112e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2025 13:44:07.8799
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuqEBlkv4BLN96roJ0D5oSHuGf6f5n+J044rtwYG/sjuKjRGM5WYlChPM44jvuqSN1QPfie9tGYsZ0kHtzutmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIHRoaW5rIFR1cmJpbmVuYnLDpHUgaXMgYSBuaWNlIHRyeS4gSXQncyBub3Qg
b25seSBjbG9zZSB0byB3aGVyZSBJIGxpdmUgYnV0IGl0J3Mgb24gdGhlIHF1aWV0ZXIgc2lkZS4g
R2l2ZW4gd2Ugd2FudCB0byB0YWxrIGFuZCBub3Qgb25seSBkcmluaywgYnV0IGl0IGNhbiBiZSBu
aWNlIHRvIG1lZXQgdGhlcmUuDQoNCkhhbnMNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IEFsZXhhbmRlciBTdmVyZGxpbiA8YWxleGFuZGVyLnN2ZXJkbGluQGdtYWlsLmNvbT4g
DQpTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMjIsIDIwMjUgODo0MyBBTQ0KVG86IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAa2VybmVsLm9yZz47IExpbnV4IENIIDxsY2hAbGlzdHMubGludXguZGV2
Pg0KU3ViamVjdDogUmU6IExpbnV4J24nQmVlciAodjYpDQoNCkhpIEFuZGkhDQoNCk9uIE1vbiwg
MjAyNS0xMC0yMCBhdCAxMTo0OSArMDIwMCwgQW5kaSBTaHl0aSB3cm90ZToNCj4gSXQgaXMgdGlt
ZSBmb3IgYW5vdGhlciByb3VuZCBvZiBMaW51eCduJ0JlZXIhDQo+IExldCdzIG1lZXQgb24gRnJp
ZGF5LCAyNCBPY3RvYmVyLCBhcyB1c3VhbCBpbiBadXJpY2guDQo+IA0KPiBXZSBoYXZlIG5vdCBj
aG9zZW4gYSBwbGFjZSB5ZXQsIHNvIHN1Z2dlc3Rpb25zIGFyZSB2ZXJ5IHdlbGNvbWUuDQo+IEFu
eXdoZXJlIHdpdGggZ29vZCBiZWVyIGFuZCBlbm91Z2ggc3BhY2UgZm9yIGFsbCBvZiB1cy4NCg0K
VGhhbmtzIGZvciBvcmdhbml6aW5nIHRoZSBtZWV0dXAgYWdhaW4hDQoNCk15IGludGVyYWN0aW9u
IHdpdGggIkFJIiBlbmRlZCB1cCB3aXRoICJUVVJCSU5FTkJSw4RVIiwgYnV0IEkgaGF2ZSBubyBw
ZXJzb25hbCBleHBlcmllbmNlIHdpdGggdGhlIGxvY2F0aW9uLg0KDQpMaW5rOiBodHRwczovL3d3
dy5yZXN0YXVyYW50LXR1cmJpbmVuYnJhZXUuY2gvDQoNCi0tDQpBbGV4YW5kZXIgU3ZlcmRsaW4u
DQoNCkludGVsIFNlbWljb25kdWN0b3IgQUcNClJlZ2lzdGVyZWQgTm8uIDAyMC4zMC45MTMuNzg2
LTcNClJlZ2lzdGVyZWQgT2ZmaWNlOiBEdWZvdXJzdHJhc3NlIDEwMSAsIDgwMDggWnVyaWNoLCBT
d2l0emVybGFuZAo=

