.bytecode 50.0
.class public synchronized android/support/v4/util/LongSparseArray
.super java/lang/Object
.implements java/lang/Cloneable
.signature "<E:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;"

.field private static final 'DELETED' Ljava/lang/Object;

.field private 'mGarbage' Z

.field private 'mKeys' [J

.field private 'mSize' I

.field private 'mValues' [Ljava/lang/Object;

.method static <clinit>()V
new java/lang/Object
dup
invokespecial java/lang/Object/<init>()V
putstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
bipush 10
invokespecial android/support/v4/util/LongSparseArray/<init>(I)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield android/support/v4/util/LongSparseArray/mGarbage Z
iload 1
invokestatic android/support/v4/util/LongSparseArray/idealLongArraySize(I)I
istore 1
aload 0
iload 1
newarray long
putfield android/support/v4/util/LongSparseArray/mKeys [J
aload 0
iload 1
anewarray java/lang/Object
putfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
aload 0
iconst_0
putfield android/support/v4/util/LongSparseArray/mSize I
return
.limit locals 2
.limit stack 2
.end method

.method private static binarySearch([JIIJ)I
iload 1
iload 2
iadd
istore 5
iload 1
iconst_1
isub
istore 6
L0:
iload 5
iload 6
isub
iconst_1
if_icmple L1
iload 5
iload 6
iadd
iconst_2
idiv
istore 7
aload 0
iload 7
laload
lload 3
lcmp
ifge L2
iload 7
istore 6
goto L0
L2:
iload 7
istore 5
goto L0
L1:
iload 5
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
iload 5
istore 1
aload 0
iload 5
laload
lload 3
lcmp
ifeq L4
iload 5
iconst_m1
ixor
ireturn
.limit locals 8
.limit stack 4
.end method

.method private gc()V
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
istore 4
iconst_0
istore 2
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
astore 5
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
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
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
if_acmpeq L2
iload 1
iload 2
if_icmpeq L3
aload 5
iload 2
aload 5
iload 1
laload
lastore
aload 6
iload 2
aload 7
aastore
aload 6
iload 1
aconst_null
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
putfield android/support/v4/util/LongSparseArray/mGarbage Z
aload 0
iload 2
putfield android/support/v4/util/LongSparseArray/mSize I
return
.limit locals 8
.limit stack 4
.end method

.method public static idealByteArraySize(I)I
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

.method public static idealLongArraySize(I)I
iload 0
bipush 8
imul
invokestatic android/support/v4/util/LongSparseArray/idealByteArraySize(I)I
bipush 8
idiv
ireturn
.limit locals 1
.limit stack 2
.end method

.method public append(JLjava/lang/Object;)V
.signature "(JTE;)V"
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
ifeq L0
lload 1
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iconst_1
isub
laload
lcmp
ifgt L0
aload 0
lload 1
aload 3
invokevirtual android/support/v4/util/LongSparseArray/put(JLjava/lang/Object;)V
return
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L1
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
if_icmplt L1
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L1:
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
istore 4
iload 4
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
if_icmplt L2
iload 4
iconst_1
iadd
invokestatic android/support/v4/util/LongSparseArray/idealLongArraySize(I)I
istore 5
iload 5
newarray long
astore 6
iload 5
anewarray java/lang/Object
astore 7
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 6
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iconst_0
aload 7
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 6
putfield android/support/v4/util/LongSparseArray/mKeys [J
aload 0
aload 7
putfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
L2:
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 4
lload 1
lastore
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aload 3
aastore
aload 0
iload 4
iconst_1
iadd
putfield android/support/v4/util/LongSparseArray/mSize I
return
.limit locals 8
.limit stack 5
.end method

.method public clear()V
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
istore 2
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
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
putfield android/support/v4/util/LongSparseArray/mSize I
aload 0
iconst_0
putfield android/support/v4/util/LongSparseArray/mGarbage Z
return
.limit locals 4
.limit stack 3
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
.signature "()Landroid/support/v4/util/LongSparseArray<TE;>;"
.catch java/lang/CloneNotSupportedException from L0 to L1 using L2
.catch java/lang/CloneNotSupportedException from L3 to L4 using L2
.catch java/lang/CloneNotSupportedException from L5 to L6 using L2
aconst_null
astore 1
L0:
aload 0
invokespecial java/lang/Object/clone()Ljava/lang/Object;
checkcast android/support/v4/util/LongSparseArray
astore 2
L1:
aload 2
astore 1
L3:
aload 2
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
invokevirtual [J/clone()Ljava/lang/Object;
checkcast [J
putfield android/support/v4/util/LongSparseArray/mKeys [J
L4:
aload 2
astore 1
L5:
aload 2
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
invokevirtual [Ljava/lang/Object;/clone()Ljava/lang/Object;
checkcast [Ljava/lang/Object;
putfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
L6:
aload 2
areturn
L2:
astore 2
aload 1
areturn
.limit locals 3
.limit stack 2
.end method

.method public volatile synthetic clone()Ljava/lang/Object;
.throws java/lang/CloneNotSupportedException
aload 0
invokevirtual android/support/v4/util/LongSparseArray/clone()Landroid/support/v4/util/LongSparseArray;
areturn
.limit locals 1
.limit stack 1
.end method

.method public delete(J)V
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
lload 1
invokestatic android/support/v4/util/LongSparseArray/binarySearch([JIIJ)I
istore 3
iload 3
iflt L0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 3
aaload
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
if_acmpeq L0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 3
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
aastore
aload 0
iconst_1
putfield android/support/v4/util/LongSparseArray/mGarbage Z
L0:
return
.limit locals 4
.limit stack 5
.end method

.method public get(J)Ljava/lang/Object;
.signature "(J)TE;"
aload 0
lload 1
aconst_null
invokevirtual android/support/v4/util/LongSparseArray/get(JLjava/lang/Object;)Ljava/lang/Object;
areturn
.limit locals 3
.limit stack 4
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
.signature "(JTE;)TE;"
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
lload 1
invokestatic android/support/v4/util/LongSparseArray/binarySearch([JIIJ)I
istore 4
iload 4
iflt L0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aaload
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
if_acmpne L1
L0:
aload 3
areturn
L1:
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aaload
areturn
.limit locals 5
.limit stack 5
.end method

.method public indexOfKey(J)I
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
lload 1
invokestatic android/support/v4/util/LongSparseArray/binarySearch([JIIJ)I
ireturn
.limit locals 3
.limit stack 5
.end method

.method public indexOfValue(Ljava/lang/Object;)I
.signature "(TE;)I"
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
iconst_0
istore 2
L1:
iload 2
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
if_icmpge L2
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
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

.method public keyAt(I)J
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 1
laload
lreturn
.limit locals 2
.limit stack 2
.end method

.method public put(JLjava/lang/Object;)V
.signature "(JTE;)V"
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
lload 1
invokestatic android/support/v4/util/LongSparseArray/binarySearch([JIIJ)I
istore 4
iload 4
iflt L0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aload 3
aastore
return
L0:
iload 4
iconst_m1
ixor
istore 5
iload 5
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
if_icmpge L1
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 5
aaload
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
if_acmpne L1
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 5
lload 1
lastore
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 5
aload 3
aastore
return
L1:
iload 5
istore 4
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L2
iload 5
istore 4
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
if_icmplt L2
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
lload 1
invokestatic android/support/v4/util/LongSparseArray/binarySearch([JIIJ)I
iconst_m1
ixor
istore 4
L2:
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
if_icmplt L3
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iconst_1
iadd
invokestatic android/support/v4/util/LongSparseArray/idealLongArraySize(I)I
istore 5
iload 5
newarray long
astore 6
iload 5
anewarray java/lang/Object
astore 7
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iconst_0
aload 6
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iconst_0
aload 7
iconst_0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
arraylength
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 6
putfield android/support/v4/util/LongSparseArray/mKeys [J
aload 0
aload 7
putfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
L3:
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iload 4
isub
ifeq L4
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 4
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 4
iconst_1
iadd
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iload 4
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
iconst_1
iadd
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iload 4
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L4:
aload 0
getfield android/support/v4/util/LongSparseArray/mKeys [J
iload 4
lload 1
lastore
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 4
aload 3
aastore
aload 0
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
iconst_1
iadd
putfield android/support/v4/util/LongSparseArray/mSize I
return
.limit locals 8
.limit stack 6
.end method

.method public remove(J)V
aload 0
lload 1
invokevirtual android/support/v4/util/LongSparseArray/delete(J)V
return
.limit locals 3
.limit stack 3
.end method

.method public removeAt(I)V
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 1
aaload
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
if_acmpeq L0
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 1
getstatic android/support/v4/util/LongSparseArray/DELETED Ljava/lang/Object;
aastore
aload 0
iconst_1
putfield android/support/v4/util/LongSparseArray/mGarbage Z
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public setValueAt(ILjava/lang/Object;)V
.signature "(ITE;)V"
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 1
aload 2
aastore
return
.limit locals 3
.limit stack 3
.end method

.method public size()I
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mSize I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public valueAt(I)Ljava/lang/Object;
.signature "(I)TE;"
aload 0
getfield android/support/v4/util/LongSparseArray/mGarbage Z
ifeq L0
aload 0
invokespecial android/support/v4/util/LongSparseArray/gc()V
L0:
aload 0
getfield android/support/v4/util/LongSparseArray/mValues [Ljava/lang/Object;
iload 1
aaload
areturn
.limit locals 2
.limit stack 2
.end method
