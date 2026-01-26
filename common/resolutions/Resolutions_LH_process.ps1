function Resolutions_LH_process {
	param(
		[string]$inputFile,
		[string]$outputFile
	)
	
	$lines = Get-Content -Path $inputFile
	$outputLines = @()
	$currentTitle = ""
	$global:complete = $false
	
	for ($i = 0; $i -lt $lines.Length; $i++) {
		$line = $lines[$i]
		if ($line -match '^\s*(resolution_.*?)\s*=\s*\{$') {
			# 检查是否是新条目的开始
			$currentTitle = $matches[1].Trim()
			$global:complete = $false
			$outputLines += $line
		} else {
			$processedEntry = line_process $line $currentTitle
			$outputLines += $processedEntry
		}
	}

	$outputLines | Out-File -FilePath $outputFile -Encoding UTF8
}

function line_process {
	param($entryLine, $title)
	
	$insertContent = "inline_script = { script = MECR/lh_res_condi R = $title }"
	$fullAllowBlock = "allow = { $insertContent }"
	
	$resultLines = @()
	
	if ( ($entryLine -match '^\s*allow\s*=\s*\{\}') -and -not $global:complete) {
		# allow单独成行无内容
		$resultLines += "`t$fullAllowBlock"
		$global:complete = $true
	} elseif ( ($entryLine -match '^\s*allow\s*=\s*\{.*\}') -and -not $global:complete) {
		# allow单独成行有内容
		$allowin1line = $entryLine -replace 'allow = {', ''
		$resultLines += "`tallow = {"
		$resultLines += "`t`t$insertContent"
		$resultLines += "`t`tTHIS = {$allowin1line"
		$resultLines += "`t}"
		$global:complete = $true
	} elseif ( ($entryLine -match '^\s*allow\s*=\s*\{') -and -not $global:complete) {
		# allow多行
		$resultLines += $entryLine
		$resultLines += "`t`t$insertContent"
		$global:complete = $true
	} elseif ( ($entryLine -match '^\s*ai_weight\s*=\s*\{') -and -not $global:complete) {
		# 无allow,匹配到ai_weight
		$resultLines += "`t$fullAllowBlock"
		$resultLines += ""
		$resultLines += $entryLine
		$global:complete = $true
	} else  {
		# 普通情况
		$resultLines += $entryLine
	}
	
	return $resultLines
}

Resolutions_LH_process -inputFile "00_resolutions.txt" -outputFile "00MECR_overwrite_resolutions.txt"
Resolutions_LH_process -inputFile "02_resolutions_overlord.txt" -outputFile "02MECR_overwrite_resolutions_overlord.txt"
Resolutions_LH_process -inputFile "03_resolutions_first_contact_dlc.txt" -outputFile "03MECR_overwrite_resolutions_first_contact_dlc.txt"
Resolutions_LH_process -inputFile "04_resolutions_cosmic_storms_dlc.txt" -outputFile "04MECR_overwrite_resolutions_cosmic_storms_dlc.txt"
Resolutions_LH_process -inputFile "04_resolutions_grand_archive.txt" -outputFile "04MECR_overwrite_resolutions_grand_archive.txt"