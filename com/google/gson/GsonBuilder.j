.bytecode 50.0
.class public final synchronized com/google/gson/GsonBuilder
.super java/lang/Object

.field private 'complexMapKeySerialization' Z

.field private 'datePattern' Ljava/lang/String;

.field private 'dateStyle' I

.field private 'escapeHtmlChars' Z

.field private 'excluder' Lcom/google/gson/internal/Excluder;

.field private final 'factories' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"

.field private 'fieldNamingPolicy' Lcom/google/gson/FieldNamingStrategy;

.field private 'generateNonExecutableJson' Z

.field private final 'hierarchyFactories' Ljava/util/List; signature "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"

.field private final 'instanceCreators' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"

.field private 'longSerializationPolicy' Lcom/google/gson/LongSerializationPolicy;

.field private 'prettyPrinting' Z

.field private 'serializeNulls' Z

.field private 'serializeSpecialFloatingPointValues' Z

.field private 'timeStyle' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
getstatic com/google/gson/internal/Excluder/DEFAULT Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
getstatic com/google/gson/LongSerializationPolicy/DEFAULT Lcom/google/gson/LongSerializationPolicy;
putfield com/google/gson/GsonBuilder/longSerializationPolicy Lcom/google/gson/LongSerializationPolicy;
aload 0
getstatic com/google/gson/FieldNamingPolicy/IDENTITY Lcom/google/gson/FieldNamingPolicy;
putfield com/google/gson/GsonBuilder/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/google/gson/GsonBuilder/instanceCreators Ljava/util/Map;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/google/gson/GsonBuilder/factories Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/google/gson/GsonBuilder/hierarchyFactories Ljava/util/List;
aload 0
iconst_2
putfield com/google/gson/GsonBuilder/dateStyle I
aload 0
iconst_2
putfield com/google/gson/GsonBuilder/timeStyle I
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/escapeHtmlChars Z
return
.limit locals 1
.limit stack 3
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
.signature "(Ljava/lang/String;IILjava/util/List<Lcom/google/gson/TypeAdapterFactory;>;)V"
aload 1
ifnull L0
ldc ""
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
new com/google/gson/DefaultDateTypeAdapter
dup
aload 1
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 4
ldc java/util/Date
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
aload 1
invokestatic com/google/gson/TreeTypeAdapter/newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
ldc java/sql/Timestamp
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
aload 1
invokestatic com/google/gson/TreeTypeAdapter/newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 4
ldc java/sql/Date
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
aload 1
invokestatic com/google/gson/TreeTypeAdapter/newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L2:
return
L0:
iload 2
iconst_2
if_icmpeq L2
iload 3
iconst_2
if_icmpeq L2
new com/google/gson/DefaultDateTypeAdapter
dup
iload 2
iload 3
invokespecial com/google/gson/DefaultDateTypeAdapter/<init>(II)V
astore 1
goto L1
.limit locals 5
.limit stack 4
.end method

.method public addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 1
iconst_0
iconst_1
invokevirtual com/google/gson/internal/Excluder/withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 1
iconst_1
iconst_0
invokevirtual com/google/gson/internal/Excluder/withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 2
.limit stack 5
.end method

.method public create()Lcom/google/gson/Gson;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 1
aload 0
getfield com/google/gson/GsonBuilder/factories Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 1
invokestatic java/util/Collections/reverse(Ljava/util/List;)V
aload 1
aload 0
getfield com/google/gson/GsonBuilder/hierarchyFactories Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
aload 0
getfield com/google/gson/GsonBuilder/datePattern Ljava/lang/String;
aload 0
getfield com/google/gson/GsonBuilder/dateStyle I
aload 0
getfield com/google/gson/GsonBuilder/timeStyle I
aload 1
invokespecial com/google/gson/GsonBuilder/addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
new com/google/gson/Gson
dup
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
getfield com/google/gson/GsonBuilder/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 0
getfield com/google/gson/GsonBuilder/instanceCreators Ljava/util/Map;
aload 0
getfield com/google/gson/GsonBuilder/serializeNulls Z
aload 0
getfield com/google/gson/GsonBuilder/complexMapKeySerialization Z
aload 0
getfield com/google/gson/GsonBuilder/generateNonExecutableJson Z
aload 0
getfield com/google/gson/GsonBuilder/escapeHtmlChars Z
aload 0
getfield com/google/gson/GsonBuilder/prettyPrinting Z
aload 0
getfield com/google/gson/GsonBuilder/serializeSpecialFloatingPointValues Z
aload 0
getfield com/google/gson/GsonBuilder/longSerializationPolicy Lcom/google/gson/LongSerializationPolicy;
aload 1
invokespecial com/google/gson/Gson/<init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
areturn
.limit locals 2
.limit stack 13
.end method

