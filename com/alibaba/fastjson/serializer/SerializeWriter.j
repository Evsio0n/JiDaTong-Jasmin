.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/serializer/SerializeWriter
.super java/io/Writer

.field private static final 'bufLocal' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<[C>;>;"

.field protected 'buf' [C

.field protected 'count' I

.field private 'features' I

.field private final 'writer' Ljava/io/Writer;

.method static <clinit>()V
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>()V
aload 0
aconst_null
checkcast java/io/Writer
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>(Ljava/io/Writer;)V
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
aconst_null
iload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>(Ljava/io/Writer;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/io/Writer;)V
aload 0
invokespecial java/io/Writer/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_GENERATE_FEATURE I
putfield com/alibaba/fastjson/serializer/SerializeWriter/features I
getstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [C
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
getstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
ifnonnull L1
aload 0
sipush 1024
newarray char
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Ljava/io/Writer;I)V
aload 0
invokespecial java/io/Writer/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
iload 2
ifgt L0
new java/lang/IllegalArgumentException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Negative initial size: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iload 2
newarray char
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
return
.limit locals 3
.limit stack 4
.end method

.method public transient <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
aload 0
invokespecial java/io/Writer/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
getstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 1
aload 1
ifnull L0
aload 0
aload 1
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [C
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
getstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
ifnonnull L1
aload 0
sipush 1024
newarray char
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
L1:
iconst_0
istore 4
aload 2
arraylength
istore 5
iconst_0
istore 3
L2:
iload 3
iload 5
if_icmpge L3
iload 4
aload 2
iload 3
aaload
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
istore 4
iload 3
iconst_1
iadd
istore 3
goto L2
L3:
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/features I
return
.limit locals 6
.limit stack 3
.end method

.method public transient <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
aload 0
aconst_null
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
return
.limit locals 2
.limit stack 3
.end method

.method static final isSpecial(CI)Z
iload 0
bipush 32
if_icmpne L0
L1:
iconst_0
ireturn
L0:
iload 0
bipush 47
if_icmpne L2
iload 1
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokestatic com/alibaba/fastjson/serializer/SerializerFeature/isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
iconst_1
ireturn
L2:
iload 0
bipush 35
if_icmple L3
iload 0
bipush 92
if_icmpne L1
L3:
iload 0
bipush 13
if_icmple L4
iload 0
bipush 92
if_icmpeq L4
iload 0
bipush 34
if_icmpne L1
L4:
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
aload 2
invokevirtual java/lang/String/length()I
istore 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 5
aload 3
ifnonnull L0
iconst_4
istore 6
iload 5
iload 7
bipush 8
iadd
iadd
istore 5
L1:
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L2
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L3
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
bipush 58
iload 4
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
aload 0
aload 3
iconst_0
iload 4
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
return
L0:
aload 3
invokevirtual java/lang/String/length()I
istore 6
iload 5
iload 7
iload 6
iadd
bipush 6
iadd
iadd
istore 5
goto L1
L3:
aload 0
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 1
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_2
iadd
istore 8
iload 8
iload 7
iadd
istore 9
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
iadd
bipush 34
castore
aload 2
iconst_0
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 8
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 5
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 9
bipush 34
castore
iload 9
iconst_1
iadd
istore 8
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 8
iconst_1
iadd
istore 7
aload 2
iload 8
bipush 58
castore
aload 3
ifnonnull L4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 7
iconst_1
iadd
istore 5
aload 2
iload 7
bipush 110
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 6
aload 2
iload 5
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 6
iconst_1
iadd
istore 5
aload 2
iload 6
bipush 108
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
bipush 108
castore
return
L4:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 7
iconst_1
iadd
istore 14
aload 2
iload 7
bipush 34
castore
iload 14
iload 6
iadd
istore 15
aload 3
iconst_0
iload 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 14
invokevirtual java/lang/String/getChars(II[CI)V
iload 4
ifeq L5
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCheckSpecialChar Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifne L5
iconst_0
istore 10
iconst_m1
istore 11
iconst_m1
istore 7
iconst_0
istore 8
iload 14
istore 6
iload 5
istore 13
iload 6
istore 5
iload 7
istore 6
L6:
iload 5
iload 15
if_icmpge L7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
caload
istore 1
iload 6
istore 7
iload 13
istore 12
iload 10
istore 9
iload 1
sipush 8232
if_icmpne L8
iload 10
iconst_1
iadd
istore 16
iload 5
istore 10
iload 1
istore 17
iload 13
iconst_4
iadd
istore 13
iload 6
istore 7
iload 17
istore 8
iload 10
istore 11
iload 13
istore 12
iload 16
istore 9
iload 6
iconst_m1
if_icmpne L8
iload 5
istore 7
iload 16
istore 9
iload 13
istore 12
iload 10
istore 11
iload 17
istore 8
L8:
iload 1
bipush 93
if_icmplt L9
iload 9
istore 10
iload 7
istore 6
L10:
iload 5
iconst_1
iadd
istore 5
iload 12
istore 13
goto L6
L9:
iload 7
istore 6
iload 9
istore 10
iload 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/features I
invokestatic com/alibaba/fastjson/serializer/SerializeWriter/isSpecial(CI)Z
ifeq L10
iload 9
iconst_1
iadd
istore 13
iload 5
istore 9
iload 1
istore 16
iload 7
istore 6
iload 16
istore 8
iload 9
istore 11
iload 13
istore 10
iload 7
iconst_m1
if_icmpne L10
iload 5
istore 6
iload 16
istore 8
iload 9
istore 11
iload 13
istore 10
goto L10
L7:
iload 10
ifle L5
iload 13
iload 10
iadd
istore 5
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L11
aload 0
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L11:
aload 0
iload 5
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 10
iconst_1
if_icmpne L12
iload 8
sipush 8232
if_icmpne L13
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 6
iadd
iload 15
iload 11
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 11
iconst_1
iadd
istore 5
aload 2
iload 5
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 5
aload 2
iload 5
bipush 50
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 5
aload 2
iload 5
bipush 48
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 5
aload 2
iload 5
bipush 50
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_1
iadd
bipush 56
castore
L5:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
bipush 34
castore
return
L13:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_2
iadd
iload 15
iload 11
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 8
caload
castore
goto L5
L12:
iload 10
iconst_1
if_icmple L5
iload 6
istore 5
iload 6
iload 14
isub
istore 7
iload 15
istore 6
L14:
iload 7
aload 3
invokevirtual java/lang/String/length()I
if_icmpge L5
aload 3
iload 7
invokevirtual java/lang/String/charAt(I)C
istore 1
iload 1
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
arraylength
if_icmpge L15
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 1
baload
ifne L16
L15:
iload 1
bipush 47
if_icmpne L17
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L17
L16:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 8
aload 2
iload 5
bipush 92
castore
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 1
baload
iconst_1
if_icmpne L18
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 8
iconst_1
iadd
istore 5
aload 2
iload 8
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 1
caload
castore
iload 6
iconst_1
iadd
istore 6
L19:
iload 7
iconst_1
iadd
istore 7
goto L14
L18:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 8
iconst_1
iadd
istore 5
aload 2
iload 8
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 8
aload 2
iload 5
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 1
bipush 12
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 8
iconst_1
iadd
istore 5
aload 2
iload 8
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 1
bipush 8
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 5
iconst_1
iadd
istore 8
aload 2
iload 5
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 1
iconst_4
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 2
iload 8
iconst_1
iadd
istore 5
aload 2
iload 8
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 1
bipush 15
iand
caload
castore
iload 6
iconst_5
iadd
istore 6
goto L19
L17:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iload 1
castore
iload 5
iconst_1
iadd
istore 5
goto L19
.limit locals 18
.limit stack 6
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
astore 13
aload 1
invokevirtual java/lang/String/length()I
istore 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 6
iadd
iconst_1
iadd
istore 10
iload 10
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L1
iload 6
ifne L2
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
iconst_0
istore 5
iconst_0
istore 4
L3:
iload 5
istore 3
iload 4
iload 6
if_icmpge L4
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
aload 13
arraylength
if_icmpge L5
aload 13
iload 3
baload
ifeq L5
iconst_1
istore 3
L4:
iload 3
ifeq L6
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L6:
iconst_0
istore 4
L7:
iload 4
iload 6
if_icmpge L8
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
aload 13
arraylength
if_icmpge L9
aload 13
iload 2
baload
ifeq L9
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 2
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L10:
iload 4
iconst_1
iadd
istore 4
goto L7
L5:
iload 4
iconst_1
iadd
istore 4
goto L3
L9:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L8:
iload 3
ifeq L11
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L11:
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 0
iload 10
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L0:
iload 6
ifne L12
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_3
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L13
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L13:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 34
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 34
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 58
castore
return
L12:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 11
iload 11
iload 6
iadd
istore 7
aload 1
iconst_0
iload 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 10
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_0
istore 8
iload 11
istore 3
L14:
iload 3
iload 7
if_icmpge L15
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
caload
istore 12
iload 7
istore 5
iload 8
istore 9
iload 3
istore 6
iload 10
istore 4
iload 12
aload 13
arraylength
if_icmpge L16
iload 7
istore 5
iload 8
istore 9
iload 3
istore 6
iload 10
istore 4
aload 13
iload 12
baload
ifeq L16
iload 8
ifne L17
iload 10
iconst_3
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L18
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L18:
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_3
iadd
iload 7
iload 3
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_1
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 34
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 3
aload 1
iload 3
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 6
aload 1
iload 6
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 12
caload
castore
iload 7
iconst_2
iadd
istore 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_2
isub
bipush 34
castore
iconst_1
istore 9
L16:
iload 6
iconst_1
iadd
istore 3
iload 5
istore 7
iload 9
istore 8
iload 4
istore 10
goto L14
L17:
iload 10
iconst_1
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L19
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L19:
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_2
iadd
iload 7
iload 3
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 6
aload 1
iload 6
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 12
caload
castore
iload 7
iconst_1
iadd
istore 5
iload 8
istore 9
goto L16
L15:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
bipush 58
castore
return
.limit locals 14
.limit stack 6
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_singleQuotes [B
astore 13
aload 1
invokevirtual java/lang/String/length()I
istore 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 6
iadd
iconst_1
iadd
istore 10
iload 10
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L1
iload 6
ifne L2
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
iconst_0
istore 5
iconst_0
istore 4
L3:
iload 5
istore 3
iload 4
iload 6
if_icmpge L4
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 3
iload 3
aload 13
arraylength
if_icmpge L5
aload 13
iload 3
baload
ifeq L5
iconst_1
istore 3
L4:
iload 3
ifeq L6
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L6:
iconst_0
istore 4
L7:
iload 4
iload 6
if_icmpge L8
aload 1
iload 4
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
aload 13
arraylength
if_icmpge L9
aload 13
iload 2
baload
ifeq L9
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 2
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L10:
iload 4
iconst_1
iadd
istore 4
goto L7
L5:
iload 4
iconst_1
iadd
istore 4
goto L3
L9:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L8:
iload 3
ifeq L11
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L11:
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 0
iload 10
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L0:
iload 6
ifne L12
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_3
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L13
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_3
iadd
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L13:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 39
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 39
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 1
iload 3
bipush 58
castore
return
L12:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 11
iload 11
iload 6
iadd
istore 7
aload 1
iconst_0
iload 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 10
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_0
istore 8
iload 11
istore 3
L14:
iload 3
iload 7
if_icmpge L15
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
caload
istore 12
iload 7
istore 5
iload 8
istore 9
iload 3
istore 6
iload 10
istore 4
iload 12
aload 13
arraylength
if_icmpge L16
iload 7
istore 5
iload 8
istore 9
iload 3
istore 6
iload 10
istore 4
aload 13
iload 12
baload
ifeq L16
iload 8
ifne L17
iload 10
iconst_3
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L18
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L18:
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_3
iadd
iload 7
iload 3
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_1
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 39
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 3
aload 1
iload 3
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 6
aload 1
iload 6
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 12
caload
castore
iload 7
iconst_2
iadd
istore 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_2
isub
bipush 39
castore
iconst_1
istore 9
L16:
iload 6
iconst_1
iadd
istore 3
iload 5
istore 7
iload 9
istore 8
iload 4
istore 10
goto L14
L17:
iload 10
iconst_1
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L19
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L19:
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_2
iadd
iload 7
iload 3
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 3
iconst_1
iadd
istore 6
aload 1
iload 6
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 12
caload
castore
iload 7
iconst_1
iadd
istore 5
iload 8
istore 9
goto L16
L15:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 10
iconst_1
isub
bipush 58
castore
return
.limit locals 14
.limit stack 6
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;C)V
aload 0
aload 1
iload 2
iconst_1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
return
.limit locals 3
.limit stack 4
.end method

.method private writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
aload 1
ifnonnull L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
iload 2
ifeq L1
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L1:
return
L0:
aload 1
invokevirtual java/lang/String/length()I
istore 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 7
iadd
iconst_2
iadd
istore 6
iload 6
istore 5
iload 2
ifeq L2
iload 6
iconst_1
iadd
istore 5
L2:
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L4
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iconst_0
istore 5
L5:
iload 5
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L6
aload 1
iload 5
invokevirtual java/lang/String/charAt(I)C
istore 4
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L7
iload 4
bipush 8
if_icmpeq L8
iload 4
bipush 12
if_icmpeq L8
iload 4
bipush 10
if_icmpeq L8
iload 4
bipush 13
if_icmpeq L8
iload 4
bipush 9
if_icmpeq L8
iload 4
bipush 34
if_icmpeq L8
iload 4
bipush 47
if_icmpeq L8
iload 4
bipush 92
if_icmpne L9
L8:
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 4
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L10:
iload 5
iconst_1
iadd
istore 5
goto L5
L9:
iload 4
bipush 32
if_icmpge L11
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 117
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/ASCII_CHARS [C
iload 4
iconst_2
imul
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/ASCII_CHARS [C
iload 4
iconst_2
imul
iconst_1
iadd
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L11:
iload 4
bipush 127
if_icmplt L12
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 117
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 12
iushr
bipush 15
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 8
iushr
bipush 15
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
iconst_4
iushr
bipush 15
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 15
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L7:
iload 4
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
arraylength
if_icmpge L13
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 4
baload
ifne L14
L13:
iload 4
bipush 47
if_icmpne L12
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L12
L14:
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 4
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L12:
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L10
L6:
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iload 2
ifeq L1
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L4:
aload 0
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L3:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
iadd
istore 15
iload 15
iload 7
iadd
istore 16
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
bipush 34
castore
aload 1
iconst_0
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 15
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 5
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L15
iconst_m1
istore 6
iload 15
istore 7
iload 5
istore 8
iload 7
istore 5
L16:
iload 5
iload 16
if_icmpge L17
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
caload
istore 9
iload 9
bipush 34
if_icmpeq L18
iload 9
bipush 47
if_icmpeq L18
iload 9
bipush 92
if_icmpne L19
L18:
iload 5
istore 6
iload 8
iconst_1
iadd
istore 7
L20:
iload 5
iconst_1
iadd
istore 5
iload 7
istore 8
goto L16
L19:
iload 9
bipush 8
if_icmpeq L21
iload 9
bipush 12
if_icmpeq L21
iload 9
bipush 10
if_icmpeq L21
iload 9
bipush 13
if_icmpeq L21
iload 9
bipush 9
if_icmpne L22
L21:
iload 5
istore 6
iload 8
iconst_1
iadd
istore 7
goto L20
L22:
iload 9
bipush 32
if_icmpge L23
iload 5
istore 6
iload 8
iconst_5
iadd
istore 7
goto L20
L23:
iload 8
istore 7
iload 9
bipush 127
if_icmplt L20
iload 5
istore 6
iload 8
iconst_5
iadd
istore 7
goto L20
L17:
iload 8
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L24
aload 0
iload 8
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L24:
aload 0
iload 8
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
L25:
iload 6
iload 15
if_icmplt L26
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
caload
istore 4
iload 4
bipush 8
if_icmpeq L27
iload 4
bipush 12
if_icmpeq L27
iload 4
bipush 10
if_icmpeq L27
iload 4
bipush 13
if_icmpeq L27
iload 4
bipush 9
if_icmpne L28
L27:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
iload 16
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 4
caload
castore
iload 16
iconst_1
iadd
istore 5
L29:
iload 6
iconst_1
isub
istore 6
iload 5
istore 16
goto L25
L28:
iload 4
bipush 34
if_icmpeq L30
iload 4
bipush 47
if_icmpeq L30
iload 4
bipush 92
if_icmpne L31
L30:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
iload 16
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
iload 4
castore
iload 16
iconst_1
iadd
istore 5
goto L29
L31:
iload 4
bipush 32
if_icmpge L32
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 6
iadd
iload 16
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
bipush 48
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_3
iadd
bipush 48
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_4
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/ASCII_CHARS [C
iload 4
iconst_2
imul
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_5
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/ASCII_CHARS [C
iload 4
iconst_2
imul
iconst_1
iadd
caload
castore
iload 16
iconst_5
iadd
istore 5
goto L29
L32:
iload 16
istore 5
iload 4
bipush 127
if_icmplt L29
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 6
iadd
iload 16
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 12
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_3
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 8
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_4
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
iconst_4
iushr
bipush 15
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_5
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/digits [C
iload 4
bipush 15
iand
caload
castore
iload 16
iconst_5
iadd
istore 5
goto L29
L26:
iload 2
ifeq L33
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_2
isub
bipush 34
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
iload 2
castore
return
L33:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
bipush 34
castore
return
L15:
iconst_0
istore 17
iconst_0
istore 8
iconst_m1
istore 12
iconst_m1
istore 7
iconst_0
istore 10
iconst_0
istore 14
iload 7
istore 9
iload 12
istore 11
iload 5
istore 13
iload 3
ifeq L34
iload 15
istore 9
iload 5
istore 6
iload 9
istore 5
L35:
iload 7
istore 9
iload 14
istore 10
iload 12
istore 11
iload 6
istore 13
iload 8
istore 17
iload 5
iload 16
if_icmpge L34
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
caload
istore 18
iload 18
bipush 93
if_icmplt L36
iload 7
istore 13
iload 14
istore 9
iload 12
istore 10
iload 6
istore 17
iload 8
istore 11
iload 18
sipush 8232
if_icmpne L37
iload 8
iconst_1
iadd
istore 12
iload 5
istore 8
iload 6
iconst_4
iadd
istore 6
iload 7
istore 13
iload 18
istore 9
iload 8
istore 10
iload 6
istore 17
iload 12
istore 11
iload 7
iconst_m1
if_icmpne L37
iload 5
istore 13
iload 12
istore 11
iload 6
istore 17
iload 8
istore 10
iload 18
istore 9
L37:
iload 5
iconst_1
iadd
istore 5
iload 13
istore 7
iload 9
istore 14
iload 10
istore 12
iload 17
istore 6
iload 11
istore 8
goto L35
L36:
iload 7
istore 13
iload 14
istore 9
iload 12
istore 10
iload 6
istore 17
iload 8
istore 11
iload 18
bipush 32
if_icmpeq L37
iload 18
bipush 48
if_icmplt L38
iload 7
istore 13
iload 14
istore 9
iload 12
istore 10
iload 6
istore 17
iload 8
istore 11
iload 18
bipush 92
if_icmpne L37
L38:
iload 18
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
arraylength
if_icmpge L39
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 18
baload
ifne L40
L39:
iload 7
istore 13
iload 14
istore 9
iload 12
istore 10
iload 6
istore 17
iload 8
istore 11
iload 18
bipush 47
if_icmpne L37
iload 7
istore 13
iload 14
istore 9
iload 12
istore 10
iload 6
istore 17
iload 8
istore 11
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L37
L40:
iload 8
iconst_1
iadd
istore 12
iload 5
istore 8
iload 7
istore 13
iload 18
istore 9
iload 8
istore 10
iload 6
istore 17
iload 12
istore 11
iload 7
iconst_m1
if_icmpne L37
iload 5
istore 13
iload 18
istore 9
iload 8
istore 10
iload 6
istore 17
iload 12
istore 11
goto L37
L34:
iload 13
iload 17
iadd
istore 5
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L41
aload 0
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L41:
aload 0
iload 5
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 17
iconst_1
if_icmpne L42
iload 10
sipush 8232
if_icmpne L43
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 6
iadd
iload 16
iload 11
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 11
iconst_1
iadd
istore 5
aload 1
iload 5
bipush 117
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 5
iconst_1
iadd
istore 5
aload 1
iload 5
bipush 50
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 5
iconst_1
iadd
istore 5
aload 1
iload 5
bipush 48
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 5
iconst_1
iadd
istore 5
aload 1
iload 5
bipush 50
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_1
iadd
bipush 56
castore
L44:
iload 2
ifeq L45
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_2
isub
bipush 34
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
iload 2
castore
return
L43:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_2
iadd
iload 16
iload 11
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 11
iconst_1
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 10
caload
castore
goto L44
L42:
iload 17
iconst_1
if_icmple L44
iload 9
istore 5
iload 9
iload 15
isub
istore 6
L46:
iload 6
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L44
aload 1
iload 6
invokevirtual java/lang/String/charAt(I)C
istore 4
iload 4
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
arraylength
if_icmpge L47
getstatic com/alibaba/fastjson/parser/CharTypes/specicalFlags_doubleQuotes [B
iload 4
baload
ifne L48
L47:
iload 4
bipush 47
if_icmpne L49
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L49
L48:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 19
iload 5
iconst_1
iadd
istore 7
aload 19
iload 5
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 19
iload 7
iconst_1
iadd
istore 5
aload 19
iload 7
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 4
caload
castore
iload 16
iconst_1
iadd
istore 16
L50:
iload 6
iconst_1
iadd
istore 6
goto L46
L49:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iload 4
castore
iload 5
iconst_1
iadd
istore 5
goto L50
L45:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
bipush 34
castore
return
.limit locals 20
.limit stack 6
.end method

.method private writeStringWithSingleQuote(Ljava/lang/String;)V
aload 1
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_4
iadd
istore 3
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L1
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L1:
ldc "null"
iconst_0
iconst_4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 3
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L0:
aload 1
invokevirtual java/lang/String/length()I
istore 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
iadd
iconst_2
iadd
istore 13
iload 13
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L2
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L3
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iconst_0
istore 3
L4:
iload 3
aload 1
invokevirtual java/lang/String/length()I
if_icmpge L5
aload 1
iload 3
invokevirtual java/lang/String/charAt(I)C
istore 2
iload 2
bipush 13
if_icmple L6
iload 2
bipush 92
if_icmpeq L6
iload 2
bipush 39
if_icmpeq L6
iload 2
bipush 47
if_icmpne L7
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L7
L6:
aload 0
bipush 92
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 2
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L8:
iload 3
iconst_1
iadd
istore 3
goto L4
L7:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
goto L8
L5:
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L3:
aload 0
iload 13
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
iadd
istore 10
iload 10
iload 3
iadd
istore 12
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
bipush 39
castore
aload 1
iconst_0
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 10
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 13
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_0
istore 4
iconst_m1
istore 6
iconst_0
istore 5
iload 10
istore 3
L9:
iload 3
iload 12
if_icmpge L10
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
caload
istore 11
iload 11
bipush 13
if_icmple L11
iload 11
bipush 92
if_icmpeq L11
iload 11
bipush 39
if_icmpeq L11
iload 5
istore 9
iload 6
istore 8
iload 4
istore 7
iload 11
bipush 47
if_icmpne L12
iload 5
istore 9
iload 6
istore 8
iload 4
istore 7
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L12
L11:
iload 4
iconst_1
iadd
istore 7
iload 3
istore 8
iload 11
istore 9
L12:
iload 3
iconst_1
iadd
istore 3
iload 9
istore 5
iload 8
istore 6
iload 7
istore 4
goto L9
L10:
iload 13
iload 4
iadd
istore 3
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L13
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L13:
aload 0
iload 3
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 4
iconst_1
if_icmpne L14
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
iload 12
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 5
caload
castore
L15:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
isub
bipush 39
castore
return
L14:
iload 4
iconst_1
if_icmple L15
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
iload 12
iload 6
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 6
iconst_1
iadd
istore 3
aload 1
iload 3
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 5
caload
castore
iload 12
iconst_1
iadd
istore 4
iload 3
iconst_2
isub
istore 3
L16:
iload 3
iload 10
if_icmplt L15
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
caload
istore 6
iload 6
bipush 13
if_icmple L17
iload 6
bipush 92
if_icmpeq L17
iload 6
bipush 39
if_icmpeq L17
iload 4
istore 5
iload 6
bipush 47
if_icmpne L18
iload 4
istore 5
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteSlashAsSpecial Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L18
L17:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_2
iadd
iload 4
iload 3
isub
iconst_1
isub
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
bipush 92
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iconst_1
iadd
getstatic com/alibaba/fastjson/parser/CharTypes/replaceChars [C
iload 6
caload
castore
iload 4
iconst_1
iadd
istore 5
L18:
iload 3
iconst_1
isub
istore 3
iload 5
istore 4
goto L16
.limit locals 14
.limit stack 6
.end method

.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
ifnonnull L0
ldc "null"
astore 1
L1:
aload 0
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;II)V
aload 0
areturn
L0:
aload 1
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
goto L1
.limit locals 2
.limit stack 4
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
astore 4
aload 1
ifnonnull L0
ldc "null"
astore 4
L0:
aload 4
iload 2
iload 3
invokeinterface java/lang/CharSequence/subSequence(II)Ljava/lang/CharSequence; 2
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 0
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;II)V
aload 0
areturn
.limit locals 5
.limit stack 4
.end method

.method public volatile synthetic append(C)Ljava/io/Writer;
.throws java/io/IOException
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
.throws java/io/IOException
aload 0
aload 1
iload 2
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic append(C)Ljava/lang/Appendable;
.throws java/io/IOException
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
.throws java/io/IOException
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
.throws java/io/IOException
aload 0
aload 1
iload 2
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 4
.limit stack 4
.end method

.method public close()V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
ifle L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
sipush 8192
if_icmpgt L1
getstatic com/alibaba/fastjson/serializer/SerializeWriter/bufLocal Ljava/lang/ThreadLocal;
new java/lang/ref/SoftReference
dup
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L1:
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
return
.limit locals 1
.limit stack 4
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
iload 2
ifeq L0
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/features I
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
ior
putfield com/alibaba/fastjson/serializer/SerializeWriter/features I
return
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/features I
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializerFeature/getMask()I
iconst_m1
ixor
iand
putfield com/alibaba/fastjson/serializer/SerializeWriter/features I
return
.limit locals 3
.limit stack 4
.end method

.method public expandCapacity(I)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
iconst_3
imul
iconst_2
idiv
iconst_1
iadd
istore 3
iload 3
istore 2
iload 3
iload 1
if_icmpge L0
iload 1
istore 2
L0:
iload 2
newarray char
astore 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 4
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
return
.limit locals 5
.limit stack 5
.end method

.method public flush()V
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L0
return
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual java/io/Writer/write([CII)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
invokevirtual java/io/Writer/flush()V
L1:
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L2:
astore 1
new com/alibaba/fastjson/JSONException
dup
aload 1
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 1
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
.limit locals 2
.limit stack 4
.end method

.method public getBufferLength()I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/features I
aload 1
invokestatic com/alibaba/fastjson/serializer/SerializerFeature/isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public reset()V
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
.limit locals 1
.limit stack 2
.end method

.method public size()I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public toBytes(Ljava/lang/String;)[B
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L0
new java/lang/UnsupportedOperationException
dup
ldc "writer not null"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
astore 2
aload 1
ifnonnull L1
ldc "UTF-8"
astore 2
L1:
new com/alibaba/fastjson/serializer/SerialWriterStringEncoder
dup
aload 2
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokespecial com/alibaba/fastjson/serializer/SerialWriterStringEncoder/<init>(Ljava/nio/charset/Charset;)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual com/alibaba/fastjson/serializer/SerialWriterStringEncoder/encode([CII)[B
areturn
.limit locals 3
.limit stack 4
.end method

.method public toCharArray()[C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L0
new java/lang/UnsupportedOperationException
dup
ldc "writer not null"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
newarray char
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 1
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 1
areturn
.limit locals 2
.limit stack 5
.end method

.method public toString()Ljava/lang/String;
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 1
.limit stack 5
.end method

.method public write(C)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
iadd
istore 3
iload 3
istore 2
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L1
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
iload 3
istore 2
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 1
castore
aload 0
iload 2
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L1:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
iconst_1
istore 2
goto L0
.limit locals 4
.limit stack 3
.end method

.method public write(I)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iconst_1
iadd
istore 3
iload 3
istore 2
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L1
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
iload 3
istore 2
L0:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 1
i2c
castore
aload 0
iload 2
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L1:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
iconst_1
istore 2
goto L0
.limit locals 4
.limit stack 3
.end method

.method public write(Ljava/lang/String;)V
aload 1
ifnonnull L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 0
aload 1
iconst_0
aload 1
invokevirtual java/lang/String/length()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;II)V
return
.limit locals 2
.limit stack 4
.end method

.method public write(Ljava/lang/String;II)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
iadd
istore 7
iload 7
istore 4
iload 2
istore 5
iload 3
istore 6
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L0
iload 2
istore 4
iload 3
istore 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L1
aload 0
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
iload 3
istore 6
iload 2
istore 5
iload 7
istore 4
L0:
aload 1
iload 5
iload 5
iload 6
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L1:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
isub
istore 3
aload 1
iload 4
iload 4
iload 3
iadd
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
iload 5
iload 3
isub
istore 2
iload 4
iload 3
iadd
istore 3
iload 3
istore 4
iload 2
istore 5
iload 2
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmpgt L1
iload 2
istore 4
iload 3
istore 5
iload 2
istore 6
goto L0
.limit locals 8
.limit stack 5
.end method

.method public write(Z)V
iload 1
ifeq L0
aload 0
ldc "true"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 0
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public write([CII)V
iload 2
iflt L0
iload 2
aload 1
arraylength
if_icmpgt L0
iload 3
iflt L0
iload 2
iload 3
iadd
aload 1
arraylength
if_icmpgt L0
iload 2
iload 3
iadd
ifge L1
L0:
new java/lang/IndexOutOfBoundsException
dup
invokespecial java/lang/IndexOutOfBoundsException/<init>()V
athrow
L1:
iload 3
ifne L2
return
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
iadd
istore 7
iload 7
istore 4
iload 2
istore 5
iload 3
istore 6
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
iload 2
istore 4
iload 3
istore 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L4
aload 0
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
iload 3
istore 6
iload 2
istore 5
iload 7
istore 4
L3:
aload 1
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 6
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L4:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
isub
istore 3
aload 1
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
iload 5
iload 3
isub
istore 2
iload 4
iload 3
iadd
istore 3
iload 3
istore 4
iload 2
istore 5
iload 2
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmpgt L4
iload 2
istore 4
iload 3
istore 5
iload 2
istore 6
goto L3
.limit locals 8
.limit stack 5
.end method

.method public writeBooleanAndChar(ZC)V
iload 1
ifeq L0
iload 2
bipush 44
if_icmpne L1
aload 0
ldc "true,"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
iload 2
bipush 93
if_icmpne L2
aload 0
ldc "true]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L2:
aload 0
ldc "true"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
iload 2
bipush 44
if_icmpne L3
aload 0
ldc "false,"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L3:
iload 2
bipush 93
if_icmpne L4
aload 0
ldc "false]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L4:
aload 0
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 3
.limit stack 2
.end method

.method public writeByteArray([B)V
aload 1
arraylength
istore 5
iload 5
ifne L0
aload 0
ldc "\"\""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
getstatic com/alibaba/fastjson/util/Base64/CA [C
astore 10
iload 5
iconst_3
idiv
iconst_3
imul
istore 6
iload 5
iconst_1
isub
iconst_3
idiv
istore 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 4
iconst_1
iadd
iconst_2
ishl
iadd
iconst_2
iadd
istore 7
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L2
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iconst_0
istore 3
L3:
iload 3
iload 6
if_icmpge L4
iload 3
iconst_1
iadd
istore 4
aload 1
iload 3
baload
istore 7
iload 4
iconst_1
iadd
istore 3
iload 7
sipush 255
iand
bipush 16
ishl
aload 1
iload 4
baload
sipush 255
iand
bipush 8
ishl
ior
aload 1
iload 3
baload
sipush 255
iand
ior
istore 4
aload 0
aload 10
iload 4
bipush 18
iushr
bipush 63
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 10
iload 4
bipush 12
iushr
bipush 63
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 10
iload 4
bipush 6
iushr
bipush 63
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 10
iload 4
bipush 63
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iload 3
iconst_1
iadd
istore 3
goto L3
L4:
iload 5
iload 6
isub
istore 4
iload 4
ifle L5
aload 1
iload 6
baload
istore 6
iload 4
iconst_2
if_icmpne L6
aload 1
iload 5
iconst_1
isub
baload
sipush 255
iand
iconst_2
ishl
istore 3
L7:
iload 6
sipush 255
iand
bipush 10
ishl
iload 3
ior
istore 3
aload 0
aload 10
iload 3
bipush 12
ishr
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 10
iload 3
bipush 6
iushr
bipush 63
iand
caload
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iload 4
iconst_2
if_icmpne L8
aload 10
iload 3
bipush 63
iand
caload
istore 2
L9:
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
bipush 61
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L5:
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L6:
iconst_0
istore 3
goto L7
L8:
bipush 61
istore 2
goto L9
L2:
aload 0
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L1:
aload 0
iload 7
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
bipush 34
castore
iload 3
iconst_1
iadd
istore 3
iconst_0
istore 4
L10:
iload 4
iload 6
if_icmpge L11
iload 4
iconst_1
iadd
istore 8
aload 1
iload 4
baload
istore 9
iload 8
iconst_1
iadd
istore 4
iload 9
sipush 255
iand
bipush 16
ishl
aload 1
iload 8
baload
sipush 255
iand
bipush 8
ishl
ior
aload 1
iload 4
baload
sipush 255
iand
ior
istore 8
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 11
iload 3
iconst_1
iadd
istore 9
aload 11
iload 3
aload 10
iload 8
bipush 18
iushr
bipush 63
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 11
iload 9
iconst_1
iadd
istore 3
aload 11
iload 9
aload 10
iload 8
bipush 12
iushr
bipush 63
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 11
iload 3
iconst_1
iadd
istore 9
aload 11
iload 3
aload 10
iload 8
bipush 6
iushr
bipush 63
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 11
iload 9
iconst_1
iadd
istore 3
aload 11
iload 9
aload 10
iload 8
bipush 63
iand
caload
castore
iload 4
iconst_1
iadd
istore 4
goto L10
L11:
iload 5
iload 6
isub
istore 4
iload 4
ifle L12
aload 1
iload 6
baload
istore 6
iload 4
iconst_2
if_icmpne L13
aload 1
iload 5
iconst_1
isub
baload
sipush 255
iand
iconst_2
ishl
istore 3
L14:
iload 6
sipush 255
iand
bipush 10
ishl
iload 3
ior
istore 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_5
isub
aload 10
iload 3
bipush 12
ishr
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_4
isub
aload 10
iload 3
bipush 6
iushr
bipush 63
iand
caload
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
astore 1
iload 4
iconst_2
if_icmpne L15
aload 10
iload 3
bipush 63
iand
caload
istore 2
L16:
aload 1
iload 7
iconst_3
isub
iload 2
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_2
isub
bipush 61
castore
L12:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_1
isub
bipush 34
castore
return
L13:
iconst_0
istore 3
goto L14
L15:
bipush 61
istore 2
goto L16
.limit locals 12
.limit stack 5
.end method

.method public writeCharacterAndChar(CC)V
aload 0
iload 1
invokestatic java/lang/Character/toString(C)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 3
.limit stack 2
.end method

.method public writeDoubleAndChar(DC)V
dload 1
invokestatic java/lang/Double/toString(D)Ljava/lang/String;
astore 5
aload 5
astore 4
aload 5
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L0
aload 5
iconst_0
aload 5
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 4
L0:
aload 0
aload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 6
.limit stack 4
.end method

.method public writeEnum(Ljava/lang/Enum;C)V
.signature "(Ljava/lang/Enum<*>;C)V"
aload 1
ifnonnull L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
aload 0
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 1
invokevirtual java/lang/Enum/name()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
bipush 39
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 1
invokevirtual java/lang/Enum/name()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
bipush 34
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
aload 0
aload 1
invokevirtual java/lang/Enum/ordinal()I
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeIntAndChar(IC)V
return
.limit locals 3
.limit stack 3
.end method

.method public writeFieldEmptyList(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldName(Ljava/lang/String;)V
aload 0
aload 1
iconst_0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;Z)V
return
.limit locals 2
.limit stack 3
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
aload 1
ifnonnull L0
aload 0
ldc "null:"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithSingleQuote(Ljava/lang/String;)V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L2:
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
return
L1:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L3
aload 0
aload 1
bipush 58
iload 2
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
return
L3:
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public writeFieldNull(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldNullBoolean(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullBooleanAsFalse Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
ldc "false"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldNullList(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullListAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
ldc "[]"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldNullNumber(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullNumberAsZero Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldNullString(CLjava/lang/String;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteNullStringAsEmpty Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
ldc ""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L0:
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 3
.limit stack 2
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
iload 3
ifne L0
aload 0
ldc "\u0000"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L0:
aload 0
iload 3
invokestatic java/lang/Character/toString(C)Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
dload 3
dconst_0
dcmpl
ifne L0
aload 0
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
dload 3
invokestatic java/lang/Double/isNaN(D)Z
ifeq L1
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L1:
dload 3
invokestatic java/lang/Double/isInfinite(D)Z
ifeq L2
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L2:
dload 3
invokestatic java/lang/Double/toString(D)Ljava/lang/String;
astore 5
aload 5
astore 2
aload 5
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L3
aload 5
iconst_0
aload 5
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L3:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 6
.limit stack 4
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
fload 3
fconst_0
fcmpl
ifne L0
aload 0
bipush 48
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
fload 3
invokestatic java/lang/Float/isNaN(F)Z
ifeq L1
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L1:
fload 3
invokestatic java/lang/Float/isInfinite(F)Z
ifeq L2
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L2:
fload 3
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
astore 4
aload 4
astore 2
aload 4
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L3
aload 4
iconst_0
aload 4
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 2
L3:
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 5
.limit stack 4
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
iload 3
ldc_w -2147483648
if_icmpeq L0
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifne L1
L0:
aload 0
iload 1
aload 2
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue1(CLjava/lang/String;I)V
return
L1:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
bipush 39
istore 4
L3:
iload 3
ifge L4
iload 3
ineg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
iconst_1
iadd
istore 5
L5:
aload 2
invokevirtual java/lang/String/length()I
istore 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 6
iadd
iconst_4
iadd
iload 5
iadd
istore 7
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L7
aload 0
iload 1
aload 2
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue1(CLjava/lang/String;I)V
return
L2:
bipush 34
istore 4
goto L3
L4:
iload 3
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
istore 5
goto L5
L7:
aload 0
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L6:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 5
aload 0
iload 7
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iload 1
castore
iload 5
iload 6
iadd
iconst_1
iadd
istore 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_1
iadd
iload 4
castore
aload 2
iconst_0
iload 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_2
iadd
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_1
iadd
iload 4
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_2
iadd
bipush 58
castore
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
return
.limit locals 8
.limit stack 6
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
lload 3
ldc2_w -9223372036854775808L
lcmp
ifeq L0
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifne L1
L0:
aload 0
iload 1
aload 2
lload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue1(CLjava/lang/String;J)V
return
L1:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
bipush 39
istore 5
L3:
lload 3
lconst_0
lcmp
ifge L4
lload 3
lneg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
iconst_1
iadd
istore 6
L5:
aload 2
invokevirtual java/lang/String/length()I
istore 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 7
iadd
iconst_4
iadd
iload 6
iadd
istore 8
iload 8
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L7
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
lload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
return
L2:
bipush 34
istore 5
goto L3
L4:
lload 3
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
istore 6
goto L5
L7:
aload 0
iload 8
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L6:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 6
aload 0
iload 8
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iload 1
castore
iload 6
iload 7
iadd
iconst_1
iadd
istore 8
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_1
iadd
iload 5
castore
aload 2
iconst_0
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 6
iconst_2
iadd
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 8
iconst_1
iadd
iload 5
castore
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 8
iconst_2
iadd
bipush 58
castore
lload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(JI[C)V
return
.limit locals 9
.limit stack 6
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
.signature "(CLjava/lang/String;Ljava/lang/Enum<*>;)V"
aload 3
ifnonnull L0
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteEnumUsingToString Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 0
iload 1
aload 2
aload 3
invokevirtual java/lang/Enum/name()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
return
L2:
aload 0
iload 1
aload 2
aload 3
invokevirtual java/lang/Enum/name()Ljava/lang/String;
iconst_0
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
return
L1:
aload 0
iload 1
aload 2
aload 3
invokevirtual java/lang/Enum/ordinal()I
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValue(CLjava/lang/String;I)V
return
.limit locals 4
.limit stack 5
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/QuoteFieldNames Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L1
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 3
ifnonnull L2
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L2:
aload 0
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L1:
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BrowserCompatible Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L3
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
bipush 58
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;C)V
aload 0
aload 3
iconst_0
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;C)V
return
L3:
aload 0
iload 1
aload 2
aload 3
iconst_1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;Z)V
return
L0:
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 3
ifnonnull L4
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L4:
aload 0
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 5
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 3
ifnonnull L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L0:
aload 0
aload 3
invokevirtual java/math/BigDecimal/toString()Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
bipush 39
istore 4
L1:
iload 3
ifeq L2
iconst_4
istore 5
L3:
aload 2
invokevirtual java/lang/String/length()I
istore 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 6
iadd
iconst_4
iadd
iload 5
iadd
istore 7
iload 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L5
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
aload 0
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Z)V
return
L0:
bipush 34
istore 4
goto L1
L2:
iconst_5
istore 5
goto L3
L5:
aload 0
iload 7
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L4:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
istore 5
aload 0
iload 7
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iload 1
castore
iload 5
iload 6
iadd
iconst_1
iadd
istore 7
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_1
iadd
iload 4
castore
aload 2
iconst_0
iload 6
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 5
iconst_2
iadd
invokevirtual java/lang/String/getChars(II[CI)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_1
iadd
iload 4
castore
iload 3
ifeq L6
ldc ":true"
invokevirtual java/lang/String/toCharArray()[C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_2
iadd
iconst_5
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return
L6:
ldc ":false"
invokevirtual java/lang/String/toCharArray()[C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 7
iconst_2
iadd
bipush 6
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return
.limit locals 8
.limit stack 6
.end method

.method public writeFieldValue1(CLjava/lang/String;I)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
return
.limit locals 4
.limit stack 2
.end method

.method public writeFieldValue1(CLjava/lang/String;J)V
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
lload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
return
.limit locals 5
.limit stack 3
.end method

.method public writeFloatAndChar(FC)V
fload 1
invokestatic java/lang/Float/toString(F)Ljava/lang/String;
astore 4
aload 4
astore 3
aload 4
ldc ".0"
invokevirtual java/lang/String/endsWith(Ljava/lang/String;)Z
ifeq L0
aload 4
iconst_0
aload 4
invokevirtual java/lang/String/length()I
iconst_2
isub
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 3
L0:
aload 0
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 5
.limit stack 4
.end method

.method public writeInt(I)V
iload 1
ldc_w -2147483648
if_icmpne L0
aload 0
ldc "-2147483648"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
iload 1
ifge L1
iload 1
ineg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
iconst_1
iadd
istore 2
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 2
iadd
istore 3
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L4
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L3:
iload 1
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
aload 0
iload 3
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L1:
iload 1
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
istore 2
goto L2
L4:
iload 2
newarray char
astore 4
iload 1
iload 2
aload 4
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
aload 0
aload 4
iconst_0
aload 4
arraylength
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write([CII)V
return
.limit locals 5
.limit stack 4
.end method

.method public writeIntAndChar(IC)V
iload 1
ldc_w -2147483648
if_icmpne L0
aload 0
ldc "-2147483648"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
iload 1
ifge L1
iload 1
ineg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
iconst_1
iadd
istore 3
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
iadd
istore 3
iload 3
iconst_1
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L4
aload 0
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeInt(I)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
iload 1
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(I)I
istore 3
goto L2
L4:
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L3:
iload 1
iload 3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(II[C)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 3
iload 2
castore
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
.limit locals 5
.limit stack 3
.end method

.method public writeLong(J)V
lload 1
ldc2_w -9223372036854775808L
lcmp
ifne L0
aload 0
ldc "-9223372036854775808"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
lload 1
lconst_0
lcmp
ifge L1
lload 1
lneg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
iconst_1
iadd
istore 3
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 3
iadd
istore 4
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnonnull L4
aload 0
iload 4
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L3:
lload 1
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(JI[C)V
aload 0
iload 4
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
L1:
lload 1
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
istore 3
goto L2
L4:
iload 3
newarray char
astore 5
lload 1
iload 3
aload 5
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(JI[C)V
aload 0
aload 5
iconst_0
aload 5
arraylength
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write([CII)V
return
.limit locals 6
.limit stack 4
.end method

.method public writeLongAndChar(JC)V
.throws java/io/IOException
lload 1
ldc2_w -9223372036854775808L
lcmp
ifne L0
aload 0
ldc "-9223372036854775808"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
lload 1
lconst_0
lcmp
ifge L1
lload 1
lneg
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
iconst_1
iadd
istore 4
L2:
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
iload 4
iadd
istore 4
iload 4
iconst_1
iadd
istore 5
iload 5
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
arraylength
if_icmple L3
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L4
aload 0
lload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeLong(J)V
aload 0
iload 3
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L1:
lload 1
invokestatic com/alibaba/fastjson/util/IOUtils/stringSize(J)I
istore 4
goto L2
L4:
aload 0
iload 5
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/expandCapacity(I)V
L3:
lload 1
iload 4
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
invokestatic com/alibaba/fastjson/util/IOUtils/getChars(JI[C)V
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iload 4
iload 3
castore
aload 0
iload 5
putfield com/alibaba/fastjson/serializer/SerializeWriter/count I
return
.limit locals 6
.limit stack 4
.end method

.method public writeNull()V
aload 0
ldc "null"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 2
.end method

.method public writeString(Ljava/lang/String;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithSingleQuote(Ljava/lang/String;)V
return
L0:
aload 0
aload 1
iconst_0
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;C)V
return
.limit locals 2
.limit stack 3
.end method

.method public writeString(Ljava/lang/String;C)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/UseSingleQuotes Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
aload 0
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithSingleQuote(Ljava/lang/String;)V
aload 0
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L0:
aload 0
aload 1
iload 2
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/writeStringWithDoubleQuote(Ljava/lang/String;C)V
return
.limit locals 3
.limit stack 3
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
.throws java/io/IOException
aload 0
aload 1
aload 2
invokestatic java/nio/charset/Charset/forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return
.limit locals 3
.limit stack 3
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
.throws java/io/IOException
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L0
new java/lang/UnsupportedOperationException
dup
ldc "writer not null"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokespecial java/lang/String/<init>([CII)V
aload 2
invokevirtual java/lang/String/getBytes(Ljava/nio/charset/Charset;)[B
invokevirtual java/io/OutputStream/write([B)V
return
.limit locals 3
.limit stack 6
.end method

.method public writeTo(Ljava/io/Writer;)V
.throws java/io/IOException
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/writer Ljava/io/Writer;
ifnull L0
new java/lang/UnsupportedOperationException
dup
ldc "writer not null"
invokespecial java/lang/UnsupportedOperationException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 1
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/serializer/SerializeWriter/count I
invokevirtual java/io/Writer/write([CII)V
return
.limit locals 2
.limit stack 4
.end method
