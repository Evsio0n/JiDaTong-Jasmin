.bytecode 50.0
.class final synchronized com/flurry/android/p
.super java/lang/Object

.field final 'a' Ljava/lang/String;

.field 'b' I

.field 'c' Lcom/flurry/android/w;

.field 'd' J

.field 'e' Ljava/util/List;

.field private 'f' B

.field private 'g' Ljava/util/concurrent/atomic/AtomicInteger;

.method <init>(Lcom/flurry/android/p;J)V
aload 0
aload 1
getfield com/flurry/android/p/a Ljava/lang/String;
aload 1
getfield com/flurry/android/p/f B
lload 2
invokespecial com/flurry/android/p/<init>(Ljava/lang/String;BJ)V
aload 0
aload 1
getfield com/flurry/android/p/c Lcom/flurry/android/w;
putfield com/flurry/android/p/c Lcom/flurry/android/w;
aload 0
aload 1
getfield com/flurry/android/p/d J
putfield com/flurry/android/p/d J
return
.limit locals 4
.limit stack 5
.end method

.method <init>(Ljava/lang/String;BJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/flurry/android/p/e Ljava/util/List;
aload 0
new java/util/concurrent/atomic/AtomicInteger
dup
iconst_0
invokespecial java/util/concurrent/atomic/AtomicInteger/<init>(I)V
putfield com/flurry/android/p/g Ljava/util/concurrent/atomic/AtomicInteger;
aload 0
aload 0
getfield com/flurry/android/p/g Ljava/util/concurrent/atomic/AtomicInteger;
invokevirtual java/util/concurrent/atomic/AtomicInteger/incrementAndGet()I
putfield com/flurry/android/p/b I
aload 0
aload 1
putfield com/flurry/android/p/a Ljava/lang/String;
aload 0
iload 2
putfield com/flurry/android/p/f B
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
new com/flurry/android/f
dup
iconst_1
lload 3
invokespecial com/flurry/android/f/<init>(BJ)V
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 5
.limit stack 6
.end method

.method final a()J
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/flurry/android/f
getfield com/flurry/android/f/b J
lreturn
.limit locals 1
.limit stack 2
.end method

.method final a(Lcom/flurry/android/f;)V
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 2
.limit stack 2
.end method

.method final a(Ljava/io/DataOutput;)V
aload 1
aload 0
getfield com/flurry/android/p/b I
invokeinterface java/io/DataOutput/writeShort(I)V 1
aload 1
aload 0
getfield com/flurry/android/p/a Ljava/lang/String;
invokeinterface java/io/DataOutput/writeUTF(Ljava/lang/String;)V 1
aload 1
aload 0
getfield com/flurry/android/p/f B
invokeinterface java/io/DataOutput/writeByte(I)V 1
aload 0
getfield com/flurry/android/p/c Lcom/flurry/android/w;
ifnonnull L0
aload 1
lconst_0
invokeinterface java/io/DataOutput/writeLong(J)V 2
aload 1
lconst_0
invokeinterface java/io/DataOutput/writeLong(J)V 2
aload 1
iconst_0
invokeinterface java/io/DataOutput/writeByte(I)V 1
L1:
aload 1
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
invokeinterface java/util/List/size()I 0
invokeinterface java/io/DataOutput/writeShort(I)V 1
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L2:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/flurry/android/f
astore 3
aload 1
aload 3
getfield com/flurry/android/f/a B
invokeinterface java/io/DataOutput/writeByte(I)V 1
aload 1
aload 3
getfield com/flurry/android/f/b J
invokeinterface java/io/DataOutput/writeLong(J)V 2
goto L2
L0:
aload 1
aload 0
getfield com/flurry/android/p/c Lcom/flurry/android/w;
getfield com/flurry/android/w/a J
invokeinterface java/io/DataOutput/writeLong(J)V 2
aload 1
aload 0
getfield com/flurry/android/p/c Lcom/flurry/android/w;
getfield com/flurry/android/w/e J
invokeinterface java/io/DataOutput/writeLong(J)V 2
aload 0
getfield com/flurry/android/p/c Lcom/flurry/android/w;
getfield com/flurry/android/w/g [B
astore 2
aload 1
aload 2
arraylength
invokeinterface java/io/DataOutput/writeByte(I)V 1
aload 1
aload 2
invokeinterface java/io/DataOutput/write([B)V 1
goto L1
L3:
return
.limit locals 4
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "{hook: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/p/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", ad: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/flurry/android/p/c Lcom/flurry/android/w;
getfield com/flurry/android/w/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", transitions: ["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getfield com/flurry/android/p/e Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/flurry/android/f
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
pop
aload 1
ldc ","
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L0
L1:
aload 1
ldc "]}"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 3
.limit stack 3
.end method
