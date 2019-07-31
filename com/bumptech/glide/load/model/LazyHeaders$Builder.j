.bytecode 50.0
.class public final synchronized com/bumptech/glide/load/model/LazyHeaders$Builder
.super java/lang/Object
.inner class public static final Builder inner com/bumptech/glide/load/model/LazyHeaders$Builder outer com/bumptech/glide/load/model/LazyHeaders

.field private static final 'DEFAULT_ENCODING' Ljava/lang/String; = "identity"

.field private static final 'DEFAULT_HEADERS' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"

.field private static final 'DEFAULT_USER_AGENT' Ljava/lang/String;

.field private static final 'ENCODING_HEADER' Ljava/lang/String; = "Accept-Encoding"

.field private static final 'USER_AGENT_HEADER' Ljava/lang/String; = "User-Agent"

.field private 'copyOnModify' Z

.field private 'headers' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"

.field private 'isEncodingDefault' Z

.field private 'isUserAgentDefault' Z

.method static <clinit>()V
ldc "http.agent"
invokestatic java/lang/System/getProperty(Ljava/lang/String;)Ljava/lang/String;
putstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_USER_AGENT Ljava/lang/String;
new java/util/HashMap
dup
iconst_2
invokespecial java/util/HashMap/<init>(I)V
astore 0
getstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_USER_AGENT Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
ldc "User-Agent"
new com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
dup
getstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_USER_AGENT Ljava/lang/String;
invokespecial com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/<init>(Ljava/lang/String;)V
invokestatic java/util/Collections/singletonList(Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 0
ldc "Accept-Encoding"
new com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
dup
ldc "identity"
invokespecial com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/<init>(Ljava/lang/String;)V
invokestatic java/util/Collections/singletonList(Ljava/lang/Object;)Ljava/util/List;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
invokestatic java/util/Collections/unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
putstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_HEADERS Ljava/util/Map;
return
.limit locals 1
.limit stack 5
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_1
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/copyOnModify Z
aload 0
iconst_1
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/isEncodingDefault Z
aload 0
getstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_HEADERS Ljava/util/Map;
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
aload 0
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
getstatic com/bumptech/glide/load/model/LazyHeaders$Builder/DEFAULT_USER_AGENT Ljava/lang/String;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/isUserAgentDefault Z
return
.limit locals 1
.limit stack 3
.end method

.method private copyHeaders()Ljava/util/Map;
.signature "()Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;>;"
new java/util/HashMap
dup
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
invokeinterface java/util/Map/size()I 0
invokespecial java/util/HashMap/<init>(I)V
astore 1
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 3
aload 1
aload 3
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
new java/util/ArrayList
dup
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/util/Collection
invokespecial java/util/ArrayList/<init>(Ljava/util/Collection;)V
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L0
L1:
aload 1
areturn
.limit locals 4
.limit stack 5
.end method

.method private copyIfNecessary()V
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/copyOnModify Z
ifeq L0
aload 0
iconst_0
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/copyOnModify Z
aload 0
aload 0
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/copyHeaders()Ljava/util/Map;
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
L0:
return
.limit locals 1
.limit stack 2
.end method

.method private getFactories(Ljava/lang/String;)Ljava/util/List;
.signature "(Ljava/lang/String;)Ljava/util/List<Lcom/bumptech/glide/load/model/LazyHeaderFactory;>;"
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/util/List
astore 3
aload 3
astore 2
aload 3
ifnonnull L0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
aload 1
aload 2
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L0:
aload 2
areturn
.limit locals 4
.limit stack 3
.end method

.method public addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/isEncodingDefault Z
ifeq L0
ldc "Accept-Encoding"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifne L1
L0:
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/isUserAgentDefault Z
ifeq L2
ldc "User-Agent"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
L1:
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/model/LazyHeaders$Builder/setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
areturn
L2:
aload 0
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/copyIfNecessary()V
aload 0
aload 1
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/getFactories(Ljava/lang/String;)Ljava/util/List;
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
aload 0
aload 1
new com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
dup
aload 2
invokespecial com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/<init>(Ljava/lang/String;)V
invokevirtual com/bumptech/glide/load/model/LazyHeaders$Builder/addHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
areturn
.limit locals 3
.limit stack 5
.end method

.method public build()Lcom/bumptech/glide/load/model/LazyHeaders;
aload 0
iconst_1
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/copyOnModify Z
new com/bumptech/glide/load/model/LazyHeaders
dup
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
invokespecial com/bumptech/glide/load/model/LazyHeaders/<init>(Ljava/util/Map;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method public setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
aload 0
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/copyIfNecessary()V
aload 2
ifnonnull L0
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/headers Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L1:
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/isEncodingDefault Z
ifeq L2
ldc "Accept-Encoding"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L2
aload 0
iconst_0
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/isEncodingDefault Z
L2:
aload 0
getfield com/bumptech/glide/load/model/LazyHeaders$Builder/isUserAgentDefault Z
ifeq L3
ldc "User-Agent"
aload 1
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L3
aload 0
iconst_0
putfield com/bumptech/glide/load/model/LazyHeaders$Builder/isUserAgentDefault Z
L3:
aload 0
areturn
L0:
aload 0
aload 1
invokespecial com/bumptech/glide/load/model/LazyHeaders$Builder/getFactories(Ljava/lang/String;)Ljava/util/List;
astore 3
aload 3
invokeinterface java/util/List/clear()V 0
aload 3
aload 2
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L1
.limit locals 4
.limit stack 2
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
aload 2
ifnonnull L0
aconst_null
astore 2
L1:
aload 0
aload 1
aload 2
invokevirtual com/bumptech/glide/load/model/LazyHeaders$Builder/setHeader(Ljava/lang/String;Lcom/bumptech/glide/load/model/LazyHeaderFactory;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;
areturn
L0:
new com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory
dup
aload 2
invokespecial com/bumptech/glide/load/model/LazyHeaders$StringHeaderFactory/<init>(Ljava/lang/String;)V
astore 2
goto L1
.limit locals 3
.limit stack 3
.end method
