.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/AttachParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/Attach;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Attach;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/Attach
dup
invokespecial com/android/u/weibo/weibo/business/bean/Attach/<init>()V
astore 2
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/Attach/id J
aload 2
aload 1
ldc "attach_url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/Attach/attach_url Ljava/lang/String;
aload 2
aload 1
ldc "attach_name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/Attach/attach_name Ljava/lang/String;
aload 2
aload 1
ldc "attach_download"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/android/u/weibo/weibo/business/bean/Attach/attach_download I
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/AttachParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/Attach;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Attach;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 2
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Attach/id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "attach_url"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Attach/attach_url Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "attach_name"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Attach/attach_name Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "attach_size"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Attach/attach_size J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "attach_download"
aload 1
getfield com/android/u/weibo/weibo/business/bean/Attach/attach_download I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/Attach
invokevirtual com/android/u/weibo/weibo/business/parser/AttachParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/Attach;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
