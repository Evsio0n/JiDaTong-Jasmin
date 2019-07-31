.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/parser/json/ErrMsgParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/nd/teamfile/sdk/type/ErrMsg;>;"

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
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/nd/teamfile/sdk/type/ErrMsg;
.throws org/json/JSONException
new com/nd/teamfile/sdk/type/ErrMsg
dup
invokespecial com/nd/teamfile/sdk/type/ErrMsg/<init>()V
astore 2
aload 2
aload 1
ldc "msg"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/teamfile/sdk/type/ErrMsg/setMsg(Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/nd/teamfile/sdk/type/ErrMsg
invokevirtual com/nd/teamfile/sdk/parser/json/ErrMsgParser/toJSONObject(Lcom/nd/teamfile/sdk/type/ErrMsg;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/nd/teamfile/sdk/type/ErrMsg;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
