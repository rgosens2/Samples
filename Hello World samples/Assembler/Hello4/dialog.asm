.386
.model flat,stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\user32.inc
include \masm32\include\kernel32.inc
include \masm32\include\gdi32.inc

includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\gdi32.lib

WinMain proto :DWORD,:DWORD,:DWORD,:DWORD
DlgProc PROTO :HWND, :DWORD, :DWORD, :DWORD

.const
IDM_EXIT equ 1
IDM_ABOUT equ 2
ID_OK  equ 3000
IDC_STATIC equ 3001
IDC_EXIT equ 3002

.data
ClassName db "SimpleWinClass",0
AppName  db "Hello World!",0
OurText  db "Hello Windows!",0
MenuName db "FirstMenu",0
DlgName db "MyDialog",0

.data?
hInstance HINSTANCE ?
CommandLine LPSTR ?

.code
start:
	invoke GetModuleHandle, NULL
	mov    hInstance,eax
	invoke GetCommandLine
	invoke WinMain, hInstance,NULL,CommandLine, SW_SHOWDEFAULT
	invoke ExitProcess,eax
	
WinMain proc hInst:HINSTANCE,hPrevInst:HINSTANCE,CmdLine:LPSTR,CmdShow:DWORD
	LOCAL wc:WNDCLASSEX
	LOCAL msg:MSG
	LOCAL hwnd:HWND
	mov   wc.cbSize,SIZEOF WNDCLASSEX
	mov   wc.style, CS_HREDRAW or CS_VREDRAW
	mov   wc.lpfnWndProc, OFFSET WndProc
	mov   wc.cbClsExtra,NULL
	mov   wc.cbWndExtra,NULL
	push  hInst
	pop   wc.hInstance
	mov   wc.hbrBackground,COLOR_WINDOW+1
	mov   wc.lpszMenuName,OFFSET MenuName
	mov   wc.lpszClassName,OFFSET ClassName
	invoke LoadIcon,NULL,IDI_APPLICATION
	mov   wc.hIcon,eax
	mov   wc.hIconSm,eax
	invoke LoadCursor,NULL,IDC_ARROW
	mov   wc.hCursor,eax
	invoke RegisterClassEx, addr wc
	INVOKE CreateWindowEx,WS_EX_CLIENTEDGE,ADDR ClassName,ADDR AppName,\
           WS_OVERLAPPEDWINDOW,CW_USEDEFAULT,\
           CW_USEDEFAULT,640,480,NULL,NULL,\
           hInst,NULL
	mov   hwnd,eax
	INVOKE ShowWindow, hwnd,SW_SHOWNORMAL
	INVOKE UpdateWindow, hwnd
	.WHILE TRUE
                INVOKE GetMessage, ADDR msg,NULL,0,0
                .BREAK .IF (!eax)
                INVOKE TranslateMessage, ADDR msg
                INVOKE DispatchMessage, ADDR msg
	.ENDW
	mov     eax,msg.wParam
	ret
WinMain endp

WndProc proc hWnd:HWND, uMsg:UINT, wParam:WPARAM, lParam:LPARAM
	LOCAL hdc:HDC
	LOCAL ps:PAINTSTRUCT
	.IF uMsg==WM_PAINT
			invoke BeginPaint,hWnd, ADDR ps
			mov    hdc,eax
			invoke TextOut,hdc,100,100,ADDR OurText,15
			invoke EndPaint,hWnd, ADDR ps
	.ELSEIF uMsg==WM_DESTROY
		invoke PostQuitMessage,NULL
	.ELSEIF uMsg==WM_COMMAND
		mov eax,wParam
		.if ax==IDM_ABOUT
			invoke DialogBoxParam,hInstance, addr DlgName,hWnd,OFFSET DlgProc,NULL
		.else
			invoke DestroyWindow, hWnd
		.endif
	.ELSE
		invoke DefWindowProc,hWnd,uMsg,wParam,lParam
		ret
	.ENDIF
	xor    eax,eax
	ret
WndProc endp

DlgProc PROC hWnd:HWND,iMsg:DWORD,wParam:WPARAM, lParam:LPARAM
	.if iMsg==WM_INITDIALOG
		mov eax,TRUE
		ret
	.elseif iMsg==WM_CLOSE
		invoke EndDialog,hWnd,NULL
	.elseif iMsg==WM_COMMAND
		mov eax,wParam
		mov edx,eax
		shr edx,16
		.if dx==BN_CLICKED
			.if eax==ID_OK
				invoke EndDialog,hWnd,NULL		
			.endif
		.endif
	.else
		mov eax,FALSE
		ret
	.endif
	mov  eax,TRUE
	ret
DlgProc endp
end start
