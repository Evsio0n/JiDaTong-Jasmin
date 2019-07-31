.bytecode 50.0
.class synchronized com/bumptech/glide/gifencoder/NeuQuant
.super java/lang/Object

.field protected static final 'alphabiasshift' I = 10


.field protected static final 'alpharadbias' I = 262144


.field protected static final 'alpharadbshift' I = 18


.field protected static final 'beta' I = 64


.field protected static final 'betagamma' I = 65536


.field protected static final 'betashift' I = 10


.field protected static final 'gamma' I = 1024


.field protected static final 'gammashift' I = 10


.field protected static final 'initalpha' I = 1024


.field protected static final 'initrad' I = 32


.field protected static final 'initradius' I = 2048


.field protected static final 'intbias' I = 65536


.field protected static final 'intbiasshift' I = 16


.field protected static final 'maxnetpos' I = 255


.field protected static final 'minpicturebytes' I = 1509


.field protected static final 'ncycles' I = 100


.field protected static final 'netbiasshift' I = 4


.field protected static final 'netsize' I = 256


.field protected static final 'prime1' I = 499


.field protected static final 'prime2' I = 491


.field protected static final 'prime3' I = 487


.field protected static final 'prime4' I = 503


.field protected static final 'radbias' I = 256


.field protected static final 'radbiasshift' I = 8


.field protected static final 'radiusbias' I = 64


.field protected static final 'radiusbiasshift' I = 6


.field protected static final 'radiusdec' I = 30


.field protected 'alphadec' I

