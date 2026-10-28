# netease-dynamic-avatar

[![Release](https://img.shields.io/github/v/release/yuan-dev39/netease-dynamic-avatar?color=c20c0c)](https://github.com/yuan-dev39/netease-dynamic-avatar/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![DSH skill](https://img.shields.io/badge/DSH-skill-blue)](https://github.com/yuan-dev39/netease-dynamic-avatar)
[![ClawHub](https://img.shields.io/badge/ClawHub-ready-8a2be2)](https://clawhub.ai/)

> 缁?*鑷繁鐨?*缃戞槗浜戦煶涔愯处鍙疯缃?*鍔ㄦ€佸ご鍍?*锛圙IF / 鍔ㄧ敾 WebP锛夈€備竴涓彲鐩存帴瑁呰繘 DSH / Claude / 鍏朵粬 harness 鐨?agent skill銆?
**鏍稿績缁撹**锛歚GIF 鈫?WebP 鈫?鏀瑰悕 .jpg` 杩欏鑰佸姙娉曚箣鎵€浠ュけ鏁堬紝涓嶆槸鍥犱负缃戞槗浜戜笉鏀寔 WebP锛岃€屾槸缃戦〉鐗堛€屾洿鎹㈠ご鍍忋€嶄笂浼犲畬**蹇呭畾**璋冧竴娆?`/upload/img/op` 鍋氭湇鍔＄瑁佸垏锛岃繖涓帴鍙ｄ細鎶婂姩鍥鹃噸缂栫爜鎴愰潤鎬?JPEG锛屽姩鐢诲抚鍏ㄩ儴涓㈡帀銆?
**鐮磋В鐐?*锛氳烦杩?`/upload/img/op`锛屾妸鍔ㄧ敾 WebP 鍘熷瀛楄妭鐩翠紶 NOS锛岀劧鍚庣敤**鍘熷 docId** 璋?`/api/user/avatar/upload/v1`銆傚疄娴?27 甯у叏閮ㄤ繚鐣欍€?
```
璧?op 瑁佸垏          鈫?ff d8 ff e0 (JPEG)      闈欐€?1 甯?璺宠繃 op + 鍘熷docId 鈫?52 49 46 46 (RIFF/WEBP) 27 甯у姩鐢?```

---

## 瀹夎

### 涓€琛岃锛堟帹鑽愶級

Linux / macOS / WSL锛?
```bash
curl -fsSL https://raw.githubusercontent.com/yuan-dev39/netease-dynamic-avatar/main/install.sh | bash
```

Windows PowerShell锛?
```powershell
irm https://raw.githubusercontent.com/yuan-dev39/netease-dynamic-avatar/main/install.ps1 -OutFile $env:TEMP\i.ps1; powershell -ExecutionPolicy Bypass -File $env:TEMP\i.ps1
```

### git clone

```bash
git clone https://github.com/yuan-dev39/netease-dynamic-avatar.git ~/.dsh/skills/netease-dynamic-avatar
```

```powershell
git clone https://github.com/yuan-dev39/netease-dynamic-avatar.git "$env:USERPROFILE\.dsh\skills\netease-dynamic-avatar"
```

### 鎵嬪姩 / 绂荤嚎

浠?[Releases](https://github.com/yuan-dev39/netease-dynamic-avatar/releases) 涓嬭浇 `netease-dynamic-avatar-v1.0.0.zip`锛岃В鍘嬪埌 `<DSH_HOME>/skills/netease-dynamic-avatar/`銆俙DSH_HOME` 榛樿 `~/.dsh`銆傚彧瑕佺洰褰曢噷鏈?`SKILL.md` 灏辫兘琚瘑鍒€?
瑁呭ソ鍚庨噸寮€涓€娆′細璇濓紙鎴栧埛鏂?DSH Web GUI锛夛紝鎶€鑳戒細鑷姩鍑虹幇鍦ㄦ妧鑳藉垪琛ㄩ噷锛岃緭鍏ユ鏃佺殑鎶€鑳芥寜閽噷涔熻兘鐐归€夈€傝Е鍙戣瘝锛?
> 缃戞槗浜戝姩鎬佸ご鍍?/ 缃戞槗浜戝ご鍍忓姩鍥?/ 缃戞槗浜戝ご鍍忎笉鍔?/ 鏇存崲缃戞槗浜戝ご鍍?/ GIF 澶村儚 / 鍔ㄦ€佸ご鍍忓け鏁?
### 鍏朵粬 harness

- **Claude / 鍏朵粬鏀寔 SKILL.md 鐨?harness**锛氭妸 `SKILL.md` 鏀惧埌瀵瑰簲 skills 鐩綍锛屾垨鐩存帴鎶婂叏鏂囪创杩涗笂涓嬫枃
- **鍙兂鐢ㄨ剼鏈?*锛氬畬鍏ㄤ笉闇€瑕佹妧鑳戒綋绯伙紝瑙佷笅闈㈢殑銆屽彧鎷胯剼鏈€?
---

## 鍙嬁鑴氭湰锛堜笉瑁呮妧鑳斤級

```bash
# 1. 鍔ㄥ浘杞姩鐢?WebP锛堥渶瑕?Pillow锛?python -m pip install --no-user --target ./pylibs pillow
PYTHONPATH=./pylibs python scripts/make_animated_webp.py input.gif out.webp --size 240 --quality 75

# 2. 娴忚鍣?Console 閲岃窇 set_dynamic_avatar.js锛屾垨
python scripts/upload_nos.py "<token>" "<objectKey>" out.webp image/webp
```

---

## 浣跨敤

### 鍓嶇疆

- 娴忚鍣ㄥ凡鐧诲綍 `music.163.com`
- Python 3.8+ 鍜?Pillow锛堣浆鐮佺敤锛涚函娴忚鍣ㄦā寮忎笉闇€瑕侊級
- 鍔ㄥ浘婧愭枃浠讹紙GIF 鎴栧姩鐢?WebP锛夛紝**灏忎簬 5 MB**

### 绗?1 姝ワ細杞垚鍔ㄧ敾 WebP

```bash
python scripts/make_animated_webp.py input.gif out.webp --size 240 --quality 75
```

鑴氭湰浼氭墦鍗板抚鏁般€佹椂闀裤€佷綋绉紝骞舵牎楠岃緭鍑虹‘瀹炴槸 `VP8X + ANIM + ANMF` 缁撴瀯銆傝鐐癸細

- **瀹介珮姣斿繀椤?1:1**锛屽惁鍒欏鎴风鏄剧ず鏃朵細琚鍦嗐€傝剼鏈粯璁ゅ仛灞呬腑姝ｆ柟褰㈣鍒?- 灏哄 180~240 px锛屽抚鏁?10~27锛岃川閲?75锛屼綋绉?~100 KB 鏈€绋?- 蹇呴』鐪熺殑澶氬抚锛岄潤鎬?WebP 浼犱笂鍘诲綋鐒朵笉鍔?
### 绗?2 姝ワ細涓婁紶 + 璁惧ご鍍?
**妯″紡 A锛氱函娴忚鍣紙闆朵緷璧栵級**

鎵撳紑 https://music.163.com 浠绘剰椤甸潰 鈫?F12 鈫?Console 鈫?绮樿创 [`scripts/set_dynamic_avatar.js`](scripts/set_dynamic_avatar.js) 鍏ㄦ枃 鈫?鍥炶溅 鈫?閫夊浘銆?
鑴氭湰鑷姩瀹屾垚锛氬彇鍑瘉 鈫?鐩翠紶 NOS锛堣烦杩?op锛夆啋 璁惧ご鍍?鈫?**鍥炶瀛楄妭楠岃瘉甯ф暟**銆?
**妯″紡 B锛氭祻瑙堝櫒鍙栧嚟璇?+ 鏈湴鑴氭湰涓婁紶锛堟洿绋筹紝缁曞紑娴忚鍣ㄦ湰鍦扮綉缁滄潈闄愶級**

娴忚鍣?Console锛?
```js
const q = new URLSearchParams({
  filename:'a.jpg', ext:'jpg', type:'image', bucket:'yyimgs',
  local:'false', nos_product:'0',
  return_body: JSON.stringify({code:200, size:'$(ObjectSize)'})
});
const j = await (await fetch('/api/nos/token/alloc', {
  method:'POST', credentials:'include',
  headers:{'Content-Type':'application/x-www-form-urlencoded'},
  body: q.toString()
})).json();
console.log(j.result.token, j.result.objectKey, j.result.docId);
```

鎶婁笁涓€煎杺缁欐湰鍦拌剼鏈紝鍐嶅洖娴忚鍣ㄨ澶村儚锛?
```js
const t = await new Promise(r => WM.getToken('bd5d2f973ef74cd2a61325a412ae54d9', r));
await (await fetch('/api/user/avatar/upload/v1', {
  method:'POST', credentials:'include',
  headers:{'Content-Type':'application/x-www-form-urlencoded'},
  body: new URLSearchParams({imgid:'<docId>', checkToken:t}).toString()
})).json();
```

### 绗?3 姝ワ細楠岃瘉锛堝埆鍙湅銆屼笂浼犳垚鍔熴€嶏級

`code:200 涓婁紶鎴愬姛` **涓嶄唬琛ㄥ姩鍥句繚浣忎簡**銆傚繀椤绘姄瀛楄妭楠岄瓟鏁帮細

```js
const url = 'https://p1.music.126.net/<hash>/<id>.jpg';
const b = await (await fetch(url, {cache:'no-store'})).arrayBuffer();
const u = new Uint8Array(b);
console.log(String.fromCharCode(u[0],u[1],u[2],u[3]));  // 鏈熸湜 RIFF
```

鍐嶆暟 `ANMF` 鍧?= 甯ф暟锛屼笁涓昂瀵搁兘楠岋細`?param=180y180`銆乣?param=140y140`銆乣?param=60y60`銆?
---

## 鍏抽敭鍙傛暟閫熸煡

| 椤?| 鍊?|
|---|---|
| NOS bucket | `yyimgs` |
| 鍑瘉鎺ュ彛 | `POST /api/nos/token/alloc`锛坒orm-urlencoded锛?|
| 涓婁紶 host | `https://wanproxy.127.net/lbs?version=1.0&bucketname=yyimgs` 鐨?`upload[]`锛屽厹搴?`https://nosup-hz1.127.net` |
| 涓婁紶 URL | `{host}/yyimgs/{objectKey}?offset=0&complete=true&version=1.0` |
| 涓婁紶澶?| `x-nos-token: <token>`銆乣Content-Type: image/webp` |
| 璁惧ご鍍?| `POST /api/user/avatar/upload/v1`锛宍imgid=<docId>&checkToken=<token>` |
| 椋庢帶 key | `bd5d2f973ef74cd2a61325a412ae54d9`锛坄WM.getToken`锛?|
| **瑕佽烦杩囩殑鎺ュ彛** | `GET /upload/img/op?id=&op=<x>y<y>y<w>y<h>` |

瀹屾暣鍗忚銆侀€嗗悜浠ｇ爜浣嶇疆銆佸疄娴嬫暟鎹 [`references/protocol.md`](references/protocol.md)銆?
---

## 澶辫触鎺掓煡

| 鐜拌薄 | 鍘熷洜 / 澶勭悊 |
|---|---|
| 澶村儚鍙樹簡浣嗚繕鏄潤鎬?| 璧颁簡 UI 鐨勩€屾洿鎹㈠ご鍍忋€嶏紝琚?`op` 閲嶇紪鐮併€傚繀椤昏烦杩?`op`锛岀敤鍘熷 docId |
| `WM.getToken` 杩斿洖绌?| 椋庢帶 key 杞崲銆俫rep `pt_profile_update.js` 閲岀殑 `WM.getToken("` 鍙栨柊 key |
| 娴忚鍣?fetch 鏈湴/璺ㄥ煙澶辫触 | Chrome 鐨?Local Network Access 鏉冮檺锛涙敼鐢ㄦā寮?B 鏈湴鑴氭湰涓婁紶 |
| NOS 杩斿洖 4xx | `x-nos-token` 杩囨湡锛堢害 1 灏忔椂锛夛紝閲嶆柊 alloc |
| 鏂囦欢杩囧ぇ | 闄嶅埌 180脳180銆佸抚鏁?10~15銆佽川閲?70锛岃兘灏?60% |
| 瀹㈡埛绔湅涓嶅埌鍔ㄦ晥 | 澶村儚鏈夋湰鍦扮紦瀛橈紝閲嶅紑瀹㈡埛绔紱PC / 鎵嬫満閮介渶閲嶈繘 |
| CDN 杩斿洖 `image/jpg` 浣嗗唴瀹规槸 WebP | 姝ｅ父銆侰DN 鎸?URL 鍚庣紑缁?content-type锛岄獙璇佷竴寰嬬湅榄旀暟 |

---

## 鐩綍缁撴瀯

```
netease-dynamic-avatar/
鈹溾攢鈹€ SKILL.md                        # 鎶€鑳戒富鏂囦欢锛坔arness 璇诲彇锛?鈹溾攢鈹€ README.md
鈹溾攢鈹€ install.sh / install.ps1        # 涓€閿畨瑁?鈹溾攢鈹€ LICENSE
鈹溾攢鈹€ .github/workflows/
鈹?  鈹斺攢鈹€ clawhub-publish.yml         # 鎵?tag 鑷姩鍙?ClawHub
鈹溾攢鈹€ references/
鈹?  鈹斺攢鈹€ protocol.md                 # 瀹屾暣鎶撳寘 / 鎺ュ彛瀛楁 / 閫嗗悜璁板綍
鈹斺攢鈹€ scripts/
    鈹溾攢鈹€ make_animated_webp.py       # GIF 鈫?鍔ㄧ敾 WebP + 缁撴瀯鏍￠獙
    鈹溾攢鈹€ set_dynamic_avatar.js       # 娴忚鍣ㄤ竴閿剼鏈紙妯″紡 A锛?    鈹斺攢鈹€ upload_nos.py               # 鏈湴 NOS 鐩翠紶锛堟ā寮?B锛?```

---

## 鍙戝埌 ClawHub

鏈粨搴撹嚜甯?`.github/workflows/clawhub-publish.yml`锛屾墦 tag 灏辫嚜鍔ㄥ彂甯冿細

```bash
git tag v1.0.1 && git push origin v1.0.1
```

鍓嶇疆锛氬湪浠撳簱 `Settings 鈫?Secrets and variables 鈫?Actions` 娣诲姞 `CLAWHUB_TOKEN`銆?
鎵嬪姩鍙戝竷锛?
```bash
npm i -g clawhub
clawhub login
clawhub skill publish . --slug netease-dynamic-avatar --name "缃戞槗浜戝姩鎬佸ご鍍? \
  --categories lifestyle,automation \
  --topics "netease,music-163,avatar,webp,dynamic-avatar"
```

---

## 绾㈢嚎

- 鍙搷浣滅敤鎴疯嚜宸辩殑璐﹀彿锛屾垨宸叉槑纭巿鏉冪殑璐﹀彿
- 涓嶄笂浼犺繚瑙勫唴瀹瑰仛澶村儚
- 涓嶆妸 `MUSIC_U` / `token` / `checkToken` 鎻愪氦杩涗换浣曚粨搴撴垨鎴浘

## License

MIT
