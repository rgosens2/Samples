#include <afxwin.h>

#include "resource.h"


// Define a window class derived from CFrameWnd
class CHelloWindow : public CFrameWnd
{
public:
	CHelloWindow()
	{ 
		Create(NULL, _T("Hello World!"), WS_OVERLAPPEDWINDOW, rectDefault,
			NULL, MAKEINTRESOURCE(IDR_MENU1), 0, NULL);
	}

	//{{AFX_MSG( CHelloWindow )
	afx_msg void OnPaint();
	afx_msg void OnAbout();
	afx_msg void OnExit();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};


void CHelloWindow::OnPaint()
{
	CPaintDC dc(this);
	CString s("Hello Windows!");
	dc.TextOut(100, 100, s);
}


void CHelloWindow::OnAbout()
{
	CDialog about(IDD_DIALOG1);
	about.DoModal();
}


void CHelloWindow::OnExit()
{
	DestroyWindow();
}


// CHelloWindow message map
BEGIN_MESSAGE_MAP( CHelloWindow, CFrameWnd )
	//{{AFX_MSG_MAP( CHelloWindow )
	ON_WM_PAINT()
	ON_COMMAND(IDM_ABOUT, OnAbout)
	ON_COMMAND(IDM_EXIT, OnExit)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


// Define an application class derived from CWinApp
class CHelloApp : public CWinApp
{
public:
	virtual BOOL InitInstance();
};


// Construct the CHelloApp's m_pMainWnd data member
BOOL CHelloApp::InitInstance()
{
	m_pMainWnd = new CHelloWindow();
	m_pMainWnd->ShowWindow(m_nCmdShow);
	m_pMainWnd->UpdateWindow();
	return TRUE;
}


// HelloApp's constructor initializes and runs the app
CHelloApp HelloApp;
