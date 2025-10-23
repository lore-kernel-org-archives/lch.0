Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11013046.outbound.protection.outlook.com [52.101.72.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0426114A9B
	for <lch@lists.linux.dev>; Thu, 23 Oct 2025 06:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761202455; cv=fail; b=PGbxtE3UzomPl+B0WAKsQbvI4HogA2mWdktc/R1sIHQMoJF740bG7ck9c0UzpPLphZ8W7bzpCvGsF7G97kOtGaXfxPF5kepAPxV1fJ1sNoYaFhHyby1W8Kc5ACUtl5zUvKplDXGnDAN2sqakp3OBXBcANJM1aROLFpk8PW1u/YY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761202455; c=relaxed/simple;
	bh=aiPMFx/aX9PsrQcrJCc0DobyGU5EpGA36mL8qz+aNms=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=TPibmYLEOAyeNIRJLokyn6K2HWr6hUyNZkz7ERpHwT6t22v/7cpoKyM3L1KEq+dAsZrakfkctTxyIgjo5VFz9SV4HxcFj5363Xad66jldH1hYACKG+Y+Ne4So+oI3kMB9pqh4LYZLJNs8oDXFZF6L3qkdMuiWDLDW4a+vp6pxvo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=nJeS+I5X; arc=fail smtp.client-ip=52.101.72.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="nJeS+I5X"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hJ08fxMuftV6RaY4PHAsZ7Tt73I9p4U3kfrj1oYEeQapKfog/uev7cuifNFbChY/k5HpS1qOntQc6zNYn2xqTGzyE/JBzfpVJFt/VexDFS2IYPWVrA/oGBxpFcdaG/RLHSznI3QcZM7EN/lFl7n5tzEEdXXR2XpuJ8WxjlX+yFCRmOCAl+0kwKnZLyYjDWoeQ/TrV7j/FlqPzDRSj7RwsJ4Fm3g0UJQsasTxbjME3GBtZtFcB4nkFyZwpQ714SxXbAdjLETY2HN2/a55ahKrTND6iawZNGEuqZv1qMkJwzYLpnT35eVQoOmGoUULEYsZSBzUu4TnbxOjOa+hKNzcuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aiPMFx/aX9PsrQcrJCc0DobyGU5EpGA36mL8qz+aNms=;
 b=IgJljL7u+Tomw4cWHCJU+PWJmL/uBtYOMLcTrsVFG1DV7SXaQEDFdbosr0XVBQBsyT3mWCRHmhctvGaH48nCsq9HABdydMHdpuLltWtTnkI+auVLICCz6VVfZms+ei2EgmWkFJSf59OXm358MpZGe5/93z0rvgY+R+o7Qm9TfEoH/ovOMTOjd+DT7MC8552rhTCKT3CVBreB7j1G9pLW6u2oJXXQ5J+/xt6eFtqWKHL0hMdqjlAyPtioT0UAiWKE8fiYdlk2TyA5UWyFyEihucs98ffxI8rYWmBA2wmvG2DyBTdKcUOBpPvDgT5CQYttYGfAksobdWnhwwUNLHDBVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aiPMFx/aX9PsrQcrJCc0DobyGU5EpGA36mL8qz+aNms=;
 b=nJeS+I5XOjLQCY8mjdk2+i9klnFB6H7KgWQC60uSfQbD2GncvHYFPI71blKvJsGjBQW9qqf99TLVdZJMTY+9llCSpNdN36RfEDHDlAkhZDKUTbHLdMxE3PNt9aL2YWqPYrF8uI7cttF0ujFGGI8wOnnxIwdSb76T+H1NNogXuECQX9aUvMzICtROSampShwbLKWTWTeZqJ8xJRreOGg10q478YVMMebpeGlASY1CitqRxWePyf23mILeenB08vTHYfihgQOhutJ6fUmyoXDn+Ak1wOEOqjQZnqzhSxQ71C31eXgs5KvoocMtIYBW5W+uU/gNnn+ycJbMKKXa49XsFw==
Received: from AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5af::15)
 by DB4PR10MB6096.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:38c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Thu, 23 Oct
 2025 06:54:10 +0000
