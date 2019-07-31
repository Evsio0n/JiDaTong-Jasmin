.bytecode 50.0
.class public final synchronized com/google/gson/JsonObject
.super com/google/gson/JsonElement

.field private final 'members' Lcom/google/gson/internal/LinkedHashTreeMap; signature "Lcom/google/gson/internal/LinkedHashTreeMap<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"

.method public <init>()V
aload 0
invokespecial com/google/gson/JsonElement/<init>()V
aload 0
new com/google/gson/internal/LinkedHashTreeMap
dup
invokespecial com/google/gson/internal/LinkedHashTreeMap/<init>()V
putfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
return
.limit locals 1
.limit stack 3
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
aload 1
ifnonnull L0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
areturn
L0:
new com/google/gson/JsonPrimitive
dup
aload 1
invokespecial com/google/gson/JsonPrimitive/<init>(Ljava/lang/Object;)V
areturn
.limit locals 2
.limit stack 3
.end method

.method public add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
aload 2
astore 3
aload 2
ifnonnull L0
getstatic com/google/gson/JsonNull/INSTANCE Lcom/google/gson/JsonNull;
astore 3
L0:
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
aload 3
invokevirtual com/google/gson/internal/LinkedHashTreeMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
return
.limit locals 4
.limit stack 3
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
aload 0
aload 1
aload 0
aload 2
invokespecial com/google/gson/JsonObject/createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
return
.limit locals 3
.limit stack 4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
aload 0
aload 1
aload 0
aload 2
invokespecial com/google/gson/JsonObject/createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
return
.limit locals 3
.limit stack 4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
aload 0
aload 1
aload 0
aload 2
invokespecial com/google/gson/JsonObject/createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
return
.limit locals 3
.limit stack 4
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
aload 0
aload 1
aload 0
aload 2
invokespecial com/google/gson/JsonObject/createJsonElement(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
return
.limit locals 3
.limit stack 4
.end method

.method volatile synthetic deepCopy()Lcom/google/gson/JsonElement;
aload 0
invokevirtual com/google/gson/JsonObject/deepCopy()Lcom/google/gson/JsonObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method deepCopy()Lcom/google/gson/JsonObject;
new com/google/gson/JsonObject
dup
invokespecial com/google/gson/JsonObject/<init>()V
astore 1
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/entrySet()Ljava/util/Set;
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
checkcast java/lang/String
aload 3
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast com/google/gson/JsonElement
invokevirtual com/google/gson/JsonElement/deepCopy()Lcom/google/gson/JsonElement;
invokevirtual com/google/gson/JsonObject/add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
goto L0
L1:
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public entrySet()Ljava/util/Set;
.signature "()Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/entrySet()Ljava/util/Set;
areturn
.limit locals 1
.limit stack 1
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
aload 0
if_acmpeq L0
aload 1
instanceof com/google/gson/JsonObject
ifeq L1
aload 1
checkcast com/google/gson/JsonObject
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/google/gson/JsonElement
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/google/gson/JsonArray
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/google/gson/JsonObject
areturn
.limit locals 2
.limit stack 2
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/google/gson/JsonPrimitive
areturn
.limit locals 2
.limit stack 2
.end method

.method public has(Ljava/lang/String;)Z
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/containsKey(Ljava/lang/Object;)Z
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
invokevirtual com/google/gson/internal/LinkedHashTreeMap/hashCode()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
aload 0
getfield com/google/gson/JsonObject/members Lcom/google/gson/internal/LinkedHashTreeMap;
aload 1
invokevirtual com/google/gson/internal/LinkedHashTreeMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/google/gson/JsonElement
areturn
.limit locals 2
.limit stack 2
.end method
