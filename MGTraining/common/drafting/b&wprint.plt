;               System printer configuration file
;
;   Use on Windows, OS/2 and Macintosh to print to system printer
;

;
;   You may produce non-halftoned monochrome output on a color
;   device by setting "num_pens=1".
;
;   When thin vector elements with highly saturated colors are half-toned,
;   they can be extraordinarily difficult to see.  You may wish to
;   assign such element colors to a specific pen.  That pen can in turn
;   be assigned an RGB value of your choice.
;
;   For example, to change element color 5 from a hard to see, highly
;   saturated white to an easier to see gray you could use the following
;   line:
;	    	pen(6)=(5)/rgb=(230, 230, 230)    ; gray
;
num_pens   = 255                            ; required record

;this line was added to print black&white  PMcQ
pen(1)=(0-255)/rgb=(0,0,0)

model      = sysprinter

stroke_tolerance=10                         ; unitless num 0 < tol < 10

rotate=none
autocenter

;
;  If you are using Windows 95 or Windows NT it is recommended that
;  'nohardware' be changed to 'hardware' in the linestyle definitions
;  below.  This will result in more compact printer output from
;  MicroStation.  This is not recommended under Windows 3.x since
;  it will result in the inability to plot lines that have both weight
;  and style.  This is due to a limitation in the Graphics Device Interface
;  under Windows 3.x.
;
style(1)=(12, 36)/nohardware               ;style = dot
style(2)=(21, 12)/nohardware               ;style = med dash
style(3)=(50, 17)/nohardware               ;style = long dash
style(4)=(33, 12, 8, 12)/nohardware        ;style = dot-dash
style(5)=(17, 17)/nohardware               ;style = short dash
style(6)=(25, 8, 8, 8, 8, 8)/nohardware    ;style = dash-dot-dot
style(7)=(33, 8, 17, 8)/nohardware         ;style = long dash - short dash

;
; linecap, linejoin and miter_limit
;
linecap	    = 1			; 1=butt, 2=square, 4=round
linejoin    = 5			; 2=miter/bevel, 4=round, 5=beveled
miter_limit = 1.415	    	; Larger values allow longer spikes w/linejoin=2

;
;  You may uncomment this line and adjust the values to customize the
;  logical to physical line weight mapping used by MicroStation printing.
;
;weight_strokes=(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32)

border/pen=1                     ; Remove this if no border is desired
fence_outline/pen=1	    	 ; Remove this if no fence outline is desired

resolution(IN)=(0.0,0.0)         ; specifies Resolution on Mac and Units on
                                 ; Mac and OS/2

