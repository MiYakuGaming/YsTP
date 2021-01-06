;;==============================
;;Ys Translation Project
;;By NijigenBoukensha
;;2020-2021
;;==============================

;;==============================
;;Patches list
;;==============================
;;Title screen 		OK
;;Save/Load menu 	OK
;;HUD				OK
;;Options menu		OK

;;Symbols
NormalText 	= $FC
ShopText 	= $FD
Disabled	= $00
Enabled		= $55
STOPMTE		= $FF

;;Variables
;;Text context flag
#org $0B
#var 	TextContext,		1
;;Pointers
#org $7C
#var 	PointerTableLB,		1
#var 	PointerTableHB,		1
#var 	TextPointerLB,		1
#var 	TextPointerHB,		1
#var	VramAddressLB,		1
#var	VramAddressHB,		1
#org $FE
#var 	GattaiPointerLB,	1
#var 	GattaiPointerHB,	1
#var 	StopMte,			1
;;Input
#org $032B
#var	Input,				1
;;Text
#org $034A
#var 	MaxStringLenght,	1
#var 	JumpSize,			1
;;Player stats
#org $0358
#var 	MyHP,				1
#var 	MaxHP,				1
#var	XPLB,				1
#var	XPHB,				1
#var	XPToNextLVLB,		1
#var	XPToNextLVHB,		1
#var	MoneyLB,			1
#var	MoneyHB,			1
;;Text status
;;00 = End (Text is over)
;;40 = New (Resets text position)
;;80 = Stopped (Text is stopped)
;;FF = Running (Text is running)
#org $04A1
#var 	TextStatus,			1
#org $04A3
#var 	CharCounter,		1
;;Clean box status
;;00 = Inactive
;;FF = Active
#var 	CleanTextBoxStatus,	1
;;Weapons/Items status
;;00 = Unavailable
;;0F = Available
;;8F = Selected
;;==============================
;;Swords
;;==============================
#org $04FA
#var  	ShortSwordStatus,	1
#var 	LongSwordStatus,	1
#var 	TalwarStatus,		1
#var 	SilverSwordStatus,	1
#var 	FlameSwordStatus,	1
;;#var 	Unused			$04FF
;;#var 	Unused			$0500
;;#var 	Unused			$0501
;;==============================
;;Shields
;;==============================
#org $0502
#var  	SmallShieldStatus,	1
#var 	MidShieldStatus,	1
#var 	LargeShieldStatus,	1
#var 	SilverShieldStatus,	1
#var 	BadorShieldStatus,	1
;;#var 	Unused			$0507
;;#var 	Unused			$0508
;;#var 	Unused			$0509
;;==============================
;;Armor
;;==============================
#org $050A
#var  	ChainMailStatus,	1
#var  	PlateMailStatus,	1
#var 	ReflexStatus,		1
#var 	SilverArmorStatus,	1
#var 	BatorArmorStatus,	1
;;#var 	Unused			$050F
;;#var 	Unused			$0510
;;#var 	Unused			$0511
;;==============================
;;Items
;;==============================
#org $0512
#var  	HealPotionStatus,	1
#var  	MirrorStatus,		1
#var 	BlueNecklaceStatus,	1
#var 	WingStatus,			1
#var 	MaskStatus,			1
#var 	HammerStatus,		1
;;#var 	Unused			$0518
;;#var 	Unused			$0519
;;==============================
;;Rings
;;==============================
#org $051A
#var  	PowerRingStatus,	1
#var  	RingMailStatus,		1
#var 	TimeRingStatus,		1
#var 	HealRingStatus,		1
#var 	EvilRingStatus,		1
;;#var 	Unused			$051F
;;#var 	Unused			$0520
;;#var 	Unused			$0521
;;==============================
;;Ys Books
;;==============================
#org $0522
#var  	YsBook1Status,		1
#var  	YsBook2Status,		1
#var 	YsBook3Status,		1
#var 	YsBook4Status,		1
#var 	YsBook5Status,		1
#var 	YsBook6Status,		1
;;#var 	Unused			$0528
;;#var 	Unused			$0529
;;#var 	Unused			$052A
;;#var 	Unused			$052B
;;==============================
;;Inventory
;;==============================
#org $052C
#var  	RubyStatus,			1
#var  	NecklaceStatus,		1
#var 	PedestalStatus,		1
#var 	SapphireStatus,		1
#var 	CrystalStatus,		1
#var 	TempleKeyStatus,	1
#org $00C0
;;MTE variables
#var 	StaffRollFlag,		1
#var 	MTEBytesIndex,		1
#var 	MTEBuffer,			1
;;Registers
#org $2007
#var	PPU_DATA,			1
#org $2116
#var	PPU_ADDR,			1

