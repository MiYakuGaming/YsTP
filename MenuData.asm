arch nes.cpu

//==============================
//BANK 5
//==============================
banksize $4000
bank 5

//Change pointers
org $23D8 // 0x163D8
LDA #$E0
org $23DC // 0x163DC
LDA #$BF
//Change lenght
org $23E8 // 0x163E8
LDA #$0B

//Staff roll text shadow
org $3D48 // 0x17D48
db $1C

table "Tables\OptionsMenuUpper.tbl"
org $3FF0 // 17FF0
db "Has fallado"
cleartable
table "Tables\OptionsMenuLower.tbl"
db "Has fallado"
cleartable

//==============================
//BANK 12
//==============================
banksize $4000
bank 12

//==============================
//Sarah
//==============================
//Do you know about YS books?
//0x3396D	YES
org $396D ; base $B95D
db $8B
//0x33971	NO
org $3971 ; base $B961
db $9B

//W-Will you help me?
//0x33975	YES
org $3975 ; base $B965
db $3B
//0x33979	NO
org $3979 ; base $B969
db $4B

//==============================
//Pim shop
//==============================
//Pim shop 1
//0x3397D
org $397D ; base $B96D
db $4B
//Pim shop 2
//0x33981
org $3981 ; base $B971
db $5B
//Pim shop 3
//0x33985
org $3985 ; base $B975
db $7B
//Pim shop buy items 1
//0x33989
org $3989 ; base $B979
db $3B
//Pim shop buy items 2
//0x3398D
org $398D ; base $B97D
db $4B
//Pim shop buy items 3
//0x33991
org $3991 ; base $B981
db $6B
//Pim shop buy items 4
//0x33995
org $3995 ; base $B985
db $7B
//Pim shop buy items 5
//0x33999
org $3999 ; base $B989
db $8B

//Buy ring?
//NO
//0x3399D
org $399D ; base $B98D
db $3B
//YES
//0x339A1
org $39A1 ; base $B991
db $4B

//Buy wings?
//NO
//0x339A5
org $39A5 ; base $B995
db $6B
//YES
//0x339A9
org $39A9 ; base $B999
db $7B

//Pim shop sell items 1
//0x339B5
org $39B5 ; base $B9A5
db $4B
//Pim shop sell items 2
//0x339B9
org $39B9 ; base $B9A9
db $5B
//Pim shop sell items 3
//0x339BD
org $39BD ; base $B9AD
db $6B

//Sell ruby?
//NO
//0x339C5
org $39C5 ; base $B9B5
db $3B
//YES
//0x339C9
org $39C9 ; base $B9B9
db $4B

//Sell necklace?
//NO
//0x339CD
org $39CD ; base $B9BD
db $8B
//YES
//0x339D1
org $39D1 ; base $B9C1
db $9B

//==============================
//Ohman shop
//==============================
//Exit
// 0x339DD
org $39DD ; base $B9CD
db $3B
//Bartender
// 0x339E1
org $39E1; base $B9D1
db $5B
//Muscular man
//0x339E5
org $39E5 ; base $B9D5
db $6B
//Eye-patched man
//0x339E9
org $39E9 ; base $B9D9
db $8B

//Have a drink?
//0x339F5	YES
org $39F5 ; base $B9E5
db $8B
//Muscular man choice 2
//0x339F9	NO
org $39F9 ; base $B9E9
db $9B

//Hear old man Donis?
//0x339ED	YES
org $39ED ; base $B9DD
db $4B
//Donis choice 2
//0x339F1	NO
org $39F1 ; base $B9E1
db $5B

//==============================
//Clause clinic
//==============================
//Clause's clinic 1
//0x339FD
org $39FD ; base $B9ED
db $4B
//Clause's clinic 2
//0x33A01
org $3A01 ; base $B9F1
db $5B
//Clause's clinic 3
//0x33A05
org $3A05 ; base $B9F5
db $7B
//Clause's healing YES
//0x33A09
org $3A09 ; base $B9F9
db $6B
//Clause's healing NO
//0x33A0D
org $3A0D ; base $B9FD
db $7B
//Clause's medicine NO
//0x33A11
org $3A11 ; base $BA01
db $8B
//Clause's medicine YES
//0x33A15
org $3A15 ; base $BA05
db $9B