.method public disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
aload 0
iconst_0
putfield com/google/gson/GsonBuilder/escapeHtmlChars Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public disableInnerClassSerialization()Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
invokevirtual com/google/gson/internal/Excluder/disableInnerClassSerialization()Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/complexMapKeySerialization Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public transient excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 1
invokevirtual com/google/gson/internal/Excluder/withModifiers([I)Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 2
.limit stack 3
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
invokevirtual com/google/gson/internal/Excluder/excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public generateNonExecutableJson()Lcom/google/gson/GsonBuilder;
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/generateNonExecutableJson Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
aload 2
instanceof com/google/gson/JsonSerializer
ifne L0
aload 2
instanceof com/google/gson/JsonDeserializer
ifne L0
aload 2
instanceof com/google/gson/InstanceCreator
ifne L0
aload 2
instanceof com/google/gson/TypeAdapter
ifeq L1
L0:
iconst_1
istore 3
L2:
iload 3
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 2
instanceof com/google/gson/InstanceCreator
ifeq L3
aload 0
getfield com/google/gson/GsonBuilder/instanceCreators Ljava/util/Map;
aload 1
aload 2
checkcast com/google/gson/InstanceCreator
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L3:
aload 2
instanceof com/google/gson/JsonSerializer
ifne L4
aload 2
instanceof com/google/gson/JsonDeserializer
ifeq L5
L4:
aload 1
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
astore 4
aload 0
getfield com/google/gson/GsonBuilder/factories Ljava/util/List;
aload 4
aload 2
invokestatic com/google/gson/TreeTypeAdapter/newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
aload 2
instanceof com/google/gson/TypeAdapter
ifeq L6
aload 0
getfield com/google/gson/GsonBuilder/factories Ljava/util/List;
aload 1
invokestatic com/google/gson/reflect/TypeToken/get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
aload 2
checkcast com/google/gson/TypeAdapter
invokestatic com/google/gson/internal/bind/TypeAdapters/newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L6:
aload 0
areturn
L1:
iconst_0
istore 3
goto L2
.limit locals 5
.limit stack 3
.end method

.method public registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;
aload 0
getfield com/google/gson/GsonBuilder/factories Ljava/util/List;
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;
.signature "(Ljava/lang/Class<*>;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;"
aload 2
instanceof com/google/gson/JsonSerializer
ifne L0
aload 2
instanceof com/google/gson/JsonDeserializer
ifne L0
aload 2
instanceof com/google/gson/TypeAdapter
ifeq L1
L0:
iconst_1
istore 3
L2:
iload 3
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 2
instanceof com/google/gson/JsonDeserializer
ifne L3
aload 2
instanceof com/google/gson/JsonSerializer
ifeq L4
L3:
aload 0
getfield com/google/gson/GsonBuilder/hierarchyFactories Ljava/util/List;
iconst_0
aload 1
aload 2
invokestatic com/google/gson/TreeTypeAdapter/newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(ILjava/lang/Object;)V 2
L4:
aload 2
instanceof com/google/gson/TypeAdapter
ifeq L5
aload 0
getfield com/google/gson/GsonBuilder/factories Ljava/util/List;
aload 1
aload 2
checkcast com/google/gson/TypeAdapter
invokestatic com/google/gson/internal/bind/TypeAdapters/newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L5:
aload 0
areturn
L1:
iconst_0
istore 3
goto L2
.limit locals 4
.limit stack 4
.end method

.method public serializeNulls()Lcom/google/gson/GsonBuilder;
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/serializeNulls Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/serializeSpecialFloatingPointValues Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public setDateFormat(I)Lcom/google/gson/GsonBuilder;
aload 0
iload 1
putfield com/google/gson/GsonBuilder/dateStyle I
aload 0
aconst_null
putfield com/google/gson/GsonBuilder/datePattern Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setDateFormat(II)Lcom/google/gson/GsonBuilder;
aload 0
iload 1
putfield com/google/gson/GsonBuilder/dateStyle I
aload 0
iload 2
putfield com/google/gson/GsonBuilder/timeStyle I
aload 0
aconst_null
putfield com/google/gson/GsonBuilder/datePattern Ljava/lang/String;
aload 0
areturn
.limit locals 3
.limit stack 2
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;
aload 0
aload 1
putfield com/google/gson/GsonBuilder/datePattern Ljava/lang/String;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public transient setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;
aload 1
arraylength
istore 3
iconst_0
istore 2
L0:
iload 2
iload 3
if_icmpge L1
aload 1
iload 2
aaload
astore 4
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 4
iconst_1
iconst_1
invokevirtual com/google/gson/internal/Excluder/withExclusionStrategy(Lcom/google/gson/ExclusionStrategy;ZZ)Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 0
areturn
.limit locals 5
.limit stack 5
.end method

.method public setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;
aload 0
aload 1
putfield com/google/gson/GsonBuilder/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setFieldNamingStrategy(Lcom/google/gson/FieldNamingStrategy;)Lcom/google/gson/GsonBuilder;
aload 0
aload 1
putfield com/google/gson/GsonBuilder/fieldNamingPolicy Lcom/google/gson/FieldNamingStrategy;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setLongSerializationPolicy(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/GsonBuilder;
aload 0
aload 1
putfield com/google/gson/GsonBuilder/longSerializationPolicy Lcom/google/gson/LongSerializationPolicy;
aload 0
areturn
.limit locals 2
.limit stack 2
.end method

.method public setPrettyPrinting()Lcom/google/gson/GsonBuilder;
aload 0
iconst_1
putfield com/google/gson/GsonBuilder/prettyPrinting Z
aload 0
areturn
.limit locals 1
.limit stack 2
.end method

.method public setVersion(D)Lcom/google/gson/GsonBuilder;
aload 0
aload 0
getfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
dload 1
invokevirtual com/google/gson/internal/Excluder/withVersion(D)Lcom/google/gson/internal/Excluder;
putfield com/google/gson/GsonBuilder/excluder Lcom/google/gson/internal/Excluder;
aload 0
areturn
.limit locals 3
.limit stack 4
.end method