Received: from AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6f39:3186:8eba:e3c2]) by AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6f39:3186:8eba:e3c2%7]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 06:54:10 +0000
From: "Schweizer, Walter" <walter.schweizer@siemens.com>
To: "alexander.sverdlin@gmail.com" <alexander.sverdlin@gmail.com>,
	"hans.pabst@intel.com" <hans.pabst@intel.com>, "andi.shyti@kernel.org"
	<andi.shyti@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>,
	"lch@lists.linux.dev" <lch@lists.linux.dev>
Subject: Re: Linux'n'Beer (v6)
Thread-Topic: Linux'n'Beer (v6)
Thread-Index: AQHcQacilm7f1XKSGkeQsBXlxwhCFbTNuwSAgAB1jYCAAAbFgIABGQEA
Date: Thu, 23 Oct 2025 06:54:10 +0000
Message-ID: <84e9c0c58b685ab262ec0a2c6121e14777a3490b.camel@siemens.com>
References: <m3xfotdgerr7pjo7sadxy624pcbf5pp4fasyhbx6r3oalgfjam@vti2aicudpcp>
	 <3fcb75f8af04aa8def3542011c0a4e4aff2977ff.camel@gmail.com>
	 <SN7PR11MB75913675CA6BAB6D7CE22BEE81F3A@SN7PR11MB7591.namprd11.prod.outlook.com>
	 <7da3b1d5-9a04-4639-ade6-9b2b2d6c465f@kernel.org>
