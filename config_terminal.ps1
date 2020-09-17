[string]$MASK= 24
[string]$GATEWAY = "192.168.0.1" #no deberia hacer falta indicarla ya que la recibe del servidor DHCP
[string]$DNS = "192.168.0.253,8.8.8.8" #no deberia hacer falta indicarlos ya que los va a recibir por el servidor DHCP
[string]$IPPROTO = "IPv4" #perfectamente podriamos usar IPv6
[string]$MODO = "DHCP" #por ahora no es el caso pero podriamos tener algunas computadoras con IPs estaticas.
[IPAddress]$IP = "192.168.0.100"

$adaptador = Get-NetAdapter -Name Ethernet* 

#ejemplo de configuracion estatica
$adaptador | New-NetIPAddress `
    -AddressFamily $IPPROTO `
    -IPAddress $IP `
    -PrefixLength $MASK `
    -DefaultGateway $GATEWAY

#Si la configuracion fuera estatica habria que indicar manualmente el DNS
$adaptador | Set-DnsClientServerAddress -ServerAddresses $DNS

if ($MODO -eq "DHCP"){
    
    $interfaz = $adaptador | Get-NetIPInterface - AddressFamily $MODO
    if ($interfaz.Dhcp -eq "Disabled"){
    
    #habilito DHCP
    $interfaz | Set-NetIPInterface -DHCP Enabled
    
    #los servidores DNS se configuran automaticamente
    $interfaz | Set-DnsClientServerAddress -ResetServerAddresses

    }
}

#habilito y reinicio el adaptador
$adaptador | Enable-NetAdapter
$adaptador | Restart-NetAdapter

#descargar e instalar openssh
Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
Add-WindowsCapability -Online -Name OpenSSH.Client*

#genera clave SSH automaticamente
ssh-keygen -t rsa -C "clave de prueba :o" -f "C:/Users/$env:username/.ssh/id_rsa" -P """"