'Patient Monitoring System
'Mahesh Bharath Keerthivasan 
'Panimalar Polytechnic College, Chennai, India
'April 2006

VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form Form5 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "+"
   ClientHeight    =   8280
   ClientLeft      =   780
   ClientTop       =   1470
   ClientWidth     =   11655
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   8280
   ScaleWidth      =   11655
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSDBGrid.DBGrid DBGrid1 
      Bindings        =   "result.frx":0000
      Height          =   5295
      Left            =   600
      OleObjectBlob   =   "result.frx":0014
      TabIndex        =   4
      Top             =   1560
      Width           =   10695
   End
   Begin VB.CommandButton Command3 
      Caption         =   "End"
      Height          =   615
      Left            =   7320
      TabIndex        =   2
      Top             =   7320
      Width           =   1815
   End
   Begin VB.CommandButton Command2 
      Caption         =   "View Main"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4680
      TabIndex        =   1
      Top             =   7320
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Delete &All"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   0
      Top             =   7320
      Width           =   1575
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "D:\PanimalarCBSS\hos12.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   615
      Left            =   1080
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Patient"
      Top             =   7560
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Result File"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   1095
      Left            =   3480
      TabIndex        =   3
      Top             =   240
      Width           =   4155
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.MoveFirst
While Not (Data1.Recordset.EOF)
Data1.Recordset.Delete
Data1.Recordset.MoveNext
Wend
DBGrid1.ClearFields
End Sub

Private Sub Command2_Click()
Form4.Show
Form5.Hide
Line (528, 182)-(744, 384), Form4.BackColor, BF
oldx = 536
oldy = 384
k = 0
End Sub

Private Sub Command3_Click()
Form4.MSComm1.Output = "[3ffff80ff]"
Form4.MSComm1.Output = "[3ffff80ff]"
Sleep (50)
End
End Sub






