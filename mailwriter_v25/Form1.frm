VERSION 5.00
Begin VB.Form frmMailWriter 
   Caption         =   "MailWriter 2.0"
   ClientHeight    =   4845
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9075
   LinkTopic       =   "Form1"
   ScaleHeight     =   4845
   ScaleWidth      =   9075
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame frmPleaseWait 
      Height          =   375
      Left            =   5760
      TabIndex        =   29
      Top             =   4320
      Width           =   375
      Begin VB.Label lblPleaseWait 
         Caption         =   "Please Wait ..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2520
         TabIndex        =   30
         Top             =   1920
         Width           =   3255
      End
   End
   Begin VB.Frame frmSimple 
      Caption         =   "Simple Mode"
      Height          =   375
      Left            =   5160
      TabIndex        =   22
      Top             =   4320
      Visible         =   0   'False
      Width           =   495
      Begin VB.ComboBox slcWebSiteSimple 
         Height          =   315
         Left            =   600
         TabIndex        =   28
         Text            =   "SelectWebSite"
         Top             =   1560
         Width           =   3015
      End
      Begin VB.CommandButton cmdAdvance 
         Caption         =   "Advance"
         Height          =   375
         Left            =   6480
         TabIndex        =   25
         Top             =   3600
         Width           =   2415
      End
      Begin VB.Label lbl4 
         Caption         =   "4. Premere Write"
         Height          =   255
         Left            =   600
         TabIndex        =   27
         Top             =   2040
         Width           =   4455
      End
      Begin VB.Label lbl3 
         Caption         =   "3. Selezionare il sito Web dal menù sotto"
         Height          =   255
         Left            =   600
         TabIndex        =   26
         Top             =   1200
         Width           =   4455
      End
      Begin VB.Label lbl2 
         Caption         =   "2. Aprire Microsoft Outlook ( programma per posta elettronica )"
         Height          =   255
         Left            =   600
         TabIndex        =   24
         Top             =   840
         Width           =   5055
      End
      Begin VB.Label lbl1 
         Caption         =   "1. Eseguire la connessione ad Internet"
         Height          =   255
         Left            =   600
         TabIndex        =   23
         Top             =   480
         Width           =   2895
      End
   End
   Begin VB.CommandButton cmdWritefromFile 
      Caption         =   "Write from File"
      Height          =   375
      Left            =   120
      TabIndex        =   21
      Top             =   3000
      Width           =   2775
   End
   Begin VB.Frame frmfromHtml 
      Caption         =   "Mail from Html"
      Height          =   1815
      Left            =   0
      TabIndex        =   19
      Top             =   2280
      Width           =   3135
      Begin VB.TextBox txtMailfromHtml 
         Height          =   285
         Left            =   120
         TabIndex        =   20
         Top             =   360
         Width           =   2775
      End
   End
   Begin VB.Frame frmWebSite 
      Caption         =   "WebSite"
      Height          =   2055
      Left            =   0
      TabIndex        =   16
      Top             =   120
      Width           =   3135
      Begin VB.CommandButton cmdEditProducer 
         Caption         =   "Edit Producer"
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   960
         Width           =   2775
      End
      Begin VB.ComboBox slcWebSite 
         Height          =   315
         ItemData        =   "Form1.frx":0000
         Left            =   120
         List            =   "Form1.frx":0002
         TabIndex        =   17
         Text            =   "SelectWebSite"
         Top             =   480
         Width           =   2775
      End
   End
   Begin VB.Frame frmSetting 
      Caption         =   "Setting"
      Height          =   3975
      Left            =   3240
      TabIndex        =   3
      Top             =   120
      Width           =   5655
      Begin VB.TextBox txtURLLeftTable 
         Height          =   405
         Left            =   360
         TabIndex        =   9
         Top             =   1080
         Width           =   5175
      End
      Begin VB.TextBox txtURLBody 
         Height          =   375
         Left            =   360
         TabIndex        =   8
         Top             =   480
         Width           =   5175
      End
      Begin VB.TextBox txtDestDir 
         Height          =   375
         Left            =   360
         TabIndex        =   7
         Top             =   3000
         Width           =   3015
      End
      Begin VB.TextBox txtSubject 
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   2400
         Width           =   5175
      End
      Begin VB.TextBox txtURLBaseTable 
         Height          =   375
         Left            =   360
         TabIndex        =   5
         Top             =   1800
         Width           =   5175
      End
      Begin VB.TextBox txtWait 
         Height          =   288
         Left            =   2040
         TabIndex        =   4
         Text            =   "3"
         Top             =   3600
         Width           =   375
      End
      Begin VB.Label lblPause 
         Caption         =   "Pause Between Lettrs:"
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   3600
         Width           =   2415
      End
      Begin VB.Label lblURLLeftTable 
         Caption         =   "Left Table URL"
         Height          =   615
         Left            =   360
         TabIndex        =   14
         Top             =   840
         Width           =   5175
      End
      Begin VB.Label Label4 
         Caption         =   "Destination Directory"
         Height          =   615
         Left            =   360
         TabIndex        =   13
         Top             =   2760
         Width           =   3375
      End
      Begin VB.Label Label3 
         Caption         =   "Subject"
         Height          =   615
         Left            =   360
         TabIndex        =   12
         Top             =   2160
         Width           =   3375
      End
      Begin VB.Label lblURLBody 
         Caption         =   "URL Body"
         Height          =   615
         Left            =   360
         TabIndex        =   11
         Top             =   240
         Width           =   3375
      End
      Begin VB.Label lblurlBaseTable 
         Caption         =   "Table File Directory"
         Height          =   615
         Left            =   360
         TabIndex        =   10
         Top             =   1560
         Width           =   3375
      End
   End
   Begin VB.CommandButton cmdEsci 
      Caption         =   "Close"
      Height          =   375
      Left            =   6480
      TabIndex        =   2
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton cmdWrite 
      Caption         =   "Write"
      Height          =   375
      Left            =   7800
      TabIndex        =   0
      Top             =   4320
      Width           =   1095
   End
   Begin VB.Label lblStato 
      Caption         =   "Mailwriter Ready."
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   4320
      Width           =   6015
   End
