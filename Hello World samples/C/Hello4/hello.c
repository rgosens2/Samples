#include <windows.h>

#include "resource.h"


LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
LRESULT WINAPI AboutDlgProc(HWND, UINT, WPARAM, LPARAM);

HANDLE g_hInstance;


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
    PAINTSTRUCT ps;
    HDC         hdc;
    
    /* Switch according to what type of message we have received */
    switch (uMsg) {    
		case WM_PAINT:
			/* We receive WM_PAINT every time window is updated */
			hdc = BeginPaint(hWnd, &ps);
			TextOut(hdc, 100, 100, "Hello, Windows!", 15);
			EndPaint(hWnd, &ps);
			return 0;
			break;

		case WM_COMMAND:
			switch( wParam ) {
				case IDM_ABOUT:
					DialogBox(g_hInstance, MAKEINTRESOURCE(IDD_DIALOG1), hWnd, (DLGPROC)AboutDlgProc);
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


