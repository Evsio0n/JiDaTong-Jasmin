.bytecode 50.0
.class public synchronized com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr
.super java/lang/Object
.inner class public static BitmapMemoryMgr inner com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr outer com/common/android/ui/gif/BitmapToolkit

.field private 'mBitmapArray' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method

.method public addBitmap(Landroid/graphics/Bitmap;)V
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
aload 1
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
return
.limit locals 2
.limit stack 2
.end method

.method public releaseAllMemory()V
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
ifnonnull L0
return
L0:
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast android/graphics/Bitmap
astore 2
aload 2
ifnull L1
aload 2
invokevirtual android/graphics/Bitmap/isMutable()Z
ifne L1
aload 2
invokevirtual android/graphics/Bitmap/recycle()V
goto L1
L2:
ldc "BitmapToolkit"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "releaseAllMemory : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/common/android/ui/gif/BitmapToolkit$BitmapMemoryMgr/mBitmapArray Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/clear()V
return
.limit locals 3
.limit stack 3
.end method
