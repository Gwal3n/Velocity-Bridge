!macro NSIS_HOOK_PREINSTALL
  ; The window closes to the tray, so both processes may still hold installed files open.
  nsExec::ExecToLog 'taskkill /F /T /IM velocity_tauri.exe'
  Pop $0
  nsExec::ExecToLog 'taskkill /F /T /IM velocity-backend.exe'
  Pop $0
  Sleep 500
!macroend
