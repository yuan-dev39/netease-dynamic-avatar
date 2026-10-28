# 一键把 netease-dynamic-avatar 装进本机 harness 的技能目录。
# 用法:  powershell -ExecutionPolicy Bypass -File install.ps1  [-Root <技能根目录>]
# 默认目标: $env:DSH_HOME\skills  (DSH_HOME 默认 $env:USERPROFILE\.dsh)
param(
    [string]$Root = ""
)

$ErrorActionPreference = "Stop"

$repo = "https://github.com/yuan-dev39/netease-dynamic-avatar.git"
if ([string]::IsNullOrWhiteSpace($Root)) {
    $home_ = if ($env:DSH_HOME) { $env:DSH_HOME } else { Join-Path $env:USERPROFILE ".dsh" }
    $Root = Join-Path $home_ "skills"
}
$dest = Join-Path $Root "netease-dynamic-avatar"

Write-Host "==> 目标目录: $dest"
New-Item -ItemType Directory -Force -Path $Root | Out-Null

if (Test-Path (Join-Path $dest ".git")) {
    Write-Host "==> 已存在 git 仓库，改为 pull"
    git -C $dest pull --ff-only
}
elseif (Test-Path $dest) {
    $bak = "$dest.bak." + [int][double]::Parse((Get-Date -UFormat %s))
    Write-Host "==> 已存在同名目录但不是 git 仓库，备份到 $bak"
    Move-Item -LiteralPath $dest -Destination $bak
    git clone --depth 1 $repo $dest
}
else {
    git clone --depth 1 $repo $dest
}

if (-not (Test-Path (Join-Path $dest "SKILL.md"))) {
    Write-Error "安装失败：$dest\SKILL.md 不存在"
    exit 1
}

Write-Host ""
Write-Host "OK 装好了: $dest"
Write-Host "   重开一次会话（或刷新 harness 的 Web GUI）即可在技能列表里看到 netease-dynamic-avatar"
Write-Host ""
Write-Host "可选：转码脚本需要 Pillow"
Write-Host "   python -m pip install --no-user --target `"$dest\pylibs`" pillow"
