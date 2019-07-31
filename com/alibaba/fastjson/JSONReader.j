.bytecode 50.0
.class public synchronized com/alibaba/fastjson/JSONReader
.super java/lang/Object
.implements java/io/Closeable

.field private 'context' Lcom/alibaba/fastjson/JSONStreamContext;

.field private final 'parser' Lcom/alibaba/fastjson/parser/DefaultJSONParser;

.method public <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
aload 0
new com/alibaba/fastjson/parser/DefaultJSONParser
dup
aload 1
invokespecial com/alibaba/fastjson/parser/DefaultJSONParser/<init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
invokespecial com/alibaba/fastjson/JSONReader/<init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)V
return
.limit locals 2
.limit stack 4
.end method

.method public <init>(Ljava/io/Reader;)V
aload 0
new com/alibaba/fastjson/parser/JSONReaderScanner
dup
aload 1
invokespecial com/alibaba/fastjson/parser/JSONReaderScanner/<init>(Ljava/io/Reader;)V
invokespecial com/alibaba/fastjson/JSONReader/<init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
return
.limit locals 2
.limit stack 4
.end method

.method private endStructure()V
aload 0
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getParent()Lcom/alibaba/fastjson/JSONStreamContext;
putfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 2
iconst_m1
istore 1
iload 2
tableswitch 1001
L2
L3
L2
L4
default : L5
L5:
iload 1
iconst_m1
if_icmpeq L1
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
iload 1
invokevirtual com/alibaba/fastjson/JSONStreamContext/setState(I)V
return
L3:
sipush 1003
istore 1
goto L5
L4:
sipush 1005
istore 1
goto L5
L2:
sipush 1002
istore 1
goto L5
.limit locals 3
.limit stack 2
.end method

.method private readAfter()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 2
iconst_m1
istore 1
iload 2
tableswitch 1001
L0
L1
L2
L3
L4
default : L5
L5:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal state : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
sipush 1002
istore 1
L4:
iload 1
iconst_m1
if_icmpeq L6
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
iload 1
invokevirtual com/alibaba/fastjson/JSONStreamContext/setState(I)V
L6:
return
L1:
sipush 1003
istore 1
goto L4
L2:
sipush 1002
istore 1
goto L4
L3:
sipush 1005
istore 1
goto L4
.limit locals 3
.limit stack 4
.end method

.method private readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 1
iload 1
tableswitch 1001
L0
L1
L2
L0
L3
default : L4
L4:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal state : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
L0:
return
L2:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 16
bipush 18
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(II)V
return
L3:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 16
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
return
.limit locals 2
.limit stack 4
.end method

.method private startStructure()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
tableswitch 1001
L0
L1
L2
L0
L2
default : L3
L3:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal state : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 17
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
L0:
return
L2:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 16
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
return
.limit locals 1
.limit stack 4
.end method

.method public close()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokestatic com/alibaba/fastjson/util/IOUtils/close(Ljava/io/Closeable;)V
return
.limit locals 1
.limit stack 1
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
iload 2
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/config(Lcom/alibaba/fastjson/parser/Feature;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public endArray()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 15
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 0
invokespecial com/alibaba/fastjson/JSONReader/endStructure()V
return
.limit locals 1
.limit stack 2
.end method

.method public endObject()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 13
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
aload 0
invokespecial com/alibaba/fastjson/JSONReader/endStructure()V
return
.limit locals 1
.limit stack 2
.end method

.method public hasNext()Z
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
new com/alibaba/fastjson/JSONException
dup
ldc "context is null"
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
invokeinterface com/alibaba/fastjson/parser/JSONLexer/token()I 0
istore 1
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 2
iload 2
tableswitch 1001
L1
L2
L1
L3
L3
default : L2
L2:
new com/alibaba/fastjson/JSONException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "illegal state : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L3:
iload 1
bipush 15
if_icmpeq L4
L5:
iconst_1
ireturn
L4:
iconst_0
ireturn
L1:
iload 1
bipush 13
if_icmpne L5
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method public readInteger()Ljava/lang/Integer;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
L1:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
goto L1
.limit locals 2
.limit stack 1
.end method

.method public readLong()Ljava/lang/Long;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
L1:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToLong(Ljava/lang/Object;)Ljava/lang/Long;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
goto L1
.limit locals 2
.limit stack 1
.end method

.method public readObject()Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
tableswitch 1001
L1
L2
L1
default : L2
L2:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
L3:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
aload 1
areturn
L1:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseKey()Ljava/lang/Object;
astore 1
goto L3
.limit locals 2
.limit stack 1
.end method

.method public readObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Lcom/alibaba/fastjson/TypeReference<TT;>;)TT;"
aload 0
aload 1
invokevirtual com/alibaba/fastjson/TypeReference/getType()Ljava/lang/reflect/Type;
invokevirtual com/alibaba/fastjson/JSONReader/readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public readObject(Ljava/lang/Class;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;"
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Class;)Ljava/lang/Object;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Class;)Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public readObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
.signature "<T:Ljava/lang/Object;>(Ljava/lang/reflect/Type;)TT;"
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public readObject(Ljava/util/Map;)Ljava/lang/Object;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;)Ljava/lang/Object;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/util/Map;)Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public readObject(Ljava/lang/Object;)V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Object;)V
return
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
aload 1
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parseObject(Ljava/lang/Object;)V
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
return
.limit locals 2
.limit stack 2
.end method

.method public readString()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
L1:
aload 1
invokestatic com/alibaba/fastjson/util/TypeUtils/castToString(Ljava/lang/Object;)Ljava/lang/String;
areturn
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readBefore()V
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/parse()Ljava/lang/Object;
astore 1
aload 0
invokespecial com/alibaba/fastjson/JSONReader/readAfter()V
goto L1
.limit locals 2
.limit stack 1
.end method

.method public startArray()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aconst_null
sipush 1004
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
L1:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 14
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(I)V
return
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/startStructure()V
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
sipush 1004
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
goto L1
.limit locals 1
.limit stack 5
.end method

.method public startObject()V
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aconst_null
sipush 1001
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
L1:
aload 0
getfield com/alibaba/fastjson/JSONReader/parser Lcom/alibaba/fastjson/parser/DefaultJSONParser;
bipush 12
bipush 18
invokevirtual com/alibaba/fastjson/parser/DefaultJSONParser/accept(II)V
return
L0:
aload 0
invokespecial com/alibaba/fastjson/JSONReader/startStructure()V
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aload 0
getfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
sipush 1001
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONReader/context Lcom/alibaba/fastjson/JSONStreamContext;
goto L1
.limit locals 1
.limit stack 5
.end method
