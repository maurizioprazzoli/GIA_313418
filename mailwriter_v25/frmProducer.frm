VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmProducer 
   Caption         =   "Edit Producer"
   ClientHeight    =   9390
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11760
   LinkTopic       =   "Form1"
   ScaleHeight     =   9390
   ScaleWidth      =   11760
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame frmPleaseWait 
      Height          =   735
      Left            =   7080
      TabIndex        =   33
      Top             =   8520
      Width           =   615
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
         Height          =   735
         Left            =   4320
         TabIndex        =   34
         Top             =   3960
         Width           =   3255
      End
   End
   Begin VB.CheckBox chkCorpwineComMail 
      Caption         =   "corpwine.com Mail"
      Height          =   195
      Left            =   6600
      TabIndex        =   32
      Top             =   7080
      Width           =   1815
   End
   Begin VB.TextBox txtChinaCorpWine 
      Height          =   285
      Left            =   6600
      MaxLength       =   50
      TabIndex        =   29
      Top             =   5760
      Width           =   3135
   End
   Begin VB.TextBox txtCorpwineComEmail 
      Height          =   285
      Left            =   6600
      MaxLength       =   50
      TabIndex        =   28
      Top             =   5400
      Width           =   3135
   End
   Begin VB.Frame frmProducerList 
      Caption         =   "Producer List"
      Height          =   3975
      Left            =   0
      TabIndex        =   22
      Top             =   120
      Width           =   11295
      Begin MSComctlLib.ListView lblProducer 
         Height          =   3615
         Left            =   120
         TabIndex        =   23
         Top             =   240
         Width           =   11055
         _ExtentX        =   19500
         _ExtentY        =   6376
         Sorted          =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   0
      End
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      Height          =   375
      Left            =   840
      TabIndex        =   21
      Top             =   8280
      Width           =   1095
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   4440
      TabIndex        =   20
      Top             =   8280
      Width           =   1095
   End
   Begin VB.CommandButton cmdDiscard 
      Caption         =   "Discard"
      Height          =   375
      Left            =   2280
      TabIndex        =   19
      Top             =   8280
      Width           =   1095
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "Save"
      Height          =   375
      Left            =   3360
      TabIndex        =   18
      Top             =   8280
      Width           =   1095
   End
   Begin VB.CheckBox chkWineitaliaMail 
      Caption         =   "wineitalia.net Mail"
      Height          =   195
      Left            =   6600
      TabIndex        =   17
      Top             =   6360
      Width           =   1815
   End
   Begin VB.TextBox txttableField 
      Height          =   285
      Left            =   1440
      MaxLength       =   10
      TabIndex        =   15
      Top             =   6840
      Width           =   2535
   End
   Begin VB.TextBox txtpage 
      Height          =   285
      Left            =   1440
      MaxLength       =   10
      TabIndex        =   13
      Top             =   6120
      Width           =   2535
   End
   Begin VB.TextBox txtregion 
      Height          =   285
      Left            =   1440
      MaxLength       =   50
      TabIndex        =   12
      Top             =   5760
      Width           =   2535
   End
   Begin VB.TextBox txtPiacitalyEmail 
      Height          =   285
      Left            =   6600
      MaxLength       =   50
      TabIndex        =   11
      Top             =   4680
      Width           =   3135
   End
   Begin VB.TextBox txtcodeShort 
      Height          =   285
      Left            =   1440
      MaxLength       =   2
      TabIndex        =   10
      Top             =   5400
      Width           =   2535
   End
   Begin VB.Frame frameProducer 
      Caption         =   "Producer Details"
      Height          =   3975
      Left            =   0
      TabIndex        =   1
      Top             =   4200
      Width           =   11295
      Begin VB.TextBox txtCategory 
         Height          =   285
         Left            =   1440
         MaxLength       =   10
         TabIndex        =   30
         Top             =   2280
         Width           =   2535
      End
      Begin VB.TextBox txtWineitaliaEmail 
         Height          =   285
         Left            =   6600
         MaxLength       =   50
         TabIndex        =   27
         Top             =   840
         Width           =   3135
      End
      Begin VB.TextBox txtproducerName 
         Height          =   285
         Left            =   1440
         MaxLength       =   50
         TabIndex        =   4
         Top             =   480
         Width           =   2535
      End
      Begin VB.TextBox txtcodeLong 
         Height          =   285
         Left            =   1440
         MaxLength       =   3
         TabIndex        =   3
         Top             =   840
         Width           =   2535
      End
      Begin VB.CheckBox chkPiacitalyMail 
         Caption         =   "piacitaly.com Mail"
         Height          =   195
         Left            =   6600
         TabIndex        =   2
         Top             =   2520
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "Category"
         Height          =   255
         Left            =   240
         TabIndex        =   31
         Top             =   2280
         Width           =   1095
      End
      Begin VB.Label emailChinaCorpwineCom 
         Caption         =   "E-mail china.corpwine.com"
         Height          =   255
         Left            =   4320
         TabIndex        =   26
         Top             =   1560
         Width           =   2055
      End
      Begin VB.Label emailCorpwineCom 
         Caption         =   "Email corpwine.com"
         Height          =   375
         Left            =   4320
         TabIndex        =   25
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label lblEmailWineitalia 
         Caption         =   "E-mail wineitalia.net"
         Height          =   255
         Left            =   4320
         TabIndex        =   24
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label lbltableField 
         Caption         =   "Table Field"
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   2640
         Width           =   1095
      End
      Begin VB.Label lblpage 
         Caption         =   "First Page"
         Height          =   375
         Left            =   240
         TabIndex        =   14
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label lblproducerName 
         Caption         =   "Name"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   1455
      End
      Begin VB.Label lblcodeLong 
         Caption         =   "Code Long"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   840
         Width           =   975
      End
      Begin VB.Label lblcodeShort 
         Caption         =   "Short Code"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label lblregion 
         Caption         =   "Region"
         Height          =   375
         Left            =   240
         TabIndex        =   6
         Top             =   1560
         Width           =   1215
      End
      Begin VB.Label lblEmailPiacitaly 
         Caption         =   "E-mail piacitaly.com"
         Height          =   255
         Left            =   4320
         TabIndex        =   5
         Top             =   480
         Width           =   1935
      End
   End
   Begin VB.Label lblStato 
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   8760
      Visible         =   0   'False
      Width           =   6015
   End
