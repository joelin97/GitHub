﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_CharPExt.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUIPROP_EXT__FindChar
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui_charpext.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUIPROP_EXT__FindChar
_TEXT	SEGMENT
_pPropExt$ = 8						; size = 4
_c$ = 12						; size = 2
_GUIPROP_EXT__FindChar PROC				; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 38
	jmp	SHORT $LN4@GUIPROP_EX
$LN3@GUIPROP_EX:
	mov	eax, DWORD PTR _pPropExt$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _pPropExt$[ebp], ecx
$LN4@GUIPROP_EX:
	cmp	DWORD PTR _pPropExt$[ebp], 0
	je	SHORT $LN2@GUIPROP_EX
; Line 39
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	movzx	edx, WORD PTR [ecx]
	cmp	eax, edx
	jl	SHORT $LN1@GUIPROP_EX
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	movzx	edx, WORD PTR [ecx+2]
	cmp	eax, edx
	jg	SHORT $LN1@GUIPROP_EX
; Line 40
	jmp	SHORT $LN2@GUIPROP_EX
$LN1@GUIPROP_EX:
; Line 41
	jmp	SHORT $LN3@GUIPROP_EX
$LN2@GUIPROP_EX:
; Line 42
	mov	eax, DWORD PTR _pPropExt$[ebp]
; Line 43
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT__FindChar ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_EXT_DispChar
EXTRN	_LCD_DrawBitmap:PROC
EXTRN	_LCD_pBkColorIndex:DWORD
EXTRN	_LCD_SetDrawMode:PROC
EXTRN	_GUI__CharHasTrans:BYTE
EXTRN	_GUI_Context:BYTE
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_EXT_DispChar
_TEXT	SEGMENT
_pCharInfo$8353 = -56					; size = 4
_OldDrawMode$8352 = -44					; size = 4
_pPropExt$ = -32					; size = 4
_DrawMode$ = -20					; size = 4
_BytesPerLine$ = -8					; size = 4
_c$ = 8							; size = 2
_GUIPROP_EXT_DispChar PROC				; COMDAT
; Line 59
	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 61
	movsx	eax, WORD PTR _GUI_Context+42
	mov	DWORD PTR _DrawMode$[ebp], eax
; Line 62
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP_EXT__FindChar
	add	esp, 8
	mov	DWORD PTR _pPropExt$[ebp], eax
; Line 63
	movzx	eax, BYTE PTR _GUI__CharHasTrans
	test	eax, eax
	je	SHORT $LN2@GUIPROP_EX@2
; Line 64
	mov	eax, DWORD PTR _DrawMode$[ebp]
	or	eax, 2
	mov	DWORD PTR _DrawMode$[ebp], eax
$LN2@GUIPROP_EX@2:
; Line 66
	cmp	DWORD PTR _pPropExt$[ebp], 0
	je	$LN3@GUIPROP_EX@2
; Line 68
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	imul	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	add	eax, DWORD PTR [ecx+4]
	mov	DWORD PTR _pCharInfo$8353[ebp], eax
