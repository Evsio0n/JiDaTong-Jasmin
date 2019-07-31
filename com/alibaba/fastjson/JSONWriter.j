.bytecode 50.0
.class public synchronized com/alibaba/fastjson/JSONWriter
.super java/lang/Object
.implements java/io/Closeable
.implements java/io/Flushable

.field private 'context' Lcom/alibaba/fastjson/JSONStreamContext;

.field private 'serializer' Lcom/alibaba/fastjson/serializer/JSONSerializer;

.field private 'writer' Lcom/alibaba/fastjson/serializer/SerializeWriter;

.method public <init>(Ljava/io/Writer;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/alibaba/fastjson/serializer/SerializeWriter
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>(Ljava/io/Writer;)V
putfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 0
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
putfield com/alibaba/fastjson/JSONWriter/serializer Lcom/alibaba/fastjson/serializer/JSONSerializer;
return
.limit locals 2
.limit stack 4
.end method

.method private afterWriter()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 3
iconst_m1
istore 2
iload 2
istore 1
iload 3
tableswitch 1001
L2
L3
L2
L4
L5
default : L6
L6:
iload 2
istore 1
L5:
iload 1
iconst_m1
if_icmpeq L1
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
iload 1
invokevirtual com/alibaba/fastjson/JSONStreamContext/setState(I)V
return
L3:
sipush 1003
istore 1
goto L5
L2:
sipush 1002
istore 1
goto L5
L4:
sipush 1005
istore 1
goto L5
.limit locals 4
.limit stack 2
.end method

.method private beforeWrite()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
tableswitch 1001
L1
L2
L3
L1
L4
default : L5
L5:
return
L2:
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L3:
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
L4:
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 1
.limit stack 2
.end method

.method private beginStructure()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 1
iload 1
tableswitch 1001
L0
L1
L2
L0
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
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;)V
athrow
L1:
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 58
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L0:
return
L3:
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 44
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 2
.limit stack 4
.end method

.method private endStructure()V
aload 0
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getParent()Lcom/alibaba/fastjson/JSONStreamContext;
putfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnonnull L0
L1:
return
L0:
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
invokevirtual com/alibaba/fastjson/JSONStreamContext/getState()I
istore 3
iconst_m1
istore 2
iload 2
istore 1
iload 3
tableswitch 1001
L2
L3
L4
L5
L4
default : L6
L6:
iload 2
istore 1
L4:
iload 1
iconst_m1
if_icmpeq L1
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
iload 1
invokevirtual com/alibaba/fastjson/JSONStreamContext/setState(I)V
return
L3:
sipush 1003
istore 1
goto L4
L5:
sipush 1005
istore 1
goto L4
L2:
sipush 1002
istore 1
goto L4
.limit locals 4
.limit stack 2
.end method

.method public close()V
.throws java/io/IOException
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
return
.limit locals 1
.limit stack 1
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public endArray()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 93
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/endStructure()V
return
.limit locals 1
.limit stack 2
.end method

.method public endObject()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 125
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/endStructure()V
return
.limit locals 1
.limit stack 2
.end method

.method public flush()V
.throws java/io/IOException
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/flush()V
return
.limit locals 1
.limit stack 1
.end method

.method public startArray()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnull L0
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/beginStructure()V
L0:
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
sipush 1004
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 91
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 1
.limit stack 5
.end method

.method public startObject()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
ifnull L0
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/beginStructure()V
L0:
aload 0
new com/alibaba/fastjson/JSONStreamContext
dup
aload 0
getfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
sipush 1001
invokespecial com/alibaba/fastjson/JSONStreamContext/<init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V
putfield com/alibaba/fastjson/JSONWriter/context Lcom/alibaba/fastjson/JSONStreamContext;
aload 0
getfield com/alibaba/fastjson/JSONWriter/writer Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 123
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
return
.limit locals 1
.limit stack 5
.end method

.method public writeEndArray()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/alibaba/fastjson/JSONWriter/endArray()V
return
.limit locals 1
.limit stack 1
.end method

.method public writeEndObject()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/alibaba/fastjson/JSONWriter/endObject()V
return
.limit locals 1
.limit stack 1
.end method

.method public writeKey(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONWriter/writeObject(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public writeObject(Ljava/lang/Object;)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/beforeWrite()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/serializer Lcom/alibaba/fastjson/serializer/JSONSerializer;
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/afterWriter()V
return
.limit locals 2
.limit stack 2
.end method

.method public writeObject(Ljava/lang/String;)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/beforeWrite()V
aload 0
getfield com/alibaba/fastjson/JSONWriter/serializer Lcom/alibaba/fastjson/serializer/JSONSerializer;
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/String;)V
aload 0
invokespecial com/alibaba/fastjson/JSONWriter/afterWriter()V
return
.limit locals 2
.limit stack 2
.end method

.method public writeStartArray()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/alibaba/fastjson/JSONWriter/startArray()V
return
.limit locals 1
.limit stack 1
.end method

.method public writeStartObject()V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
invokevirtual com/alibaba/fastjson/JSONWriter/startObject()V
return
.limit locals 1
.limit stack 1
.end method

.method public writeValue(Ljava/lang/Object;)V
aload 0
aload 1
invokevirtual com/alibaba/fastjson/JSONWriter/writeObject(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method
