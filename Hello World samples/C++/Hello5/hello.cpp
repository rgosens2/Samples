#include <afxwin.h>
#include <afxdlgs.h>

#include "resource.h"

#define MAXSIZE 256
#define MEMSIZE 65535


// Define a window class derived from CFrameWnd
class CHelloWindow : public CFrameWnd
{
public:
	CHelloWindow()
	{ 
		CRect rect( CPoint(100,100), CSize(640,480) );
		Create(NULL, _T("Hello World!"), WS_OVERLAPPEDWINDOW, rect,
			NULL, MAKEINTRESOURCE(IDR_MENU1), 0, NULL);
	}

	//{{AFX_MSG( CHelloWindow )
	afx_msg void OnCreate();
	afx_msg void OnSize();
	afx_msg void OnAbout();
	afx_msg void OnOpen();
	afx_msg void OnSaveAs();
	afx_msg void OnExit();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()

private:
	CEdit editWindow;

};

void CHelloWindow::OnCreate()
{
	CRect rect;
	GetClientRect(rect);
	editWindow.Create(WS_VISIBLE | WS_CHILD | ES_LEFT | ES_MULTILINE |
			ES_AUTOHSCROLL | ES_AUTOVSCROLL, rect, this, 0);
	editWindow.SetFocus();
	//editWindow.SetWindowText("qqq");
}

void CHelloWindow::OnSize()
{
	//CRect rect;
	//GetClientRect(rect);
	//editWindow.MoveWindow(rect, TRUE);	
}

void CHelloWindow::OnAbout()
{
	CDialog about(IDD_DIALOG1);
	about.DoModal();
}

void CHelloWindow::OnOpen()
{
	CFileDialog dlg(TRUE, ".txt", NULL,
		OFN_FILEMUSTEXIST | OFN_PATHMUSTEXIST | OFN_LONGNAMES | OFN_EXPLORER | OFN_HIDEREADONLY,
		"All Files (*.*)|*.*|Text Files (*.txt)|*.txt||");
	
	if ( dlg.DoModal() == IDOK ) {
		
		CString fileName;
		fileName = dlg.GetPathName();
		//MessageBox(fileName);

		CFile file(fileName, CFile::modeReadWrite);		

		CHAR pbuf[MEMSIZE];
		ZeroMemory(&pbuf, MEMSIZE);

		UINT nBytesRead = file.Read(pbuf, MEMSIZE-1);		
		editWindow.SetWindowText(pbuf);

		file.Close();

	}	
	editWindow.SetFocus();
}

void CHelloWindow::OnSaveAs()
{
	CFileDialog dlg(FALSE, ".txt", NULL,
		OFN_LONGNAMES | OFN_EXPLORER | OFN_HIDEREADONLY,
		"All Files (*.*)|*.*|Text Files (*.txt)|*.txt||");

	if ( dlg.DoModal() == IDOK ) {
		
		CString fileName;
		fileName = dlg.GetPathName();
		//MessageBox(fileName);

		CFile file(fileName, CFile::modeCreate | CFile::modeReadWrite);		

		CHAR pbuf[MEMSIZE];
		ZeroMemory(&pbuf, MEMSIZE);

		UINT nBytesRead = editWindow.GetWindowText(pbuf, MEMSIZE-1);
		file.Write(pbuf, nBytesRead);

		file.Close();

	}
	editWindow.SetFocus();
}

void CHelloWindow::OnExit()
{
	DestroyWindow();
}


// CHelloWindow message map
BEGIN_MESSAGE_MAP( CHelloWindow, CFrameWnd )
	//{{AFX_MSG_MAP( CHelloWindow )
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_COMMAND(IDM_ABOUT, OnAbout)
	ON_COMMAND(IDM_OPEN, OnOpen)
	ON_COMMAND(IDM_SAVEAS, OnSaveAs)
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
