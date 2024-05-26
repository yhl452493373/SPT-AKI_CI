Param(
    [Parameter(Mandatory = $false)]
    $SourceDir = "./Modules"
)

# 去除客户端Mod限制
$FILE_PATH = "$SourceDir/project/SPT.Custom/Utils/MenuNotificationManager.cs"
$SEARCH_STRING = "new PreventClientModsPatch().Enable();"
$REPLACE_STRING = "//new PreventClientModsPatch().Enable();"
# 读取文件内容
$FILE_CONTENT = Get-Content -Path $FILE_PATH
# 替换指定字符串
$NEW_CONTENT = $FILE_CONTENT.replace($SEARCH_STRING, $REPLACE_STRING)
# 将修改后的内容写回文件
#$NEW_CONTENT | Set-Content -Path $FILE_PATH
# 打印日志
Write-Output "Comment new PreventClientModsPatch().Enable();"

# 去除客户端调试水印
#$FILE_PATH = "$SourceDir/project/SPT.Custom/Utils/MenuNotificationManager.cs"
$SEARCH_STRING = "new BetaLogoPatch().Enable();"
$REPLACE_STRING = "//new BetaLogoPatch().Enable();"
# 读取文件内容
#$FILE_CONTENT = Get-Content -Path $FILE_PATH
# 替换指定字符串
$NEW_CONTENT = $NEW_CONTENT.replace($SEARCH_STRING, $REPLACE_STRING)
# 将修改后的内容写回文件
#$NEW_CONTENT | Set-Content -Path $FILE_PATH
# 打印日志
Write-Output "Comment new DebugLogoPatch().Enable();"

# 去除客户端调试水印2
#$FILE_PATH = "$SourceDir/project/SPT.Custom/Utils/MenuNotificationManager.cs"
$SEARCH_STRING = "new BetaLogoPatch2().Enable();"
$REPLACE_STRING = "//new BetaLogoPatch2().Enable();"
# 读取文件内容
#$FILE_CONTENT = Get-Content -Path $FILE_PATH
# 替换指定字符串
$NEW_CONTENT = $NEW_CONTENT.replace($SEARCH_STRING, $REPLACE_STRING)
# 将修改后的内容写回文件
#$NEW_CONTENT | Set-Content -Path $FILE_PATH
# 打印日志
Write-Output "Comment new DebugLogoPatch2().Enable();"

# 去除客户端调试水印3
#$FILE_PATH = "$SourceDir/project/SPT.Custom/Utils/MenuNotificationManager.cs"
$SEARCH_STRING = "new BetaLogoPatch3().Enable();"
$REPLACE_STRING = "//new BetaLogoPatch3().Enable();"
# 读取文件内容
#$FILE_CONTENT = Get-Content -Path $FILE_PATH
# 替换指定字符串
$NEW_CONTENT = $NEW_CONTENT.replace($SEARCH_STRING, $REPLACE_STRING)
# 将修改后的内容写回文件
$NEW_CONTENT | Set-Content -Path $FILE_PATH
# 打印日志
Write-Output "Comment new DebugLogoPatch3().Enable();"