End
Attribute VB_Name = "frmProducer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CurrentEditID

Private Sub cmdAdd_Click()
' -----------------------------------------------------------------------------------------------------------
'   Apro la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    Dim Conn As ADODB.Connection
    Set Conn = New ADODB.Connection
    Conn.Open "DRIVER={MySQL ODBC 3.51 Driver};database=piacitaly;server=128.121.222.126;uid=piacitaly;pwd=s$u(q?6d;OPTION=" & 1 + 2 + 8 + 32 + 2048 + 16384
' -----------------------------------------------------------------------------------------------------------
'   Valido i valori Inseriti
' -----------------------------------------------------------------------------------------------------------
    Dim rs As ADODB.Recordset
    ' Valido Code Long
    If Len(txtcodeLong.text) = 3 Then
        Set rs = Conn.Execute("SELECT COUNT(*) FROM PRODUCER WHERE codeLong ='" & txtcodeLong.text & "'")
        If rs(0) > 0 Then
            MsgBox " Error! Duplicate CodeLong. Try Again! "
            Exit Sub
        End If
    Else
            MsgBox " Error! codeLeng lenght MUST be 3!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
    ' Valido Code Short
    If Len(txtcodeShort.text) = 2 Then
        Set rs = Conn.Execute("SELECT COUNT(*) FROM PRODUCER WHERE codeShort ='" & txtcodeShort.text & "'")
        If rs(0) > 0 Then
            MsgBox " Error! Duplicate CodeShort. Try Again! "
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
        End If
    ElseIf Len(txtcodeShort.text) > 0 Then
            MsgBox " Error! codeShort lenght MUST be 2 or Empty!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
    ' Valido Producer Name
    If Len(txtproducerName.text) = 0 Then
            MsgBox " Error! Producer Name is Manadatory!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
' -----------------------------------------------------------------------------------------------------------
'   Preparo il RecordSet per l'inserimento
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Set rs = Nothing
    Set rs = New ADODB.Recordset
    SQL = "SELECT * FROM PRODUCER"
    rs.Open SQL, Conn, adOpenStatic, adLockOptimistic
    rs.AddNew
