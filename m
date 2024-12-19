Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2066.outbound.protection.outlook.com [40.107.241.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BB5200A3
	for <lch@lists.linux.dev>; Thu, 19 Dec 2024 14:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.241.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734617211; cv=fail; b=YbJby+WH9PU93TG7rCKhTrmeRhDKRLskyuDTv2dE6M00bId4uC4qNm737atsdn5yFOrzvLTmDefwEuAstybGTSIam9CYVe7d3usTRPxr3NC5FqLu7yr4oGPH5mnaLHS/MDAdtUHub7nMnFcUesM11aNYHKLFsa3adubEkZ874O8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734617211; c=relaxed/simple;
	bh=PE0SWjmG737+dS7q1X2Yod5YAJx4Ez5pfpBKr0TyCmk=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=OfrlAkS1mVr8AYsVy61JclbgzZTGVUmUq66EPK+9vnebqvjGZdXbmQxqOinzVPg/5Jcs5Vdc/hqb1iz/6Bur9aldoE96TB29BXMhdAPwL2xA5YJ4gS/51tghcKRv9bOduLu3hIPxFTVyIWPnzBXqlKtIBn00dJ8wOnAhet36c4c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b=tP9DBdgU; arc=fail smtp.client-ip=40.107.241.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=siemens.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=@siemens.com header.b="tP9DBdgU"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A1oJO1PwGAHycfrMy1oShcvM3UZuQN5vXWfbXT62D/T29PcyaHpMBQLpCpmcOgVYcnYZKwNtxlzkcQq0i9wyqkeaeavGoLln41tNy7mr7B+0rUJnY6rOOV/aaZ2jcDr4Fy++EUxbnsTG9P5M7+nb2LYeuPjqjzfBnoNMiOfrq9xra1Hm0m4OELnrwke11xJmPodkzMLMeLro0EocFzsgniYYOkGS26tPGzPFvD3r+Gfbzwsoerq9q283ryPmr2Hc6LwSzEPSj2okX5h03r4ZKS4P+eILKUcnPOGmXEoVQt8Z8tpaitnmorq93tJVo9yzuBSh1Mk7Wo1+VG2t6wW4zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PE0SWjmG737+dS7q1X2Yod5YAJx4Ez5pfpBKr0TyCmk=;
 b=l45TCMB+S+T2wASzGJ/VVLYgv8NnlE3AikS+8LSioYEOfyY012LWXrkP2UHquP55DMmS4blYqjbUJS81cVHp9FmSp1Jyp6e7BgARRCen0e2/Aaru3xPI70gjhrSqMGggk7RG23hbjQp5PQcIF/4/PDvDIKEf/wf/qxp+JWno5rrw3v/nZvgxVKdfB+MR8IturdyRBkJJ//lo0OJ3cBe7cKo3lmIugF+5qBX9z+GJ+oKYs680TKEkteDITdXkd8RO/Tye3MaZy7EKjdJObphQoYIfaaV0/GT9gDFpd+60/SDRoGWlV/TJIHoGwIsFZo0h9G/cj2KrD4EKUjqXhE83VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PE0SWjmG737+dS7q1X2Yod5YAJx4Ez5pfpBKr0TyCmk=;
 b=tP9DBdgUMclsqLQ2MFafskZiliCzuDIZW6yemNK239H+yiZVqAEmiTy7X/0JLbGuI2a6Je8Y5leAKx2CoEWAJFPG2D4No13wSSmMBheajOBACQLjJ+H80YXZimabE/Byc+KwLFxXBL7TcdtVN0ufhXAkziSZIcI/VRGIk8AocWMiq3VoCC+i1IWF3GtR0Unz9lBvmCDtA7g9Gd/gic0vO2GANVIbcqEHTnyVql/tFv3oACVirNXpGjhLQ7ZfwegoMD/mB8Oc/56duez5DB7JYslYqtyH+l1dM6jLg02lhhyAKB2qUURvN5Lf2jIqZkO6p/MkVJ9863Hub4mxGtSrzg==
Received: from AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:5af::15)
 by AS4PR10MB5768.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:4f6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Thu, 19 Dec
 2024 14:06:46 +0000
Received: from AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6f39:3186:8eba:e3c2]) by AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6f39:3186:8eba:e3c2%5]) with mapi id 15.20.8272.005; Thu, 19 Dec 2024
 14:06:46 +0000
