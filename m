Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2084.outbound.protection.outlook.com [40.107.20.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA7D1FCF60
	for <lch@lists.linux.dev>; Wed, 18 Dec 2024 18:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.84
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546559; cv=fail; b=jvO/LdSPzVtP/vqxHZ2qwd0MTYbTBIf4cB1Y89wcT637ujvBvPx+AJPwUZwRZfGhDNcvvYHBcA/C2iFhEa5EOU/jza3o+e8XHEsb2gduwsK9//cVaZbXHrr7CZx8U+DWe0I3yQZCfZZLyj1ywipomgxzqNcf/aiIi92a6srO+Dc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546559; c=relaxed/simple;
	bh=9gupX2UBDPzYUAnyuLGTHNSYrY8vbrSuhA+eU5qV5vc=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Sh61ZwedyeGNqWStKFBSzgVaMc+tb+KH8VacIOaP5IPkkic42cRzXtWOl8oHhn0ztA9fun8bzmH6k7jNgpdVJnDsynyiPURsxgpZLUImlRp9vBfdS4Sb2xSvehSyLU52JK3AyMxbClRTJvZ+FMV8EtYQVm4/hkh0QT2aF/Ni5ys=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=husqvarnagroup.com; spf=pass smtp.mailfrom=husqvarnagroup.com; dkim=pass (1024-bit key) header.d=husqvarnagroup.com header.i=@husqvarnagroup.com header.b=FLDKIVHO; arc=fail smtp.client-ip=40.107.20.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=husqvarnagroup.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=husqvarnagroup.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=husqvarnagroup.com header.i=@husqvarnagroup.com header.b="FLDKIVHO"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uOpDx4DozR7yKRRbPFZ4eBeEMyUn675NRnA5OJ2NZ7UFTUX+aw/SusYVNOUz4yTdKZ45DfTB2Su3Uv2SwHm5Iecc6RAZYdzY+f2it0P7TIHnmPpLFhsywLBdQqt7ALozYv1rz7I6POa7FWacDwMsPEYFylZxxi8MjjGlD4lE57GVU0HkXZFk3dhi9+qLO9QdDP396vGsdhC7al5e3HbBEfF+i4ovEGO4GbQzAXaQc1Xh/+unbAvlspkoeO+HD5Q+C6Nynw4Xo0wYIVrAJhhNg6IGs6HTn1PVxSUoc8htkdSRKyHn4CHApc7YmswF5jtrpZa2j92QAL/J0MJWqNEDdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9gupX2UBDPzYUAnyuLGTHNSYrY8vbrSuhA+eU5qV5vc=;
 b=FEdWGZawCe7ebvVsDF88IR8B7AAsunilIowvgKtzjP6LdEWPV1YzpW6dYzU/qSOGdFWryH7vLwR2A6O6TAlt+U4OE7nDNx9+0RL1fyAuPhpYYIwk1rMYYU4hcVsBxPEiYcUYiaMYAxuQ1TsVyZ/OZRU8qfMiDowGbTULHnjv/e7eFPfqVcoS1jI5Y74OZOaCa/7aZNUxus6ElY6W7KtQFxXQ111otfZZegT4BOlD5pBfTXTIeS04bifugAiu0eHsymcp/FxNqIrr6njDRBH7+gkQXoXCvTQ+RUgQtqtCEGoVXo0Ehz/ffUgRRUR0OuZ1fUH3VAvNnIkwtkZ3MgldeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=husqvarnagroup.com; dmarc=pass action=none
 header.from=husqvarnagroup.com; dkim=pass header.d=husqvarnagroup.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=husqvarnagroup.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9gupX2UBDPzYUAnyuLGTHNSYrY8vbrSuhA+eU5qV5vc=;
 b=FLDKIVHOXpuf84RvK4aTJXWXAp3KPvP/IkZx261+XlLPjNCeTzUlTkiBzfUxcmb8ZJ+jHIp1LboZOCJNSlb+5SmoQiMezUfaAxXrnwg6ZSCAjqPCVGxtWd6uJ4pLfFMHPUflEnDax3Yg+Y3DbizIeLsmMk2bL4ZtV2rK6yFqlAc=
Received: from PAXPR04MB8767.eurprd04.prod.outlook.com (2603:10a6:102:20e::12)
 by PAXPR04MB9075.eurprd04.prod.outlook.com (2603:10a6:102:229::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.20; Wed, 18 Dec
 2024 18:29:13 +0000
Received: from PAXPR04MB8767.eurprd04.prod.outlook.com
 ([fe80::bf9c:2c20:8dac:d578]) by PAXPR04MB8767.eurprd04.prod.outlook.com
 ([fe80::bf9c:2c20:8dac:d578%5]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 18:29:13 +0000
From: Reto Schneider <Reto.Schneider@husqvarnagroup.com>
To: "lch@lists.linux.dev" <lch@lists.linux.dev>
Subject: =?utf-8?B?VGVzdMKy?=
Thread-Topic: =?utf-8?B?VGVzdMKy?=
Thread-Index: AQHbUXq8SFntiTOxEkeIahfcU2KWnA==
Date: Wed, 18 Dec 2024 18:29:13 +0000
Message-ID: <3869a2f1-95e1-4b67-939b-146ca3502780@husqvarnagroup.com>
Accept-Language: en-US, en-CH, de-CH
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
user-agent: Mozilla Thunderbird
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=husqvarnagroup.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8767:EE_|PAXPR04MB9075:EE_
x-ms-office365-filtering-correlation-id: bcd9ac4d-0f8d-4e52-c1f6-08dd1f91df52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?NjhjQk5UQXNiNFhQaDhGMHl1Smd2dzJCRGY0OVBWYmRxa0pwS3d0ZXB3a0lL?=
 =?utf-8?B?dDhyeEZMa0JVV3p0Z2ZEQWxUTHZ2RXN2RFJYa0FLWHZEa1NqOGNNQXIvd3NB?=
 =?utf-8?B?SUoweU1uaGRnNkJtMHBMSmFGekt5bVFJaWw1MUIvNHhSb0RkR0VwbGJHVHpB?=
 =?utf-8?B?L2tVdzN5QjhjR1QvNkdWemYzY214QmswMElFbFhLbjQ1VlcveHBTQmg5ZE1i?=
 =?utf-8?B?V2RUSXNwL3JTc3FEQWFDbERkMTJSTXhCRTdTWlBWbitod0Z4OTJBejdaMDlE?=
 =?utf-8?B?NjllWHlvbVR3eDNWZ1U0dTJuRVNWa1ozRjl5T2pheEJlb05lWUVEQ0t1WXRL?=
 =?utf-8?B?TjhORUxBSUI3d0puL3lqQjMrSis2SGxVNHB3QnMvWlNrdFNNRE9TTER4c3Vn?=
 =?utf-8?B?S3JnVy9vekMwS0lybWpuWUxQTjBaZ1k5c0sxT2t6eFRucDdtUzNVbE9VdklD?=
 =?utf-8?B?VFNUeW9rVVNBZDZVVTRCeUZtK05EZlZlR3JwRUZNRFZqYU5VUk9FdkRkR1VZ?=
 =?utf-8?B?QzNBZC94VC9uKzQ4QmFaaHVMRG9QZi9zZ0dpWVpUNXpMT2M2bUk0Mlo2YTVZ?=
 =?utf-8?B?eFJwMU4xVHcvc0Z0SXl4aUdiTWdGWFpzT3gvTDZSbmJaTFNRc0htaGY0UUJ4?=
 =?utf-8?B?dTdFMkFlVnBWVEhLem03SU5HY3pYb21UdUFOSEN3S1dWV2RMSit0UzMvRVZ6?=
 =?utf-8?B?TXRzNHlBSE1xdWI4ejl4eXhaMXhiSy9uWjJRUk5mSFJxOVRlTS9UVE51NHJN?=
 =?utf-8?B?eDlqZGJqUmRTNk5vT21TTmErdkxJMzFSdDZNUGxmRnF3VzlNS0VyZmpDdlNL?=
 =?utf-8?B?TnhFcXBNeVJUZzg4aU9tak52cTlIR2tZK3VhYjQ2eFZqOUJTRE9ndmh4RGNE?=
 =?utf-8?B?aWtIT1FIdUMwU0llZ1J4eUJxeW1SMWhJTCthdzVLM1dPNWtUd2JNeEFlTUo5?=
 =?utf-8?B?TlJxdnJScm9HVzBjakhTekd2SElJSHBRNTY4NldiZW0zREF0WHB0SlIyYmYz?=
 =?utf-8?B?Nml1Smk0N29XNDRLUTZmUEpOYWNEcmpjZjhjU2pmSnNQYlcveGxoaEJwTVBr?=
 =?utf-8?B?Z1dXMzBhNFVKRzlvRjl0a0Q4eXVwb0J0Q2NvL3BNL0pOM1M2bWdZejlnY3lp?=
 =?utf-8?B?MTV0T2VSUFlPYjMwMkF3blhLV1NXYzljVHBWWU9OUUcwbUZJb25lYStGUlRj?=
 =?utf-8?B?Y0sxVGtkVXhaalZ6NTRmaG91alU0ajNxUnY3b1FxeVR1bEpzK3psYXRqNWI2?=
 =?utf-8?B?MTREb2k1VCtTQitEU3NHSFFNSWF0NUtrQ29FUzhkb1pUaGFicGM3YmxJUG8z?=
 =?utf-8?B?akJLYWxSaFlsSG4xSjVydzdITTlnM2VkMzg0RWN2ZWk5NWIwLzJhbTVLbnZJ?=
 =?utf-8?B?cWpPRGNnUmx5R09KVWVkVE5ydzJXNi9Gd1p1SzRjTzNzNXBzeUpDcEpiYlR1?=
 =?utf-8?B?NHhpeHpEbzk3NVN3SE1YOGFjT3ozUGdCNGxYZEZyTURURnBoT1hmRHl3ZW90?=
 =?utf-8?B?RysrOWdFc0w0VHRobmF6Z2xVTmJLRlhwNGxlaTVSU1YvK0RCSUY0WmRjL0Jt?=
 =?utf-8?B?OXFuMVNWOUVlWjhweHlCTzJzWWp6UjVDS3NRRTJTRjNPdy9oTjlIdkxyZkQr?=
 =?utf-8?B?K3VJSzVIKzAraTFyYTFtNVJWNDYzdnBZVFZ1am1TdmdTSEFmM2k5TlN2aTBn?=
 =?utf-8?B?eGJvWFNmMkwvRXNCYTIwM3ErYWJYV1VjeG9mWFRldEN5WG5Kc2NLTEdMSjVW?=
 =?utf-8?B?cC9TK0YrYVE2dTg1MjBhNGo4Mjh2dWljZXpjRWsyUHU5T2oybWJsL0l1NG9u?=
 =?utf-8?B?K2NCekpMalVobkc1czlJOXlNakNucUJmNzFzL041LzRFQm10aWxkWS9KNUxz?=
 =?utf-8?B?ZE5aYjVvdGZwNTZIWGgxbllHczBETEpnRnphNUJHQUlOSi84aFNvcmdYZXlJ?=
 =?utf-8?Q?DlbLpOCIDeq8HFMS1e3C1QGD0uCXv8eN?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8767.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?bllGeEc5Yk5hdnVJZmNUVUE3aXlwZTU0ZEJncis5Y3FEbFVHU2NwQUhmUkQ3?=
 =?utf-8?B?UXpEcUViKzB3dlBrYlJGM3pxVU9lT1dWNG9uUnVpUmJZYkpUWUZHNjBzRjZG?=
 =?utf-8?B?clZQcWRJdGc0RU0yUlJkSmY3Q2pRblEyNmRaQmZlMmt3Tnp1em9UL3NLWm9Y?=
 =?utf-8?B?TFp3eGQ3N1VscUdpdWdtL25NcjB2blVTcnUzaFp5cTdmbFNYdWtseDhjVHBt?=
 =?utf-8?B?LzB3U2hrU0hkRXNnaThtLzRPVENZMXFlc2xLSTU3YUdkSjNCMWc4QmRjOVR6?=
 =?utf-8?B?SjQvRDVxbWtsR2ZwVVFtZ2tVaTF1QmZUSEdIS3VYTWp4ZmdqWDhVYXhQTzZu?=
 =?utf-8?B?OVVPWmtMV2VTS3Nib09WdTBQem5HL3o0WTVGSXU5Qi9Sa1Bqd2VpR1IxRjVM?=
 =?utf-8?B?d3RSNEQzMnhXSE41cDRCbFNtTnp6QnFoekxuNThUSnpKdHZ3Z2tXRFZGUFpD?=
 =?utf-8?B?Z1Rka3dCUTNIS3Bkc2hETWYvck1iVnU1c2c1VDNVSzFzRGdQUXZILzF6Tk8x?=
 =?utf-8?B?aXdxMEJyU2Y0QVlpd3BNMVRLcUc3M0lBTWNnWnpOSUVSV3Q2UjZWK2UzeWFu?=
 =?utf-8?B?Q29XbEdqWjhKRHZWSDRXN2hQRHpZT3dFRUZzcHFtY2k3YStocVJHVnVTdmc2?=
 =?utf-8?B?MUJHY0FHRlFNM25ZbTgyU2QrMUxXT0g3MGlHMm91L0NaYWJ2eDA0eVpONzEw?=
 =?utf-8?B?SE8xWHV4NnY4eUkyTktNVEVGRWE1L2IvbjhPZnVDMTBoTnJNY0Zrc0ZldFFT?=
 =?utf-8?B?SmN0VXQxVnlOQTEvcGdCUnppRjJrUEpkK1MvemtZMm5Bd0lwQTlxbnhCTmR3?=
 =?utf-8?B?ZCtuUEpsUGUrNHlSNTBRUUdGclJTZmNqWDc5dkg5OVRJL0x4UkNXamJEUjFV?=
 =?utf-8?B?SGRaamZ5UUhxT0dEUWRwK0J4K1g5b2d3Y1pVcGVxR3dZSlRZQkhsYS9oczlV?=
 =?utf-8?B?cTJXSHRDM3dtY08rZDBMT3JEZHAxbjJhWjRTblR6ZVVIOEN1WC9rbWlzdS9n?=
 =?utf-8?B?NVYyaFhvak05MUNzNEQzKzJ1bFA1OTVyYVY2UFByK0p5NUF6UEtwWWk2QjRu?=
 =?utf-8?B?eFVIam02WVlUWkVneWhtQTZIY0tvWGVKaHdHOVI4Ynpxam5aVVhlMm9jWEZV?=
 =?utf-8?B?TkJ5elY0ZHYvWFJoOUFDZDI2RGZkdXBWNmI4Y25nOGlqTFdhZ0QwODVWNFJN?=
 =?utf-8?B?cHU2dkhocklKZjFRTFI4eW5KQTVra1k4c2dCOEpnZXFLYTJBd2srbCticHo1?=
 =?utf-8?B?b2NJTmVoWVF0akVlanhNaFMxWnU4WE9xMGRUODR4VWZYQTZHWVBXdTl3dFA4?=
 =?utf-8?B?ZTR6RDg4eVRqTVNweXIzM3dhV1Zla3Y0alNWUEpSbFhLSjE0NFA4NFpPWDlo?=
 =?utf-8?B?L3VnbHVnVGlxbXFEak80NHZ2MzhtbHVBdGcvTkF6RHpweCtiMlhxdG9DRGNX?=
 =?utf-8?B?Qm9TS0ozYWM3bnUvVGg2NWVkdXR0RGczR0REQXJIWFFjeDVFYThWTDZHNnZj?=
 =?utf-8?B?RHluSVRoNDd6TUExQ2VSaE1aaEdFQWdIVzI5bnp2amNQYzI4NU5QNnVVUEV0?=
 =?utf-8?B?MU1IbklSL010bndwTFpuV1BXTkozMWxURU1DSGdoZXR2U2MwKzJ1YWJ2U2xB?=
 =?utf-8?B?MTZGMmEyZVpWcEw0TTRTbWFCYm5ETFNQaWVGbG1XdWg3TVBDejhoU1AxQ09W?=
 =?utf-8?B?a05Vd0dQWmNPV2h4bFBWZlEyZGJicWZnSm9WUEs0d2prZm1WWkg5WC90L1VZ?=
 =?utf-8?B?VkE1Zjg2cmVvZWkrQ2pNQU1mMkFFWUwxQ3NnTzFvNXhlaUNudndkbU5KdW5n?=
 =?utf-8?B?RDQzRUZ3aHcySGdhWDNHanM3UVpnYThSdW11M0djYlZscTdycmU2MUlmQjBp?=
 =?utf-8?B?Zy80UUR0MzNtQ3JWNnNjWTBxTWVDRkJ6Ni9lL2ltNTR5TjRsU1BwS2dyQVlr?=
 =?utf-8?B?L2FTV2RRRytlM1RlWG5VMzZNNWtJVGcrT0MxVUJ2dFJwOEF6MGhLTjVFem5t?=
 =?utf-8?B?Sk5KUEs0R1JQVHZDY3ZUTUNMNnAyekVIaWVxeVJ1KytYamE4OHZ5ZnF4Nm1M?=
 =?utf-8?B?N0Y5dVhoRzNFZmdLcGs4MkNQdUtIdnVqRzhJNmRaclhHVFQ5R3Y4ckkxRXBt?=
 =?utf-8?B?Q1JVTEw1TDhZdXg4UzJmZmcrd2Vzc2xMTXFiQStRWTV5UkVxcEJaSCtzelJj?=
 =?utf-8?B?Rmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <31D431CBD715534BBAEA1ED54862CDD2@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: lch@lists.linux.dev
List-Id: <lch.lists.linux.dev>
List-Subscribe: <mailto:lch+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:lch+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-OriginatorOrg: husqvarnagroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8767.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcd9ac4d-0f8d-4e52-c1f6-08dd1f91df52
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 18:29:13.3396
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2a1c169e-715a-412b-b526-05da3f8412fa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1DLHUOrt+ES9k8gieSbOMdxxf4rsi6drYUDgOpRdqaeRNV17za2C6iauK8zFLjcI1gtU81lVPnfR5W69DqdEHNR3rMiB5v7HblIXVsxId1e321xaMt9R8bQEAcRZV/bx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9075

VGhpcyBpcyBhIHB1YmxpYyBkaXNwbGF5IG9mIHRoZSBlbWFpbCBmb290ZXIgYXV0b21hdGljYWxs
eSBhZGRlZCBieSBteQ0KZW1wbG95ZXIuDQoNClBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgdGhp
bmsgaXQgaXMgYSBnb29kIHRoaW5nIHRvIGhhdmUgc3VjaCB0cmFpbGVycw0KZm9yY2VmdWxseSBh
ZGRlZCBmb3IgZW1haWwgYWNjb3VudHMgdXNlZCBvbiBwdWJsaWMgbWFpbGluZyBsaXN0cy4gOykN
Cg0KRXZlcnl0aGluZyBhZnRlciB0aGlzIHNlbnRlbmNlIGlzIGFkZGVkIGJ5IHRoZSBzeXN0ZW0s
IG5vdCBtZS4NCg0KVGhlIGluZm9ybWF0aW9uIGluIHRoaXMgZW1haWwgbWF5IGJlIGNvbmZpZGVu
dGlhbCBhbmQvb3IgbGVnYWxseSBwcml2aWxlZ2VkLiBJdCBoYXMgYmVlbiBzZW50IGZvciB0aGUg
c29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3QgYW4g
aW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgYXJlIHN0cmljdGx5IHByb2hpYml0ZWQgZnJvbSByZWFk
aW5nLCBkaXNjbG9zaW5nLCBkaXN0cmlidXRpbmcsIGNvcHlpbmcgb3IgdXNpbmcgdGhpcyBlbWFp
bCBvciBhbnkgb2YgaXRzIGNvbnRlbnRzLCBpbiBhbnkgd2F5IHdoYXRzb2V2ZXIuIElmIHlvdSBo
YXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5k
ZXIgYnkgcmVwbHkgZW1haWwgYW5kIGRlc3Ryb3kgYWxsIGNvcGllcyBvZiB0aGUgb3JpZ2luYWwg
bWVzc2FnZS4gUGxlYXNlIGFsc28gYmUgYWR2aXNlZCB0aGF0IGVtYWlscyBhcmUgbm90IGEgc2Vj
dXJlIGZvcm0gZm9yIGNvbW11bmljYXRpb24sIGFuZCBtYXkgY29udGFpbiBlcnJvcnMuDQo=