End
Attribute VB_Name = "frmMailWriter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim olapp As New Outlook.Application
Private Declare Function InternetOpen Lib "wininet" Alias "InternetOpenA" (ByVal sAgent As String, ByVal lAccessType As Long, ByVal sProxyName As String, ByVal sProxyBypass As String, ByVal lFlags As Long) As Long
Private Declare Function InternetCloseHandle Lib "wininet" (ByVal hInet As Long) As Integer
Private Declare Function InternetReadFile Lib "wininet" (ByVal hFile As Long, ByVal sBuffer As String, ByVal lNumBytesToRead As Long, lNumberOfBytesRead As Long) As Integer
Private Declare Function InternetOpenUrl Lib "wininet" Alias "InternetOpenUrlA" (ByVal hInternetSession As Long, ByVal lpszUrl As String, ByVal lpszHeaders As String, ByVal dwHeadersLength As Long, ByVal dwFlags As Long, ByVal dwContext As Long) As Long

Private Sub cmdAdvance_Click()
    frmSimple.Visible = False
End Sub

' Visualizza il Form del Produttore
Private Sub cmdEditProducer_Click()
    frmProducer.Show
End Sub

' Esci
Private Sub cmdEsci_Click()
    ' Chiude il programma
    If MsgBox("Sure to Exit?", vbYesNo) = vbYes Then End
End Sub


