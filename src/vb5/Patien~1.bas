Attribute VB_Name = "Module1"
Option Explicit

Public db As Database
Public textval, dtext, SString, Sendstr, Rtext As String
Public rs, prs, Srs, Drs As Recordset
Public X, tout, tout1, P1Out, P2Out, P3Out, P4Out, Sal, Eout1, bout1, out, Timeout1 As Integer
Public pch, Pa, attin  As Integer
Public oldx, oldy, Maxv As Single
Public GT1, GT2, GT3, GT4 As Single
Public first, second, third, fourth As Integer
Public k, grval As Integer
Public T1, tt0, tt1, T2, T3, T4, TT2, Ecg1 As Double
Public p1, p2, p3, p4, Saline  As String
Public trs As Recordset
Public Strt As Integer
Public vvv As Integer
Public Fnames(1 To 7) As String
Public Egra1(1 To 100) As Single
Public Fcnt As Integer
Public a(0 To 19) As Single
Public Pt1, Pt2 As Single
Public ptr As Integer
Public Sarr(1 To 7) As Integer
Public z1x1, z1x2, z1y1, z1y2, z1xinc As Single
Public z2tx1, z2tx2, z2ty1, z2ty2, z2xinc As Single
Public z2bx1, z2bx2, z2by1, z2by2  As Single
Public z2ex1, z2ex2, z2ey1, z2ey2 As Single
Public Beat, Bcnt, Bflg, Tcount As Single
Public Declare Function Sleep Lib "kernel32" (ByVal dwMilliseconds As Long) As Long
Public hcnt, hout As Integer
Public objOutlook As New Outlook.Application
Public objOutlookMsg As Outlook.MailItem
Public pflg1, sal1e, t1flg, t2flg, hflg1, finflg, Myflg As Integer
Public Lg As Long