' -----------------------------------------------------------------------------------------------------------
'   Scrivo i valori del form nel DataBase
' -----------------------------------------------------------------------------------------------------------
    rs("producerName") = getValuefromTextBox(txtproducerName)
    rs("codeLong") = getValuefromTextBox(txtcodeLong.text)
    rs("codeShort") = getValuefromTextBox(txtcodeShort.text)
    rs("region") = getValuefromTextBox(txtregion.text)
    rs("page") = getValuefromTextBox(txtpage.text)
    rs("prodCategory") = getValuefromTextBox(txtCategory.text)
    rs("tableField") = getValuefromTextBox(txttableField.text)
    rs("piacitalyEmail") = getValuefromTextBox(txtPiacitalyEmail.text)
    rs("wineitaliaEmail") = getValuefromTextBox(txtWineitaliaEmail.text)
    rs("corpwineComEmail") = getValuefromTextBox(txtCorpwineComEmail.text)
    rs("chinaCorpwineComEmail") = getValuefromTextBox(txtChinaCorpWine.text)
    If chkWineitaliaMail = 1 Then
        rs("wineitaliaMail") = 1
    Else
        rs("wineitaliaMail") = 0
    End If
    If chkPiacitalyMail = 1 Then
        rs("piacitalyMail") = 1
    Else
        rs("piacitalyMail") = 0
    End If
    If chkCorpwineComMail = 1 Then
        rs("corpwineComMail") = 1
    Else
        rs("corpwineComMail") = 0
    End If
    rs.Update
' -----------------------------------------------------------------------------------------------------------
'   Chiudo la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Conn.Close
    Set Conn = Nothing
    Set rs = Nothing
End Sub

Private Sub cmdDiscard_Click()
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    cmdSave.Enabled = False
    cmdDiscard.Enabled = False
    cmdAdd.Enabled = True
    pleaseWait (False)
' -----------------------------------------------------------------------------------------------------------
'   Pulisco il form
' -----------------------------------------------------------------------------------------------------------
    txtproducerName = ""
    txtcodeLong = ""
    txtcodeShort = ""
    txtregion = ""
    txtpage = ""
    txtCategory = ""
    txttableField = ""
    txtPiacitalyEmail = ""
    txtWineitaliaEmail = ""
    txtCorpwineComEmail = ""
    txtChinaCorpWine = ""
    chkWineitaliaMail.value = 0
    chkPiacitalyMail.value = 0
    chkCorpwineComMail.value = 0
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdSave_Click()
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    pleaseWait (True)
' -----------------------------------------------------------------------------------------------------------
'   Apro la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    Dim Conn As ADODB.Connection
    Set Conn = New ADODB.Connection
    Conn.Open "DRIVER={MySQL ODBC 3.51 Driver};database=piacitaly;server=128.121.222.126;uid=piacitaly;pwd=s$u(q?6d;OPTION=" & 1 + 2 + 8 + 32 + 2048 + 16384
' -----------------------------------------------------------------------------------------------------------
'   Valido i valori Inseriti
' -----------------------------------------------------------------------------------------------------------
    Dim rs As ADODB.Recordset
    ' Ricavo codeLong e codeShort Originali
    Set rs = Conn.Execute("SELECT codeLong FROM PRODUCER WHERE id = " & CurrentEditID)
    originalCodeLong = rs(0)
    Set rs = Conn.Execute("SELECT codeShort FROM PRODUCER WHERE id = " & CurrentEditID)
    originalCodeShort = rs(0)
    ' Valido Code Long
    If Len(txtcodeLong.text) = 3 Then
        Set rs = Conn.Execute("SELECT COUNT(*) FROM PRODUCER WHERE codeLong ='" & txtcodeLong.text & "' AND codeLong <> '" & originalCodeLong & "'")
        If rs(0) > 0 Then
            MsgBox " Error! Duplicate CodeLong. Try Again! "
            Exit Sub
        End If
    Else
            MsgBox " Error! codeLeng lenght MUST be 3!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
    ' Valido Code Short
    If Len(txtcodeShort.text) = 2 Then
        Set rs = Conn.Execute("SELECT COUNT(*) FROM PRODUCER WHERE codeShort ='" & txtcodeShort.text & "' AND codeShort <> '" & originalCodeShort & "'")
        If rs(0) > 0 Then
            MsgBox " Error! Duplicate CodeShort. Try Again! "
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
        End If
    ElseIf Len(txtcodeShort.text) > 0 Then
            MsgBox " Error! codeShort lenght MUST be 2 or Empty!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
    ' Valido Producer Name
    If Len(txtproducerName.text) = 0 Then
            MsgBox " Error! Producer Name is Manadatory!"
            Exit Sub
            '   Chiudo la connessione con il Database
            rs.Close
            Conn.Close
            Set Conn = Nothing
            Set rs = Nothing
    End If