Private Sub cmdWrite_Click()
    On Error Resume Next
    pleaseWait (True)
    ' Apro la connessione al Database
    Dim strConn, Row_Remaning, Row_For_Page, direzione, Current_Page
    
    
    ReportError ("Connecting to DB ...")
    ' Eseguo la connessione al DB
    Call OpenDBConnect

    ReportError ("DB Connection Succes! Retriving Record ...")
    
    
    ' Creo il RecordSet per contare i RECORD
    Dim rs As ADODB.Recordset
    Set rs = conn.Execute(SQL_COUNT)
    RecordNumber = rs(0)
    ' Errore nessun Record Trovato
    If RecordNumber <= 0 Then
        ReportError ("No Record Found")
        Exit Sub
    End If
    rs.Close
    Set rs = Nothing
    ' Fine conteggio Record
    
    ' Apro il Recordset per generare le lettere
    Set rs = CreateObject("ADODB.Recordset")
    SQL = SQL_MAIL
    rs.Open SQL, conn, 1, 1
    
    ReportError ("Get Information From HTTP ...")
    ' Imposto i parametri di ricerca
    PatternCaratteri = "##"
    PatternCaratteriLen = Len(PatternCaratteri)
    PatternLeftTableFile = "**LEFT_TABLE**"
    PatternDownTableFile = "**DOWN_TABLE**"
    
    ' Leggo una pagina di Errore
    ERROR_PAGE = ""
    ERROR_PAGE = readfromURL(ERROR_PAGE_URL)
    
    ' Leggo il contenuto di HTML URL Body
    TmpBodyO = ""
    TmpBodyO = readfromURL(txtURLBody.text)
    
    ' Leggo il contenuto di Left Table File
    leftTableO = ""
    leftTableO = readfromURL(txtURLLeftTable.text)
       
    pleaseWait (False)
    For a = 0 To RecordNumber - 1
            ' Muovo la status Bar
            numMail = numMail + 1
            ReportError ("Creating Mail " & numMail & " of " & RecordNumber)
            
            ' Imposto le variabili allo stato iniziale
            Tmpbody = TmpBodyO
            leftTable = leftTableO
            
            ' Debug
             DEBUG_NAME = rs(DEBUG_RS_FIELD)
            ' Leggo la tabella sotto
            If rs("tableField") <> "" Then
               downTable = readfromURL(txtURLBaseTable.text + rs("tableField"))
            End If
            
            
            ' **********************************************************************
            ' **************************** UNISCO **********************************
            If leftTable <> "" Then
                Tmpbody = replacetext(Tmpbody, 1, PatternLeftTableFile, leftTable)
            End If
            If downTable <> "" Then
                Tmpbody = replacetext(Tmpbody, 1, PatternDownTableFile, downTable)
            End If
            ' *********************************************************************
            ' ********************** GENERO IL TESTO ******************************
            Body = text_replace(Tmpbody, rs, PatternCaratteri)
            ' **********************************************************************
            ' **************************** SUBJECT *********************************
            Subject = text_replace(txtSubject.text, rs, PatternCaratteri)
            ' **********************************************************************
            ' **************************** FINE ************************************
            Call SendOutlook(sendTo, sendFrom, Subject, Body, txtDestDir.text & rs("producerName") & ".msg")
            rs.MoveNext
            
            ' Dispay debug Information
            If DEBUG_MODE = True Then
                frmDebug.txtDebug.text = Body
                frmDebug.Show
            End If
        Next
        
        ' Finisco di Generare le lettere
        Set olapp = Nothing
        lblStato.Caption = "Finish!! * BE HAPPY *"
        a = MsgBox("Lettere create. Uscire.", vbYes, "Lettere")
        End
End Sub

Function readfromURL(URL As String)
    'KPD-Team 1999
    'URL: http://www.allapi.net/
    'E-Mail: KPDTeam@Allapi.net
    
    Dim hOpen As Long, hFile As Long, sBuffer As String, Ret As Long
    'Create a buffer for the file we're going to download
    sBuffer = Space(100000)
    'Create an internet connection
    hOpen = InternetOpen(scUserAgent, INTERNET_OPEN_TYPE_DIRECT, vbNullString, vbNullString, 0)
    'Open the url
    hFile = InternetOpenUrl(hOpen, URL, vbNullString, ByVal 0&, INTERNET_FLAG_RELOAD, ByVal 0&)
    'Read the first 1000 bytes of the file
    InternetReadFile hFile, sBuffer, 100000, Ret
    'clean up
    InternetCloseHandle hFile
    InternetCloseHandle hOpen
    
    'Convert File in Windows NewLine
    readfromURL = Trim(Replace(sBuffer, Chr(10), vbCrLf))
    ' Check if the page read is Error page
    If readfromURL = ERROR_PAGE Then
        If MsgBox("Warning: Cannot Found page: " & URL & " " & DEBUG_NAME & " .Exit?", vbYesNo, "readfromURL" & DEBUG_NAME) = vbYes Then
            End
        End If
    End If
End Function

Public Sub SendOutlook(sendTo, sendFrom, Subject, Body, FileName)
    On Error Resume Next
    Dim olMail As Outlook.MailItem
        
    'Create a new mail object form the
    'Outlook98 Application object
    Set olMail = olapp.CreateItem(olMailItem)
        
    'Set the mail fields of the olMail object
    
    ' Scommentare Oulook >= 2k
    ' olMail.BodyFormat = olFormatRichText
    
    olMail.Subject = Subject
    olMail.To = sendTo
    olMail.HTMLBody = Body
    ' Controllo se è stato specificato il file da salvare
    If Len(FileName) > 0 Then
        olMail.SaveAs FileName, olMSG
   
    Else
    'Tell Outlook to send this message
        olMail.Send
    End If
    'Be kind to your environment and clean
    'up your unused objects
    Set olMail = Nothing
    '--end code block
    ' Inserisco blocco di attesa
    pausa (Int(txtWait.text))
   
End Sub

' Paunse for n seconds
Private Sub pausa(n)
  Dim S
  S = Timer
  Do While Timer < S + n
      DoEvents
  Loop
 End Sub