//==============================
//Weapon shop
//==============================
//Weapon shop 1
//0x33A21
org $3A21 ; base $BA11
db $5B
//Weapon shop 2
//0x33A25
org $3A25 ; base $BA15
db $6B
//Weapon shop 3
//0x33A29
org $3A29 ; base $BA19
db $7B
//Weapon shop 4
//0x33A2D
org $3A2D ; base $BA1D
db $8B
//Buying short sword NO
//0x33A31
org $3A31 ; base $BA21
db $4B
//Buying short sword YES
//0x33A35
org $3A35 ; base $BA25
db $5B
//Buying long sword NO
//0x33A39
org $3A39 ; base $BA29
db $4B
//Buying long sword YES
//0x33A3D
org $3A3D ; base $BA2D
db $5B
//Buying Talwar NO
//0x33A41
org $3A41 ; base $BA31
db $4B
//Buying Talwar YES
//0x33A45
org $3A45 ; base $BA35
db $5B

//==============================
//Armor shop
//==============================

//Exit
//0x33A49
org $3A49 ; base $BA39
db $7B
//Buy shields
//0x33A4D
org $3A4D ; base $BA3D
db $8B
//Buy armor
//0x33A51
org $3A51 ; base $BA41
db $9B

//Buying armor 1
//0x33A55
org $3A55 ; base $BA45
db $2B
//Buying armor 2
//0x33A59
org $3A59 ; base $BA49
db $3B
//Buying armor 3
//0x33A5D
org $3A5D ; base $BA4D
db $4B
//Buying armor 4
//0x33A61
org $3A61 ; base $BA51
db $6B
//Buying armor 5
//0x33A65
org $3A65 ; base $BA55
db $7B
//Buying chain mail 1
//0x33A69
org $3A69 ; base $BA59
db $7B
//Buying chain mail 2
//0x33A6D
org $3A6D ; base $BA5D
db $8B
//Buying armor mail 1
//0x33A71
org $3A71 ; base $BA61
db $8B
//Buying armor mail 2
//0x33A75
org $3A75 ; base $BA65
db $9B
//Buying Reflex 1
//0x33A79
org $3A79 ; base $BA69
db $7B
//Buying Reflex 2
//0x33A7D
org $3A7D ; base $BA6D
db $8B
//Shield menu 1
//0x33A81
org $3A81 ; base $BA71
db $2B
//Shield menu 2
//0x33A85
org $3A85 ; base $BA75
db $3B
//Shield menu 3
//0x33A89
org $3A89 ; base $BA79
db $4B
//Shield menu 4
//0x33A8D
org $3A8D ; base $BA7D
db $5B
//Shield menu 5
//0x33A91
org $3A91 ; base $BA81
db $6B

//Buy small shield?
//0x33A95 NO
org $3A95 ; base $BA85
db $7B
//0x33A99 YES
org $3A99 ; base $BA89
db $8B

//Buy medium shield?
//0x33A9D NO
org $3A9D ; base $BA8D
db $8B
//0x33AA1 YES
org $3AA1 ; base $BA91
db $9B

//Buy large shield?
//0x33AA5 NO
org $3AA5 ; base $BA95
db $7B
//0x33AA9 YES
org $3AA9 ; base $BA99
db $8B

//Keep Boss' little secret?
//0x33AAD YES
org $3AAD ; base $BA9D
db $8B
//0x33AB1 NO
org $3AB1 ; base $BAA1
db $9B

//Help Boss?
//0x33AB5 YES
org $3AB5 ; base $BAA5
db $6B
//0x33AB1 NO
org $3AB9 ; base $BAA9
db $7B

//Talk with Feena
//0x33ABD Exit
org $3ABD ; base $BAAD
db $6B
//0x33AC1 Jevah
org $3AC1 ; base $BAB1
db $8B
//0x33AC5 Feena
org $3AC5 ; base $BAB5
db $9B

//Give the book to Jevah?
//0x33AC9 YES
org $3AC9 ; base $BAB9
db $8B
//0x33ACD NO
org $3ACD ; base $BABD
db $9B

//Which book will you read?
//0x33ADD Nedal
org $3ADD ; base $BACD
db $2B
//0x33AE1 Jemma
org $3AE1 ; base $BAD1
db $3B
//0x33AE5 Dabih
org $3AE5 ; base $BAD5
db $4B
//0x33AE9 Messa
org $3AE9 ; base $BAD9
db $5B
//0x33AED Toba
org $3AED ; base $BADD
db $6B
//0x33AF1 Fact
org $3AF1 ; base $BAE1
db $7B

