.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/parser/json/UserParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/nd/teamfile/sdk/type/UserInfo;>;"

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
invokevirtual com/nd/teamfile/sdk/parser/json/UserParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/UserInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/UserInfo;
.throws org/json/JSONException
new com/nd/teamfile/sdk/type/UserInfo
dup
invokespecial com/nd/teamfile/sdk/type/UserInfo/<init>()V
astore 2
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/nd/teamfile/sdk/type/UserInfo/setUid(J)V
aload 2
aload 1
ldc "username"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/UserInfo/setName(Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/UserInfo
invokevirtual com/nd/teamfile/sdk/parser/json/UserParser/toJSONObject(Lcom/nd/teamfile/sdk/type/UserInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/nd/teamfile/sdk/type/UserInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