Function replacetext(strInput, beginReplace, pattern, replaceString)
    findFirstChar = InStr(beginReplace, strInput, pattern)
    If findFirstChar > 0 Then
        ' Trovato corrispondenza caretti da sostituire
        replacetext = Mid(strInput, 1, findFirstChar - 1)
        replacetext = replacetext & replaceString
        PatternLen = Len(pattern)
        continuosost = findFirstChar + Len(pattern)
        replacetext = replacetext + Mid(strInput, continuosost)
    Else
        ' Non trovata corrispondenza caretteri da sosttituire
        replacetext = strInput
    End If
End Function

Sub ReportError(information)
    lblStato.Caption = information
End Sub


Private Sub Form_Load()
    pleaseWait (True)
    On Error Resume Next
    Dim SQL, Row_Remaning, Row_For_Page, direzione, Current_Page
    Set rs = CreateObject("ADODB.Recordset")
    Set conn = CreateObject("ADODB.Connection")
    Call OpenDBConnect
    Set rs = conn.Execute("SELECT COUNT(*) FROM MAILWRITER_SITE")
    RecordNumber = rs(0)
    SQL = "SELECT siteName FROM MAILWRITER_SITE"
    Set rs = CreateObject("ADODB.Recordset")
    rs.Open SQL, conn, 1, 3
        For a = 0 To RecordNumber - 1
            slcWebSite.AddItem rs("siteName"), a
            slcWebSiteSimple.AddItem rs("siteName"), a
            rs.MoveNext
        Next
' ---------------------------------------------------------------------------------------------------
' Start Simple Mode
' ---------------------------------------------------------------------------------------------------
    frmSimple.Visible = True
    frmSimple.Height = 4215
    frmSimple.Left = 0
    frmSimple.Top = 0
    frmSimple.Width = 9195
    
    enableControl (False)
    rs.Close
    pleaseWait (False)
End Sub


Private Sub slcWebSite_Click()
    slcClick (slcWebSite.text)
End Sub

Sub enableControl(value)
    If value = True Then
        txtURLBody.Enabled = True
        txtURLLeftTable.Enabled = True
        txtURLBaseTable.Enabled = True
        txtDestDir.Enabled = True
        txtSubject.Enabled = True
    ElseIf value = False Then
        txtURLBody.Enabled = False
        txtURLLeftTable.Enabled = False
        txtURLBaseTable.Enabled = False
        txtDestDir.Enabled = False
        txtSubject.Enabled = False
    End If

End Sub


Function txtReplaced(rsvalue, name, Mode)
    On Error Resume Next
    If rsvalue <> "Null" Then
        txtReplaced = rsvalue
    ElseIf Len(replacedConst(name)) > 0 Then
        txtReplaced = replacedConst(name)
    Else
        ' Match non trovato
        If MsgBox("Warning! Cannot find match: " & name & " " & DEBUG_NAME & ". Exit?", vbYesNo, "txtReplaced") = vbYes Then
            End
        End If
    End If
    If Mode = "U" Then
        txtReplaced = UCase(txtReplaced)
    End If
    
End Function

Function replacedConst(name)
    a = Split(REPLACECONSTTXT, ";")
    b = Split(REPLACECONSTVALUE, ";")
    For i = 0 To UBound(a)
        If a(i) = name Then
            replacedConst = b(i)
        End If
    Next
End Function

Function checkMap(rname)
    a = Split(REPLACEMAPFIELDNAME, ";")
    b = Split(REPLACEMAPFIELDNAME_SITE, ";")
    For i = 0 To UBound(a)
        If LCase(a(i)) = LCase(rname) Then
            checkMap = b(i)
        End If
    Next
    If checkMap = "" Then
        If MsgBox("Warning! Cannot find map: " & rname & " " & DEBUG_NAME & ". Exit?", vbYesNo, "checkMap" & DEBUG_NAME) = vbYes Then
            End
        End If
    End If
End Function

Function text_replace(tmptext, rs, PatternCaratteri) As String
    On Error Resume Next
    allDone = False
    Do While allDone = False
                carcur = 1
                testo = tmptext
                OutputText = ""
                allDone = True
                While InStr(carcur, testo, PatternCaratteri)
                    carnext = InStr(carcur, testo, PatternCaratteri)
                    carnext1 = InStr(carnext + 2, testo, PatternCaratteri)
                    rname = Mid(testo, carnext + 2, carnext1 - carnext - 2)
                    OutputText = OutputText & Mid(testo, carcur, carnext - carcur)
                    
                    Mode = ""
                    If Mid(rname, Len(rname) - 1, 1) = "$" Then
                        Mode = rname
                        rname = Mid(rname, 1, Len(rname) - 2)
                        Mode = Mid(Mode, Len(Mode), 1)
                    End If
                    
                    rname = checkMap(rname)
                    
                    If rs(rname) = Null Then
                        OutputText = OutputText & txtReplaced("Null", rname, Mode)
                    Else
                        OutputText = OutputText & txtReplaced(rs(rname), rname, Mode)
                    End If
                    
                    carcur = carnext1 + 2
                    allDone = False
                Wend
                If carcur < Len(testo) Then OutputText = OutputText & Mid(testo, carcur, Len(testo) + 1 - carcur)
                tmptext = OutputText
    Loop
    text_replace = OutputText
