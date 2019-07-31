.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/parser/json/CapacityParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/nd/teamfile/sdk/type/ServerCapacity;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/nd/teamfile/sdk/parser/json/CapacityParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ServerCapacity;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ServerCapacity;
.throws org/json/JSONException
new com/nd/teamfile/sdk/type/ServerCapacity
dup
invokespecial com/nd/teamfile/sdk/type/ServerCapacity/<init>()V
astore 2
aload 2
aload 1
ldc "capacity"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/setCapacity(J)V
aload 2
aload 1
ldc "usedsize"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/setUsedSize(J)V
aload 2
aload 1
ldc "filenum"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/nd/teamfile/sdk/type/ServerCapacity/setFileCount(I)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/ServerCapacity
invokevirtual com/nd/teamfile/sdk/parser/json/CapacityParser/toJSONObject(Lcom/nd/teamfile/sdk/type/ServerCapacity;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/nd/teamfile/sdk/type/ServerCapacity;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