' -----------------------------------------------------------------------------------------------------------
'   Preparo il RecordSet per l'inserimento
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Set rs = Nothing
    Set rs = New ADODB.Recordset
    SQL = "SELECT * FROM PRODUCER WHERE id = " & CurrentEditID
    rs.Open SQL, Conn, adOpenStatic, adLockOptimistic
' -----------------------------------------------------------------------------------------------------------
'   Scrivo i valori del form nel DataBase
' -----------------------------------------------------------------------------------------------------------
    rs("producerName") = getValuefromTextBox(txtproducerName)
    rs("codeLong") = getValuefromTextBox(txtcodeLong.text)
    rs("codeShort") = getValuefromTextBox(txtcodeShort.text)
    rs("region") = getValuefromTextBox(txtregion.text)
    rs("page") = getValuefromTextBox(txtpage.text)
    rs("prodCategory") = getValuefromTextBox(txtCategory.text)
    rs("tableField") = getValuefromTextBox(txttableField.text)
    rs("piacitalyEmail") = getValuefromTextBox(txtPiacitalyEmail.text)
    rs("wineitaliaEmail") = getValuefromTextBox(txtWineitaliaEmail.text)
    rs("corpwineComEmail") = getValuefromTextBox(txtCorpwineComEmail.text)
    rs("chinaCorpwineComEmail") = getValuefromTextBox(txtChinaCorpWine.text)
    If chkWineitaliaMail = 1 Then
        rs("wineitaliaMail") = 1
    Else
        rs("wineitaliaMail") = 0
    End If
    If chkPiacitalyMail = 1 Then
        rs("piacitalyMail") = 1
    Else
        rs("piacitalyMail") = 0
    End If
    If chkCorpwineComMail = 1 Then
        rs("corpwineComMail") = 1
    Else
        rs("corpwineComMail") = 0
    End If
    rs.Update
' -----------------------------------------------------------------------------------------------------------
'   Chiudo la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Conn.Close
    Set Conn = Nothing
    Set rs = Nothing
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    cmdSave.Enabled = False
    cmdDiscard.Enabled = False
    cmdAdd.Enabled = True
    pleaseWait (False)
End Sub

Private Sub Form_Load()
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    cmdSave.Enabled = False
    cmdDiscard.Enabled = False
    cmdAdd.Enabled = True
    pleaseWait (True)
' -----------------------------------------------------------------------------------------------------------
'   Apro la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    Dim strConn, SQL, Row_Remaning, Row_For_Page, direzione, Current_Page
    Dim Conn As ADODB.Connection
    Set Conn = New ADODB.Connection
    Conn.Open "DRIVER={MySQL ODBC 3.51 Driver};database=piacitaly;server=128.121.222.126;uid=piacitaly;pwd=s$u(q?6d"
' -----------------------------------------------------------------------------------------------------------
'   ERRORE connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    If Conn.State <> 1 Then
        ReportError ("DB Connection Failed")
        Exit Sub
    End If
' -----------------------------------------------------------------------------------------------------------
'   Creo e Popolo il RecordSet
' -----------------------------------------------------------------------------------------------------------
    ReportError ("DB Connection Succes! Retriving Record ...")
    Dim rs As ADODB.Recordset
    Set rs = Conn.Execute("SELECT COUNT(*) FROM PRODUCER")
    RecordNumber = rs(0)
' -----------------------------------------------------------------------------------------------------------
'   ERRORE nessun record Trovato
' -----------------------------------------------------------------------------------------------------------
    If RecordNumber <= 0 Then
        ReportError ("No Record Found")
        Exit Sub
    End If
    SQL = "SELECT * FROM PRODUCER ORDER BY producerName"
    Set rs = CreateObject("ADODB.Recordset")
    rs.Open SQL, Conn, 1, 1
