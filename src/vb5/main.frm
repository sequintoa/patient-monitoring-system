'Patient Monitoring System
'Mahesh Bharath Keerthivasan 
'Panimalar Polytechnic College, Chennai, India
'April 2006

VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form4 
   BackColor       =   &H00FFC0C0&
   ClientHeight    =   8880
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11610
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   LinkTopic       =   "Form4"
   ScaleHeight     =   592
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   774
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer btimer 
      Enabled         =   0   'False
      Interval        =   3000
      Left            =   6240
      Top             =   840
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   2160
      TabIndex        =   36
      Text            =   " "
      Top             =   5520
      Width           =   735
   End
   Begin VB.CommandButton Hrtcmd 
      Caption         =   "Clear"
      Height          =   315
      Left            =   3045
      TabIndex        =   35
      Top             =   5520
      Width           =   765
   End
   Begin VB.TextBox Text2 
      Height          =   315
      Left            =   3045
      TabIndex        =   34
      Text            =   " "
      Top             =   5175
      Width           =   765
   End
   Begin VB.Timer Timer4 
      Interval        =   1000
      Left            =   5205
      Top             =   4200
   End
   Begin VB.OptionButton Option7 
      Caption         =   "Heart Beat"
      Height          =   465
      Left            =   720
      TabIndex        =   32
      Top             =   5040
      Width           =   1020
   End
   Begin VB.OptionButton Option3 
      Caption         =   "ECG"
      Height          =   270
      Left            =   735
      TabIndex        =   31
      Top             =   3405
      Width           =   1140
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Body Temp"
      Height          =   255
      Left            =   720
      TabIndex        =   30
      Top             =   2880
      Width           =   1200
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Resp Temp"
      Height          =   285
      Left            =   720
      TabIndex        =   29
      Top             =   2400
      Value           =   -1  'True
      Width           =   1200
   End
   Begin VB.Timer Heartbeattimer 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   3480
      Top             =   810
   End
   Begin VB.Timer Ecg1Timer 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2745
      Top             =   810
   End
   Begin VB.Timer BTemptimer 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2100
      Top             =   810
   End
   Begin VB.Timer Rtemptimer 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1515
      Top             =   840
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   2160
      TabIndex        =   28
      Text            =   " "
      Top             =   5160
      Width           =   765
   End
   Begin VB.TextBox Atttxt 
      BackColor       =   &H00FFC0FF&
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   3
      Left            =   5520
      TabIndex        =   26
      Top             =   3735
      Width           =   1065
   End
   Begin VB.TextBox Atttxt 
      BackColor       =   &H00FFC0FF&
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   2
      Left            =   5520
      TabIndex        =   25
      Top             =   2685
      Width           =   1065
   End
   Begin VB.TextBox Atttxt 
      BackColor       =   &H00FFC0FF&
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   1
      Left            =   5520
      TabIndex        =   24
      Top             =   3210
      Width           =   1065
   End
   Begin VB.TextBox Atttxt 
      BackColor       =   &H00FFC0FF&
      ForeColor       =   &H00000000&
      Height          =   285
      Index           =   0
      Left            =   5520
      TabIndex        =   23
      Top             =   2160
      Width           =   1035
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      Height          =   1020
      Left            =   1320
      ScaleHeight     =   50.794
      ScaleMode       =   0  'User
      ScaleWidth      =   289.061
      TabIndex        =   17
      Top             =   7620
      Width           =   5610
   End
   Begin VB.Timer Timer3 
      Interval        =   300
      Left            =   5520
      Top             =   840
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   480
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      RThreshold      =   1
      SThreshold      =   1
   End
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   4920
      Top             =   840
   End
   Begin MCI.MMControl MMControl1 
      Height          =   495
      Left            =   7200
      TabIndex        =   15
      Top             =   4440
      Visible         =   0   'False
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   873
      _Version        =   327680
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.TextBox Text9 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   435
      Left            =   2160
      TabIndex        =   9
      Text            =   " "
      Top             =   3360
      Width           =   1215
   End
   Begin VB.TextBox Text7 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   435
      Left            =   2160
      TabIndex        =   8
      Text            =   " "
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text5 
      BeginProperty Font 
         Name            =   "MS Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   435
      Left            =   2160
      TabIndex        =   7
      Text            =   " "
      Top             =   2160
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "View &Result"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7920
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6615
      Width           =   2715
   End
   Begin VB.CommandButton Command1 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   810
      Left            =   9690
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   7410
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Interval        =   500
      Left            =   4320
      Top             =   840
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   480
      TabIndex        =   38
      Top             =   6480
      Width           =   75
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Temperature High"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   2280
      TabIndex        =   37
      Top             =   6480
      Visible         =   0   'False
      Width           =   2265
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Saline  Not Empty"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   4785
      TabIndex        =   33
      Top             =   6510
      Visible         =   0   'False
      Width           =   2220
   End
   Begin VB.Image Image1 
      Height          =   1695
      Left            =   4800
      Stretch         =   -1  'True
      Top             =   4080
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H8000000A&
      BackStyle       =   0  'Transparent
      Caption         =   "Doctor Attendance"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   405
      Left            =   4440
      TabIndex        =   27
      Top             =   1560
      Width           =   2760
   End
   Begin VB.Label Label28 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   240
      Left            =   4620
      TabIndex        =   22
      Top             =   3735
      Width           =   540
   End
   Begin VB.Label Label27 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   240
      Left            =   4620
      TabIndex        =   21
      Top             =   2685
      Width           =   510
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Desig"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   240
      Left            =   4620
      TabIndex        =   20
      Top             =   3210
      Width           =   630
   End
   Begin VB.Label Att 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   240
      Left            =   4620
      TabIndex        =   19
      Top             =   2160
      Width           =   630
   End
   Begin VB.Shape Shape5 
      BorderColor     =   &H00FFFFFF&
      Height          =   1290
      Left            =   255
      Top             =   7470
      Width           =   8535
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Parameters"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   630
      Left            =   720
      TabIndex        =   18
      Top             =   1425
      Width           =   2445
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H00FFFFFF&
      Height          =   4515
      Left            =   4320
      Top             =   1440
      Width           =   3000
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00FFFFFF&
      Height          =   1305
      Left            =   240
      Top             =   6000
      Width           =   7095
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   4530
      Left            =   360
      Top             =   1440
      Width           =   3990
   End
   Begin VB.Label Saline 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Saline Empty"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   4800
      TabIndex        =   16
      Top             =   6795
      Visible         =   0   'False
      Width           =   1620
   End
   Begin VB.Label Label26 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   " Patient 4 Calling"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   2520
      TabIndex        =   14
      Top             =   6795
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.Label Label25 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   " Patient 3 Calling"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   480
      TabIndex        =   13
      Top             =   6720
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.Label Label24 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   " Patient 2 Calling"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   2535
      TabIndex        =   12
      Top             =   6240
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.Label Label23 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   " Patient 1 Calling"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   375
      TabIndex        =   11
      Top             =   6150
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.Label Label22 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Temperature High"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   330
      Left            =   4800
      TabIndex        =   10
      Top             =   6180
      Visible         =   0   'False
      Width           =   2265
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "CompleteBodyScanning"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   825
      Left            =   1710
      TabIndex        =   6
      Top             =   30
      Width           =   6870
   End
   Begin VB.Label Label6 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Label6"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   330
      Left            =   10170
      TabIndex        =   5
      Top             =   1020
      Width           =   1245
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   330
      Left            =   300
      TabIndex        =   4
      Top             =   990
      Width           =   1350
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      Height          =   4530
      Left            =   7440
      Top             =   1395
      Width           =   3975
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "Channel 1 Vs Time"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   465
      Left            =   7830
      TabIndex        =   2
      Top             =   1920
      Width           =   3195
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackColor       =   &H00C0C0C0&
      BackStyle       =   0  'Transparent
      Caption         =   "On-Line Graph"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   540
      Index           =   3
      Left            =   8040
      TabIndex        =   0
      Top             =   1410
      Width           =   2880
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BTemptimer_Timer()
MSComm1.Output = "[45]"
Sleep (20)
Rtext = MSComm1.Input