;;==============================
;;BANK 0
;;==============================
;;HUD text
#org $0000, $0C70
#incbin "HUD.bin"
;;HUD bar
#org $0000, $0F00
#incbin "HUDBar.bin"

;;==============================
;;BANK 2
;;==============================
;;Text GFX
#org $0000, $8010
#incbin "GFX.bin"

;;==============================
;;BANK 3
;;==============================
;;Intro font
#org $0000, $CEB0
#incbin "IntroFont.bin"
;;Arrow tile
#org $0000, $EE30
#incbin "Arrow.bin"

;;==============================
;;BANK 5
;;==============================
;;Hide tile after "XP"
#org $0000, $153DE
#byte $FF
;;Recycle "o" in "Oro"
#org $0000, $15429
#byte $DA
;;Intro text
#org $0000, $166BD
#table "IntroText.tbl"
#byte "   PULSA START   "
#table

;;Thanks message attributes
;;Vram position
#org $0000, $17C8A
LDA #$83
;;Lenght
#org $0000, $17C8E
LDA #$18
;;Lines
#org $0000, $17C92
LDA #$03

;;==============================
;;BANK 12
;;==============================
;;Draw letters
#org $811C, $3012C
GattaiTable:
;;    a			b		  c		    d	      e
#byte $DE, $E9, $DF, $E8, $E0, $E9, $E1, $D1, $E2, $E9
;;    f		    g		  h			i		  j
#byte $E3, $D3, $E4, $F5, $F6, $E8, $ED, $CE, $E6, $D6
;;    k		    l		  m			n		  o
#byte $E7, $D7, $ED, $CF, $D0, $F0, $F6, $F0, $D2, $E9
;;    p		    q		  r			s		  t
#byte $CD, $F0, $D4, $F5, $E5, $D5, $B0, $E9, $BE, $AE
;;    u		    v		  w			x		  y
#byte $B7, $EF, $F4, $EF, $FB, $DB, $F7, $EF, $B4, $EF
;;    z		    A		  B			C		  D
#byte $BD, $AD, $F3, $EC, $BF, $F1, $C0, $EE, $C1, $F1
;;    E		    F		  G			H		  I
#byte $C2, $EB, $C3, $EB, $AF, $EE, $F3, $EA, $C4, $F8
;;    J		    K		  L			M		  N
#byte $C5, $B5, $C6, $EA, $C7, $FA, $D8, $C8, $D9, $C9
;;    O		    P		  Q			R		  S
#byte $F2, $EC, $B1, $F1, $B2, $EC, $B3, $F1, $DA, $CA
;;    T		    U		  V			W		  X
#byte $ED, $F8, $F2, $EA, $F4, $EA, $FB, $CB, $F7, $EA
;;    Y		    Z		  ?			!		  #
#byte $DD, $EA, $DC, $CC, $B9, $A9, $BA, $FA, $B8, $AA
;;    $		    .		  ,			%		  _
#byte $BB, $AA, $AC, $FF, $B6, $FF, $DE, $FC, $ED, $FD
;;    ~		    {		  *			%		  ]
#byte $B7, $FE, $E2, $FC, $D2, $FC, $F3, $BC, $F2, $BC
;;	  0		   [ ]		[...]	    '		  :
#byte $F2, $EC, $FF, $FF, $AB, $FF, $F6, $F9, $A7, $A6
;;	  1		   	2		  3	        4		  5
#byte $ED, $9A, $9B, $EC, $9D, $9C, $9E, $9F, $A0, $EB
;;	  6		   	7		  8	        9
#byte $A5, $EE, $A2, $A1, $A3, $EC, $A4, $EC

