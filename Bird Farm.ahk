F9::       ; Bird Farm Macro key F9
{
 birdkey := "p"  ; First phase
 birdloop()
 birdkey := "y"  ; Second Phase using alternate arrows 
 birdloop()
     ; Done, walk back to grace
 Send "{l down}"   ; Rotate character toward grace
 Sleep 200     ; rotation amount
 Send "{l up}"
 Sleep 300
 Send "{w down}"   ; Walk back toward grace
 Sleep 1800     ; walk distance
 Send "{w up}"
 Exit 0

 Birdloop(){
  Loop 700{   ; loop n times
   Send "{g down}"  ; Reload Area
   Sleep 100
   Send "{g up}"  
   Sleep 200
   Send "{f down}"
   Sleep 100
   Send "{f up}"
   Sleep 100
   Send "{e down}"
   Sleep 100
   Send "{e up}"
   Sleep 300
   Send "{e down}"
   Sleep 100
   Send "{e up}"
   Sleep 4000    ; Wait 4.000 seconds for load to complete
    
   Send "{j down}"  ; Rotate character toward cliff
   Sleep 528     ; rotation amount
   Send "{j up}"
   
   Send "{e down}" ; Pick up runes if character died previously
   Sleep 50
   Send "{e up}"

   Send "{w down}"  ; Walk toward cliff
   Sleep 1800    ; walk distance
   Send "{w up}"
   
   Send "{e down}" ; Pick up runes if character died previously
   Sleep 50
   Send "{e up}"
   
   Send "{k down}"  ; Look down
   Sleep 215   
   Send "{k up}"
   
   Send "{j down}"  ; Turn slightly toward bird
   Sleep 55   
   Send "{j up}"
  
   Send "{q down}"  ; Target bird
   Sleep 100
   Send "{q up}"
   Sleep 500

   Send "{LCtrl down}" ; Shoot bird
   Sleep 500   
   Send "{" birdkey " down}"
   Sleep 100
   Send "{" birdkey " up}"
   Send "{LCtrl up}" 
   Sleep 3050    ; Wait for arrow to hit
  
   Send "{q down}"  ; Detarget bird
   Sleep 100   
   Send "{q up}"  
   Sleep 3000  ; Wait for bird to run off edge

   Send "{l down}"  ; Rotate view away from cliff (wasting time)
   Sleep 700     ; rotation amount
   Send "{l up}"  
    
   Sleep 2300    ; wait for runes to collect
  }
 }
}

F10::  ; Stop active scripts
{
 Reload
 Return
}

; # ------------------------------------------------------------------
; # Copyright (c) 2026 SimplyyYuki (GitHub: https://github.com/SimplyyYuki)
; # All rights reserved.
; #
; # This code is the original work of SimplyyYuki. It may not be
; # redistributed, republished, or passed off as the work of anyone
; # else. It may not be sold, or distributed or used under any paid or
; # commercial name, product, or service, without prior written
; # permission from the author.
; # ------------------------------------------------------------------
