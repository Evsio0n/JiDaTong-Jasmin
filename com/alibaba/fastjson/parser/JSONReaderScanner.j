.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/JSONReaderScanner
.super com/alibaba/fastjson/parser/JSONLexerBase

.field public static 'BUF_INIT_LEN' I

.field private static final 'BUF_REF_LOCAL' Ljava/lang/ThreadLocal; signature "Ljava/lang/ThreadLocal<Ljava/lang/ref/SoftReference<[C>;>;"

.field private 'buf' [C

.field private 'bufLength' I

.field private 'reader' Ljava/io/Reader;

.method static <clinit>()V
sipush 8192
putstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_INIT_LEN I
new java/lang/ThreadLocal
dup
invokespecial java/lang/ThreadLocal/<init>()V
putstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_REF_LOCAL Ljava/lang/ThreadLocal;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Ljava/io/Reader;)V
aload 0
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>(Ljava/io/Reader;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/io/Reader;I)V
.catch java/io/IOException from L0 to L1 using L2
aload 0
invokespecial com/alibaba/fastjson/parser/JSONLexerBase/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/parser/JSONReaderScanner/reader Ljava/io/Reader;
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONReaderScanner/features I
getstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_REF_LOCAL Ljava/lang/ThreadLocal;
invokevirtual java/lang/ThreadLocal/get()Ljava/lang/Object;
checkcast java/lang/ref/SoftReference
astore 3
aload 3
ifnull L3
aload 0
aload 3
invokevirtual java/lang/ref/SoftReference/get()Ljava/lang/Object;
checkcast [C
putfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
getstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_REF_LOCAL Ljava/lang/ThreadLocal;
aconst_null
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
ifnonnull L0
aload 0
getstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_INIT_LEN I
newarray char
putfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
L0:
aload 0
aload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
invokevirtual java/io/Reader/read([C)I
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
L1:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONReaderScanner/next()C
pop
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/ch C
ldc_w 65279
if_icmpne L4
aload 0
invokevirtual com/alibaba/fastjson/parser/JSONReaderScanner/next()C
pop
L4:
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
.limit locals 4
.limit stack 4
.end method

.method public <init>(Ljava/lang/String;)V
aload 0
aload 1
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>(Ljava/lang/String;I)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;I)V
aload 0
new java/io/StringReader
dup
aload 1
invokespecial java/io/StringReader/<init>(Ljava/lang/String;)V
iload 2
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>(Ljava/io/Reader;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>([CI)V
aload 0
aload 1
iload 2
getstatic com/alibaba/fastjson/JSON/DEFAULT_PARSER_FEATURE I
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>([CII)V
return
.limit locals 3
.limit stack 4
.end method

.method public <init>([CII)V
aload 0
new java/io/CharArrayReader
dup
aload 1
iconst_0
iload 2
invokespecial java/io/CharArrayReader/<init>([CII)V
iload 3
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>(Ljava/io/Reader;I)V
return
.limit locals 4
.limit stack 6
.end method

.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
aload 4
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
iload 2
iload 3
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol([CIII)Ljava/lang/String;
areturn
.limit locals 5
.limit stack 5
.end method

.method protected final arrayCopy(I[CII)V
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
aload 2
iload 3
iload 4
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return
.limit locals 5
.limit stack 5
.end method

.method public bytesValue()[B
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
invokestatic com/alibaba/fastjson/util/Base64/decodeFast([CII)[B
areturn
.limit locals 1
.limit stack 3
.end method

.method public final charArrayCompare([C)Z
iconst_0
istore 2
L0:
iload 2
aload 1
arraylength
if_icmpge L1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONReaderScanner/charAt(I)C
aload 1
iload 2
caload
if_icmpeq L2
iconst_0
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
iconst_1
ireturn
.limit locals 3
.limit stack 3
.end method

.method public final charAt(I)C
.catch java/io/IOException from L0 to L1 using L2
bipush 26
istore 2
iload 1
istore 3
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
if_icmplt L3
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iconst_m1
if_icmpne L4
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
if_icmpge L5
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
caload
istore 2
L5:
iload 2
ireturn
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
isub
istore 3
iload 3
ifle L0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iconst_0
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/reader Ljava/io/Reader;
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 3
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
arraylength
iload 3
isub
invokevirtual java/io/Reader/read([CII)I
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
ifne L6
new com/alibaba/fastjson/JSONException
dup
ldc "illegal stat, textLength is zero"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 4
new com/alibaba/fastjson/JSONException
dup
aload 4
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 4
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iconst_m1
if_icmpeq L5
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iload 3
iadd
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
isub
istore 3
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
isub
putfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 3
caload
ireturn
.limit locals 5
.limit stack 6
.end method

.method public close()V
aload 0
invokespecial com/alibaba/fastjson/parser/JSONLexerBase/close()V
getstatic com/alibaba/fastjson/parser/JSONReaderScanner/BUF_REF_LOCAL Ljava/lang/ThreadLocal;
new java/lang/ref/SoftReference
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
invokespecial java/lang/ref/SoftReference/<init>(Ljava/lang/Object;)V
invokevirtual java/lang/ThreadLocal/set(Ljava/lang/Object;)V
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/reader Ljava/io/Reader;
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
return
.limit locals 1
.limit stack 4
.end method

.method protected final copyTo(II[C)V
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
aload 3
iconst_0
iload 2
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return
.limit locals 4
.limit stack 5
.end method

.method public final indexOf(CI)I
iload 2
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
isub
istore 2
L0:
iload 1
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iload 2
iadd
invokevirtual com/alibaba/fastjson/parser/JSONReaderScanner/charAt(I)C
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iload 2
iadd
ireturn
L1:
iload 1
bipush 26
if_icmpne L2
iconst_m1
ireturn
L2:
iload 2
iconst_1
iadd
istore 2
goto L0
.limit locals 3
.limit stack 4
.end method

.method public isEOF()Z
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iconst_m1
if_icmpeq L0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
arraylength
if_icmpeq L0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/ch C
bipush 26
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iconst_1
iadd
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
arraylength
if_icmpne L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 1
.limit stack 2
.end method

.method public final next()C
.catch java/io/IOException from L0 to L1 using L2
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iconst_1
iadd
istore 3
aload 0
iload 3
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iload 3
istore 2
iload 3
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
if_icmplt L3
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iconst_m1
if_icmpne L4
bipush 26
ireturn
L4:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
ifle L5
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
isub
istore 3
iload 3
istore 2
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/ch C
bipush 34
if_icmpne L6
iload 3
iconst_1
isub
istore 2
L6:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 2
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
L5:
aload 0
iconst_m1
putfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
istore 2
aload 0
iload 2
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
L0:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
istore 3
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
arraylength
istore 4
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/reader Ljava/io/Reader;
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iload 4
iload 3
isub
invokevirtual java/io/Reader/read([CII)I
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
L1:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
ifne L7
new com/alibaba/fastjson/JSONException
dup
ldc "illegal stat, textLength is zero"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L2:
astore 5
new com/alibaba/fastjson/JSONException
dup
aload 5
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 5
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L7:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
iconst_m1
if_icmpne L8
aload 0
bipush 26
putfield com/alibaba/fastjson/parser/JSONReaderScanner/ch C
bipush 26
ireturn
L8:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/bp I
iadd
putfield com/alibaba/fastjson/parser/JSONReaderScanner/bufLength I
L3:
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 2
caload
istore 1
aload 0
iload 1
putfield com/alibaba/fastjson/parser/JSONReaderScanner/ch C
iload 1
ireturn
.limit locals 6
.limit stack 6
.end method

.method public final numberString()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
istore 2
iload 2
istore 1
iload 2
iconst_m1
if_icmpne L0
iconst_0
istore 1
L0:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
iload 1
iadd
iconst_1
isub
invokevirtual com/alibaba/fastjson/parser/JSONReaderScanner/charAt(I)C
istore 4
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
istore 3
iload 4
bipush 76
if_icmpeq L1
iload 4
bipush 83
if_icmpeq L1
iload 4
bipush 66
if_icmpeq L1
iload 4
bipush 70
if_icmpeq L1
iload 3
istore 2
iload 4
bipush 68
if_icmpne L2
L1:
iload 3
iconst_1
isub
istore 2
L2:
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
iload 2
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 5
.limit stack 5
.end method

.method public final stringVal()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/hasSpecial Z
ifne L0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/np I
iconst_1
iadd
istore 1
iload 1
ifge L1
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L1:
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
arraylength
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
isub
if_icmple L2
new java/lang/IllegalStateException
dup
invokespecial java/lang/IllegalStateException/<init>()V
athrow
L2:
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
invokespecial java/lang/String/<init>([CII)V
areturn
L0:
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sbuf [C
iconst_0
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/sp I
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 2
.limit stack 5
.end method

.method public final subString(II)Ljava/lang/String;
iload 2
ifge L0
new java/lang/StringIndexOutOfBoundsException
dup
iload 2
invokespecial java/lang/StringIndexOutOfBoundsException/<init>(I)V
athrow
L0:
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/JSONReaderScanner/buf [C
iload 1
iload 2
invokespecial java/lang/String/<init>([CII)V
areturn
.limit locals 3
.limit stack 5
.end method