//Talk with the thief?
//0x33B01 YES
org $3B01 ; base $BAF1
db $6B
//0x33B05 NO
org $3B05 ; base $BAF5
db $7B

//==============================
//BANK 14
//==============================
bank 14

//Espadas
table "Tables\OptionsMenuUpper.tbl"
org $08C6 // 0x388C6
db "Espadas"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $08D3 // 0x388D3
db "Espadas"
cleartable

//Escudos
table "Tables\OptionsMenuUpper.tbl"
org $08E0 // 0x388E0
db "Escudos"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $08ED // 0x388ED
db "Escudos"
cleartable

//Armaduras
table "Tables\OptionsMenuUpper.tbl"
org $08FA // 0x388FA
db "Armaduras"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0907 // 0x38907
db "Armaduras"
cleartable

//Items
table "Tables\OptionsMenuUpper.tbl"
org $0914 // 0x38914
db "Items"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0921 // 0x38921
db "Items"
cleartable

//Anillos
table "Tables\OptionsMenuUpper.tbl"
org $092E // 0x3892E
db "Anillos"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $093B // 0x3893B
db "Anillos"
cleartable

//Inventario
table "Tables\OptionsMenuUpper.tbl"
org $0948 // 0x38948
db "Inventario"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0955 // 0x38955
db "Inventario"
cleartable

//Datos
table "Tables\OptionsMenuUpper.tbl"
org $0962 // 0x38962
db "Datos"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $096F // 0x3896F
db "Datos"
cleartable

//Nivel
org $0994 // 0x38994
db $56, $57, $58, $FF, $FF
//Fuerza
org $099E // 0x3899E
db $59, $5A, $5B, $5C, $FF
//Defensa
org $09A8 // 0x389A8
db $5D, $5E, $5F, $D4, $E6

//Nada
table "Tables\OptionsMenuUpper.tbl"
org $0A09 // 0x38A09
db "  Nada "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0A16 // 0x38A16
db "  Nada "
cleartable

//Guardar
table "Tables\OptionsMenuUpper.tbl"
org $0A58 // 0x38A58
db "Guardar"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0A65 // 0x38A65
db "Guardar"
cleartable

//Cargar
table "Tables\OptionsMenuUpper.tbl"
org $0A72 // 0x38A72
db "Cargar"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0A7F // 0x38A7F
db "Cargar"
cleartable

//BUG: The arrow stays at the previous menu for a couple of frames.
//This bug is present in the original version.
//¿Seguro?
table "Tables\OptionsMenuUpper.tbl"
org $0AB3 // 0x38AB3
db "#Seguro?"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0AC0 // 0x38AC0
db "#Seguro?"
cleartable

//Sí
table "Tables\OptionsMenuUpper.tbl"
org $0AD0 // 0x38AD0
db "S_ "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0ADD // 0x38ADD
db "S_ "
cleartable

//No
table "Tables\OptionsMenuUpper.tbl"
org $0AEA // 0x38AEA
db "No "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0AF7 // 0x38AF7
db "No "
cleartable

//No hay
table "Tables\OptionsMenuUpper.tbl"
org $0B1B // 0x38B1B
db "No hay "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0B28 // 0x38B28
db "No hay "
cleartable
//datos
table "Tables\OptionsMenuUpper.tbl"
org $0B35 // 0x38B35
db "datos "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0B42 // 0x38B42
db "datos "
cleartable

//Espada corta
table "Tables\OptionsMenuUpper.tbl"
org $0C07 // 0x38C07
db "Corta   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C10 // 0x38C10
db "Corta   "
cleartable

//Espada larga
table "Tables\OptionsMenuUpper.tbl"
org $0C19 // 0x38C19
db "Larga  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C22 // 0x38C22
db "Larga  "
cleartable

//Talwar
table "Tables\OptionsMenuUpper.tbl"
org $0C2B // 0x38C2B
db "Talwar"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C34 // 0x38C34
db "Talwar"
cleartable

//Espada de plata
table "Tables\OptionsMenuUpper.tbl"
org $0C3D // 0x38C3D
db "Plata   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C46 // 0x38C46
db "Plata   "
cleartable

//Espada de fuego
table "Tables\OptionsMenuUpper.tbl"
org $0C4F // 0x38C4F
db "Fuego   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C58 // 0x38C58
db "Fuego   "
cleartable

