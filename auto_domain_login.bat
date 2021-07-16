@echo off
::only change your-dnsip-for-domain,your-domain-here,your-domain-pass
for /f "skip=3 tokens=3*" %%a in ('netsh int show int') do netsh int ip set dns name="%%b" static your-dnsip-for-domain
powershell.exe netdom join %computername% /domain:your-domain-here /ud:%computername% /pd:your-domain-pass
pause
