.bytecode 50.0
.class public synchronized com/alibaba/fastjson/parser/SymbolTable
.super java/lang/Object
.inner class protected static final Entry inner com/alibaba/fastjson/parser/SymbolTable$Entry outer com/alibaba/fastjson/parser/SymbolTable

.field public static final 'DEFAULT_TABLE_SIZE' I = 256


.field public static final 'MAX_BUCKET_LENTH' I = 8


.field public static final 'MAX_SIZE' I = 2048


.field private final 'buckets' [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field private final 'indexMask' I

.field private 'size' I

.field private final 'symbols' [Ljava/lang/String;

.field private final 'symbols_char' [[C

.method public <init>()V
aload 0
sipush 256
invokespecial com/alibaba/fastjson/parser/SymbolTable/<init>(I)V
aload 0
ldc "$ref"
iconst_0
iconst_4
ldc "$ref"
invokevirtual java/lang/String/hashCode()I
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol(Ljava/lang/String;III)Ljava/lang/String;
pop
aload 0
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
iconst_0
iconst_4
getstatic com/alibaba/fastjson/JSON/DEFAULT_TYPE_KEY Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol(Ljava/lang/String;III)Ljava/lang/String;
pop
return
.limit locals 1
.limit stack 5
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alibaba/fastjson/parser/SymbolTable/size I
aload 0
iload 1
iconst_1
isub
putfield com/alibaba/fastjson/parser/SymbolTable/indexMask I
aload 0
iload 1
anewarray com/alibaba/fastjson/parser/SymbolTable$Entry
putfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
aload 0
iload 1
anewarray java/lang/String
putfield com/alibaba/fastjson/parser/SymbolTable/symbols [Ljava/lang/String;
aload 0
iload 1
anewarray [C
putfield com/alibaba/fastjson/parser/SymbolTable/symbols_char [[C
return
.limit locals 2
.limit stack 3
.end method

.method public static final hash([CII)I
iconst_0
istore 4
iconst_0
istore 3
L0:
iload 3
iload 2
if_icmpge L1
iload 4
bipush 31
imul
aload 0
iload 1
caload
iadd
istore 4
iload 3
iconst_1
iadd
istore 3
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
iload 4
ireturn
.limit locals 5
.limit stack 3
.end method

.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
iload 4
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/indexMask I
iand
istore 10
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols [Ljava/lang/String;
iload 10
aaload
astore 11
iconst_1
istore 5
iconst_1
istore 7
aload 11
ifnull L0
aload 11
invokevirtual java/lang/String/length()I
iload 3
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols_char [[C
iload 10
aaload
astore 12
iconst_0
istore 5
L2:
iload 7
istore 6
iload 5
iload 3
if_icmpge L3
aload 1
iload 2
iload 5
iadd
invokevirtual java/lang/String/charAt(I)C
aload 12
iload 5
iaload
if_icmpeq L4
iconst_0
istore 6
L3:
iload 6
istore 5
iload 6
ifeq L0
aload 11
areturn
L4:
iload 5
iconst_1
iadd
istore 5
goto L2
L1:
iconst_0
istore 5
L0:
iconst_0
istore 6
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aaload
astore 11
L5:
aload 11
ifnull L6
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
astore 12
iload 6
istore 7
iload 3
aload 12
arraylength
if_icmpne L7
iload 6
istore 7
iload 4
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/hashCode I
if_icmpne L7
iconst_1
istore 9
iconst_0
istore 7
L8:
iload 9
istore 8
iload 7
iload 3
if_icmpge L9
aload 1
iload 2
iload 7
iadd
invokevirtual java/lang/String/charAt(I)C
aload 12
iload 7
caload
if_icmpeq L10
iconst_0
istore 8
L9:
iload 8
ifne L11
iload 6
iconst_1
iadd
istore 7
L7:
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/next Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
astore 11
iload 7
istore 6
goto L5
L10:
iload 7
iconst_1
iadd
istore 7
goto L8
L11:
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
areturn
L6:
iload 6
bipush 8
if_icmplt L12
aload 1
iload 2
iload 2
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L12:
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/size I
sipush 2048
if_icmplt L13
aload 1
iload 2
iload 2
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
L13:
new com/alibaba/fastjson/parser/SymbolTable$Entry
dup
aload 1
iload 2
iload 3
iload 4
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aaload
invokespecial com/alibaba/fastjson/parser/SymbolTable$Entry/<init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
astore 1
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aload 1
aastore
iload 5
ifeq L14
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols [Ljava/lang/String;
iload 10
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
aastore
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols_char [[C
iload 10
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
aastore
L14:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/size I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/SymbolTable/size I
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
areturn
.limit locals 13
.limit stack 8
.end method

.method public addSymbol([CII)Ljava/lang/String;
aload 0
aload 1
iload 2
iload 3
aload 1
iload 2
iload 3
invokestatic com/alibaba/fastjson/parser/SymbolTable/hash([CII)I
invokevirtual com/alibaba/fastjson/parser/SymbolTable/addSymbol([CIII)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 7
.end method

.method public addSymbol([CIII)Ljava/lang/String;
iload 4
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/indexMask I
iand
istore 10
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols [Ljava/lang/String;
iload 10
aaload
astore 11
iconst_1
istore 5
iconst_1
istore 7
aload 11
ifnull L0
aload 11
invokevirtual java/lang/String/length()I
iload 3
if_icmpne L1
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols_char [[C
iload 10
aaload
astore 12
iconst_0
istore 5
L2:
iload 7
istore 6
iload 5
iload 3
if_icmpge L3
aload 1
iload 2
iload 5
iadd
caload
aload 12
iload 5
iaload
if_icmpeq L4
iconst_0
istore 6
L3:
iload 6
istore 5
iload 6
ifeq L0
aload 11
areturn
L4:
iload 5
iconst_1
iadd
istore 5
goto L2
L1:
iconst_0
istore 5
L0:
iconst_0
istore 6
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aaload
astore 11
L5:
aload 11
ifnull L6
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
astore 12
iload 6
istore 7
iload 3
aload 12
arraylength
if_icmpne L7
iload 6
istore 7
iload 4
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/hashCode I
if_icmpne L7
iconst_1
istore 9
iconst_0
istore 7
L8:
iload 9
istore 8
iload 7
iload 3
if_icmpge L9
aload 1
iload 2
iload 7
iadd
caload
aload 12
iload 7
caload
if_icmpeq L10
iconst_0
istore 8
L9:
iload 8
ifne L11
iload 6
iconst_1
iadd
istore 7
L7:
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/next Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
astore 11
iload 7
istore 6
goto L5
L10:
iload 7
iconst_1
iadd
istore 7
goto L8
L11:
aload 11
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
areturn
L6:
iload 6
bipush 8
if_icmplt L12
new java/lang/String
dup
aload 1
iload 2
iload 3
invokespecial java/lang/String/<init>([CII)V
areturn
L12:
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/size I
sipush 2048
if_icmplt L13
new java/lang/String
dup
aload 1
iload 2
iload 3
invokespecial java/lang/String/<init>([CII)V
areturn
L13:
new com/alibaba/fastjson/parser/SymbolTable$Entry
dup
aload 1
iload 2
iload 3
iload 4
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aaload
invokespecial com/alibaba/fastjson/parser/SymbolTable$Entry/<init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
astore 1
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/buckets [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
iload 10
aload 1
aastore
iload 5
ifeq L14
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols [Ljava/lang/String;
iload 10
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
aastore
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/symbols_char [[C
iload 10
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
aastore
L14:
aload 0
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/size I
iconst_1
iadd
putfield com/alibaba/fastjson/parser/SymbolTable/size I
aload 1
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
areturn
.limit locals 13
.limit stack 8
.end method

.method public size()I
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable/size I
ireturn
.limit locals 1
.limit stack 1
.end method
