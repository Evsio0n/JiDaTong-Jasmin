.bytecode 50.0
.class public synchronized com/nd/android/u/ui/widge/lift/PetalSet
.super java/lang/Object

.field private static final 'CAKE_IMAGE' [I

.field private static final 'FLOWER_IMAGE' I

.field private static final 'X_SEED' I = 0


.field private static final 'Y_POSITION' I = -100


.field private static final 'Y_SEED' I = 40


.field private 'isSelection' Z

.field public 'petalList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/ui/widge/lift/Petal;>;"

.method static <clinit>()V
getstatic com/nd/android/u/chat/R$drawable/lift_flower I
putstatic com/nd/android/u/ui/widge/lift/PetalSet/FLOWER_IMAGE I
bipush 18
newarray int
dup
iconst_0
getstatic com/nd/android/u/chat/R$drawable/cakeimg I
iastore
dup
iconst_1
getstatic com/nd/android/u/chat/R$drawable/cakeimg_thumb I
iastore
dup
iconst_2
getstatic com/nd/android/u/chat/R$drawable/candyimg I
iastore
dup
iconst_3
getstatic com/nd/android/u/chat/R$drawable/candyimg_thumb I
iastore
dup
iconst_4
getstatic com/nd/android/u/chat/R$drawable/greenpaper I
iastore
dup
iconst_5
getstatic com/nd/android/u/chat/R$drawable/yellow_paper I
iastore
dup
bipush 6
getstatic com/nd/android/u/chat/R$drawable/liftimg I
iastore
dup
bipush 7
getstatic com/nd/android/u/chat/R$drawable/liftimg_thumb I
iastore
dup
bipush 8
getstatic com/nd/android/u/chat/R$drawable/red_paper I
iastore
dup
bipush 9
getstatic com/nd/android/u/chat/R$drawable/bluepaper I
iastore
dup
bipush 10
getstatic com/nd/android/u/chat/R$drawable/cakeimg_thumb I
iastore
dup
bipush 11
getstatic com/nd/android/u/chat/R$drawable/greenpaper I
iastore
dup
bipush 12
getstatic com/nd/android/u/chat/R$drawable/yellow_paper I
iastore
dup
bipush 13
getstatic com/nd/android/u/chat/R$drawable/candyimg_thumb I
iastore
dup
bipush 14
getstatic com/nd/android/u/chat/R$drawable/liftimg_thumb I
iastore
dup
bipush 15
getstatic com/nd/android/u/chat/R$drawable/bluepaper I
iastore
dup
bipush 16
getstatic com/nd/android/u/chat/R$drawable/greenpaper I
iastore
dup
bipush 17
getstatic com/nd/android/u/chat/R$drawable/bluepaper I
iastore
putstatic com/nd/android/u/ui/widge/lift/PetalSet/CAKE_IMAGE [I
return
.limit locals 0
.limit stack 4
.end method

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/ui/widge/lift/PetalSet/isSelection Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/widge/lift/PetalSet/petalList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 3
.end method

.method public add(IDLandroid/content/res/Resources;I)V
iconst_0
istore 6
L0:
iload 6
iload 1
if_icmpge L1
new com/nd/android/u/ui/widge/lift/Petal
dup
aload 4
aload 0
invokevirtual com/nd/android/u/ui/widge/lift/PetalSet/getImageId()I
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
dconst_0
iload 5
iconst_3
imul
i2d
invokestatic java/lang/Math/random()D
ldc2_w 0.3D
dadd
dmul
ldc2_w 5.0D
ddiv
dadd
d2i
bipush -100
bipush 40
i2d
iconst_0
i2d
dload 2
invokespecial com/nd/android/u/ui/widge/lift/Petal/<init>(Landroid/graphics/Bitmap;IIDDD)V
astore 7
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalSet/petalList Ljava/util/ArrayList;
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 6
iconst_1
iadd
istore 6
goto L0
L1:
return
.limit locals 8
.limit stack 11
.end method

.method public getImageId()I
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/widge/lift/PetalSet/isSelection Z
ifne L0
getstatic com/nd/android/u/ui/widge/lift/PetalSet/CAKE_IMAGE [I
aload 1
getstatic com/nd/android/u/ui/widge/lift/PetalSet/CAKE_IMAGE [I
arraylength
invokevirtual java/util/Random/nextInt(I)I
iaload
ireturn
L0:
getstatic com/nd/android/u/ui/widge/lift/PetalSet/FLOWER_IMAGE I
ireturn
.limit locals 2
.limit stack 3
.end method
