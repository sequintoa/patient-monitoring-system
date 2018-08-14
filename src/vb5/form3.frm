'Patient Monitoring System
'Mahesh Bharath Keerthivasan 
'Panimalar Polytechnic College, Chennai, India
'April 2006

VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   ClientHeight    =   9150
   ClientLeft      =   60
   ClientTop       =   60
   ClientWidth     =   11565
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   ScaleHeight     =   9150
   ScaleWidth      =   11565
   StartUpPosition =   1  'CenterOwner
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command6 
      Caption         =   "&End"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   5760
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5160
      Width           =   2175
   End
   Begin VB.CommandButton Command5 
      Caption         =   " &Back"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5160
      Width           =   2055
   End
   Begin VB.CommandButton Command3 
      Caption         =   " &Digital Details"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   5760
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2895
      Width           =   2175
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      Height          =   5295
      Left            =   2880
      TabIndex        =   1
      Top             =   2160
      Width           =   5535
      Begin VB.CommandButton Command1 
         Caption         =   "D&octor Details"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   795
         Left            =   2895
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   1725
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Analog Details "
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1815
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   720
         Width           =   2055
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Choose One"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   29.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   660
      Left            =   4245
      TabIndex        =   0
      Top             =   960
      Width           =   2955
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form3.Hide
Form5.Show
Form5.Data1.RecordSource = "Doc"
Form5.Data1.Refresh
Form5.DBGrid1.ClearFields
Form5.DBGrid1.ReBind
End Sub

Private Sub Command2_Click()
Form3.Hide
Form5.Show
Form5.Data1.RecordSource = "patient"
Form5.Data1.Refresh
Form5.DBGrid1.ClearFields
Form5.DBGrid1.ReBind

End Sub

Private Sub Command3_Click()
Form3.Hide
Form5.Show
Form5.Data1.RecordSource = "Digital"
Form5.Data1.Refresh
Form5.DBGrid1.ClearFields
Form5.DBGrid1.ReBind
End Sub

Private Sub Command5_Click()
Form3.Hide
Form4.Show
End Sub

Private Sub Command6_Click()
End
End Sub

Private Sub Form_DblClick()
'Me.PrintForm
End Sub