From: "Schweizer, Walter" <walter.schweizer@siemens.com>
To: "lch@lists.linux.dev" <lch@lists.linux.dev>
Subject: Test message
Thread-Topic: Test message
Thread-Index: AQHbUh89T1UVdUG1T0eAB750RcProQ==
Date: Thu, 19 Dec 2024 14:06:46 +0000
Message-ID: <fa9ff889c7a228c5c540304b9cc2644a0ba8675c.camel@siemens.com>
Accept-Language: de-CH, de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Evolution 3.44.4-0ubuntu2+intune 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB7524:EE_|AS4PR10MB5768:EE_
x-ms-office365-filtering-correlation-id: 112ac334-1fde-43b4-c5f9-08dd20365fba
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?WW1HdEJ6WndicjN0VkRPdHpHWGdlOHBocEdCQUhLQTNYTTdLMGJST25iMHRj?=
 =?utf-8?B?WitPdm1BK0w1aGJkWC9CM0o2R2MzUEJ0OUY5a2d4U202UVlrYTA1NEEwWXVT?=
 =?utf-8?B?Y0VKbWtLT2RNaHFJdXJuL3VZRUdDa0QwNWxiZmZKeGhUNDhLZG84WVhMMVpp?=
 =?utf-8?B?elZiREVBcTlyeUEybU1JWlU4NURQVXRkSHU5eDRKVWU3THFSUEl2L1ZoWTVM?=
 =?utf-8?B?a1MrTFZGdGpkdXdrQlhQU2VLUDNpK2c1WVdyc2kzSk92ajdZWENrYmtZdlQv?=
 =?utf-8?B?TXIyWnNWS0JMTGJGVFlnMS9acER5VTYzNUlKeXhSMFFzODNkeW5jbkhwVXJZ?=
 =?utf-8?B?U2VHWnd3K2pjR1l4dk1VOE1PNlR4aXJZNW13cEY0U29BWHNKTTB6aFJTSkts?=
 =?utf-8?B?anhvSEsvbVlwYWV2ZDRNdWxhTmExYzNrVGQwcVkrMDY1b0JydlcrYnNybmdV?=
 =?utf-8?B?Z2hQc0lxbVY0eUs4L3plYUliUDBEcDl2aGNYNlFkaEcwcVhwU1c1UjM3ZW04?=
 =?utf-8?B?d1BuMEFQdys1NTZBVzltVjlxQkUrL1cyMGNtSXJtVU1YZDFDaFFVWTRhZEMr?=
 =?utf-8?B?NEJmSE9KMmsxbzNvMXJHSURwQVliNi9zNk45L1NOTGxsSW9JV1MzMTRBaE1V?=
 =?utf-8?B?K1dhZmloeWtadGNBTnN6K2hjU0FJeVNnN2hJU094enl2U0hVd2NKc0NiWjJt?=
 =?utf-8?B?eWpwSHdIN0YzZTJxMU9zeThwK05WVGRXMGxpTXdTWE4zUzJKZDJTejc3NytP?=
 =?utf-8?B?a3dBczZldGxNa3AvOXJwcFA2ZldpK3BGNU84OWhpU0NzUFViN2luZjRpaVlK?=
 =?utf-8?B?elgxTmw1elJIRGJHTHltMVdRNklDMlAwWkx3TVExOUpuWXJNdHJ0MVVkS09p?=
 =?utf-8?B?SmFjQUtEUHRPdC9BbWxLYkRiWDk0VzBpMlJmNERwK0htYkhJNldXMURnWmFk?=
 =?utf-8?B?ZG05ZEpkTzdKQVBkeUxWdm1sRDFFTlJjV2JLcHQ4SnFZRWRqL1kwNUh3YW5Q?=
 =?utf-8?B?NkxTWGVpc2lwRENuRWIvZmJOUktqMTczc09WNUNBM1pUUnpJZEpiRHNNRXR3?=
 =?utf-8?B?d3lUbTNIQnUrVHhSZm1YMGRZeGpHekdzODgvQmFqR3AydUI0RHZVSFNwU1RC?=
 =?utf-8?B?SVJxdVdnb0JXTkJrVURwbWxOY0svUHRVUDY2eTliZFpLeU55NHZCb1hiSWIv?=
 =?utf-8?B?NFY5RHVzOVlYdGxJRG40YmE5Sm5BdTJrZ3g0L1ZWRzEwS1c1ZDdFUllQWWJG?=
 =?utf-8?B?TytQeUVVRTdPa0VJYjNZZnVOL3BvUk0wUE0yeFcra2JscVJkZ0lUS3VOTUdm?=
 =?utf-8?B?N1VHUW1YWU5tRjdYTGd5UDdMN1hxQ0daZDhkUTI5cTJHLzJlSE5xWERJcVh0?=
 =?utf-8?B?YUhBdml4b2UrbmdFdFhBN0FwVURyMERSQ0tCcXUvU3owNTJpT3ZqQUUrWE9r?=
 =?utf-8?B?WDBSZnBZc2t3V0tUeENaOU83aEpGVVdsRm5JRVRsQjZkby8xREFNNlduRWJl?=
 =?utf-8?B?eDkwL2ErdGVRZDNuT21GZWhtVjZjSWtTQWJtNkJ4ZkpGbnN4SHdsd1BaZGk4?=
 =?utf-8?B?Zk9zL1owL1VKMytaN0pWZ0hFNGtDY0hidmN1Mk1obkh2bDArM2swVEN3SStF?=
 =?utf-8?B?THhDb2R1THRqV1MvaGZnMjJkQk5kYzVUbkdTMGpDclExWTh3VkdyUjl0VVF0?=
 =?utf-8?B?Z1g4Y3BMVU5paG9jKzRlRlFBOEU5cGNHejRwOFhqME4rVGgweXBPUnR4WjJw?=
 =?utf-8?B?WFU5a1ZVRlQ2eVppWHJXZFV1YlNERzVlZWRoTnVnMWZ2aUl6eWgzUUxkejYz?=
 =?utf-8?B?UE5SYTVoMUlrdkVIcXFmN2VnYkw5T2U5a1RrT0xETFhISk56YTdlVzlvajVs?=
 =?utf-8?B?T2hDWkd1TEgrbU0xYjVCM2pXbXRUM2dRaDduYmszRDUzb1E9PQ==?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB7524.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?aGgvV21DWDZkVVhZRFdPcmNDL05qUE5aaU1EeFJwWUo4aFdIaHE0R3B0d2ZS?=
 =?utf-8?B?ZlgxRTM4b2F4a0tqa0xFYXFrK210WGdPem1GVDFkeHRnS3FzTHhXaGdEb1M1?=
 =?utf-8?B?MHlQQnovcE15Nm9iV0Z4TEFOMnFSRnRwSFRoUnpxNFhhdENjdW9HOGo1WWdo?=
 =?utf-8?B?N0RScU9EY3dBU0t2d3JPbVB2bVIwNDQ1NU5BdU5CMFRBc0RRSUtkYmNaRmJG?=
 =?utf-8?B?b0lmcFZNMXZTSVVRY2hUNE5vK29BZHFHUnd0N2phZzl3cTBJSHdiTnAxendY?=
 =?utf-8?B?VHV3R2FYWWNJeGRwUmU1ZzUvT2FpKyt5TURDRWFSS00yZWRIUlY3ZjIxUEdJ?=
 =?utf-8?B?aWVQNWRDWnptTVVGczhUVDdTeHE0ekRwclVsR01DU2h6OXltRU5FSWxUZDlW?=
 =?utf-8?B?eEE0NFdKRWNjazNkbEtxTC9yYUtNY25LeTNtYmlXdldaZS9XUjhzVTBMN2cw?=
 =?utf-8?B?ZjNRYW9HaWMrMDh2d2ZPdVp0NzhCamEwTnpta3k1NlBkOEoxV3c4KzZ4ZDk0?=
 =?utf-8?B?MHlrVG1yTUo5dFF2UCtQSVBIUnM0bmVUUTAzenRnMzlQNjJTZzJaSkFSbm1X?=
 =?utf-8?B?UnY0TnBzVTNDQ25uUWdJd0tmN2kxZlBYTFpOZ2ZtZGFhZ1VLcW5qUkNvcThZ?=
 =?utf-8?B?YU5XM3FpeWZhajB6d1RNcFJhRFZBMHQyWm1oVWRBOFkyWWRLcDZVNEtMNHg0?=
 =?utf-8?B?VkN1eC8za0tvRmFTKzFCZWYrU0Jvd2JEcXVEa1N4ZjI5cU9SSVovQ2QrODcv?=
 =?utf-8?B?VXVBVHhNZjU1RWs4ckg4VTlMSWllU0hEdkFXTXhGVEpjMFcvaVowSEl5bytZ?=
 =?utf-8?B?cGxSTTBEcW5QOVVlMkdERmlyb0xYekdHYlUyK3V5dnNJSnhnL01oMFdnMnVD?=
 =?utf-8?B?amcwRmZZZzloWEwyM21BUnpZMXk0d2VSNVMrcW1qU0tCb0gxNCtkTkZ6NHUy?=
 =?utf-8?B?ZWZpbVQ5RkdTb3JGcGtDYnZORkdJMnRhU0dyN3pmdGVlbmltYlNNSk9CNlA3?=
 =?utf-8?B?VkF5TWZSL2dZRGZlQmZlTlFwdHpNY3k1eHVVVjYyL0w1M29QQzgzb1BmRzVR?=
 =?utf-8?B?cjkvWXBNZ3NWLzBldTBiZnZmdjJoUlZmdHo3S1NJdXpybmdkNVd5blV4cll0?=
 =?utf-8?B?NDBTRk1RZFNXVmxIWFlqRkdwNVFIK0RPQVNTcTIwaWNkZml3LytZNWFXVVRs?=
 =?utf-8?B?WElhSzl2eWJxbTlwclZFcDFUbEI0Wk5TNzBOdHpucnpXR2JiTzFWdS9MQ0dZ?=
 =?utf-8?B?WTRTQ0F0TjljSnphWDg0SUcrQkVNNEt5dnFTRFkyZEhjR0NxUkIyRjFSK2h1?=
 =?utf-8?B?Z2tRT1U3UmhHRXU5MG5Mcno3UGRWMjRmZFExalpXRGU5eld0TFNmbE9tVjNh?=
 =?utf-8?B?ejg4Nk84VEhNdFVBVXdqRGV6SmdBUnVGcTJXditQNVFhRjh5UjVINGJoaWZW?=
 =?utf-8?B?RHR1T1ZRN1RwNjF4dmxFMk9NM0V2SUJjNHVYb0gyOGdnV3RBVFpEQmxtS3l5?=
 =?utf-8?B?cVNpOUZITnB0c0NvUmw1dTN2SFhISGRiZDVrcTVuRWk0cGhIZTkvbWo0Y01p?=
 =?utf-8?B?Q2hsNjNsM0VBTVp3YkhHMk11MUZwM2N0dXFzMDJKZ3R6eGFwb0hUU1ZXRVhy?=
 =?utf-8?B?aFl5Yi9Rb2c3SUZFUXNoMkFqYWpXYSsvbkt2NkJ1R3RyL1Exd1NacmVVN05C?=
 =?utf-8?B?VDc2TUR0STdMZlV2Z0RJV0YranVNU2VybjBDTzExQ2tPWmc5MnBzdGJpOUUy?=
 =?utf-8?B?K3h3M1J5UnJ0TGRlUWpTQVloaXBxTFpObWpuNFVzK2c5QkJHei9ORVcrOVVq?=
 =?utf-8?B?L2tKcHp1c0dJNUhHUVlyOXlLQnNpdWV1Y3RZazBNeGZueUlFeXJyNWhRdmt0?=
 =?utf-8?B?eU4rTDNncSt4M3ZQZkt2MTIxTXAzMWxyTk16ZENaSURja21aTURiR1FSN1pK?=
 =?utf-8?B?bmFrTnpOaWVBa215VEgrSGU3SzNLaTVmc2pZYWZSQnM5L201dHFFVXpGOXE2?=
 =?utf-8?B?YSsybG9UeXp5TjNyQVlQYnp2K1d6TTZnYUdyMUVqV0pKOUFzMW1TYmpqWncz?=
 =?utf-8?B?dkRqU0lzam1lWld6V1F2TE9qS25aVGNab3h1N0JaSDFPZjR2VXM1UEkyZmla?=
 =?utf-8?B?SGpNa01jdFdXZUpDS0thaDQ3NmNoaWZjMmZ0bWUvYS9JR1pwTVFiUWZONzNo?=
 =?utf-8?Q?l2Dyy/sAp7r03xLLL8YJpM4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0693AD8D8DF0024FA5CC75AB9A3652AF@EURPRD10.PROD.OUTLOOK.COM>
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
X-MS-Exchange-CrossTenant-Network-Message-Id: 112ac334-1fde-43b4-c5f9-08dd20365fba
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2024 14:06:46.2692
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NCKfAEQa6LHFDQ8NDnpZ+q+FlFUXCyDNXjnOKRdZQlwYxsUVlN7U9Z0jyu7Pg+/aBaLoAAUVU2dBoydbxYqD51CAwhMhjPsjGjIYS8/MhKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR10MB5768

TWU6IHRlbGwgbWUgYSBqb2tlIG9uIGxpbnV4dGVsbCBtZSBhIGpva2Ugb24gbGludXgNCg0KTExN
Og0KQSB0ZXJtaW5hbCBqb2tlOiBXaHkgZGlkIHRoZSBMaW51eCB1c2VyIGJyaW5nIGEgbGFkZGVy
IHRvIHRoZSBwYXJ0eT8NCg0KQmVjYXVzZSB0aGV5IGhlYXJkIHRoZSBkcmlua3Mgd2VyZSBvbiB0
aGUgaG91c2UhIA0KLS0gDQpXYWx0ZXIgU2Nod2VpemVyDQpTaWVtZW5zIEFHDQp3d3cuc2llbWVu
cy5jb20NCg==
