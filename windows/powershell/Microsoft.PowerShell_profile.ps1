oh-my-posh init pwsh --config $HOME'/AppData/Local/Programs/oh-my-posh/themes/zash.omp.json' | Invoke-Expression
Import-Module -Name Terminal-Icons

# Yazi file manager
$Env:YAZI_FILE_ONE = 'C:\Program Files\Git\usr\bin\file.exe'
function y {
	$tmp = (New-TemporaryFile).FullName
	yazi.exe $args --cwd-file="$tmp"
	$cwd = Get-Content -Path $tmp -Encoding UTF8
	if ($cwd -and $cwd -ne $PWD.Path -and (Test-Path -LiteralPath $cwd -PathType Container)) {
		Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
	}
	Remove-Item -Path $tmp
}
