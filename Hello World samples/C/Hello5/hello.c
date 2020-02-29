#include <windows.h>

#include "resource.h"

#define MAXSIZE 256
#define MEMSIZE 65535


LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
LRESULT WINAPI AboutDlgProc(HWND, UINT, WPARAM, LPARAM);

HANDLE g_hInstance;


OPENFILENAME ofn;
HWND hwndEdit;
HANDLE hFile;
HANDLE hMemory;
DWORD *pMemory;
DWORD dwNumberOfChar;
DWORD dwSizeReadWrite;
CHAR *strFilterString = "All Files\0*.*\0Text Files (*.txt)\0*.txt\0\0";
BYTE buffer[MAXSIZE];



/* Application entry point */
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
		   LPSTR szCmdLine, int nCmdShow)
{
    static char szClassName[] = "WinHello";
    HWND        hWnd;
    MSG         msg;
    WNDCLASSEX  wc;


    /* Fill in WNDCLASSEX struct members */
    wc.cbSize         = sizeof(wc);
    wc.style          = CS_HREDRAW | CS_VREDRAW;
    wc.lpfnWndProc    = WndProc;
    wc.cbClsExtra     = 0;
    wc.cbWndExtra     = 0;
    wc.hInstance      = hInstance;
    wc.hIcon          = LoadIcon(NULL, IDI_APPLICATION);
    wc.hCursor        = LoadCursor(NULL, IDC_ARROW);
    wc.hbrBackground  = (HBRUSH)GetStockObject(WHITE_BRUSH);    
	wc.lpszMenuName   = MAKEINTRESOURCE(IDR_MENU1);
	wc.lpszClassName  = szClassName;
	wc.hIconSm        = LoadIcon(NULL, IDI_APPLICATION);

    
    /* Register a new window class with Windows */
    RegisterClassEx(&wc);

	g_hInstance = hInstance;


    /* Create a window based on our new class */    
	hWnd = CreateWindowEx(WS_EX_OVERLAPPEDWINDOW, szClassName, "Hello, World!",
			WS_OVERLAPPEDWINDOW,
			CW_USEDEFAULT, CW_USEDEFAULT,
			640, 480,
			NULL, NULL, hInstance, NULL);


    /* Show and update our window */
    ShowWindow(hWnd, nCmdShow);
    UpdateWindow(hWnd);


    /* Retrieve and process messages until we get WM_QUIT */
    while ( GetMessage(&msg, NULL, 0, 0) ) {
		TranslateMessage(&msg);    /* for certain keyboard messages */
		DispatchMessage(&msg);     /* send message to WndProc       */
    } 


    /* Exit with status specified in WM_QUIT message */
    return msg.wParam;
}


/* Window procedure */
LRESULT CALLBACK WndProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) 
{
    
	/* Switch according to what type of message we have received */
    switch (uMsg) {
	case WM_CREATE:
			hwndEdit = CreateWindowEx(0, "edit", NULL,
						   WS_VISIBLE | WS_CHILD | ES_LEFT | ES_MULTILINE |
						   ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0, 0, 0, 0, hWnd, NULL,
						   g_hInstance, NULL);
			SetFocus(hwndEdit);

			/* Initialize OPENFILENAME structure */
			ZeroMemory(&ofn, sizeof(OPENFILENAME)); 
			ofn.lStructSize = sizeof(OPENFILENAME); 
			ofn.hwndOwner = hWnd;
			ofn.hInstance = g_hInstance;
			ofn.lpstrFilter = strFilterString;
			ofn.lpstrFile = buffer;
			ofn.nMaxFile = MAXSIZE;
			break;

		case WM_SIZE:
			MoveWindow(hwndEdit, 0, 0, LOWORD(lParam), HIWORD(lParam), TRUE);
			break;	

		case WM_COMMAND:
			switch( wParam ) {
				case IDM_ABOUT:
					DialogBox(g_hInstance, MAKEINTRESOURCE(IDD_DIALOG1), hWnd, (DLGPROC)AboutDlgProc);
					break;

				case IDM_OPEN:
					ofn.Flags = OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_LONGNAMES |
                                OFN_EXPLORER | OFN_HIDEREADONLY;

					if( GetOpenFileName(&ofn) ) {
						hFile = CreateFile(buffer, GENERIC_READ | GENERIC_WRITE,
                                       FILE_SHARE_READ | FILE_SHARE_WRITE,
                                       NULL, OPEN_EXISTING, FILE_ATTRIBUTE_ARCHIVE, NULL);

						hMemory = GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, MEMSIZE);
						pMemory = GlobalLock(hMemory);

						ReadFile(hFile, pMemory, MEMSIZE-1, &dwSizeReadWrite, NULL);
						SendMessage(hwndEdit, WM_SETTEXT, 0, (LPARAM)(LPCTSTR)pMemory);

						CloseHandle(hFile);
						GlobalUnlock(pMemory);
						GlobalFree(hMemory);
					}
					SetFocus(hwndEdit);
					break;

				case IDM_SAVEAS:
					ofn.Flags = OFN_LONGNAMES | OFN_EXPLORER | OFN_HIDEREADONLY;

					if( GetSaveFileName(&ofn) ) {
						hFile = CreateFile(buffer, GENERIC_READ | GENERIC_WRITE,
                                       FILE_SHARE_READ | FILE_SHARE_WRITE,
                                       NULL, CREATE_NEW, FILE_ATTRIBUTE_ARCHIVE, NULL);
					
						hMemory = GlobalAlloc(GMEM_MOVEABLE | GMEM_ZEROINIT, MEMSIZE);
						pMemory = GlobalLock(hMemory);

						dwNumberOfChar = SendMessage(hwndEdit, WM_GETTEXT, MEMSIZE-1, (LPARAM)(LPCTSTR)pMemory);					
						WriteFile(hFile, pMemory, dwNumberOfChar, &dwSizeReadWrite, NULL);

						CloseHandle(hFile);
						GlobalUnlock(pMemory);
						GlobalFree(hMemory);

					}
					SetFocus(hwndEdit);
					break;

				case IDM_EXIT:
					DestroyWindow(hWnd);
					break;
			}
			break;

		case WM_DESTROY:
			/* Window has been destroyed, so exit cleanly */
			PostQuitMessage(0);
			return 0;
			break;
    }


    /* Send any messages we don't handle to default window procedure */    
    return DefWindowProc(hWnd, uMsg, wParam, lParam);
}


/* About Dialog Box window procedure */
LRESULT CALLBACK AboutDlgProc(HWND hDlg, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	switch(uMsg) {
		case WM_INITDIALOG:
			return TRUE;
			break;
			
		case WM_CLOSE:
			EndDialog(hDlg, TRUE);
			return TRUE;
			break;

		case WM_COMMAND:
			switch(wParam) {
				case IDOK:
					EndDialog(hDlg, TRUE);
					return TRUE;
					break;
			}
			break;
   }

   return FALSE;
}


