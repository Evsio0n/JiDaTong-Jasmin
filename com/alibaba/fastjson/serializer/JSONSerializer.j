.bytecode 50.0
.class public synchronized com/alibaba/fastjson/serializer/JSONSerializer
.super java/lang/Object

.field private 'afterFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/AfterFilter;>;"

.field private 'beforeFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/BeforeFilter;>;"

.field private final 'config' Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private 'context' Lcom/alibaba/fastjson/serializer/SerialContext;

.field private 'dateFormat' Ljava/text/DateFormat;

.field private 'dateFormatPattern' Ljava/lang/String;

.field private 'indent' Ljava/lang/String;

.field private 'indentCount' I

.field private 'nameFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"

.field private final 'out' Lcom/alibaba/fastjson/serializer/SerializeWriter;

.field private 'propertyFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"

.field private 'propertyPreFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"

.field private 'references' Ljava/util/IdentityHashMap; signature "Ljava/util/IdentityHashMap<Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerialContext;>;"

.field private 'valueFilters' Ljava/util/List; signature "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"

.method public <init>()V
aload 0
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
invokestatic com/alibaba/fastjson/serializer/SerializeConfig/getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Lcom/alibaba/fastjson/serializer/JSONSerializerMap;)V
.annotation visible Ljava/lang/Deprecated;
.end annotation
aload 0
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
aload 0
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
aload 1
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
aload 0
aload 1
invokestatic com/alibaba/fastjson/serializer/SerializeConfig/getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/beforeFilters Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/afterFilters Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/propertyFilters Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/valueFilters Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/nameFilters Ljava/util/List;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/propertyPreFilters Ljava/util/List;
aload 0
iconst_0
putfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
aload 0
ldc "\u0009"
putfield com/alibaba/fastjson/serializer/JSONSerializer/indent Ljava/lang/String;
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 0
aload 2
putfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
return
.limit locals 3
.limit stack 2
.end method

.method public static final write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Object;)V
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 0
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 3
.end method

.method public static final write(Ljava/io/Writer;Ljava/lang/Object;)V
.catch java/io/IOException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L3 using L3
new com/alibaba/fastjson/serializer/SerializeWriter
dup
invokespecial com/alibaba/fastjson/serializer/SerializeWriter/<init>()V
astore 2
L0:
new com/alibaba/fastjson/serializer/JSONSerializer
dup
aload 2
invokespecial com/alibaba/fastjson/serializer/JSONSerializer/<init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
aload 2
aload 0
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeTo(Ljava/io/Writer;)V
L1:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
return
L2:
astore 0
L4:
new com/alibaba/fastjson/JSONException
dup
aload 0
invokevirtual java/io/IOException/getMessage()Ljava/lang/String;
aload 0
invokespecial com/alibaba/fastjson/JSONException/<init>(Ljava/lang/String;Ljava/lang/Throwable;)V
athrow
L3:
astore 0
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
aload 0
athrow
.limit locals 3
.limit stack 4
.end method

.method public close()V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/close()V
return
.limit locals 1
.limit stack 1
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
iload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
return
.limit locals 3
.limit stack 3
.end method