In-Reply-To: <7da3b1d5-9a04-4639-ade6-9b2b2d6c465f@kernel.org>
Accept-Language: de-CH, de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.44.4-0ubuntu2+intune 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB7524:EE_|DB4PR10MB6096:EE_
x-ms-office365-filtering-correlation-id: 1303f7c3-c2b8-4b36-ef72-08de1200f7f8
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info:
 =?utf-8?B?TnZTb0dGakxEZC84ZXArRjk0Y2haZEhvdmdVMlBXbjlXY1JEcmJjZkYycXpl?=
 =?utf-8?B?VE5nZzh5VmNTamJ6c2E1UFQ4QU84V1J6WHdwS2FnbUxmSkt1KzRpdXhsd1Y4?=
 =?utf-8?B?QURNVkZtRkM5bmp0U0EraCt6TTNxcXNxclJGdGF6K0I5eE5iSDBWYTk4R2c2?=
 =?utf-8?B?SDM0NTJBaExsUkowc1NqMG52azVrMUNrR1kzbm5ydFE1bEYxSEFNSy9RT2M2?=
 =?utf-8?B?eTdmRDBVdk55ZkltTVYrLzQxaW95ek90SmdFRFRCY1R2S0dJMXFJNWNiUVJW?=
 =?utf-8?B?ODY1VTZiVG0vdDQ0OFM5SGdyLzVCS0F1UlNyRS9KbmZESTV3YzI0WE92aThR?=
 =?utf-8?B?bjk0R1NpbXZ1eUFmSEJXZWZRRWhEaG5FanFWVmJQNmRZZC9DNWpMRnJCU2Uz?=
 =?utf-8?B?aGxBbXlFUkt0RXZoQnFOT1psenYvcTJxNUEvU09RYms1QXJGQ1B0aVFvMklU?=
 =?utf-8?B?dFlRd3ZLbE5hM2Z4VkROVFpZQndxSHArcE9VSkl1cmhKTFhBQnJqTUtZbUhn?=
 =?utf-8?B?L1VDUTNEMmQzQ2xJZEJPNVlUTkY5NklYZlN6c2NXK1BwVVJlOHN1dWpkWllZ?=
 =?utf-8?B?bWsrazhEMTV5aFdxWTZNSDRKMm8yK1lkcEJGWFZveFh1QXBiRWRLR1FFcFAx?=
 =?utf-8?B?YjBtVTFrNWk5bmdsRWtlWWhyaXFOT3o0L1BuQW13T2FaZWl4b3VxZmo2Uzdz?=
 =?utf-8?B?VHVSaWpDampLS2R6ZkNSTi9weENHNkNYRnkzK3pyWEJOb2xCRmRoUkxNNDBq?=
 =?utf-8?B?RUZJQnc4QTBBM2NmSWU1RGlkRVRWZ0J6UWZhVWVPTUoyNDh2Nnh6WXY0OGFI?=
 =?utf-8?B?cTdOY01IY0duSHY1K25zV1FTdDlKV0EraEZWcFdsSDJMWitoRE9FTmVzd3pC?=
 =?utf-8?B?d3pYN08xY2FUN2RIMDd1SWhYekxhNklKTXhVODNFVUVheFlHeGFjb3ZhOWph?=
 =?utf-8?B?bFRnaTE5cDc3ZGw3amJkcTVkSTNDaVZNUWZqMVVnUFFramxxTTd3NVJ5VjZs?=
 =?utf-8?B?bHFvYnBteUJSN3pzYXJlUGtkZy9wbmNtSWZJTTc1d1lFUXVKYnkzcFFTNWhy?=
 =?utf-8?B?cENPVHdkVFp5ekM1aXhPUG54cjdWWmU0Sk54MXpGdEtZZWkwVmh2SGo4Qzc3?=
 =?utf-8?B?SFhlaHo3RHBkb2xaWW5CZ0JVUy9KTXlXUUVHa3VzRmVIUnZKNG1TeEtPSi80?=
 =?utf-8?B?dUJRZGZUMGw1Vm84QnZlQmhXRWpwNjZkMDlqOWNDQmlLNWo0Lyt3N1RKd1dD?=
 =?utf-8?B?MnZsN1BHTFViS3lzb0V2eVhSR3BvY1QyMzBZdkJJM0h6QUNNNlpPU2l4S1pt?=
 =?utf-8?B?NnBmOXR3ZEp2RFBjUW01ZUxWRnZpR3huQno2NnAyZ1l4SVFOT1N4eEo5N0RS?=
 =?utf-8?B?dCsybkN1dkRnb1U3eCtXYzdIRHV3Z2JkUGprLzhwaURWNFV3ZnBsWUJzaUFT?=
 =?utf-8?B?VmVNa293RGEzZUlzNEsyUzRBM0s0c3Q0YmxxZGpTZlJ0NXROSjA1Uk02cnNV?=
 =?utf-8?B?Q1lDMFlsZ2RVR1ZtNDUrdXVQbXhBYkVGNDQrdWF2bjk1bE1mMHNFallSajh6?=
 =?utf-8?B?RXZBNWMwSkIrOU9obkUyZEhhbHFVNUpvdThqT0JjbzY5SFViYkFhVzc5MGRk?=
 =?utf-8?B?WFc0aTVPUHQvWStLRldta3pRcWlFSGoxUVg3em1Zb1NHRDZBR1ZwWTNCcXpq?=
 =?utf-8?B?QTQ2bjdnNWl0cE01SmNoY3pkQklBSGN3QXVTZWxiV3cyNjF0cis4VnZ6Y3hZ?=
 =?utf-8?B?RGszL0FjMTUrU1VxREM1cUgwMzU4OFFpT05ucUpxWlVrZ0ZUUjdZWm1IVk5T?=
 =?utf-8?B?N3dRMVAzYjliQTQ5SWJ6SURjUmg2MHRyVGFQUmxSZXlKM3pxMFgzWEoxZlpX?=
 =?utf-8?B?UFh5c1RBSTluUVBudUxuQ21EUTUzMzZpQk1scmtWWHhZMnVkRUptT3lmTHZn?=
 =?utf-8?B?bVFvS1VzQks3MkExcVJULzVzRENiMHhYdHM5MkR4VjdWbERhSGFPcWFEZHkz?=
 =?utf-8?B?QnZHbysxbW1BPT0=?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?Wnc3VlpxQ0tKTTVrRW44Z0pGOXdkL2xDcG1JdUIxNmdUeFVJazQxd3VsUHhO?=
 =?utf-8?B?czdWeHpENi9wTzJxaHJtcmMzd2JSVjhrY2NlR25EUzBzOXVtT2RNelF2MlVM?=
 =?utf-8?B?WHFTTXZLc3FBQlJ6OGwvQUdhbExOcDhqdGRMZThuN2FubnN5U1BhQXBUSXhk?=
 =?utf-8?B?SnNRNlIzWDZpMkw2dUlNWkVjQXFJRE5yVDlxM29IOTRwQ054dnRESmkxTWFS?=
 =?utf-8?B?K0lLV3lmWmhLbmVCemdyWGtYcUdjWWY0U25PRnhmbnpveUJwcDdjK3M0bUJk?=
 =?utf-8?B?ZWNnb0dkVTRCYUZHOXV2L2FBQTFsbW5taHBxMWFzRVliZ25KZGhwTm9Oc21M?=
 =?utf-8?B?UTBUUlQxaHpFTDRFVU43RHRJRkxCT2doSkM3MzRkS2IvNnV3elA1dUhnamQ2?=
 =?utf-8?B?NFN0RGZiemNmdmtGbFhTaDlqN2x3Wms4bUprRmNZdURIdmhEb2NuNk9mT0Rl?=
 =?utf-8?B?bEtvZmRIMVNsRmhTcHorbG1LMCt4d1V1MGVqS3V5Rk5ybHRISy9uRUV4Tk8v?=
 =?utf-8?B?by9FaGdubmlLMWVPR1ZneS9TOTBzUTJMMzVDYmRwc0JZVVZnUnBKVG15MWRr?=
 =?utf-8?B?ZjVaZGZaNFQ3MHBybCt1Yko3eUZ1aW5wcmlNaHBKZFN5ZkNEcmFwOE5FcVVY?=
 =?utf-8?B?SHV2QWE4WXdIdm14TXFaU1JBSEk0VXBIc1JsWkF6ckpGNTkrRmpreUYyTE4x?=
 =?utf-8?B?bGNWdmlOZjJuWStVRTRQaUVwTVV2MFV0RzZCZHhRdjU5MUhodDRNQkxpTGs3?=
 =?utf-8?B?cEZXMFRMc0c0VEh2OEFtR2JCTFhlTVBmZzZlNVVvWVVLM2p2TkJERDNBazQ4?=
 =?utf-8?B?clk0SkhSYyt5aWlLWkFiQ1pZRWxrdG9QbGZoZkZLZmd3TUlRRk9jQmVGOGVp?=
 =?utf-8?B?bjFGdHU3Z2oxdkM3dExGd0w3YjRONFJtS1dxd09kQ2dyQWF6MU83NjU0Nnl5?=
 =?utf-8?B?K09iQ0dRcGtwb1hXTFg5RVYyZFN3dHh3WEo4MExscTBXejgwRGZ0aHZkUU5H?=
 =?utf-8?B?Zm45b2o0SkgrYkkzcDJaUVBqb09UeXhYYkJvT3hxdThkeVV5NzhwdHlRdFNx?=
 =?utf-8?B?bUhsanRINGpOSXVXZEhZaUUxTWc0akdINi9ia3h4MDFtMzRaU0RMcGM4SWpH?=
 =?utf-8?B?ZDEwZzZ6Rlo4WlQzZFZUeG1mRFVINU5YZ1pJRlI5bEZVL2lkZHNhdk96dkNZ?=
 =?utf-8?B?QmZQMndLaU5Cc0h5RCt0YmdvaDNLMzE3V1ZpWnhqT2JnV1lQNWVtS2xFbjhF?=
 =?utf-8?B?MTMyMVhNdTA3V3FCMm5XRlZETzBTWGV1bG1BcUZheFQ3TG4zWTJ6RmJLbndC?=
 =?utf-8?B?VmRvV20vc1hJcXpWTzNhT3JOUWR6TEVZQTRzSGZscDNRTHRzSTNCT2FQY3RT?=
 =?utf-8?B?UGczMGVYSmQ3cmFHVHFEaWJDOG1rV2hmTkVDWXlmV3FQMTBFZUsyU3BLTlpW?=
 =?utf-8?B?L1NSc3NKZHRaMWNJd1pWTzlMQjd3NmtvUEgwOVRTeWtYaFZNaG93bXBNNGFm?=
 =?utf-8?B?b2ZoUTNrNWFaNjNXMTRQZ2NVS21zaVVPUUtTYzcrLytjcVlYV2gwMjkyS3Fw?=
 =?utf-8?B?c2NsL1l5S1ladUFtNmQ2SmNhek5DVnZsSjNKZVBZWEVyL2xLMXovMWo0NzNF?=
 =?utf-8?B?ZHhCc1AwVzV3QXRBZUR5bW9TQlNEZnRiNzlQVDFVenJlSHFwMmNaZVRhdlRq?=
 =?utf-8?B?d1B2V1FvdGtCbHlyVzU0OFUyR1lEYlgvenlXK1l6NUE4dnp5eHdjSnNuSFA4?=
 =?utf-8?B?OC9hSWttTmhaYWdaSXI1VGNEL2ZLaStQaDdXS0Y2aklPSHpuUXM3Nk9DYWJr?=
 =?utf-8?B?bGN0dEwydlkyS1o5eDhob0hLNWFNU2hHS3k4aHgwb0xIcXhjL0tseXo0RXNu?=
 =?utf-8?B?dWp2elNFMCtiZ0hXK0djeUNXSE8rcjN3bWdvdGpIdmxZczBLQXNEcm9JR2Ry?=
 =?utf-8?B?L00wcWsxRm40OVJ3emtocUlTRldGUG1RbmFYdVBYT0xCV2NaeWV2bmZlTVJU?=
 =?utf-8?B?cXpnWmpRUFdQQzJVYjZ4dGJ4aWNIVXJpYnJSeVFDeC9uZ0lNYWNxKzl0MFpt?=
 =?utf-8?B?aTZ0L2JLVFVzb2dYOVprcWtVTGU3V1pMcUplTlNEVGR0SHN0VXV4bnR0WDAv?=
 =?utf-8?B?QlVuWnhMcUV6RlNrL0Q5Q2ZJZWpoeGdHT0xHSTlzZllZUEtQY2NSUTZRNmlS?=
 =?utf-8?Q?R1PqKQ2rDogkpXNZOmzxsKs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A32A4B426331543B264E51B6E16CA69@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1303f7c3-c2b8-4b36-ef72-08de1200f7f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 06:54:10.2728
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eDAznRoowkTuLshmvVjsAcwBpT/nZZ8npG1ekehC+4XH6Aj+qBkF5+8ubhK04WXUiGtN4q0uMiqMLPrNXV6obIXFLTWj432b3X2Vb28Mnt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR10MB6096

