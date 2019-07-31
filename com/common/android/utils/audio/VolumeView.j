.bytecode 50.0
.class public synchronized com/common/android/utils/audio/VolumeView
.super android/view/View

.field 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"

.field 'mContext' Landroid/content/Context;

.field private 'mMaxVolume' D

.field private 'mMinVolume' D

.field 'mVolume' I

.field 'marginLeft' I

.field 'marginTop' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
aconst_null
invokespecial com/common/android/utils/audio/VolumeView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
invokevirtual com/common/android/utils/audio/VolumeView/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/view/View/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
ldc2_w 10000.0D
putfield com/common/android/utils/audio/VolumeView/mMaxVolume D
aload 0
dconst_0
putfield com/common/android/utils/audio/VolumeView/mMinVolume D
aload 0
iconst_0
putfield com/common/android/utils/audio/VolumeView/mVolume I
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
aconst_null
putfield com/common/android/utils/audio/VolumeView/mContext Landroid/content/Context;
aload 0
iconst_0
putfield com/common/android/utils/audio/VolumeView/marginTop I
aload 0
iconst_0
putfield com/common/android/utils/audio/VolumeView/marginLeft I
aload 0
aload 1
invokevirtual com/common/android/utils/audio/VolumeView/init(Landroid/content/Context;)V
return
.limit locals 3
.limit stack 3
.end method

.method public drawableToBitmap(I)Landroid/graphics/Bitmap;
.catch java/lang/RuntimeException from L0 to L1 using L2
L0:
aload 0
getfield com/common/android/utils/audio/VolumeView/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
iload 1
invokestatic android/graphics/BitmapFactory/decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
astore 2
L1:
aload 2
areturn
L2:
astore 2
invokestatic java/lang/System/gc()V
aconst_null
areturn
.limit locals 3
.limit stack 2
.end method

.method public init(Landroid/content/Context;)V
aload 0
aload 1
putfield com/common/android/utils/audio/VolumeView/mContext Landroid/content/Context;
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp1 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp2 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp3 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp4 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp5 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp6 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getstatic com/nd/android/u/allcommon/R$drawable/amp7 I
invokevirtual com/common/android/utils/audio/VolumeView/drawableToBitmap(I)Landroid/graphics/Bitmap;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
aload 0
getfield com/common/android/utils/audio/VolumeView/mVolume I
bipush 6
if_icmplt L0
aload 0
bipush 6
putfield com/common/android/utils/audio/VolumeView/mVolume I
L0:
aload 0
getfield com/common/android/utils/audio/VolumeView/mVolume I
iconst_m1
if_icmpne L1
return
L1:
aload 0
sipush 153
aload 0
getfield com/common/android/utils/audio/VolumeView/mVolume I
bipush 23
imul
isub
bipush 15
isub
putfield com/common/android/utils/audio/VolumeView/marginTop I
aload 1
aload 0
getfield com/common/android/utils/audio/VolumeView/list Ljava/util/ArrayList;
aload 0
getfield com/common/android/utils/audio/VolumeView/mVolume I
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast android/graphics/Bitmap
fconst_0
aload 0
getfield com/common/android/utils/audio/VolumeView/marginTop I
i2f
aconst_null
invokevirtual android/graphics/Canvas/drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
return
.limit locals 2
.limit stack 5
.end method

.method public pause()V
aload 0
iconst_0
putfield com/common/android/utils/audio/VolumeView/mVolume I
aload 0
invokevirtual com/common/android/utils/audio/VolumeView/invalidate()V
return
.limit locals 1
.limit stack 2
.end method

.method public setVolume(D)V
dload 1
aload 0
getfield com/common/android/utils/audio/VolumeView/mMinVolume D
dcmpg
ifge L0
aload 0
dload 1
putfield com/common/android/utils/audio/VolumeView/mMinVolume D
L0:
dload 1
aload 0
getfield com/common/android/utils/audio/VolumeView/mMaxVolume D
dcmpl
ifle L1
aload 0
dload 1
putfield com/common/android/utils/audio/VolumeView/mMaxVolume D
L1:
aload 0
getfield com/common/android/utils/audio/VolumeView/mMaxVolume D
aload 0
getfield com/common/android/utils/audio/VolumeView/mMinVolume D
dsub
dconst_0
dcmpl
ifle L2
aload 0
dload 1
aload 0
getfield com/common/android/utils/audio/VolumeView/mMinVolume D
dsub
aload 0
getfield com/common/android/utils/audio/VolumeView/mMaxVolume D
aload 0
getfield com/common/android/utils/audio/VolumeView/mMinVolume D
dsub
ddiv
ldc2_w 6.0D
dmul
d2i
putfield com/common/android/utils/audio/VolumeView/mVolume I
L3:
aload 0
invokevirtual com/common/android/utils/audio/VolumeView/invalidate()V
return
L2:
aload 0
bipush 6
putfield com/common/android/utils/audio/VolumeView/mVolume I
goto L3
.limit locals 3
.limit stack 7
.end method