.field protected 'bias' [I

.field protected 'freq' [I

.field protected 'lengthcount' I

.field protected 'netindex' [I

.field protected 'network' [[I

.field protected 'radpower' [I

.field protected 'samplefac' I

.field protected 'thepicture' [B

.method public <init>([BII)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 256
newarray int
putfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
aload 0
sipush 256
newarray int
putfield com/bumptech/glide/gifencoder/NeuQuant/bias [I
aload 0
sipush 256
newarray int
putfield com/bumptech/glide/gifencoder/NeuQuant/freq [I
aload 0
bipush 32
newarray int
putfield com/bumptech/glide/gifencoder/NeuQuant/radpower [I
aload 0
aload 1
putfield com/bumptech/glide/gifencoder/NeuQuant/thepicture [B
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
aload 0
iload 3
putfield com/bumptech/glide/gifencoder/NeuQuant/samplefac I
aload 0
sipush 256
anewarray [I
putfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iconst_0
istore 2
L0:
iload 2
sipush 256
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 2
iconst_4
newarray int
aastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 2
aaload
astore 1
iload 2
bipush 12
ishl
sipush 256
idiv
istore 3
aload 1
iconst_2
iload 3
iastore
aload 1
iconst_1
iload 3
iastore
aload 1
iconst_0
iload 3
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/freq [I
iload 2
sipush 256
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/bias [I
iload 2
iconst_0
iastore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 4
.limit stack 3
.end method

.method protected alterneigh(IIIII)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
iload 2
iload 1
isub
istore 6
iload 6
istore 8
iload 6
iconst_m1
if_icmpge L6
iconst_m1
istore 8
L6:
iload 2
iload 1
iadd
istore 1
iload 1
istore 9
iload 1
sipush 256
if_icmple L7
sipush 256
istore 9
L7:
iconst_1
istore 7
iload 2
iconst_1
isub
istore 6
iload 2
iconst_1
iadd
istore 1
iload 7
istore 2
L8:
iload 1
iload 9
if_icmplt L9
iload 6
iload 8
if_icmple L10
L9:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/radpower [I
astore 11
iload 2
iconst_1
iadd
istore 7
aload 11
iload 2
iaload
istore 10
iload 1
iload 9
if_icmpge L11
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
astore 11
iload 1
iconst_1
iadd
istore 2
aload 11
iload 1
aaload
astore 11
L0:
aload 11
iconst_0
aload 11
iconst_0
iaload
aload 11
iconst_0
iaload
iload 3
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
aload 11
iconst_1
aload 11
iconst_1
iaload
aload 11
iconst_1
iaload
iload 4
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
aload 11
iconst_2
aload 11
iconst_2
iaload
aload 11
iconst_2
iaload
iload 5
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
L1:
iload 2
istore 1
L12:
iload 6
iload 8
if_icmple L13
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
astore 11
iload 6
iconst_1
isub
istore 2
aload 11
iload 6
aaload
astore 11
L3:
aload 11
iconst_0
aload 11
iconst_0
iaload
aload 11
iconst_0
iaload
iload 3
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
aload 11
iconst_1
aload 11
iconst_1
iaload
aload 11
iconst_1
iaload
iload 4
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
aload 11
iconst_2
aload 11
iconst_2
iaload
aload 11
iconst_2
iaload
iload 5
isub
iload 10
imul
ldc_w 262144
idiv
isub
iastore
L4:
iload 2
istore 6
iload 7
istore 2
goto L8
L5:
astore 11
iload 2
istore 6
iload 7
istore 2
goto L8
L10:
return
L2:
astore 11
iload 2
istore 1
goto L12
L13:
iload 7
istore 2
goto L8
L11:
goto L12
.limit locals 12
.limit stack 5
.end method

.method protected altersingle(IIIII)V
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 2
aaload
astore 6
aload 6
iconst_0
aload 6
iconst_0
iaload
aload 6
iconst_0
iaload
iload 3
isub
iload 1
imul
sipush 1024
idiv
isub
iastore
aload 6
iconst_1
aload 6
iconst_1
iaload
aload 6
iconst_1
iaload
iload 4
isub
iload 1
imul
sipush 1024
idiv
isub
iastore
aload 6
iconst_2
aload 6
iconst_2
iaload
aload 6
iconst_2
iaload
iload 5
isub
iload 1
imul
sipush 1024
idiv
isub
iastore
return
.limit locals 7
.limit stack 5
.end method

.method public colorMap()[B
sipush 768
newarray byte
astore 5
sipush 256
newarray int
astore 6
iconst_0
istore 1
L0:
iload 1
sipush 256
if_icmpge L1
aload 6
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
iconst_3
iaload
iload 1
iastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iconst_0
istore 1
iconst_0
istore 2
L2:
iload 1
sipush 256
if_icmpge L3
aload 6
iload 1
iaload
istore 3
iload 2
iconst_1
iadd
istore 4
aload 5
iload 2
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 3
aaload
iconst_0
iaload
i2b
bastore
iload 4
iconst_1
iadd
istore 2
aload 5
iload 4
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 3
aaload
iconst_1
iaload
i2b
bastore
aload 5
iload 2
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 3
aaload
iconst_2
iaload
i2b
bastore
iload 1
iconst_1
iadd
istore 1
iload 2
iconst_1
iadd
istore 2
goto L2
L3:
aload 5
areturn
.limit locals 7
.limit stack 4
.end method

.method protected contest(III)I
ldc_w 2147483647
istore 7
ldc_w 2147483647
istore 5
iconst_m1
istore 8
iconst_m1
istore 6
iconst_0
istore 4
L0:
iload 4
sipush 256
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 4
aaload
astore 13
aload 13
iconst_0
iaload
iload 1
isub
istore 10
iload 10
istore 9
iload 10
ifge L2
iload 10
ineg
istore 9
L2:
aload 13
iconst_1
iaload
iload 2
isub
istore 11
iload 11
istore 10
iload 11
ifge L3
iload 11
ineg
istore 10
L3:
aload 13
iconst_2
iaload
iload 3
isub
istore 12
iload 12
istore 11
iload 12
ifge L4
iload 12
ineg
istore 11
L4:
iload 9
iload 10
iadd
iload 11
iadd
istore 10
iload 7
istore 9
iload 10
iload 7
if_icmpge L5
iload 10
istore 9
iload 4
istore 8
L5:
iload 10
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/bias [I
iload 4
iaload
bipush 12
ishr
isub
istore 10
iload 5
istore 7
iload 10
iload 5
if_icmpge L6
iload 10
istore 7
iload 4
istore 6
L6:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/freq [I
iload 4
iaload
bipush 10
ishr
istore 5
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/freq [I
astore 13
aload 13
iload 4
aload 13
iload 4
iaload
iload 5
isub
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/bias [I
astore 13
aload 13
iload 4
aload 13
iload 4
iaload
iload 5
bipush 10
ishl
iadd
iastore
iload 4
iconst_1
iadd
istore 4
iload 7
istore 5
iload 9
istore 7
goto L0
L1:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/freq [I
astore 13
aload 13
iload 8
aload 13
iload 8
iaload
bipush 64
iadd
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/bias [I
astore 13
aload 13
iload 8
aload 13
iload 8
iaload
ldc_w 65536
isub
iastore
iload 6
ireturn
.limit locals 14
.limit stack 5
.end method

.method public inxbuild()V
iconst_0
istore 5
iconst_0
istore 4
iconst_0
istore 1
L0:
iload 1
sipush 256
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
astore 8
iload 1
istore 7
aload 8
iconst_1
iaload
istore 2
iload 1
iconst_1
iadd
istore 3
L2:
iload 3
sipush 256
if_icmpge L3
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 3
aaload
astore 9
iload 2
istore 6
aload 9
iconst_1
iaload
iload 2
if_icmpge L4
iload 3
istore 7
aload 9
iconst_1
iaload
istore 6
L4:
iload 3
iconst_1
iadd
istore 3
iload 6
istore 2
goto L2
L3:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 7
aaload
astore 9
iload 1
iload 7
if_icmpeq L5
aload 9
iconst_0
iaload
istore 3
aload 9
iconst_0
aload 8
iconst_0
iaload
iastore
aload 8
iconst_0
iload 3
iastore
aload 9
iconst_1
iaload
istore 3
aload 9
iconst_1
aload 8
iconst_1
iaload
iastore
aload 8
iconst_1
iload 3
iastore
aload 9
iconst_2
iaload
istore 3
aload 9
iconst_2
aload 8
iconst_2
iaload
iastore
aload 8
iconst_2
iload 3
iastore
aload 9
iconst_3
iaload
istore 3
aload 9
iconst_3
aload 8
iconst_3
iaload
iastore
aload 8
iconst_3
iload 3
iastore
L5:
iload 5
istore 6
iload 4
istore 3
iload 2
iload 5
if_icmpeq L6
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
iload 5
iload 4
iload 1
iadd
iconst_1
ishr
iastore
iload 5
iconst_1
iadd
istore 3
L7:
iload 3
iload 2
if_icmpge L8
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
iload 3
iload 1
iastore
iload 3
iconst_1
iadd
istore 3
goto L7
L8:
iload 1
istore 3
iload 2
istore 6
L6:
iload 1
iconst_1
iadd
istore 1
iload 6
istore 5
iload 3
istore 4
goto L0
L1:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
iload 5
iload 4
sipush 255
iadd
iconst_1
ishr
iastore
iload 5
iconst_1
iadd
istore 1
L9:
iload 1
sipush 256
if_icmpge L10
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
iload 1
sipush 255
iastore
iload 1
iconst_1
iadd
istore 1
goto L9
L10:
return
.limit locals 10
.limit stack 4
.end method

.method public learn()V
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
sipush 1509
if_icmpge L0
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/NeuQuant/samplefac I
L0:
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/samplefac I
iconst_1
isub
iconst_3
idiv
bipush 30
iadd
putfield com/bumptech/glide/gifencoder/NeuQuant/alphadec I
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/thepicture [B
astore 17
iconst_0
istore 8
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
istore 15
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/samplefac I
iconst_3
imul
idiv
istore 16
iload 16
bipush 100
idiv
istore 7
sipush 1024
istore 9
sipush 2048
istore 4
sipush 2048
bipush 6
ishr
istore 1
iload 1
istore 2
iload 1
iconst_1
if_icmpgt L1
iconst_0
istore 2
L1:
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L3
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/radpower [I
iload 1
iload 2
iload 2
imul
iload 1
iload 1
imul
isub
sipush 256
imul
iload 2
iload 2
imul
idiv
sipush 1024
imul
iastore
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
sipush 1509
if_icmpge L4
iconst_3
istore 1
L5:
iconst_0
istore 5
iload 2
istore 6
L6:
iload 5
iload 16
if_icmpge L7
aload 17
iload 8
iconst_0
iadd
baload
sipush 255
iand
iconst_4
ishl
istore 2
aload 17
iload 8
iconst_1
iadd
baload
sipush 255
iand
iconst_4
ishl
istore 3
aload 17
iload 8
iconst_2
iadd
baload
sipush 255
iand
iconst_4
ishl
istore 10
aload 0
iload 2
iload 3
iload 10
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/contest(III)I
istore 11
aload 0
iload 9
iload 11
iload 2
iload 3
iload 10
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/altersingle(IIIII)V
iload 6
ifeq L8
aload 0
iload 6
iload 11
iload 2
iload 3
iload 10
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/alterneigh(IIIII)V
L8:
iload 8
iload 1
iadd
istore 3
iload 3
istore 2
iload 3
iload 15
if_icmplt L9
iload 3
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
isub
istore 2
L9:
iload 5
iconst_1
iadd
istore 12
iload 7
istore 10
iload 7
ifne L10
iconst_1
istore 10
L10:
iload 10
istore 7
iload 12
istore 5
iload 2
istore 8
iload 12
iload 10
irem
ifne L6
iload 9
iload 9
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/alphadec I
idiv
isub
istore 13
iload 4
iload 4
bipush 30
idiv
isub
istore 14
iload 14
bipush 6
ishr
istore 4
iload 4
istore 3
iload 4
iconst_1
if_icmpgt L11
iconst_0
istore 3
L11:
iconst_0
istore 11
L12:
iload 13
istore 9
iload 3
istore 6
iload 10
istore 7
iload 12
istore 5
iload 2
istore 8
iload 14
istore 4
iload 11
iload 3
if_icmpge L6
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/radpower [I
iload 11
iload 3
iload 3
imul
iload 11
iload 11
imul
isub
sipush 256
imul
iload 3
iload 3
imul
idiv
iload 13
imul
iastore
iload 11
iconst_1
iadd
istore 11
goto L12
L4:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
sipush 499
irem
ifeq L13
sipush 1497
istore 1
goto L5
L13:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
sipush 491
irem
ifeq L14
sipush 1473
istore 1
goto L5
L14:
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/lengthcount I
sipush 487
irem
ifeq L15
sipush 1461
istore 1
goto L5
L15:
sipush 1509
istore 1
goto L5
L7:
return
.limit locals 18
.limit stack 6
.end method

.method public map(III)I
sipush 1000
istore 6
iconst_m1
istore 5
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/netindex [I
iload 2
iaload
istore 10
iload 10
iconst_1
isub
istore 4
L0:
iload 10
sipush 256
if_icmplt L1
iload 4
iflt L2
L1:
iload 5
istore 8
iload 6
istore 9
iload 10
istore 7
iload 10
sipush 256
if_icmpge L3
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 10
aaload
astore 13
aload 13
iconst_1
iaload
iload 2
isub
istore 8
iload 8
iload 6
if_icmplt L4
sipush 256
istore 7
iload 6
istore 9
iload 5
istore 8
L3:
iload 8
istore 5
iload 9
istore 6
iload 7
istore 10
iload 4
iflt L0
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 4
aaload
astore 13
iload 2
aload 13
iconst_1
iaload
isub
istore 5
iload 5
iload 9
if_icmplt L5
iconst_m1
istore 4
iload 8
istore 5
iload 9
istore 6
iload 7
istore 10
goto L0
L4:
iload 10
iconst_1
iadd
istore 10
iload 8
istore 7
iload 8
ifge L6
iload 8
ineg
istore 7
L6:
aload 13
iconst_0
iaload
iload 1
isub
istore 9
iload 9
istore 8
iload 9
ifge L7
iload 9
ineg
istore 8
L7:
iload 7
iload 8
iadd
istore 11
iload 5
istore 8
iload 6
istore 9
iload 10
istore 7
iload 11
iload 6
if_icmpge L3
aload 13
iconst_2
iaload
iload 3
isub
istore 8
iload 8
istore 7
iload 8
ifge L8
iload 8
ineg
istore 7
L8:
iload 11
iload 7
iadd
istore 11
iload 5
istore 8
iload 6
istore 9
iload 10
istore 7
iload 11
iload 6
if_icmpge L3
iload 11
istore 9
aload 13
iconst_3
iaload
istore 8
iload 10
istore 7
goto L3
L5:
iload 4
iconst_1
isub
istore 11
iload 5
istore 4
iload 5
ifge L9
iload 5
ineg
istore 4
L9:
aload 13
iconst_0
iaload
iload 1
isub
istore 6
iload 6
istore 5
iload 6
ifge L10
iload 6
ineg
istore 5
L10:
iload 4
iload 5
iadd
istore 12
iload 8
istore 5
iload 9
istore 6
iload 7
istore 10
iload 11
istore 4
iload 12
iload 9
if_icmpge L0
aload 13
iconst_2
iaload
iload 3
isub
istore 5
iload 5
istore 4
iload 5
ifge L11
iload 5
ineg
istore 4
L11:
iload 12
iload 4
iadd
istore 12
iload 8
istore 5
iload 9
istore 6
iload 7
istore 10
iload 11
istore 4
iload 12
iload 9
if_icmpge L0
iload 12
istore 6
aload 13
iconst_3
iaload
istore 5
iload 7
istore 10
iload 11
istore 4
goto L0
L2:
iload 5
ireturn
.limit locals 14
.limit stack 3
.end method

.method public process()[B
aload 0
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/learn()V
aload 0
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/unbiasnet()V
aload 0
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/inxbuild()V
aload 0
invokevirtual com/bumptech/glide/gifencoder/NeuQuant/colorMap()[B
areturn
.limit locals 1
.limit stack 1
.end method

.method public unbiasnet()V
iconst_0
istore 1
L0:
iload 1
sipush 256
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
astore 2
aload 2
iconst_0
aload 2
iconst_0
iaload
iconst_4
ishr
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
astore 2
aload 2
iconst_1
aload 2
iconst_1
iaload
iconst_4
ishr
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
astore 2
aload 2
iconst_2
aload 2
iconst_2
iaload
iconst_4
ishr
iastore
aload 0
getfield com/bumptech/glide/gifencoder/NeuQuant/network [[I
iload 1
aaload
iconst_3
iload 1
iastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 4
.end method
