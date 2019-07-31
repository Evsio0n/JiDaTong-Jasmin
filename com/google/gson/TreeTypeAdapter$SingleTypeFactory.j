.bytecode 50.0
.class synchronized com/google/gson/TreeTypeAdapter$SingleTypeFactory
.super java/lang/Object
.implements com/google/gson/TypeAdapterFactory
.inner class private static SingleTypeFactory inner com/google/gson/TreeTypeAdapter$SingleTypeFactory outer com/google/gson/TreeTypeAdapter

.field private final 'deserializer' Lcom/google/gson/JsonDeserializer; signature "Lcom/google/gson/JsonDeserializer<*>;"

.field private final 'exactType' Lcom/google/gson/reflect/TypeToken; signature "Lcom/google/gson/reflect/TypeToken<*>;"

.field private final 'hierarchyType' Ljava/lang/Class; signature "Ljava/lang/Class<*>;"

.field private final 'matchRawType' Z

.field private final 'serializer' Lcom/google/gson/JsonSerializer; signature "Lcom/google/gson/JsonSerializer<*>;"

.method private <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
.signature "(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken<*>;ZLjava/lang/Class<*>;)V"
aload 0
invokespecial java/lang/Object/<init>()V
aload 1
instanceof com/google/gson/JsonSerializer
ifeq L0
aload 1
checkcast com/google/gson/JsonSerializer
astore 6
L1:
aload 0
aload 6
putfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/serializer Lcom/google/gson/JsonSerializer;
aload 1
instanceof com/google/gson/JsonDeserializer
ifeq L2
aload 1
checkcast com/google/gson/JsonDeserializer
astore 1
L3:
aload 0
aload 1
putfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/deserializer Lcom/google/gson/JsonDeserializer;
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/serializer Lcom/google/gson/JsonSerializer;
ifnonnull L4
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/deserializer Lcom/google/gson/JsonDeserializer;
ifnull L5
L4:
iconst_1
istore 5
L6:
iload 5
invokestatic com/google/gson/internal/$Gson$Preconditions/checkArgument(Z)V
aload 0
aload 2
putfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/exactType Lcom/google/gson/reflect/TypeToken;
aload 0
iload 3
putfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/matchRawType Z
aload 0
aload 4
putfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/hierarchyType Ljava/lang/Class;
return
L0:
aconst_null
astore 6
goto L1
L2:
aconst_null
astore 1
goto L3
L5:
iconst_0
istore 5
goto L6
.limit locals 7
.limit stack 2
.end method

.method synthetic <init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/google/gson/TreeTypeAdapter$1;)V
aload 0
aload 1
aload 2
iload 3
aload 4
invokespecial com/google/gson/TreeTypeAdapter$SingleTypeFactory/<init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V
return
.limit locals 6
.limit stack 5
.end method

.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.signature "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;"
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/exactType Lcom/google/gson/reflect/TypeToken;
ifnull L0
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/exactType Lcom/google/gson/reflect/TypeToken;
aload 2
invokevirtual com/google/gson/reflect/TypeToken/equals(Ljava/lang/Object;)Z
ifne L1
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/matchRawType Z
ifeq L2
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/exactType Lcom/google/gson/reflect/TypeToken;
invokevirtual com/google/gson/reflect/TypeToken/getType()Ljava/lang/reflect/Type;
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
if_acmpne L2
L1:
iconst_1
istore 3
L3:
iload 3
ifeq L4
new com/google/gson/TreeTypeAdapter
dup
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/serializer Lcom/google/gson/JsonSerializer;
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/deserializer Lcom/google/gson/JsonDeserializer;
aload 1
aload 2
aload 0
aconst_null
invokespecial com/google/gson/TreeTypeAdapter/<init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/TreeTypeAdapter$1;)V
areturn
L2:
iconst_0
istore 3
goto L3
L0:
aload 0
getfield com/google/gson/TreeTypeAdapter$SingleTypeFactory/hierarchyType Ljava/lang/Class;
aload 2
invokevirtual com/google/gson/reflect/TypeToken/getRawType()Ljava/lang/Class;
invokevirtual java/lang/Class/isAssignableFrom(Ljava/lang/Class;)Z
istore 3
goto L3
L4:
aconst_null
areturn
.limit locals 4
.limit stack 8
.end method
