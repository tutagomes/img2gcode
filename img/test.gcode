;---> this code is for cnc-ino <---
G21 ; Set units to mm
G90 ; Absolute positioning
; /home/marani/node_js/img-to-GCode/img/test.png
; /home/marani/node_js/img-to-GCode/img/test.gcode
; Img Size: (40,40)
; Tool Diameter: 2
; Scale Axes: 40
; Deep Step: -1
; Z Save: 2
; Z White: 0
; Z Black: -2
G01 X0 Y0 Z2; X0 Y0 Z2 Line Init
G01 X5 Y32 Z2; With Z max 
G01 X5 Y32 Z0
G01 X5 Y33 Z0
G01 X5 Y33 Z0
G01 Z2
G01 X8 Y32 Z2
G01 Z0
G01 X8 Y33 Z0
G01 X8 Y34 Z0
G01 X8 Y35 Z0
G01 X8 Y36 Z0
G01 X8 Y37 Z0
G01 X8 Y38 Z0
G01 X9 Y38 Z0
G01 X10 Y38 Z0
G01 X11 Y38 Z0
G01 X11 Y37 Z0
G01 X11 Y36 Z0
G01 X11 Y35 Z0
G01 X11 Y34 Z0
G01 X11 Y33 Z0
G01 X12 Y33 Z0
G01 X12 Y32 Z0
G01 X12 Y31 Z0
G01 X12 Y30 Z0
G01 X13 Y30 Z0
G01 Z2
G01 X12 Y11 Z2
G01 Z0
G01 X12 Y12 Z0
G01 X12 Y13 Z0
G01 X12 Y14 Z0
G01 X13 Y14 Z0
G01 X13 Y15 Z0
G01 X13 Y16 Z0
G01 X13 Y17 Z0
G01 X13 Y18 Z0
G01 X13 Y19 Z0
G01 X13 Y20 Z0
G01 X13 Y21 Z0
G01 X13 Y22 Z0
G01 X13 Y23 Z0
G01 X13 Y24 Z0
G01 X14 Y24 Z0
G01 X15 Y24 Z0
G01 X16 Y24 Z0
G01 X17 Y24 Z0
G01 X18 Y24 Z0
G01 X19 Y24 Z0
G01 X20 Y24 Z0
G01 Z2
G01 X27 Y37 Z2
G01 Z0
G01 X28 Y37 Z0
G01 X29 Y37 Z0
G01 X30 Y37 Z0
G01 X31 Y37 Z0
G01 X32 Y37 Z0
G01 X33 Y37 Z0
G01 X33 Y36 Z0
G01 X33 Y35 Z0
G01 X33 Y34 Z0
G01 X33 Y33 Z0
G01 X33 Y32 Z0
G01 X33 Y31 Z0
G01 Z2
G01 X28 Y16 Z2
G01 Z0
G01 X29 Y16 Z0
G01 X30 Y16 Z0
G01 X31 Y16 Z0
G01 X31 Y17 Z0
G01 X31 Y18 Z0
G01 X31 Y19 Z0
G01 X32 Y19 Z0
G01 X33 Y19 Z0
G01 X34 Y19 Z0
G01 X34 Y19 Z2; With new deep step
G01 X0 Y0 Z2; X0 Y0 Z2 Line Init
G01 X5 Y32 Z2; With Z max 
G01 X5 Y32 Z-1
G01 X5 Y33 Z-1
G01 X5 Y33 Z-1
G01 Z2
G01 X8 Y32 Z2
G01 Z-1
G01 X8 Y33 Z-1
G01 X8 Y34 Z-1
G01 X8 Y35 Z-1
G01 X8 Y36 Z-1
G01 X8 Y37 Z-1
G01 X8 Y38 Z-1
G01 X9 Y38 Z-1
G01 X10 Y38 Z-1
G01 X11 Y38 Z-1
G01 X11 Y37 Z-1
G01 X11 Y36 Z-1
G01 X11 Y35 Z-1
G01 X11 Y34 Z-1
G01 X11 Y33 Z-1
G01 X12 Y33 Z-1
G01 X12 Y32 Z-1
G01 X12 Y31 Z-1
G01 X12 Y30 Z-1
G01 X13 Y30 Z-1
G01 Z2
G01 X12 Y11 Z2
G01 Z-1
G01 X12 Y12 Z-1
G01 X12 Y13 Z-1
G01 X12 Y14 Z-1
G01 X13 Y14 Z-1
G01 X13 Y15 Z-1
G01 X13 Y16 Z-1
G01 X13 Y17 Z-1
G01 X13 Y18 Z-1
G01 X13 Y19 Z-1
G01 X13 Y20 Z-1
G01 X13 Y21 Z-1
G01 X13 Y22 Z-1
G01 X13 Y23 Z-1
G01 X13 Y24 Z-1
G01 X14 Y24 Z-1
G01 X15 Y24 Z-1
G01 X16 Y24 Z-1
G01 X17 Y24 Z-1
G01 X18 Y24 Z-1
G01 X19 Y24 Z-1
G01 X20 Y24 Z-1
G01 Z2
G01 X27 Y37 Z2
G01 Z-1
G01 X28 Y37 Z-1
G01 X29 Y37 Z-1
G01 X30 Y37 Z-1
G01 X31 Y37 Z-1
G01 X32 Y37 Z-1
G01 X33 Y37 Z-1
G01 X33 Y36 Z-1
G01 X33 Y35 Z-1
G01 X33 Y34 Z-1
G01 X33 Y33 Z-1
G01 X33 Y32 Z-1
G01 X33 Y31 Z-1
G01 Z2
G01 X28 Y16 Z2
G01 Z-1
G01 X29 Y16 Z-1
G01 X30 Y16 Z-1
G01 X31 Y16 Z-1
G01 X31 Y17 Z-1
G01 X31 Y18 Z-1
G01 X31 Y19 Z-1
G01 X32 Y19 Z-1
G01 X33 Y19 Z-1
G01 X34 Y19 Z-1
G01 X34 Y19 Z2; With new deep step
G01 Z2; With Z max