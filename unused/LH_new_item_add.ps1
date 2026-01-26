

add_item_99_MECR_LH_script_value -newItem "resolution_cutholoid_eradication" -inputFile ".\common\script_values\99_MECR_LH_script_value.txt" -outputFile ".\common\script_values\99_MECR_LH_script_value copy.txt"
Read-Host "脚本执行完毕，按 Enter 键关闭窗口"
function add_item_99_MECR_LH_script_value {
	param(
		[string]$newItem,
		[string]$inputFile,
		[string]$outputFile
	)
	
	$lines = Get-Content -Path $inputFile

	$outputLines = @()
	$progress = 0
	$addLine = @()
	
	for ($i = 0; $i -lt $lines.Length; $i++) {
		$line = $lines[$i]

		if ( ($line -match '^\s*# list-2') -and ($progress -eq 0) ) {
			$outputLines += $line
			# 第一处生成添加段落
			$addLine += "`tmodifier = { add = owner.value:lhw_$newItem_1 has_global_flag = lh_recent_$newItem_1 }"
			$progress ++
		} elseif ( ($line -match '^\s*# list-2x') -and ($progress -eq 2) ) {
			$outputLines += $line
			# 第二处生成添加段落
			$addLine += "lhw_$newItem_1 = {"
			$addLine += ""
			$addLine += ""
			$addLine += "`tmodifier = { #proposer_opinion_factor"
			$addLine += "`t`tfactor = value:proposer_opinion_factor|resolution|$newItem_1"+"|"
			$addLine += "`t}"
			$addLine += "}"
			$progress ++
		} elseif ($line -match '^\s*#list_end') {
			# 执行添加段落
			$outputLines += $addLine
			$outputLines += $line
			$addLine = @()
			$progress ++
		} else {
			# 普通一行
			$outputLines += $line
		}
	}

	$outputLines | Out-File -FilePath $outputFile -Encoding UTF8
}