;;==============================
;;MTE list
;;==============================
;;32 entries per amount of letters (2, 3, 4, 5, 6)
#table "NonMTE.tbl"
#genlut MTEList
#termstring $FF
:#byte "a "				;;972
:#byte "e "
:#byte "es"
:#byte "  "
:#byte "o "
:#byte "en"
:#byte "ar"
:#byte "er"
:#byte "s "
:#byte "de"
:#byte "la"
:#byte "on"
:#byte " es"
:#byte "or"
:#byte "al"
:#byte "qu"
:#byte "ad"
:#byte "ti"
:#byte "an"
:#byte "el"
:#byte "un"
:#byte "os"
:#byte "as"
:#byte " de"
:#byte "tr"
:#byte "ci"
:#byte ", "
:#byte "ien"
:#byte "ent"
:#byte " l"
:#byte "re"
:#byte "est"
:#byte "em"
:#byte "cu"
:#byte "in"
:#byte "st"
:#byte "ca"
:#byte "om"
:#byte " p"
:#byte "br"
:#byte " s"
:#byte "ta"
:#byte "ha"
:#byte "di"
:#byte "lo"
:#byte "te "
:#byte "ir"
:#byte "Ob"
:#byte "pr"
:#byte "il"
:#byte "ol"
:#byte "to"
:#byte "te"
:#byte "po"
:#byte " m"
:#byte "vi"
:#byte "ra"
:#byte "tie"
:#byte "tu"
:#byte "ch"
:#byte "ab"
:#byte "ue"
:#byte " n"
:#byte "si"
:#byte " a"
:#byte "Qu"
:#byte "ah"
:#byte "n "
:#byte "gu"
:#byte "mu"
:#byte "mi"
:#byte "o."
:#byte "%s"
:#byte "dr"
:#byte "a."
:#byte "do"
:#byte "% "
:#byte "{ "
:#byte "ec"
:#byte " f"
:#byte "l "
:#byte "am"
:#byte " C"
:#byte "Es"
:#byte "00"
:#byte "y "
:#byte " A"
:#byte "ur"
:#byte "li"
:#byte "ac"
:#byte "ro"
:#byte "bi"
:#byte " d"
:#byte "av"
:#byte "gr"
:#byte "ev"
:#byte "ic"
:#byte "ex"
:#byte "_."
:#byte "fu"
:#byte "* "
:#byte " un"
:#byte "go"
:#byte "          "
:#byte "*n"
:#byte "ug"
:#byte "pa"
:#byte "a'"
:#byte " S"
:#byte "ud"
:#byte " g"
:#byte "mp"
:#byte "No"
:#byte "je"
:#byte " t"
:#byte "ri"
:#byte "me"
:#byte "us"
:#byte "ej"
:#byte "ve"
:#byte "su"
:#byte "~n"
:#byte "_a"
:#byte "pi"
:#byte "i "
:#byte "ba"
:#byte " c"
;;Lower half
:#byte "r%"
:#byte "id"
:#byte "Obtienes la Espada de "
:#byte "     "
:#byte "es "
:#byte "de "
:#byte "ra "
:#byte "r "
:#byte "Por favor"
:#byte "encuentra"
:#byte "Obtienes"
:#byte "ladrones"
:#byte "demonios"
:#byte "os "
:#byte "comprar"
:#byte "rmadura"
:#byte "a torre"
:#byte "parece"
:#byte "tienes"
:#byte "lo de"
:#byte ", pero"
:#byte "tiempo"
:#byte "libros"
:#byte "racias"
:#byte "que"
:#byte " por "
:#byte " una "
:#byte " la"
:#byte "    "
:#byte " de "
:#byte " la "
:#byte " el "
:#byte " en "
:#byte " un "
:#byte "   "				;;336
:#byte " que "				;;279
#termstring $00
#endgenlut
#table

