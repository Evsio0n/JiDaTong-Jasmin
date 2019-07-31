.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/ApiRateLimitParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
.throws org/json/JSONException
new com/android/u/weibo/sina/business/bean/ApiRateLimit
dup
invokespecial com/android/u/weibo/sina/business/bean/ApiRateLimit/<init>()V
astore 2
aload 2
aload 1
ldc "limit"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimit(I)V
aload 2
aload 1
ldc "limit_time_unit"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimitTimeUnit(Ljava/lang/String;)V
aload 2
aload 1
ldc "api"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setName(Ljava/lang/String;)V
aload 2
aload 1
ldc "remaining_hits"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemain(I)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/ApiRateLimitParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/sina/business/bean/ApiRateLimit
invokevirtual com/android/u/weibo/sina/business/parser/ApiRateLimitParser/toJSONObject(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