; Line 69
	mov	eax, DWORD PTR _pCharInfo$8353[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, 7
	sar	ecx, 3
	mov	DWORD PTR _BytesPerLine$[ebp], ecx
; Line 70
	mov	eax, DWORD PTR _DrawMode$[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
	mov	DWORD PTR _OldDrawMode$8352[ebp], eax
; Line 79
	mov	eax, DWORD PTR _LCD_pBkColorIndex
	push	eax
	mov	ecx, DWORD PTR _pCharInfo$8353[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	mov	eax, DWORD PTR _BytesPerLine$[ebp]
	push	eax
	push	1
	mov	ecx, DWORD PTR _GUI_Context+28
	movzx	edx, BYTE PTR [ecx+27]
	push	edx
	mov	eax, DWORD PTR _GUI_Context+28
	movzx	ecx, BYTE PTR [eax+26]
	push	ecx
	mov	edx, DWORD PTR _pCharInfo$8353[ebp]
	movzx	eax, BYTE PTR [edx+1]
	push	eax
	mov	ecx, DWORD PTR _pCharInfo$8353[ebp]
	movzx	edx, BYTE PTR [ecx]
	push	edx
	movsx	eax, WORD PTR _GUI_Context+36
	mov	ecx, DWORD PTR _pCharInfo$8353[ebp]
	movsx	edx, BYTE PTR [ecx+3]
	add	eax, edx
	push	eax
	movsx	eax, WORD PTR _GUI_Context+34
	mov	ecx, DWORD PTR _pCharInfo$8353[ebp]
	movsx	edx, BYTE PTR [ecx+2]
	add	eax, edx
	push	eax
	call	_LCD_DrawBitmap
	add	esp, 40					; 00000028H
; Line 80
	mov	eax, DWORD PTR _OldDrawMode$8352[ebp]
	push	eax
	call	_LCD_SetDrawMode
	add	esp, 4
; Line 81
	mov	eax, DWORD PTR _pCharInfo$8353[ebp]
	movzx	ecx, BYTE PTR [eax+4]
	mov	edx, DWORD PTR _GUI_Context+28
	movzx	eax, BYTE PTR [edx+26]
	imul	ecx, eax
	movsx	edx, WORD PTR _GUI_Context+34
	add	edx, ecx
	mov	WORD PTR _GUI_Context+34, dx
$LN3@GUIPROP_EX@2:
; Line 83
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT_DispChar ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_EXT_GetCharDistX
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_EXT_GetCharDistX
_TEXT	SEGMENT
tv80 = -208						; size = 4
_pPropExt$ = -8						; size = 4
_c$ = 8							; size = 2
_GUIPROP_EXT_GetCharDistX PROC				; COMDAT
; Line 89
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 90
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP_EXT__FindChar
	add	esp, 8
	mov	DWORD PTR _pPropExt$[ebp], eax
; Line 91
	cmp	DWORD PTR _pPropExt$[ebp], 0
	je	SHORT $LN3@GUIPROP_EX@3
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	imul	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	movzx	eax, BYTE PTR [edx+eax+4]
	mov	ecx, DWORD PTR _GUI_Context+28
	movzx	edx, BYTE PTR [ecx+26]
	imul	eax, edx
	mov	DWORD PTR tv80[ebp], eax
	jmp	SHORT $LN4@GUIPROP_EX@3
$LN3@GUIPROP_EX@3:
	mov	DWORD PTR tv80[ebp], 0
$LN4@GUIPROP_EX@3:
	mov	eax, DWORD PTR tv80[ebp]
; Line 92
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT_GetCharDistX ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_EXT_GetFontInfo
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_EXT_GetFontInfo
_TEXT	SEGMENT
_pFont$ = 8						; size = 4
_pfi$ = 12						; size = 4
_GUIPROP_EXT_GetFontInfo PROC				; COMDAT
; Line 98
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 99
	mov	eax, DWORD PTR _pFont$[ebp]
	mov	DWORD PTR _pFont$[ebp], eax
; Line 100
	mov	eax, 1
	mov	ecx, DWORD PTR _pfi$[ebp]
	mov	WORD PTR [ecx], ax
; Line 101
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT_GetFontInfo ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_EXT_IsInFont
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_EXT_IsInFont
_TEXT	SEGMENT
_pPropExt$ = -8						; size = 4
_pFont$ = 8						; size = 4
_c$ = 12						; size = 2
_GUIPROP_EXT_IsInFont PROC				; COMDAT
; Line 107
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 108
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pFont$[ebp]
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP_EXT__FindChar
	add	esp, 8
	mov	DWORD PTR _pPropExt$[ebp], eax
; Line 109
	xor	eax, eax
	cmp	DWORD PTR _pPropExt$[ebp], 0
	setne	al
; Line 110
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT_IsInFont ENDP
_TEXT	ENDS
PUBLIC	_GUIPROP_EXT_GetCharInfo
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _GUIPROP_EXT_GetCharInfo
_TEXT	SEGMENT
_pPropExt$ = -8						; size = 4
_c$ = 8							; size = 2
_pInfo$ = 12						; size = 4
_GUIPROP_EXT_GetCharInfo PROC				; COMDAT
; Line 116
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 118
	movzx	eax, WORD PTR _c$[ebp]
	push	eax
	mov	ecx, DWORD PTR _GUI_Context+28
	mov	edx, DWORD PTR [ecx+28]
	push	edx
	call	_GUIPROP_EXT__FindChar
	add	esp, 8
	mov	DWORD PTR _pPropExt$[ebp], eax
; Line 119
	cmp	DWORD PTR _pPropExt$[ebp], 0
	je	SHORT $LN1@GUIPROP_EX@4
; Line 120
	movzx	eax, WORD PTR _c$[ebp]
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	movzx	edx, WORD PTR [ecx]
	sub	eax, edx
	imul	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _pPropExt$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, eax
	mov	eax, DWORD PTR _pInfo$[ebp]
	mov	ecx, DWORD PTR [edx]
	mov	DWORD PTR [eax], ecx
	mov	ecx, DWORD PTR [edx+4]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR [edx+8]
	mov	DWORD PTR [eax+8], edx
; Line 121
	xor	eax, eax
	jmp	SHORT $LN2@GUIPROP_EX@4
$LN1@GUIPROP_EX@4:
; Line 123
	mov	eax, 1
$LN2@GUIPROP_EX@4:
; Line 124
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUIPROP_EXT_GetCharInfo ENDP
_TEXT	ENDS
END