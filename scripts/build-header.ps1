param(
    [Parameter(Mandatory = $true)]
    [string]$BrandSkill
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.Drawing
$projectRoot = Split-Path $PSScriptRoot -Parent
$assetDir = Join-Path $projectRoot 'docs/assets'
[IO.Directory]::CreateDirectory($assetDir) | Out-Null
$fonts = [Drawing.Text.PrivateFontCollection]::new()
$fonts.AddFontFile((Join-Path $BrandSkill 'assets/fonts/Poppins-Regular.ttf'))
$fonts.AddFontFile((Join-Path $BrandSkill 'assets/fonts/Poppins-Bold.ttf'))
$family = $fonts.Families | Select-Object -First 1
$bitmap = [Drawing.Bitmap]::new(1600, 720)
$graphics = [Drawing.Graphics]::FromImage($bitmap)
$graphics.SmoothingMode = 'AntiAlias'
$graphics.TextRenderingHint = 'AntiAliasGridFit'
$graphics.Clear([Drawing.ColorTranslator]::FromHtml('#03081C'))

function Draw-Text([string]$Text, [single]$Size, [string]$Color, [single]$X, [single]$Y, [bool]$Bold = $false) {
    $style = if ($Bold) { [Drawing.FontStyle]::Bold } else { [Drawing.FontStyle]::Regular }
    $font = [Drawing.Font]::new($family, $Size, $style, [Drawing.GraphicsUnit]::Pixel)
    $brush = [Drawing.SolidBrush]::new([Drawing.ColorTranslator]::FromHtml($Color))
    $graphics.DrawString($Text, $font, $brush, $X, $Y)
    $brush.Dispose()
    $font.Dispose()
}

$line = [Drawing.Pen]::new([Drawing.ColorTranslator]::FromHtml('#122150'), 1.2)
for ($offset = 1100; $offset -lt 2000; $offset += 100) {
    $graphics.DrawLine($line, $offset, 0, ($offset - 200), 720)
}
$logo = [Drawing.Image]::FromFile((Join-Path $BrandSkill 'assets/logos/a9-branco.png'))
$logoHeight = [single](230 * $logo.Height / $logo.Width)
$graphics.DrawImage($logo, [single]78, [single]54, [single]230, $logoHeight)
$logo.Dispose()

Draw-Text 'REUNIÕES COM CLIENTES DA A9' 20 '#29FFE8' 80 170 $true
Draw-Text 'Cada reunião deixa' 68 '#FFFFFF' 74 226 $true
Draw-Text 'uma evidência.' 82 '#6DFF30' 72 305 $true
Draw-Text 'Falas reais, resultados e evolução.' 27 '#D2D7E1' 80 438
Draw-Text 'Com contexto, autoria e origem.' 27 '#D2D7E1' 80 481

$stepPen = [Drawing.Pen]::new([Drawing.ColorTranslator]::FromHtml('#29FFE8'), 2)
$graphics.DrawLine($stepPen, 1150, 285, 1150, 499)
Draw-Text '01' 19 '#29FFE8' 1180 263 $true
Draw-Text 'Reunião' 28 '#FFFFFF' 1180 290 $true
Draw-Text '02' 19 '#29FFE8' 1180 365 $true
Draw-Text 'Evidência' 28 '#FFFFFF' 1180 392 $true
Draw-Text '03' 19 '#29FFE8' 1180 467 $true
Draw-Text 'Google Docs' 28 '#FFFFFF' 1180 494 $true

Draw-Text 'Do conhecimento ao resultado.' 23 '#FFFFFF' 80 612
Draw-Text 'SKILL A9 · v1.2.0' 18 '#AAB4CB' 1180 618
$bar = [Drawing.Drawing2D.LinearGradientBrush]::new([Drawing.Rectangle]::new(80, 676, 1440, 5), [Drawing.ColorTranslator]::FromHtml('#6DFF30'), [Drawing.ColorTranslator]::FromHtml('#29FFE8'), 0.0)
$graphics.FillRectangle($bar, 80, 676, 1440, 5)
$bitmap.Save((Join-Path $assetDir 'capa.png'), [Drawing.Imaging.ImageFormat]::Png)
$bar.Dispose()
$stepPen.Dispose()
$line.Dispose()
$graphics.Dispose()
$bitmap.Dispose()
$fonts.Dispose()
Write-Output 'Capa A9 gerada em docs/assets/capa.png'