//Escudo pequeño
table "Tables\OptionsMenuUpper.tbl"
org $0C61 // 0x38C61
db "Peque'o  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C6A // 0x38C6A
db "Peque'o  "
cleartable

//Escudo mediano
table "Tables\OptionsMenuUpper.tbl"
org $0C73 // 0x38C73
db "Mediano "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C7C // 0x38C7C
db "Mediano "
cleartable

//Escudo grande
table "Tables\OptionsMenuUpper.tbl"
org $0C85 // 0x38C85
db "Mediano "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0C8E // 0x38C8E
db "Mediano "
cleartable

//Escudo de plata
table "Tables\OptionsMenuUpper.tbl"
org $0C97 // 0x38C97
db "Plata    "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CA0 // 0x38CA0
db "Plata    "
cleartable

//Escudo de Batalla
table "Tables\OptionsMenuUpper.tbl"
org $0CA9 // 0x38CA9
db "Batalla "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CB2 // 0x38CB2
db "Batalla "
cleartable

//Cota de malla
table "Tables\OptionsMenuUpper.tbl"
org $0CBB // 0x38CBB
db "Malla   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CC4 // 0x38CC4
db "Malla   "
cleartable

//Armadura de metal
table "Tables\OptionsMenuUpper.tbl"
org $0CCD // 0x38CCD
db "Metal   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CD6 // 0x38CD6
db "Metal   "
cleartable

//Reflex
table "Tables\OptionsMenuUpper.tbl"
org $0CDF // 0x38CDF
db "Reflex   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CE8 // 0x38CE8
db "Reflex   "
cleartable

//Armadura de plata
table "Tables\OptionsMenuUpper.tbl"
org $0CF1 // 0x38CF1
db "Plata    "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0CFA // 0x38CFA
db "Plata    "
cleartable

//Armadura de batalla
table "Tables\OptionsMenuUpper.tbl"
org $0D03 // 0x38D03
db "Batalla "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D0C // 0x38D0C
db "Batalla "
cleartable

//Anillo de fuerza
table "Tables\OptionsMenuUpper.tbl"
org $0D15 // 0x38D15
db "Fuerza   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D1E // 0x38D1E
db "Fuerza   "
cleartable

//Anillo protector
table "Tables\OptionsMenuUpper.tbl"
org $0D27 // 0x38D27
db "Protector"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D30 // 0x38D30
db "Protector"
cleartable

//Anillo de tiempo
table "Tables\OptionsMenuUpper.tbl"
org $0D39 // 0x38D39
db "Tiempo   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D42 // 0x38D42
db "Tiempo   "
cleartable

//Anillo de curaci*n
table "Tables\OptionsMenuUpper.tbl"
org $0D4B // 0x38D4B
db "Curaci*n"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D54 // 0x38D54
db "Curaci*n"
cleartable

//Anillo del mal
table "Tables\OptionsMenuUpper.tbl"
org $0D5D // 0x38D5D
db "Maligno"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D66 // 0x38D66
db "Maligno"
cleartable

//Poción
table "Tables\OptionsMenuUpper.tbl"
org $0D6F // 0x38D6F
db "Poci*n   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D78 // 0x38D78
db "Poci*n   "
cleartable

//Espejo
table "Tables\OptionsMenuUpper.tbl"
org $0D81 // 0x38D81
db "Espejo"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D8A // 0x38D8A
db "Espejo"
cleartable

//Collar azul
table "Tables\OptionsMenuUpper.tbl"
org $0D93 // 0x38D93
db "Collar   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0D9C // 0x38D9C
db "Collar   "
cleartable

//Alas
table "Tables\OptionsMenuUpper.tbl"
org $0DA5 // 0x38DA5
db "Alas   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0DAE // 0x38DAE
db "Alas   "
cleartable

//M%scara ocular
table "Tables\OptionsMenuUpper.tbl"
org $0DB7 // 0x38DB7
db "M%scara  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0DC0 // 0x38DC0
db "M%scara  "
cleartable

//Martillo
table "Tables\OptionsMenuUpper.tbl"
org $0DC9 // 0x38DC9
db "Martillo"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0DD2 // 0x38DD2
db "Martillo"
cleartable

//Rubí
table "Tables\OptionsMenuUpper.tbl"
org $0DDB // 0x38DDB
db "Rub_   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0DE4 // 0x38DE4
db "Rub_   "
cleartable