SGkgYWxsDQoNCkkgY2FuIGpvaW4uIFR1cmJpbmVuYnLDpHUgd291bGQgYmUgY29vbC4uLg0KDQpS
ZWdhcmRzDQpXYWx0ZXINCg0KT24gV2VkLCAyMDI1LTEwLTIyIGF0IDE2OjA4ICswMjAwLCBLcnp5
c3p0b2YgS296bG93c2tpIHdyb3RlOg0KPiBPbiAyMi8xMC8yMDI1IDE1OjQ0LCBQYWJzdCwgSGFu
cyB3cm90ZToNCj4gPiBIaSBhbGwsDQo+ID4gDQo+ID4gSSB0aGluayBUdXJiaW5lbmJyw6R1IGlz
IGEgbmljZSB0cnkuIEl0J3Mgbm90IG9ubHkgY2xvc2UgdG8gd2hlcmUgSSBsaXZlIGJ1dA0KPiA+
IGl0J3Mgb24gdGhlIHF1aWV0ZXIgc2lkZS4gR2l2ZW4gd2Ugd2FudCB0byB0YWxrIGFuZCBub3Qg
b25seSBkcmluaywgYnV0IGl0DQo+ID4gY2FuIGJlIG5pY2UgdG8gbWVldCB0aGVyZS4NCj4gPiAN
Cj4gDQo+IExvb2tzIGNvb2wsIGl0J3Mgb25lIG9mIHRoZSBvbGRlc3QgYnJld2VyaWVzIGluIFN3
aXR6ZXJsYW5kIGFuZCB0aGUNCj4gb2xkZXN0IGluIFp1cmljaC4gVGhleSBzdGlsbCBoYXZlIHRh
YmxlcywgYWx0aG91Z2ggbWF4IGJvb2tpbmcgbG9va3MgZm9yDQo+IDggcGVvcGxlLg0KPiANCj4g
V2UgZGlkIG5vdCBnZXQgbWFueSBjb25maXJtYXRpb25zLCBzbyB3ZSBjYW4gdHJ5IHRvIG1vdmUg
dGhlIGJvb2tpbmcNCj4gdGhlcmUgKGNhbmNlbCBSaGVpbmZlbGRlciBCaWVyaGFsbGU/KT8NCj4g
DQo+IEJlc3QgcmVnYXJkcywNCj4gS3J6eXN6dG9mDQo+IA0KDQotLSANCldhbHRlciBTY2h3ZWl6
ZXINClNpZW1lbnMgQUcNCnd3dy5zaWVtZW5zLmNvbQ0K
