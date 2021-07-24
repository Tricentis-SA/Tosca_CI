$ToscaCommanderHome = [System.Environment]::GetEnvironmentVariable('COMMANDER_HOME')

$ToscaCIClientExe = $ToscaCommanderHome + '\ToscaCI\Client\ToscaCIClient.exe'

$m = 'distributed'
$t = 'junit'
$r = '"C:\Tosca_Projects\ToscaCIResults\result.xml"'
$c = '"C:\Program Files (x86)\TRICENTIS\Tosca Testsuite\ToscaCommander\ToscaCI\Client\Config1.xml"'

& $ToscaCIClientExe -m $m -c $c -t $t -r $r