//Collar
table "Tables\OptionsMenuUpper.tbl"
org $0DED // 0x38DED
db "Collar"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0DF6 // 0x38DF6
db "Collar"
cleartable

//Campana de plata
table "Tables\OptionsMenuUpper.tbl"
org $0DFF // 0x38DFF
db "Campana"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E08 // 0x38E08
db "Campana"
cleartable

//Anillo de zafiro
table "Tables\OptionsMenuUpper.tbl"
org $0E11 // 0x38E11
db "Zafiro   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E1A // 0x38E1A
db "Zafiro   "
cleartable

//Cristal
table "Tables\OptionsMenuUpper.tbl"
org $0E23 // 0x38E23
db "Cristal  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E2C // 0x38E2C
db "Cristal  "
cleartable

//Llave del templo
table "Tables\OptionsMenuUpper.tbl"
org $0E35 // 0x38E35
db "Templo  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E3E // 0x38E3E
db "Templo  "
cleartable

//Llave de la mazmorra
table "Tables\OptionsMenuUpper.tbl"
org $0E47 // 0x38E47
db "Cofres   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E50 // 0x38E50
db "Cofres   "
cleartable

//Llave de la celda
table "Tables\OptionsMenuUpper.tbl"
org $0E59 // 0x38E59
db "Celda   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E62 // 0x38E62
db "Celda   "
cleartable

//Llave de marfil
table "Tables\OptionsMenuUpper.tbl"
org $0E6B // 0x38E6B
db "Marfil   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E74 // 0x38E74
db "Marfil   "
cleartable

//Llave de mármol
table "Tables\OptionsMenuUpper.tbl"
org $0E7D // 0x38E7D
db "M%rmol   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E86 // 0x38E86
db "M%rmol   "
cleartable

//Llave de Darhm
table "Tables\OptionsMenuUpper.tbl"
org $0E8F // 0x38E8F
db "Darhm   "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0E98 // 0x38E98
db "Darhm   "
cleartable

//Campana de plata
table "Tables\OptionsMenuUpper.tbl"
org $0EA1 // 0x38EA1
db "Campana"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0EAA // 0x38EAA
db "Campana"
cleartable

//Semilla de Roda
table "Tables\OptionsMenuUpper.tbl"
org $0EB3 // 0x38EB3
db "Roda "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0EBC // 0x38EBC
db "Roda "
cleartable

//Bastón
table "Tables\OptionsMenuUpper.tbl"
org $0EE9 // 0x38EE9
db "Bast*n "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0EF2 // 0x38EF2
db "Bast*n "
cleartable

//Amuleto
table "Tables\OptionsMenuUpper.tbl"
org $0F0D // 0x38F0D
db "Amuleto  "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0F16 // 0x38F16
db "Amuleto  "
cleartable


//Flauta del resplandor
table "Tables\OptionsMenuUpper.tbl"
org $0F1F // 0x38F1F
db "Flauta "
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0F28 // 0x38F28
db "Flauta "
cleartable

//Bastón de Sarana
table "Tables\OptionsMenuUpper.tbl"
org $0F31 // 0x38F31
db "Bast*n"
cleartable
table "Tables\OptionsMenuLower.tbl"
org $0F3A // 0x38F3A
db "Bast*n"
cleartable

//Write the full font for the dungeon text
org $143D // 0x3943D
db $60
//Use the address of the normal font
org $1441 // 0x39441
db $8A

//Options menu arrow position
//Y axis
org $1518 // 0x39518
LDA #$1B
//X axis
org $151D // 0x3951D
LDA #$20

//Save/Load confirmation menu arrow X axis
org $16B1 // 0x396B1
LDA #$A0
//Y axis
org $16B7 // 0x396B7
db $53, $63

//Save/Load menu arrow Y axis
org $16C8 // 0x396C8
db $3B, $4B

//Continuar
table "Tables\StartupLoadMenuUpper.tbl"
org $3EF4 // 0x3BEF4
db "Continuar      "
cleartable
table "Tables\StartupLoadMenuLower.tbl"
org $3F06 // 0x3BF06
db "Continuar      "
cleartable

//Nueva partida
table "Tables\StartupLoadMenuUpper.tbl"
org $3F18 // 0x3BF18
db "Nueva partida  "
cleartable
table "Tables\StartupLoadMenuLower.tbl"
org $3F2A // 0x3BF2A
db "Nueva partida  "
cleartable

//Save/Load menu arrow palette
org $3F6F // 0x3BF6F
db $3C, $1C