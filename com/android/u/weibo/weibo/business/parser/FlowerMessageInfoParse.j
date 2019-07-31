.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;>;"

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
invokevirtual com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
.throws org/json/JSONException
new com/product/android/commonInterface/weibo/FlowerMessageInfo
dup
invokespecial com/product/android/commonInterface/weibo/FlowerMessageInfo/<init>()V
astore 2
aload 1
ldc "voiceurl"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L0
aload 2
aload 1
ldc "voiceurl"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgVoice(Ljava/lang/String;)V
aload 2
iconst_1
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setContentType(I)V
L0:
aload 1
ldc "message"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L1
aload 2
aload 1
ldc "message"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setMsgText(Ljava/lang/String;)V
aload 2
iconst_0
invokevirtual com/product/android/commonInterface/weibo/FlowerMessageInfo/setContentType(I)V
L1:
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/product/android/commonInterface/weibo/FlowerMessageInfo
invokevirtual com/android/u/weibo/weibo/business/parser/FlowerMessageInfoParse/toJSONObject(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
