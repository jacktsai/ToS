@"C:\Windows\Microsoft.NET\Framework\v2.0.50727\ilasm.exe" /dll /resource=origin.res hijacked.il /output=Assembly-CSharp.dll
copy Assembly-CSharp.dll ..\Assembly-Hijack\packages\tos
pause