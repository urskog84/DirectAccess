Describe "Role Direct Access" {
    Context "WindowsFeture" {
        It "Remote Access is installed" {
            $WinFetur = Get-WindowsFeature -Name "Remote Access"
            $WinFetur.Installed | should be $true

        }
    }
}