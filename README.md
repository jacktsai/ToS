*** This project is ONLY for study purpose ***

1. decode tos.apk with apktool  to tos-decoded folder.
2. copy tos.apk to tos-hijacked.zip
3. deassembly Assembly-CSharp.dll and make your modifications in IL.
4. keep original Assembly-CSharp.dll with new name as Assembly-CSharp-origin.dll.
5. assembly modified IL to Assembly-CSharp.dll
6. copy Assembly-CSharp.dll and Assembly-CSharp-origin.dll into tos-hijacked.zip
7. sign tos-hijacked.zip as tos-hijacked.apk, and give it a go.
