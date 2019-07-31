.bytecode 50.0
.class public synchronized android/support/v4/util/SparseArrayCompat
.super java/lang/Object
.signature "<E:Ljava/lang/Object;>Ljava/lang/Object;"

.field private static final 'DELETED' Ljava/lang/Object;

.field private 'mGarbage' Z

.field private 'mKeys' [I

.field private 'mSize' I

.field private 'mValues' [Ljava/lang/Object;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
bipush 10
invokespecial android/support/v4/util/SparseArrayCompat/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield android/support/v4/util/SparseArrayCompat/mGarbage Z
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/idealIntArraySize(I)I
istore 1
aload 0
iload 1
newarray int
putfield android/support/v4/util/SparseArrayCompat/mKeys [I
aload 0
iload 1
anewarray java/lang/Object
putfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
aload 0
iconst_0
putfield android/support/v4/util/SparseArrayCompat/mSize I
return
.limit locals 2
.limit stack 2
.end method

.method private static binarySearch([IIII)I
iload 1
iload 2
iadd
istore 4
iload 1
iconst_1
isub
istore 5
L0:
iload 4
iload 5
isub
iconst_1
if_icmple L1
iload 4
iload 5
iadd
iconst_2
idiv
istore 6
aload 0
iload 6
iaload
iload 3
if_icmpge L2
iload 6
istore 5
goto L0
L2:
iload 6
istore 4
goto L0
L1:
iload 4
iload 1
iload 2
iadd
if_icmpne L3
iload 1
iload 2
iadd
iconst_m1
ixor
istore 1
L4:
iload 1
ireturn
L3:
iload 4
istore 1
aload 0
iload 4
iaload
iload 3
if_icmpeq L4
iload 4
iconst_m1
ixor
ireturn
.limit locals 7
.limit stack 3
.end method

.method private gc()V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
istore 4
iconst_0
istore 2
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
astore 5
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
astore 6
iconst_0
istore 1
L0:
iload 1
iload 4
if_icmpge L1
aload 6
iload 1
aaload
astore 7
iload 2
istore 3
aload 7
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
if_acmpeq L2
iload 1
iload 2
if_icmpeq L3
aload 5
iload 2
aload 5
iload 1
iaload
iastore
aload 6
iload 2
aload 7
aastore
L3:
iload 2
iconst_1
iadd
istore 3
L2:
iload 1
iconst_1
iadd
istore 1
iload 3
istore 2
goto L0
L1:
aload 0
iconst_0
putfield android/support/v4/util/SparseArrayCompat/mGarbage Z
aload 0
iload 2
putfield android/support/v4/util/SparseArrayCompat/mSize I
return
.limit locals 8
.limit stack 4
.end method

.method static idealByteArraySize(I)I
iconst_4
istore 1
L0:
iload 0
istore 2
iload 1
bipush 32
if_icmpge L1
iload 0
iconst_1
iload 1
ishl
bipush 12
isub
if_icmpgt L2
iconst_1
iload 1
ishl
bipush 12
isub
istore 2
L1:
iload 2
ireturn
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
.limit locals 3
.limit stack 3
.end method

.method static idealIntArraySize(I)I
iload 0
iconst_4
imul
invokestatic android/support/v4/util/SparseArrayCompat/idealByteArraySize(I)I
iconst_4
idiv
ireturn
.limit locals 1
.limit stack 2
.end method

.method public append(ILjava/lang/Object;)V
.signature "(ITE;)V"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
ifeq L0
iload 1
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iconst_1
isub
iaload
if_icmpgt L0
aload 0
iload 1
aload 2
invokevirtual android/support/v4/util/SparseArrayCompat/put(ILjava/lang/Object;)V
return
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L1
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
if_icmplt L1
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L1:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
istore 3
iload 3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
if_icmplt L2
iload 3
iconst_1
iadd
invokestatic android/support/v4/util/SparseArrayCompat/idealIntArraySize(I)I
istore 4
iload 4
newarray int
astore 5
iload 4
anewarray java/lang/Object
astore 6
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 5
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iconst_0
aload 6
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 5
putfield android/support/v4/util/SparseArrayCompat/mKeys [I
aload 0
aload 6
putfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
L2:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 3
iload 1
iastore
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 3
aload 2
aastore
aload 0
iload 3
iconst_1
iadd
putfield android/support/v4/util/SparseArrayCompat/mSize I
return
.limit locals 7
.limit stack 5
.end method

.method public clear()V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
istore 2
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
astore 3
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 3
iload 1
aconst_null
aastore
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
iconst_0
putfield android/support/v4/util/SparseArrayCompat/mSize I
aload 0
iconst_0
putfield android/support/v4/util/SparseArrayCompat/mGarbage Z
return
.limit locals 4
.limit stack 3
.end method

.method public delete(I)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/binarySearch([IIII)I
istore 1
iload 1
iflt L0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aaload
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
if_acmpeq L0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
aastore
aload 0
iconst_1
putfield android/support/v4/util/SparseArrayCompat/mGarbage Z
L0:
return
.limit locals 2
.limit stack 4
.end method

.method public get(I)Ljava/lang/Object;
.signature "(I)TE;"
aload 0
iload 1
aconst_null
invokevirtual android/support/v4/util/SparseArrayCompat/get(ILjava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 3
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
.signature "(ITE;)TE;"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/binarySearch([IIII)I
istore 1
iload 1
iflt L0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aaload
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
if_acmpne L1
L0:
aload 2
areturn
L1:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aaload
areturn
.limit locals 3
.limit stack 4
.end method

.method public indexOfKey(I)I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/binarySearch([IIII)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public indexOfValue(Ljava/lang/Object;)I
.signature "(TE;)I"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
if_icmpge L2
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 2
aaload
aload 1
if_acmpne L3
iload 2
ireturn
L3:
iload 2
iconst_1
iadd
istore 2
goto L1
L2:
iconst_m1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public keyAt(I)I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 1
iaload
ireturn
.limit locals 2
.limit stack 2
.end method

.method public put(ILjava/lang/Object;)V
.signature "(ITE;)V"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/binarySearch([IIII)I
istore 3
iload 3
iflt L0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 3
aload 2
aastore
return
L0:
iload 3
iconst_m1
ixor
istore 4
iload 4
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
if_icmpge L1
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 4
aaload
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
if_acmpne L1
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 4
iload 1
iastore
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 4
aload 2
aastore
return
L1:
iload 4
istore 3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L2
iload 4
istore 3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
if_icmplt L2
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
invokestatic android/support/v4/util/SparseArrayCompat/binarySearch([IIII)I
iconst_m1
ixor
istore 3
L2:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
if_icmplt L3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iconst_1
iadd
invokestatic android/support/v4/util/SparseArrayCompat/idealIntArraySize(I)I
istore 4
iload 4
newarray int
astore 5
iload 4
anewarray java/lang/Object
astore 6
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iconst_0
aload 5
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iconst_0
aload 6
iconst_0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 5
putfield android/support/v4/util/SparseArrayCompat/mKeys [I
aload 0
aload 6
putfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
L3:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 3
isub
ifeq L4
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 3
iconst_1
iadd
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 3
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 3
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 3
iconst_1
iadd
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 3
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L4:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mKeys [I
iload 3
iload 1
iastore
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 3
aload 2
aastore
aload 0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iconst_1
iadd
putfield android/support/v4/util/SparseArrayCompat/mSize I
return
.limit locals 7
.limit stack 6
.end method

.method public remove(I)V
aload 0
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/delete(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public removeAt(I)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aaload
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
if_acmpeq L0
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
getstatic android/support/v4/util/SparseArrayCompat/DELETED Ljava/lang/Object;
aastore
aload 0
iconst_1
putfield android/support/v4/util/SparseArrayCompat/mGarbage Z
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public removeAtRange(II)V
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
iload 1
iload 2
iadd
invokestatic java/lang/Math/min(II)I
istore 2
L0:
iload 1
iload 2
if_icmpge L1
aload 0
iload 1
invokevirtual android/support/v4/util/SparseArrayCompat/removeAt(I)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method public setValueAt(ILjava/lang/Object;)V
.signature "(ITE;)V"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aload 2
aastore
return
.limit locals 3
.limit stack 3
.end method

.method public size()I
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public valueAt(I)Ljava/lang/Object;
.signature "(I)TE;"
aload 0
getfield android/support/v4/util/SparseArrayCompat/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/SparseArrayCompat/gc()V
L0:
aload 0
getfield android/support/v4/util/SparseArrayCompat/mValues [Ljava/lang/Object;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method