End Function
            
Sub slcClick(item As String)
    pleaseWait (True)
     ' Ricavo internalName
    Dim SQL, Row_Remaning, Row_For_Page, direzione, Current_Page
    Set rs = CreateObject("ADODB.Recordset")
    Set conn = CreateObject("ADODB.Connection")
    Call OpenDBConnect
    SQL = "SELECT internalName FROM MAILWRITER_SITE where siteName = '" & item & "'"
    rs.Open SQL, conn, 1, 3
    internalName = rs("internalName")
    ' Ricavo REPLACEMAPFIELDNAME e REPLACEMAPFIELDNAME_SITE
    Set rs = conn.Execute("SELECT COUNT(*) FROM MAILWRITER_MAP")
    RecordNumber = rs(0)
    Set rs = conn.Execute("SELECT MAP_FIELD_NAME, " & internalName & " FROM MAILWRITER_MAP")
    For a = 0 To RecordNumber - 1
        REPLACEMAPFIELDNAME = REPLACEMAPFIELDNAME & rs("MAP_FIELD_NAME") & ";"
        REPLACEMAPFIELDNAME_SITE = REPLACEMAPFIELDNAME_SITE & rs(internalName) & ";"
        rs.MoveNext
    Next
    REPLACEMAPFIELDNAME = Mid(REPLACEMAPFIELDNAME, 1, Len(REPLACEMAPFIELDNAME) - 1)
    REPLACEMAPFIELDNAME_SITE = Mid(REPLACEMAPFIELDNAME_SITE, 1, Len(REPLACEMAPFIELDNAME_SITE) - 1)
    ' Ricavo REPLACECONSTTXT e REPLACECONSTVALUE
    Set rs = conn.Execute("SELECT COUNT(*) FROM MAILWRITER_CONST")
    RecordNumber = rs(0)
    Set rs = conn.Execute("SELECT CONST, " & internalName & " FROM MAILWRITER_CONST")
    For a = 0 To RecordNumber - 1
        REPLACECONSTTXT = REPLACECONSTTXT & rs("CONST") & ";"
        REPLACECONSTVALUE = REPLACECONSTVALUE & rs(internalName) & ";"
        rs.MoveNext
    Next
    REPLACECONSTTXT = Mid(REPLACECONSTTXT, 1, Len(REPLACECONSTTXT) - 1)
    REPLACECONSTVALUE = Mid(REPLACECONSTVALUE, 1, Len(REPLACECONSTVALUE) - 1)
    ' Ricavo Settings
    Set rs = conn.Execute("SELECT * FROM MAILWRITER_SETTINGS where internalName = '" & internalName & "'")
    enableControl (True)
    sendFrom = rs("sendFrom") & ""
    txtURLBody = rs("txtURLBody") & ""
    txtURLLeftTable = rs("txtURLLeftTable") & ""
    txtURLBaseTable = rs("txtURLBaseTable") & ""
    txtDestDir = rs("txtDestDir") & ""
    txtSubject = rs("txtSubject") & ""
    ERROR_PAGE_URL = rs("ERROR_PAGE_URL") & ""
    SQL_COUNT = rs("SQL_COUNT") & ""
    SQL_MAIL = rs("SQL_MAIL") & ""
    ' Chiudo la connessione al DataBase
    rs.Close
    conn.Close
    pleaseWait (False)
End Sub

Private Sub slcWebSiteSimple_Click()
        Call slcClick(slcWebSiteSimple.text)
End Sub

Private Sub pleaseWait(stato As Boolean)
    If stato = True Then
        frmPleaseWait.Height = frmMailWriter.Height
        frmPleaseWait.Width = frmMailWriter.Width
        frmPleaseWait.Left = 0
        frmPleaseWait.Top = 0
        frmPleaseWait.Visible = True
        frmMailWriter.Refresh
    Else
        frmPleaseWait.Visible = False
    End If
End Sub

