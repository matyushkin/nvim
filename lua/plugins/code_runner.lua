-- import plugin safely
local code_runner_setup, code_runner = pcall(require, "code_runner")
if not code_runner_setup then
	return
end

code_runner.setup({
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	},
})