;;==============================
;;MTE list pointers
;;==============================
;;#base $840D
MTEPointers:
#lut_word MTEList

;;==============================
;;#base $8553
DrawLetters:
;;==============================
;;MTE code
;;Check MTE active
TAX
LDA MTEBuffer				;;If the first byte of MTE buffer is non zero, MTE is active
BEQ CheckValidMTE
LDY MTEBytesIndex			;;Load index
INC MTEBytesIndex			;;Update index

JSR DecPointerLB

LDA MTEBuffer,y				;;Load letter
CMP #$FF
BNE GetPosition				;;If it isn't the end, keep going

;;If it is, reset everything
LDY #$00
LDA #$00
ResetMTE:
STA MTEBytesIndex,y
INY
CPY #$1F
BNE ResetMTE
;;Go to square one
LDY #$00

INC TextPointerLB
LDA TextPointerLB
CMP #$00
BNE LoadMoreLB
INC TextPointerHB
LoadMoreLB:

LDA (TextPointerLB),y
;;Opcode fix
CMP #$04
BCS GoBack

JSR DecPointerLB

DEC VramAddressLB			;;This is not a letter. Skip
DEC CharCounter
RTS
GoBack:
JMP DrawLetters

CheckValidMTE:
TXA
CMP #$04					;;Shop text fix
BEQ GetPosition
BCC GetPosition
CMP #$A8					;;Check if valid MTE byte (below 0xA8)
BEQ GetPosition
BCS GetPosition

;;Load MTE into buffer
ValidMTE:
SEC							;;Start from 0x05
SBC #$05

;;Use lower half of the pointer table
CMP #$80
BCC ContinueMTE
ASL
TAX
LDA $8530,x
STA GattaiPointerLB
INX
LDA $8530,x
JMP StoreGattaiHB
ContinueMTE:

ASL							;;Use as index for pointer table
TAX
LDA MTEPointers,x			;;Load pointer LB
STA GattaiPointerLB
INX
LDA MTEPointers,x			;;Load pointer HB
StoreGattaiHB:
STA GattaiPointerHB
LDY #$00
StoreInBuffer:
LDA (GattaiPointerLB),y	;;Load actual byte
STA MTEBuffer,y			;;Save in buffer
INY
CMP #$FF
BNE StoreInBuffer			;;Keep going until 0xFF
;;Write the first letter
INC MTEBytesIndex
LDA MTEBuffer

GetPosition:
SEC
SBC #$A8
ASL
TAY
LDA GattaiTable,y
JSR CheckTextContext
BNE WriteLowerTile
SEC
SBC #$3A
WriteLowerTile:
STA PPU_DATA		;;Write lower tile
;;Fix address
LDX VramAddressHB
LDA VramAddressLB
CMP #$20
BCS HBNormal
TXA
SEC
SBC #$01
TAX
HBNormal:
STX PPU_ADDR
LDA VramAddressLB
SEC
SBC #$20
STA PPU_ADDR
;;Write upper tile
INY
LDA GattaiTable,y		;;Load upper tile
;;Check text context
JSR CheckTextContext
BNE WriteUpperPart
SEC
SBC #$3A
WriteUpperPart:
STA PPU_DATA			;;Write upper part
Exit:
RTS

CheckTextContext:
PHA
LDA TextContext			;;Load context
AND #$C0
TAX						;;Use X as comparison
PLA						;;Restore accumulator
CPX #$40				;;Check if shop
RTS
ReadInput:
LDA #$0F
JSR $D215
LDA $032B
RTS

DecPointerLB:
DEC TextPointerLB
LDA TextPointerLB
CMP #$FF
BNE ExitLB
DEC TextPointerHB
ExitLB:
RTS

DelayOpcode:
LDY #$00					;;From original routine
LDA (TextPointerLB),Y
CMP #$04
BCS ExitDelayOpcode			;;Skip if the byte is an opcode
LDX MTEBuffer				;;>"AND"< MTE is active
BEQ ExitDelayOpcode
LDA #$A8
ExitDelayOpcode:
RTS

