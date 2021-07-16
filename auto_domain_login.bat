@echo off
::only change dnsip-for-domain,domain-name,domain-pass
for /f "skip=3 tokens=3*" %%a in ('netsh int show int') do netsh int ip set dns name="%%b" static dnsip-for-domain
powershell.exe netdom join %computername% /domain:domain-name /ud:%computername% /pd:domain-pass
pause