Rtext = Mid$(Rtext, 2, 4)
Pt2 = T2
T2 = Val("&h" & Rtext)


T2 = T2 / 5
T2 = -T2 + 195
T2 = Round(T2, 1)

If T2 < 25 Then T2 = Pt2
Text7.Text = T2

Label4.Caption = "BodyTemp Vs Time"
DrawWidth = 2
Line (536, 184)-(536, 384), vbYellow
Line (536, 384)-(744, 384), vbYellow
Line (528, 192)-(536, 184), vbYellow
Line (544, 192)-(536, 184), vbYellow
Line (736, 376)-(745, 385), vbYellow
Line (736, 392)-(744, 384), vbYellow

DrawWidth = 2
Line (oldx, oldy)-(536 + k, 384 - (T2 / (200 / 200#))), vbGreen
DrawWidth = 1
oldx = 536 + k
oldy = 384 - (T2 / (200 / 200#))
k = k + 3


If k > 208 Then
Line (528, 182)-(744, 384), Form4.BackColor, BF
oldx = 536#
oldy = 384#
k = 0
End If
End Sub
Private Sub Command1_Click()

If T2 < 25 Then T2 = Pt2
Text7.Text = T2
MSComm1.Output = "[3ffffbfff]"
Sleep (50)
End
End Sub

Private Sub Command3_Click()
Form4.Hide
Form3.Show
End Sub


Private Sub Ecg1Timer_Timer()
MSComm1.Output = "[40]"
Sleep (50)
Rtext = MSComm1.Input

Rtext = Mid$(Rtext, 2, 4)
Ecg1 = Val("&h" & Rtext)
Ecg1 = Round(Ecg1, 1)

Text9.Text = Ecg1

End Sub
Private Sub Form_Load()

For i = 1 To 100
Egra1(i) = 50
'Egra2(i) = 50
'Egra3(i) = 50
'Egra4(i) = 50
Next


ptr = 19
'ptr1 = 19
'ptr2 = 19
'ptr3 = 19

MSComm1.PortOpen = True
MSComm1.Output = "[1ffffbfff]"
Sleep (30)
MSComm1.Output = "[3ffffbfff]"


Sarr(1) = 0
Sarr(2) = 0
Sarr(3) = 0
Sarr(4) = 0
Sarr(5) = 0
Sarr(6) = 0

Fnames(1) = "D:\PanimalarCBSS\hitemp.wav"
Fnames(2) = "D:\PanimalarCBSS\Patient1.wav" 'p1 call
Fnames(3) = "D:\PanimalarCBSS\Patient2.wav" 'p2 call
Fnames(4) = "D:\PanimalarCBSS\Patient3.wav " 'p3 call
Fnames(5) = "D:\PanimalarCBSS\Patient4.wav" 'p4 call
Fnames(6) = "D:\PanimalarCBSS\Saline1.wav" '

Fcnt = 0
Label5.Caption = Format(Date, "dd/mm/yyyy")
first = 0
second = 0
third = 0
fourth = 0

Set db = OpenDatabase("D:\PanimalarCBSS\hos12.mdb")
Set rs = db.OpenRecordset("patient")
Set Srs = db.OpenRecordset("Digital")
Set Drs = db.OpenRecordset("Doc")

tout = &H0
Pa = &H0
tout = &H0
P1Out = &H0
P2Out = &H0
P3Out = &H0
P4Out = &H0
Sal = &H0
oldx = 536#
oldy = 384#
k = 0
X = 0

a(0) = 5
a(1) = 5
a(2) = 5
a(3) = 6
a(4) = 5
a(5) = 5
a(6) = 5
a(7) = 5
a(8) = 3
a(9) = 10
a(10) = 1
a(11) = 5
a(12) = 5
a(13) = 5
a(14) = 7
a(15) = 5
a(16) = 6
a(17) = 5
a(18) = 5
a(19) = 5

'Call Option1_Click
'Lg = Shell("C:\Program Files\Microsoft Office\Office\outlook.exe", vbNormalFocus)
End Sub


Private Sub Heartbeattimer_Timer()
MSComm1.Output = "[2]"
Sleep (20)
Rtext = MSComm1.Input

Rtext = Mid$(Rtext, 8, 1)
Beat = Val("&h" & Rtext)
'Label3.Caption = Rtext

If Beat = 0 And Bflg = 0 Then
Bcnt = Bcnt + 1
Bflg = 1
ElseIf Beat > 0 And Bflg = 1 Then
Bflg = 0
End If

Text1.Text = Round(Bcnt, 0)

End Sub

Private Sub Hrtcmd_Click()
hcnt = 0
Bcnt = 0
End Sub


Private Sub MMControl1_Done(NotifyCode As Integer)
MMControl1.Command = "Close"
Timer2.Enabled = True
End Sub

Private Sub Option1_Click()
Rtemptimer.Enabled = False
BTemptimer.Enabled = False
Ecg1Timer.Enabled = False
'Ecg2Timer.Enabled = False
'Ecg3Timer.Enabled = False
'Ecg4Timer.Enabled = False
Heartbeattimer.Enabled = False
Rtemptimer.Enabled = True
Picture1.Cls
Text1.Text = Clear
Text5.Text = Clear
Text7.Text = Clear
Text9.Text = Clear
grval = 0

End Sub

Private Sub Option2_Click()
Rtemptimer.Enabled = False
BTemptimer.Enabled = False
Ecg1Timer.Enabled = False
'Ecg2Timer.Enabled = False
'Ecg3Timer.Enabled = False
'Ecg4Timer.Enabled = False
Heartbeattimer.Enabled = False
BTemptimer.Enabled = True
Picture1.Cls
Text1.Text = Clear
Text5.Text = Clear
Text7.Text = Clear
Text9.Text = Clear

grval = 1
End Sub

Private Sub Option3_Click()
Rtemptimer.Enabled = False
BTemptimer.Enabled = False
Ecg1Timer.Enabled = False
'Ecg2Timer.Enabled = False
'Ecg3Timer.Enabled = False
'Ecg4Timer.Enabled = False
Heartbeattimer.Enabled = False
Ecg1Timer.Enabled = True
Picture1.Cls
Text1.Text = Clear
Text5.Text = Clear
Text7.Text = Clear
Text9.Text = Clear

End Sub



Private Sub Option7_Click()
Rtemptimer.Enabled = False
BTemptimer.Enabled = False
Ecg1Timer.Enabled = False
'Ecg2Timer.Enabled = False
'Ecg3Timer.Enabled = False
'Ecg4Timer.Enabled = False
Heartbeattimer.Enabled = False
Heartbeattimer.Enabled = True
Picture1.Cls
Text1.Text = Clear
Text5.Text = Clear
Text7.Text = Clear
Text9.Text = Clear
grval = 2
End Sub

Private Sub Rtemptimer_Timer()
MSComm1.Output = "[46]"
Sleep (20)
Rtext = MSComm1.Input
Rtext = Mid$(Rtext, 2, 4)
Pt1 = T1
T1 = Val("&h" & Rtext)
T1 = T1 / 5
T1 = -T1 + 195
T1 = Round(T1, 1)


If T1 < 25 Then T1 = Pt1
Text5.Text = T1


Label4.Caption = "RespTemp Vs Time"
DrawWidth = 2
Line (536, 184)-(536, 384), vbYellow
Line (536, 384)-(744, 384), vbYellow
Line (528, 192)-(536, 184), vbYellow
Line (544, 192)-(536, 184), vbYellow
Line (736, 376)-(745, 385), vbYellow
Line (736, 392)-(744, 384), vbYellow

DrawWidth = 2
Line (oldx, oldy)-(536 + k, 384 - (T1 / (200 / 200#))), vbGreen
DrawWidth = 1
oldx = 536 + k
oldy = 384 - (T1 / (200 / 200#))
k = k + 3


If k > 208 Then
Line (528, 182)-(744, 384), Form4.BackColor, BF
oldx = 536#
oldy = 384#
k = 0
End If


End Sub

Private Sub Timer1_Timer()

Label6.Caption = Format(Time, "hh:mm:ss")

If Heartbeattimer.Enabled = True Then
Text2.Visible = True
Hrtcmd.Visible = True
Else
Text2.Visible = False
Hrtcmd.Visible = False
End If

If (Ecg1 > 100) And Strt = 0 Then
Strt = 1
End If

'If (Ecg2 > 100) And Strt1 = 0 Then
'Strt1 = 1
'End If

'If (Ecg3 > 100) And Strt2 = 0 Then
'Strt2 = 1
'End If

'If (Ecg4 > 100) And Strt3 = 0 Then
'Strt3 = 1
'End If

MSComm1.Output = "[2]"
Sleep (20)
Rtext = MSComm1.Input

Pa = Val("&h" & Mid$(Rtext, 8, 2))

If ((Pa And &H1) = &H0) Then
 Label23.Visible = True
 'P1Out = P1Out Or &H30
 p1 = "Yes"
 Sarr(2) = 1
 
If pflg1 = 0 Then
 pflg1 = 1
 
' Set objOutlookMsg = objOutlook.CreateItem(olMailItem)
'            With objOutlookMsg
'                .To = "9884169070@sms.sancharnet.in" ' The To Address Field
'                .Subject = "P1 Call" ' txtSubject ' The Subject Field
'                .Body = "Patient 1 is calling"
'                .Importance = olImportanceHigh ' Priority. Mostly Not Required
'                .Send ' Send the Composed Message…

'            End With
'Set objOutlookMsg = Nothing

 End If

 
Else
  Label23.Visible = False
  'P1Out = P1Out And &HCF
  p1 = "No"
  pflg1 = 0
  Sarr(2) = 0
End If

If ((Pa And &H2) = &H0) Then
Label24.Visible = True
  'P2Out = P2Out Or &H30
  p2 = "Yes"
  Sarr(3) = 1
Else
Label24.Visible = False
  'P2Out = P2Out And &HCF
  p2 = "No"
End If

If ((Pa And &H4) = &H0) Then
Label25.Visible = True
  'P3Out = P3Out Or &H30
  p3 = "Yes"
  Sarr(4) = 1
Else
Label25.Visible = False
  'P3Out = P3Out And &HCF
  p3 = "No"
End If

If ((Pa And &H8) = &H0) Then
Label26.Visible = True
  'P4Out = P4Out Or &H30
  p4 = "Yes"
  Sarr(5) = 1
Else
Label26.Visible = False
  'P4Out = P4Out And &HCF
  p4 = "No"
End If


MSComm1.Output = "[2]"
Sleep (20)
Rtext = MSComm1.Input

pb = Val("&h" & Mid$(Rtext, 6, 2))

If ((pb And &H10) = &H10) Then
Label8.Visible = False
Saline.Visible = True

Sarr(6) = 1
 
 If sal1e = 0 Then
 
 sal1e = 1
'
' Set objOutlookMsg = objOutlook.CreateItem(olMailItem)
'            With objOutlookMsg
'                .To = "9884169070@sms.sancharnet.in" ' The To Address Field
'                .Subject = "saline Emp" ' txtSubject ' The Subject Field
'                .Body = "Saline bottle Empty"
'                .Importance = olImportanceHigh ' Priority. Mostly Not Required
'                .Send ' Send the Composed Message…
'
'            End With
'Set objOutlookMsg = Nothing

End If



Else
Saline.Visible = False
Label8.Visible = True
sal1e = 0
End If

If (T1 > 103) Or (T2 > 103) Then
'tout = tout Or &H30
Label22.Visible = True
Else
'tout = tout And &HCF
Label22.Visible = False
End If


MSComm1.Output = "[2]"
Sleep (50)
Rtext = MSComm1.Input

pc = Val("&h" & Mid$(Rtext, 6, 2))
pc = pc And &HF

Select Case (pc And &HF)
Case &HE
    Atttxt(0) = "Rahul"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
   'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr1.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    vvv2 = 1
    End If
Case &HD
    Atttxt(0) = "Anita"
    Atttxt(1) = "Nurse"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr2.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If
    
Case &HC
    Atttxt(0) = "Naresh"
    Atttxt(1) = "Compounder"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr3.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &HB
    Atttxt(0) = "Bhuvan"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr4.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If
    
Case &HA
    Atttxt(0) = "Raghu"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr1.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H9
    Atttxt(0) = "Kamala"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr2.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If
Case &H8
    Atttxt(0) = "Soman"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr3.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update

    vvv2 = 1
    End If
    
Case &H7
    Atttxt(0) = "Binu"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr4.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H6
    Atttxt(0) = "Algates"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr1.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H5
    Atttxt(0) = "Jagadeesh"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr2.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H4
    Atttxt(0) = "Jagadeesh"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr3.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H3
    Atttxt(0) = "Naga"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr4.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H2
Atttxt(0) = "Desai"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr1.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    Drs.AddNew
    Drs.Fields(0) = Atttxt(0)
    Drs.Fields(1) = Atttxt(1)
    Drs.Fields(2) = Atttxt(2)
    Drs.Fields(3) = Atttxt(3)
    Drs.Update
    
    vvv2 = 1
    End If

Case &H1
    Atttxt(0) = "Mukharjee"
    Atttxt(1) = "Doctor"
    Atttxt(2) = Date
    'Image1.Picture = LoadPicture("D:\PanimalarCBSS\dr2.gif")
    If vvv2 = 0 Then
    Atttxt(3) = Time
    vvv2 = 1
    End If

Case &HF
    Atttxt(0) = ""
    Atttxt(1) = ""
    Atttxt(2) = ""
    vvv2 = 0
    Atttxt(3) = ""
    'Image1.Picture = LoadPicture("")
                
End Select


X = X + 1

If X >= 30 Then
rs.AddNew
rs(0) = Format(Date, "dd/mm/yyyy")
rs(1) = Format(Time, "hh:mm:ss")
rs(2) = T1
rs(3) = T2
rs(4) = Ecg1
rs(5) = Ecg2
rs(6) = Ecg3
rs(7) = Ecg4
rs.Update

Srs.AddNew
Srs(0) = Format(Date, "dd/mm/yyyy")
Srs(1) = Time
Srs(2) = p1
Srs(3) = p2
Srs(4) = p3
Srs(5) = p4
Srs(6) = te
Srs.Update
X = 0
End If

End Sub

Private Sub Timer2_Timer()

            Fcnt = Fcnt + 1
    
            If Fcnt > 6 Then
                Fcnt = 1
            End If

    If (Sarr(Fcnt) = 1) Then
        MMControl1.FileName = Fnames(Fcnt)
        MMControl1.Command = "Open"
        MMControl1.Command = "Play"
        Sarr(Fcnt) = 0
        Timer2.Enabled = False
    End If

End Sub

Private Sub Timer3_Timer()

If Ecg1Timer.Enabled = True Then

If Strt = 1 And ptr > 0 Then
Egra1(1) = 50 - ((a(ptr) * 10) / (200# / 50#))
ptr = ptr - 1
Else
Egra1(1) = 50 - (Ecg1 / (200# / 50#))
ptr = 19
Strt = 0
End If

For i = 100 To 2 Step -1
Egra1(i) = Egra1(i - 1)
Next
Picture1.Cls
vvv = 1
For i = 1 To 99
Picture1.Line (vvv, Egra1(i))-(vvv + 2, Egra1(i + 1)), vbYellow
vvv = vvv + 2
Next
End If

End Sub

Private Sub Timer4_Timer()

If Heartbeattimer.Enabled = True Then
hcnt = hcnt + 1
Text2.Text = hcnt
If hcnt >= 60 Then
Text3.Text = Bcnt
If (Bcnt < 72 Or Bcnt > 84) Then
Label9.Caption = "Heart Beat Abnormal"
'out = out Or &H30
'btimer.Enabled = True
Else
Label9.Caption = "Heart Beat Normal"
End If
hcnt = 0
Bcnt = 0
End If

If hcnt < 3 Then
Label9.Visible = True
Else
Label9.Visible = False
End If

End If


End Sub