;;Epilogue
;;Decompress letters
#org $B567, $33577
DecompressLetters:
;;Check beginning of the string
CPY #$00
BNE CheckNormalLetter
LDX #$00
STA $FF
INY
INC StaffRollFlag
LDA ($20),Y
;;Check if normal letter
CheckNormalLetter:
CMP #$40
BCC WriteNormally
;;Get second letter bits
LSR
LSR
LSR
LSR
LSR
LSR
;;If 1, it's B
CMP #$01
BEQ LetterB
;;If 3, it's C
CMP #$03
BEQ LetterC
;;If none, it's A
JSR LoadOGLetterA
LDA #$48
RTS

;;LetterB
LetterB:
JSR LoadOGLetterB
LDA #$4C
RTS

;;LetterC
LetterC:
JSR LoadOGLetterC
LDA #$86
RTS

WriteNormally:
LDA ($20),Y
CLC
ADC #$48
RTS

LoadOGLetterA:
LDA ($20),Y
SEC
SBC #$80
JMP UniversalEnd

LoadOGLetterC:
LDA ($20),Y
SEC
SBC #$C0
JMP UniversalEnd

LoadOGLetterB:
LDA ($20),Y
SEC
SBC #$40

UniversalEnd:
CLC
ADC #$48
STA $01C2,X
LDA #$FF
STA $0182,X
INX
RTS

;;More letters per line
#org $0000, $33EDE
LDA $FF
;;Cancel dakuten/handakuten and
;;replace with jump to decompress
;;letters
#org $0000, $33F5F
JSR DecompressLetters
INY
NOP
;;Use X index for $012C-> buffer stuff
#org $0000, $33F64
STA $01C2,x
LDA #$FF
STA $0182,x
INX
;;More letters per line
CPX $FF

;;==============================
;;BANK 15
;;==============================
;;Save/Load menu arrow initial Y axis
#org $0000, $3CCE4
LDA #$5D
;;Save/Load menu arrow "Continue" Y axis
#org $0000, $3CD1B
LDA #$5D
;;Save/Load menu arrow "New Game" Y axis
#org $0000, $3CD2C
LDA #$6D
;;==============================
;;Read input every frame
;;Allows STOP opcode in shop
;;text
;;==============================
#org $0000, $3F0FC
JSR ReadInput
;;Expand max string lenght to 16 characters
#org $0000, $3F168
LDA #$0F
STA MaxStringLenght
;;Change jump size
LDA #$31
STA JumpSize
;;==============================
;;Jump to "don't use any opcode
;;until we're done writing the
;;MTE"
;;==============================
#org $0000, $3F193
JSR CheckDelayOpcode
NOP
;;Cancel AND #$F0 that was interfering with the MTE code
#org $0000, $3F1FD
LDY #$00
;;Cancel OR $80 that was interfering with the MTE code
#org $0000, $3F206
NOP
NOP
;;Cancel dakuten/handakuten
#org $0000, $3F2A7
NOP
NOP
NOP
;;Disable offset substraction
;;This was substracting offsets to change from normal text font to shop text font.
;;We're already doing this in DrawLetters.
#org $0000, $3F326
NOP
NOP
NOP
;;Jump to 8x16 routine
#org $0000, $3F338
JMP CheckStaffRoll
;;Change arrow sprite vertical position
#org $0000, $3F3EE
LDA #$80

;;Check staff roll
#org $FFDF, $3FFEF
CheckStaffRoll:
LDA ($7E),Y
LDX StaffRollFlag
BEQ NormalDrawLetters
STA $2007
RTS
NormalDrawLetters:
JSR DrawLetters
RTS
;;CheckDelayOpcode
CheckDelayOpcode:
LDA StaffRollFlag
BEQ NormalOpcode
LDY #$00
LDA ($7E),Y
RTS
NormalOpcode:
JSR DelayOpcode
RTS