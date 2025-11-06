# generate_api_client.ps1
# =======================================
# api_client 폴더 삭제
Remove-Item -Recurse -Force ./api_client -ErrorAction SilentlyContinue

# openapi-generator-cli 설치 확인
if (-not (Get-Command openapi-generator-cli -ErrorAction SilentlyContinue)) {
    Write-Host "Installing @openapitools/openapi-generator-cli globally using pnpm..."
    pnpm add -g @openapitools/openapi-generator-cli
} else {
    Write-Host "openapi-generator-cli already installed, skipping installation."
}

# 코드 생성
New-Item -ItemType Directory -Force -Path ./api_client | Out-Null
openapi-generator-cli generate

Set-Location ./api_client
fvm dart pub get
fvm dart run build_runner build --delete-conflicting-outputs

Set-Location ..