@cd %~dp0/../

@winget install Rustlang.Rustup
@winget install OpenJS.NodeJS.LTS

@rustup update
@npm install -l