.method public containsReference(Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
aload 1
invokevirtual java/util/IdentityHashMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public decrementIdent()V
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
iconst_1
isub
putfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
return
.limit locals 1
.limit stack 3
.end method

.method public getAfterFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/AfterFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/afterFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/afterFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/afterFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getAfterFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/AfterFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/afterFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getBeforeFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/BeforeFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/beforeFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/beforeFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/beforeFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getBeforeFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/BeforeFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/beforeFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getDateFormat()Ljava/text/DateFormat;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
ifnonnull L0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
ifnull L0
aload 0
new java/text/SimpleDateFormat
dup
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
putfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
areturn
.limit locals 1
.limit stack 4
.end method

.method public getDateFormatPattern()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
instanceof java/text/SimpleDateFormat
ifeq L0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
checkcast java/text/SimpleDateFormat
invokevirtual java/text/SimpleDateFormat/toPattern()Ljava/lang/String;
areturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIndentCount()I
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMapping()Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNameFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/nameFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/nameFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/nameFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getNameFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/nameFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.signature "(Ljava/lang/Class<*>;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
.catch java/lang/ClassCastException from L0 to L1 using L2
.catch java/lang/ClassCastException from L1 to L3 using L2
.catch java/lang/ClassCastException from L3 to L4 using L2
.catch java/lang/ClassCastException from L5 to L6 using L7
.catch java/lang/ClassCastException from L6 to L8 using L7
.catch java/lang/ClassCastException from L8 to L9 using L7
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/ObjectSerializer
astore 9
aload 9
astore 8
aload 9
ifnonnull L10
L0:
ldc com/alibaba/fastjson/serializer/AutowiredObjectSerializer
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
invokestatic com/alibaba/fastjson/util/ServiceLoader/load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 8
L1:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L11
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 9
aload 9
instanceof com/alibaba/fastjson/serializer/AutowiredObjectSerializer
ifeq L1
aload 9
checkcast com/alibaba/fastjson/serializer/AutowiredObjectSerializer
astore 9
aload 9
invokeinterface com/alibaba/fastjson/serializer/AutowiredObjectSerializer/getAutowiredFor()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 10
L3:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/reflect/Type
astore 11
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 11
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L4:
goto L3
L2:
astore 8
L11:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/ObjectSerializer
astore 8
L10:
aload 8
astore 9
aload 8
ifnonnull L12
ldc com/alibaba/fastjson/JSON
invokevirtual java/lang/Class/getClassLoader()Ljava/lang/ClassLoader;
astore 10
aload 8
astore 9
aload 10
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getContextClassLoader()Ljava/lang/ClassLoader;
if_acmpeq L12
L5:
ldc com/alibaba/fastjson/serializer/AutowiredObjectSerializer
aload 10
invokestatic com/alibaba/fastjson/util/ServiceLoader/load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 8
L6:
aload 8
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L13
aload 8
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
astore 9
aload 9
instanceof com/alibaba/fastjson/serializer/AutowiredObjectSerializer
ifeq L6
aload 9
checkcast com/alibaba/fastjson/serializer/AutowiredObjectSerializer
astore 9
aload 9
invokeinterface com/alibaba/fastjson/serializer/AutowiredObjectSerializer/getAutowiredFor()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 10
L8:
aload 10
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 10
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/reflect/Type
astore 11
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 11
aload 9
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L9:
goto L8
L7:
astore 8
L13:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/ObjectSerializer
astore 9
L12:
aload 9
astore 8
aload 9
ifnonnull L14
ldc java/util/Map
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L15
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/MapSerializer/instance Lcom/alibaba/fastjson/serializer/MapSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
L16:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/ObjectSerializer
astore 8
L14:
aload 8
areturn
L15:
ldc java/util/List
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L17
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/ListSerializer/instance Lcom/alibaba/fastjson/serializer/ListSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L17:
ldc java/util/Collection
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L18
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/CollectionSerializer/instance Lcom/alibaba/fastjson/serializer/CollectionSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L18:
ldc java/util/Date
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L19
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/DateSerializer/instance Lcom/alibaba/fastjson/serializer/DateSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L19:
ldc com/alibaba/fastjson/JSONAware
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L20
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/JSONAwareSerializer/instance Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L20:
ldc com/alibaba/fastjson/JSONStreamAware
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L21
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/JSONStreamAwareSerializer/instance Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L21:
aload 1
invokevirtual java/lang/Class/isEnum()Z
ifne L22
aload 1
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
ifnull L23
aload 1
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
invokevirtual java/lang/Class/isEnum()Z
ifeq L23
L22:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/EnumSerializer/instance Lcom/alibaba/fastjson/serializer/EnumSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L23:
aload 1
invokevirtual java/lang/Class/isArray()Z
ifeq L24
aload 1
invokevirtual java/lang/Class/getComponentType()Ljava/lang/Class;
astore 8
aload 0
aload 8
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 9
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
new com/alibaba/fastjson/serializer/ArraySerializer
dup
aload 8
aload 9
invokespecial com/alibaba/fastjson/serializer/ArraySerializer/<init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L24:
ldc java/lang/Throwable
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L25
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
new com/alibaba/fastjson/serializer/ExceptionSerializer
dup
aload 1
invokespecial com/alibaba/fastjson/serializer/ExceptionSerializer/<init>(Ljava/lang/Class;)V
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L25:
ldc java/util/TimeZone
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L26
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/TimeZoneCodec/instance Lcom/alibaba/fastjson/serializer/TimeZoneCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L26:
ldc java/lang/Appendable
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L27
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/AppendableSerializer/instance Lcom/alibaba/fastjson/serializer/AppendableSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L27:
ldc java/nio/charset/Charset
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L28
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/CharsetCodec/instance Lcom/alibaba/fastjson/serializer/CharsetCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L28:
ldc java/util/Enumeration
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L29
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/EnumerationSeriliazer/instance Lcom/alibaba/fastjson/serializer/EnumerationSeriliazer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L29:
ldc java/util/Calendar
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L30
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/CalendarCodec/instance Lcom/alibaba/fastjson/serializer/CalendarCodec;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L30:
ldc java/sql/Clob
aload 1
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
ifeq L31
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
getstatic com/alibaba/fastjson/serializer/ClobSeriliazer/instance Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L31:
iconst_0
istore 5
iconst_0
istore 6
aload 1
invokevirtual java/lang/Class/getInterfaces()[Ljava/lang/Class;
astore 8
aload 8
arraylength
istore 7
iconst_0
istore 4
L32:
iload 5
istore 2
iload 6
istore 3
iload 4
iload 7
if_icmpge L33
aload 8
iload 4
aaload
astore 9
aload 9
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "net.sf.cglib.proxy.Factory"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L34
iconst_1
istore 2
iload 6
istore 3
L33:
iload 2
ifne L35
iload 3
ifeq L36
L35:
aload 0
aload 1
invokevirtual java/lang/Class/getSuperclass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 8
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
aload 8
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
aload 8
areturn
L34:
aload 9
invokevirtual java/lang/Class/getName()Ljava/lang/String;
ldc "javassist.util.proxy.ProxyObject"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L37
iconst_1
istore 3
iload 5
istore 2
goto L33
L37:
iload 4
iconst_1
iadd
istore 4
goto L32
L36:
aload 1
invokestatic java/lang/reflect/Proxy/isProxyClass(Ljava/lang/Class;)Z
ifeq L38
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
L38:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/config Lcom/alibaba/fastjson/serializer/SerializeConfig;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
invokevirtual com/alibaba/fastjson/serializer/SerializeConfig/put(Ljava/lang/Object;Ljava/lang/Object;)Z
pop
goto L16
.limit locals 12
.limit stack 6
.end method

.method public getPropertyFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/propertyFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getPropertyFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPropertyPreFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyPreFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/propertyPreFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyPreFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getPropertyPreFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/propertyPreFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSerialContext(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/SerialContext;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
aload 1
invokevirtual java/util/IdentityHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/alibaba/fastjson/serializer/SerialContext
areturn
.limit locals 2
.limit stack 2
.end method

.method public getValueFilters()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/valueFilters Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/valueFilters Ljava/util/List;
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/valueFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 3
.end method

.method public getValueFiltersDirect()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/valueFilters Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
areturn
.limit locals 1
.limit stack 1
.end method

.method public incrementIndent()V
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
iconst_1
iadd
putfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
return
.limit locals 1
.limit stack 3
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final isWriteAsArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
getstatic com/alibaba/fastjson/serializer/SerializerFeature/BeanToArray Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
getstatic com/alibaba/fastjson/serializer/SerializerFeature/WriteClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifne L0
L1:
iconst_0
ireturn
L0:
aload 1
ifnonnull L2
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/NotWriteRootClassName Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L2
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
ifnonnull L3
iconst_1
istore 3
L4:
iload 3
ifne L1
L2:
iconst_1
ireturn
L3:
iconst_0
istore 3
goto L4
.limit locals 4
.limit stack 2
.end method

.method public popContext()V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
ifnull L0
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
putfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public println()V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
bipush 10
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
iconst_0
istore 1
L0:
iload 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/indentCount I
if_icmpge L1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/indent Ljava/lang/String;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 2
.limit stack 2
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
return
.limit locals 2
.limit stack 2
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
getstatic com/alibaba/fastjson/serializer/SerializerFeature/DisableCircularReferenceDetect Lcom/alibaba/fastjson/serializer/SerializerFeature;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
ifeq L0
return
L0:
aload 0
new com/alibaba/fastjson/serializer/SerialContext
dup
aload 1
aload 2
aload 3
invokespecial com/alibaba/fastjson/serializer/SerialContext/<init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
putfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
ifnonnull L1
aload 0
new java/util/IdentityHashMap
dup
invokespecial java/util/IdentityHashMap/<init>()V
putfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
L1:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/references Ljava/util/IdentityHashMap;
aload 2
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual java/util/IdentityHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 4
.limit stack 6
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/context Lcom/alibaba/fastjson/serializer/SerialContext;
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V
return
.limit locals 3
.limit stack 4
.end method

.method public setDateFormat(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
ifnull L0
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
aload 0
aload 1
putfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormat Ljava/text/DateFormat;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
ifnull L0
aload 0
aconst_null
putfield com/alibaba/fastjson/serializer/JSONSerializer/dateFormatPattern Ljava/lang/String;
L0:
return
.limit locals 2
.limit stack 2
.end method

.method public toString()Ljava/lang/String;
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final write(Ljava/lang/Object;)V
.catch java/io/IOException from L0 to L1 using L2
aload 1
ifnonnull L3
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
L3:
aload 0
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
astore 2
L0:
aload 2
aload 0
aload 1
aconst_null
aconst_null
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
L1:
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
.limit locals 3
.limit stack 5
.end method

.method public final write(Ljava/lang/String;)V
getstatic com/alibaba/fastjson/serializer/StringCodec/instance Lcom/alibaba/fastjson/serializer/StringCodec;
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/StringCodec/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected final writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
iload 1
ifeq L0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
iload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(C)V
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeFieldName(Ljava/lang/String;)V
aload 0
aload 3
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
.limit locals 4
.limit stack 2
.end method

.method public writeNull()V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
return
.limit locals 1
.limit stack 1
.end method

.method public writeReference(Ljava/lang/Object;)V
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 2
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getObject()Ljava/lang/Object;
if_acmpne L0
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "{\"$ref\":\"@\"}"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L0:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 3
aload 3
ifnull L1
aload 1
aload 3
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getObject()Ljava/lang/Object;
if_acmpne L1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "{\"$ref\":\"..\"}"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L1:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
ifnonnull L2
aload 1
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getObject()Ljava/lang/Object;
if_acmpne L3
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "{\"$ref\":\"$\"}"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
L2:
aload 2
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
astore 2
goto L1
L3:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getSerialContext(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/SerialContext;
invokevirtual com/alibaba/fastjson/serializer/SerialContext/getPath()Ljava/lang/String;
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "{\"$ref\":\""
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
ldc "\"}"
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/write(Ljava/lang/String;)V
return
.limit locals 4
.limit stack 2
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
aload 0
aload 1
aload 2
aconst_null
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
return
.limit locals 3
.limit stack 4
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
.catch java/io/IOException from L0 to L1 using L2
.catch java/io/IOException from L3 to L4 using L2
aload 1
ifnonnull L3
L0:
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeNull()V
L1:
return
L3:
aload 0
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
aload 0
aload 1
aload 2
aload 3
invokeinterface com/alibaba/fastjson/serializer/ObjectSerializer/write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V 4
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
.limit stack 5
.end method

.method public final writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
aload 1
instanceof java/util/Date
ifeq L0
aload 0
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/getDateFormat()Ljava/text/DateFormat;
astore 4
aload 4
astore 3
aload 4
ifnonnull L1
new java/text/SimpleDateFormat
dup
aload 2
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
astore 3
L1:
aload 3
aload 1
checkcast java/util/Date
invokevirtual java/text/DateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 1
aload 0
getfield com/alibaba/fastjson/serializer/JSONSerializer/out Lcom/alibaba/fastjson/serializer/SerializeWriter;
aload 1
invokevirtual com/alibaba/fastjson/serializer/SerializeWriter/writeString(Ljava/lang/String;)V
return
L0:
aload 0
aload 1
invokevirtual com/alibaba/fastjson/serializer/JSONSerializer/write(Ljava/lang/Object;)V
return
.limit locals 5
.limit stack 3
.end method
