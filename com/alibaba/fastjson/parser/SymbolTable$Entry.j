.bytecode 50.0
.class public final synchronized com/alibaba/fastjson/parser/SymbolTable$Entry
.super java/lang/Object
.inner class protected static final Entry inner com/alibaba/fastjson/parser/SymbolTable$Entry outer com/alibaba/fastjson/parser/SymbolTable

.field public final 'bytes' [B

.field public final 'characters' [C

.field public final 'hashCode' I

.field public 'next' Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field public final 'symbol' Ljava/lang/String;

.method public <init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
iload 2
iload 2
iload 3
iadd
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/intern()Ljava/lang/String;
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
aload 0
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
invokevirtual java/lang/String/toCharArray()[C
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
aload 0
aload 5
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/next Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
aload 0
iload 4
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/hashCode I
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/bytes [B
return
.limit locals 6
.limit stack 5
.end method

.method public <init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 3
newarray char
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
aload 1
iload 2
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
iconst_0
iload 3
invokestatic java/lang/System/arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
aload 0
new java/lang/String
dup
aload 0
getfield com/alibaba/fastjson/parser/SymbolTable$Entry/characters [C
invokespecial java/lang/String/<init>([C)V
invokevirtual java/lang/String/intern()Ljava/lang/String;
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/symbol Ljava/lang/String;
aload 0
aload 5
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/next Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
aload 0
iload 4
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/hashCode I
aload 0
aconst_null
putfield com/alibaba/fastjson/parser/SymbolTable$Entry/bytes [B
return
.limit locals 6
.limit stack 5
.end method
