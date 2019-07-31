.bytecode 50.0
.class public final synchronized com/bumptech/glide/util/ByteArrayPool
.super java/lang/Object

.field private static final 'BYTE_ARRAY_POOL' Lcom/bumptech/glide/util/ByteArrayPool;

.field private static final 'MAX_BYTE_ARRAY_COUNT' I = 32


.field private static final 'MAX_SIZE' I = 2146304


.field private static final 'TAG' Ljava/lang/String; = "ByteArrayPool"

.field private static final 'TEMP_BYTES_SIZE' I = 65536


.field private final 'tempQueue' Ljava/util/Queue; signature "Ljava/util/Queue<[B>;"

.method static <clinit>()V
new com/bumptech/glide/util/ByteArrayPool
dup
invokespecial com/bumptech/glide/util/ByteArrayPool/<init>()V
putstatic com/bumptech/glide/util/ByteArrayPool/BYTE_ARRAY_POOL Lcom/bumptech/glide/util/ByteArrayPool;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
invokestatic com/bumptech/glide/util/Util/createQueue(I)Ljava/util/Queue;
putfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
return
.limit locals 1
.limit stack 2
.end method

.method public static get()Lcom/bumptech/glide/util/ByteArrayPool;
getstatic com/bumptech/glide/util/ByteArrayPool/BYTE_ARRAY_POOL Lcom/bumptech/glide/util/ByteArrayPool;
areturn
.limit locals 0
.limit stack 1
.end method

.method public clear()V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
invokeinterface java/util/Queue/clear()V 0
aload 1
monitorexit
L1:
return
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 1
.end method

.method public getBytes()[B
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
astore 1
aload 1
monitorenter
L0:
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
invokeinterface java/util/Queue/poll()Ljava/lang/Object; 0
checkcast [B
astore 2
aload 1
monitorexit
L1:
aload 2
astore 1
aload 2
ifnonnull L5
ldc_w 65536
newarray byte
astore 2
aload 2
astore 1
ldc "ByteArrayPool"
iconst_3
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ifeq L5
ldc "ByteArrayPool"
ldc "Created temp bytes"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
astore 1
L5:
aload 1
areturn
L2:
astore 2
L3:
aload 1
monitorexit
L4:
aload 2
athrow
.limit locals 3
.limit stack 2
.end method

.method public releaseBytes([B)Z
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L4 to L5 using L2
.catch all from L6 to L7 using L2
aload 1
arraylength
ldc_w 65536
if_icmpeq L8
iconst_0
ireturn
L8:
iconst_0
istore 2
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
astore 3
aload 3
monitorenter
L0:
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
invokeinterface java/util/Queue/size()I 0
bipush 32
if_icmpge L4
L1:
iconst_1
istore 2
L3:
aload 0
getfield com/bumptech/glide/util/ByteArrayPool/tempQueue Ljava/util/Queue;
aload 1
invokeinterface java/util/Queue/offer(Ljava/lang/Object;)Z 1
pop
L4:
aload 3
monitorexit
L5:
iload 2
ireturn
L2:
astore 1
L6:
aload 3
monitorexit
L7:
aload 1
athrow
.limit locals 4
.limit stack 2
.end method
