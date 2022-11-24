# Windows11 Enable Classic Right Click

## GUI
- regedit  
  - open "コンピューター\HKEY_CURRENT_USER\Software\Classes\CLSID"  
  - create path {86ca1aa0-34aa-4e8b-a509-50c905bae2a2}  
  - create path InprocServer32  
  - edit default setting 値の名前：(既定)、値のデータ：空 のデータ作成　※種類：REG_SZ  
- コンピュータの再起動  

## CUI
- edit registry
  - run cmd as administrator
  - reg query "HKCU\Software\Classes\CLSID"|findstr "86"
  - reg add   "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}"
  - reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}"
  - reg add   "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
  - reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
  - reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /v "(既定)"
    - エラー: 指定されたレジストリ キーまたは値が見つかりませんでした
  - reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /v "(既定)" /t "REG_SZ" /d ""
  - reg query "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /v "(既定)"
    - エラーにならないこと
- reboot
  - shutdown /r /t 0
