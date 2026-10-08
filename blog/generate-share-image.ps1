<#
Generates a 1200x630 branded social-share card (og:image / twitter:image).
Not AI art, not a cartoon -- a plain headline card: off-white background,
a thin blue accent bar, the TrendTurtles logo, and the post's headline in
black serif. Matches the site's black+blue palette (blog/CONSTITUTION.md, section 7).

Usage (Windows PowerShell; the output path must be absolute, a relative one fails with a GDI+ error):
  .\blog\generate-share-image.ps1 -Headline "The post's h1 text" -OutputPath "E:\Clone\Blog\trendturtles\assets\images\some-slug-share.png"
#>
param(
    [Parameter(Mandatory=$true)][string]$Headline,
    [Parameter(Mandatory=$true)][string]$OutputPath
)

Add-Type -AssemblyName System.Drawing

$width = 1200
$height = 630

$bmp = New-Object System.Drawing.Bitmap($width, $height)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.TextRenderingHint = [System.Drawing.Text.TextRenderingHint]::AntiAliasGridFit

# Background (matches site's off-white)
$bgColor = [System.Drawing.ColorTranslator]::FromHtml("#f3f5f7")
$g.Clear($bgColor)

# Top accent bar (the one deliberate blue accent)
$accentColor = [System.Drawing.ColorTranslator]::FromHtml("#4c5fd5")
$accentBrush = New-Object System.Drawing.SolidBrush($accentColor)
$g.FillRectangle($accentBrush, 0, 0, $width, 14)

# Logo
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$logoPath = Join-Path (Split-Path -Parent $scriptDir) "logo.png"
$logo = [System.Drawing.Image]::FromFile($logoPath)
$logoWidth = 320
$logoHeight = [int]($logo.Height * ($logoWidth / $logo.Width))
$g.DrawImage($logo, 80, 70, $logoWidth, $logoHeight)
$logo.Dispose()

# Headline, black serif, wrapped inside a fixed box
$blackColor = [System.Drawing.ColorTranslator]::FromHtml("#111111")
$textBrush = New-Object System.Drawing.SolidBrush($blackColor)
$font = New-Object System.Drawing.Font("Times New Roman", 46, [System.Drawing.FontStyle]::Bold)

$layoutRect = New-Object System.Drawing.RectangleF(80, 230, 1040, 330)
$format = New-Object System.Drawing.StringFormat
$format.Alignment = [System.Drawing.StringAlignment]::Near
$format.LineAlignment = [System.Drawing.StringAlignment]::Near
$g.DrawString($Headline, $font, $textBrush, $layoutRect, $format)

$outDir = Split-Path -Parent $OutputPath
if ($outDir -and -not (Test-Path $outDir)) {
    New-Item -ItemType Directory -Force -Path $outDir | Out-Null
}

$bmp.Save($OutputPath, [System.Drawing.Imaging.ImageFormat]::Png)

$g.Dispose()
$bmp.Dispose()

Write-Output "Saved: $OutputPath"