' -----------------------------------------------------------------------------------------------------------
'   Creo e Popolo la listView
' -----------------------------------------------------------------------------------------------------------
    lblProducer.ColumnHeaders.Add , , "id"
    lblProducer.ColumnHeaders.Add , , "Producer Name"
    lblProducer.ColumnHeaders.Add , , "Code"
    lblProducer.ColumnHeaders.Add , , "Region"
    lblProducer.ColumnHeaders.Add , , "Category"
    lblProducer.ColumnHeaders(1).Width = 0
    lblProducer.View = lvwReport
    lblProducer.FullRowSelect = True
    ' Add item in list
    For a = 0 To RecordNumber - 1
        Set itmx = lblProducer.ListItems.Add(, , rs("id"))
        itmx.SubItems(1) = rs("producerName") & ""
        itmx.SubItems(2) = rs("codeLong") & ""
        itmx.SubItems(3) = rs("region") & ""
        itmx.SubItems(4) = rs("prodCategory") & ""
        rs.MoveNext
    Next
    lblProducer.SortKey = 1
' -----------------------------------------------------------------------------------------------------------
'   Chiudo la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Conn.Close
    Set Conn = Nothing
    Set rs = Nothing

pleaseWait (False)
End Sub

' -----------------------------------------------------------------------------------------------------------
'   Visualizzo l'errore
' -----------------------------------------------------------------------------------------------------------
Sub ReportError(information)
    lblStato.Caption = information
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Unload Me
End Sub

Private Sub lblProducer_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)
    lblProducer.SortKey = ColumnHeader.Index - 1
End Sub

Private Sub lblProducer_ItemClick(ByVal item As MSComctlLib.ListItem)
    On Error Resume Next
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    cmdSave.Enabled = True
    cmdDiscard.Enabled = True
    cmdAdd.Enabled = False
    pleaseWait (True)
' -----------------------------------------------------------------------------------------------------------
'   Apro la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    Dim Conn As ADODB.Connection
    Set Conn = New ADODB.Connection
    Conn.Open "DRIVER={MySQL ODBC 3.51 Driver};database=piacitaly;server=128.121.222.126;uid=piacitaly;pwd=s$u(q?6d"
    Dim rs As ADODB.Recordset
    Set rs = CreateObject("ADODB.Recordset")
    CurrentEditID = item.text
    SQL = "SELECT * FROM PRODUCER WHERE id = " & CurrentEditID
    rs.Open SQL, Conn, adOpenStatic, adLockOptimistic
' -----------------------------------------------------------------------------------------------------------
'   Visualizzo le informazioni relative al Record Scelto
' -----------------------------------------------------------------------------------------------------------
    txtproducerName = rs("producerName") & ""
    txtcodeLong = rs("codeLong") & ""
    txtcodeShort = rs("codeShort") & ""
    txtregion = rs("region") & ""
    txtpage = rs("page") & ""
    txtCategory = rs("prodCategory") & ""
    txttableField = rs("tableField") & ""
    txtPiacitalyEmail = rs("piacitalyEmail") & ""
    txtWineitaliaEmail = rs("wineitaliaEmail") & ""
    txtCorpwineComEmail = rs("corpwineComEmail") & ""
    txtChinaCorpWine = rs("chinaCorpwineComEmail") & ""
    If rs("wineitaliaMail") = 1 Then
        chkWineitaliaMail.value = 1
    Else
        chkWineitaliaMail.value = 0
    End If
    
    If rs("piacitalyMail") = 1 Then
        chkPiacitalyMail.value = 1
    Else
        chkPiacitalyMail.value = 0
    End If
    
       If rs("corpwineComMail") = 1 Then
        chkCorpwineComMail.value = 1
    Else
        chkCorpwineComMail.value = 0
    End If
' -----------------------------------------------------------------------------------------------------------
'   Chiudo la connessione con il Database
' -----------------------------------------------------------------------------------------------------------
    rs.Close
    Conn.Close
    Set Conn = Nothing
    Set rs = Nothing
' -----------------------------------------------------------------------------------------------------------
'   Attivo i controlli del Form necessari
' -----------------------------------------------------------------------------------------------------------
    pleaseWait (False)
End Sub

Private Function getValuefromTextBox(text As String) As Variant
    If Len(text) > 0 Then
        getValuefromTextBox = Trim(text)
    Else
        getValuefromTextBox = ""
    End If
End Function


Private Sub pleaseWait(stato As Boolean)
    If stato = True Then
        frmPleaseWait.Height = frmProducer.Height
        frmPleaseWait.Width = frmProducer.Width
        frmPleaseWait.Left = 0
        frmPleaseWait.Top = 0
        frmPleaseWait.Visible = True
        frmMailWriter.Refresh
    Else
        frmPleaseWait.Visible = False
    End If
End Sub
