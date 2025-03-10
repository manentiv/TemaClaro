# Define o caminho para a chave do registro
$registryPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"

# Verifica se a chave "Personalize" existe e cria se necessário
if (!(Test-Path $registryPath)) {
    New-Item -Path $registryPath -ItemType Directory
}

# Define o valor da chave "AppsUseLightTheme" como 1 para ativar o tema claro
Set-ItemProperty -Path $registryPath -Name "AppsUseLightTheme" -Value 1