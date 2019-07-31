.bytecode 50.0
.class public synchronized com/alibaba/fastjson/util/ThreadLocalCache
.super java/lang/Object

.field public static final 'BYTES_CACH_INIT_SIZE' I = 1024


.field public static final 'BYTeS_CACH_MAX_SIZE' I = 131072


.field public static final 'CHARS_CACH_INIT_SIZE' I = 1024


.field public static final 'CHARS_CACH_MAX_SIZE' I = 131072


.field private static final 'bytesBufLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<[B>;>;"

.field private static final 'charsBufLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<[C>;>;"

.field private static final 'decoderLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/nio/charset/CharsetDecoder;>;"

.method static <clinit>()V
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/util/ThreadLocalCache/charsBufLocal Ljava/lang/ThreadLocal;
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/util/ThreadLocalCache/decoderLocal Ljava/lang/ThreadLocal;
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/util/ThreadLocalCache/bytesBufLocal Ljava/lang/ThreadLocal;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static allocate(I)[C
sipush 1024
ldc_w 131072
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getAllocateLength(III)I
istore 1
iload 1
ldc_w 131072
if_icmpgt L0
iload 1
newarray char
astore 2
getstatic com/alibaba/fastjson/util/ThreadLocalCache/charsBufLocal Ljava/lang/ThreadLocal;
new java/lang/ref/SoftReference
dup
aload 2
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
aload 2
areturn
L0:
iload 0
newarray char
areturn
.limit locals 3
.limit stack 4
.end method

.method private static allocateBytes(I)[B
sipush 1024
ldc_w 131072
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/getAllocateLength(III)I
istore 1
iload 1
ldc_w 131072
if_icmpgt L0
iload 1
newarray byte
astore 2
getstatic com/alibaba/fastjson/util/ThreadLocalCache/bytesBufLocal Ljava/lang/ThreadLocal;
new java/lang/ref/SoftReference
dup
aload 2
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
aload 2
areturn
L0:
iload 0
newarray byte
areturn
.limit locals 3
.limit stack 4
.end method

.method public static clearBytes()V
getstatic com/alibaba/fastjson/util/ThreadLocalCache/bytesBufLocal Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
return
.limit locals 0
.limit stack 2
.end method

.method public static clearChars()V
getstatic com/alibaba/fastjson/util/ThreadLocalCache/charsBufLocal Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
return
.limit locals 0
.limit stack 2
.end method

.method private static getAllocateLength(III)I
L0:
iload 0
iload 2
if_icmplt L1
iload 0
ireturn
L1:
iload 0
iconst_2
imul
istore 3
iload 3
istore 0
iload 3
iload 1
if_icmple L0
iload 2
ireturn
.limit locals 4
.limit stack 2
.end method

.method public static getBytes(I)[B
getstatic com/alibaba/fastjson/util/ThreadLocalCache/bytesBufLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 1
aload 1
ifnonnull L0
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocateBytes(I)[B
astore 1
L1:
aload 1
areturn
L0:
aload 1
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [B
astore 2
aload 2
ifnonnull L2
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocateBytes(I)[B
areturn
L2:
aload 2
astore 1
aload 2
arraylength
iload 0
if_icmpge L1
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocateBytes(I)[B
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getChars(I)[C
getstatic com/alibaba/fastjson/util/ThreadLocalCache/charsBufLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 1
aload 1
ifnonnull L0
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocate(I)[C
astore 1
L1:
aload 1
areturn
L0:
aload 1
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [C
astore 2
aload 2
ifnonnull L2
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocate(I)[C
areturn
L2:
aload 2
astore 1
aload 2
arraylength
iload 0
if_icmpge L1
iload 0
invokestatic com/alibaba/fastjson/util/ThreadLocalCache/allocate(I)[C
areturn
.limit locals 3
.limit stack 2
.end method

.method public static getUTF8Decoder()Ljava/nio/charset/CharsetDecoder;
getstatic com/alibaba/fastjson/util/ThreadLocalCache/decoderLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/nio/charset/CharsetDecoder
astore 1
aload 1
astore 0
aload 1
ifnonnull L0
new com/alibaba/fastjson/util/UTF8Decoder
dup
invokespecial com/alibaba/fastjson/util/UTF8Decoder/<init>()V
astore 0
getstatic com/alibaba/fastjson/util/ThreadLocalCache/decoderLocal Ljava/lang/ThreadLocal;
aload 0
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
aload 0
areturn
.limit locals 2
.limit stack 2
.end method
