Attribute VB_Name = "Module1"
' ###################### CONST DECLARE

' Const for readfromURL
Global Const scUserAgent = "API-Guide test program"
Global Const INTERNET_OPEN_TYPE_DIRECT = 1
Global Const INTERNET_OPEN_TYPE_PROXY = 3
Global Const INTERNET_FLAG_RELOAD = &H80000000

' General Const
Global Const txtWait = "3"
Global Const DEBUG_MODE = False
Global Const DEBUG_RS_FIELD = "producerName"

' ###################### VAR DECLARE

Global REPLACECONSTTXT As String
Global REPLACEMAPFIELDNAME As String
Global REPLACECONSTVALUE As String
Global REPLACEMAPFIELDNAME_SITE As String
Global SQL_MAIL As String
Global SQL_COUNT As String
Global ERROR_PAGE As String
Global ERROR_PAGE_URL As String
Global DEBUG_NAME As String

' DB Var Declare
Global Conn As ADODB.Connection
Global rs As ADODB.Recordset

' Open Connection to DB
Sub OpenDBConnect()
    Set Conn = New ADODB.Connection
    Conn.Open "DRIVER={MySQL ODBC 3.51 Driver};database=piacitaly;server=128.121.222.126;uid=piacitaly;pwd=s$u(q?6d"
End Sub
