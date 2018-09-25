# asciidoctor-pdf 実行用スクリプト
# パラメータ
# 	FileName = ファイル名(相対パスで)
Param(
	# Specifies a path to one or more locations.
	[Parameter(Mandatory = $true,
		Position = 0,
		ParameterSetName = "ParameterSetName",
		ValueFromPipeline = $true,
		ValueFromPipelineByPropertyName = $true,
		HelpMessage = "Path to one or more locations.")]
	[Alias("PSPath")]
	[ValidateNotNullOrEmpty()]
	[string]
	$FileName
)

asciidoctor-pdf -r asciidoctor-pdf-cjk $FileName