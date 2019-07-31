.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/RateLimitStatusParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;
.throws org/json/JSONException
new com/android/u/weibo/sina/business/bean/RateLimitStatus
dup
invokespecial com/android/u/weibo/sina/business/bean/RateLimitStatus/<init>()V
astore 6
aload 1
ldc "reset_time_in_seconds"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
lstore 4
aload 1
ldc "reset_time"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 1
ldc "api_rate_limits"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
new com/android/u/weibo/sina/business/parser/ApiRateLimitParser
dup
invokespecial com/android/u/weibo/sina/business/parser/ApiRateLimitParser/<init>()V
astore 9
iconst_0
istore 2
aload 8
invokevirtual org/json/JSONArray/length()I
istore 3
L0:
iload 2
iload 3
if_icmpge L1
aload 9
aload 8
iload 2
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/sina/business/parser/ApiRateLimitParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;
astore 10
aload 10
lload 4
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemainSecond(J)V
aload 10
aload 7
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setExceedTime(Ljava/lang/String;)V
aload 10
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mName Ljava/lang/String;
ldc "/statuses/update"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 6
aload 10
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setUpdate(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
L3:
iload 2
iconst_1
iadd
istore 2
goto L0
L2:
aload 10
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mName Ljava/lang/String;
ldc "/comments/create"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L4
aload 6
aload 10
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setComment(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
goto L3
L4:
aload 10
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mName Ljava/lang/String;
ldc "/direct_messages/new"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
aload 6
aload 10
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setDirectMessage(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
goto L3
L5:
aload 10
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mName Ljava/lang/String;
ldc "/friendships/create"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 10
getfield com/android/u/weibo/sina/business/bean/ApiRateLimit/mLimitTimeUnit Ljava/lang/String;
ldc "DAYS"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L6
aload 6
aload 10
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setFriendDay(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
goto L3
L6:
aload 6
aload 10
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setFriendHour(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
goto L3
L1:
new com/android/u/weibo/sina/business/bean/ApiRateLimit
dup
invokespecial com/android/u/weibo/sina/business/bean/ApiRateLimit/<init>()V
astore 8
aload 8
ldc "ipHit"
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setName(Ljava/lang/String;)V
aload 8
aload 1
ldc "ip_limit"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimit(I)V
aload 8
ldc "HOURS"
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimitTimeUnit(Ljava/lang/String;)V
aload 8
lload 4
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemainSecond(J)V
aload 8
aload 1
ldc "remaining_ip_hits"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemain(I)V
aload 8
aload 7
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setExceedTime(Ljava/lang/String;)V
new com/android/u/weibo/sina/business/bean/ApiRateLimit
dup
invokespecial com/android/u/weibo/sina/business/bean/ApiRateLimit/<init>()V
astore 9
aload 9
ldc "userHit"
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setName(Ljava/lang/String;)V
aload 9
aload 1
ldc "user_limit"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimit(I)V
aload 9
ldc "HOURS"
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setLimitTimeUnit(Ljava/lang/String;)V
aload 9
lload 4
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemainSecond(J)V
aload 9
aload 1
ldc "remaining_user_hits"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setRemain(I)V
aload 9
aload 7
invokevirtual com/android/u/weibo/sina/business/bean/ApiRateLimit/setExceedTime(Ljava/lang/String;)V
aload 6
aload 8
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setIpHit(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
aload 6
aload 9
invokevirtual com/android/u/weibo/sina/business/bean/RateLimitStatus/setUserHit(Lcom/android/u/weibo/sina/business/bean/ApiRateLimit;)V
aload 6
areturn
.limit locals 11
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/RateLimitStatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)Lorg/json/JSONObject;
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
checkcast com/android/u/weibo/sina/business/bean/RateLimitStatus
invokevirtual com/android/u/weibo/sina/business/parser/RateLimitStatusParser/toJSONObject(Lcom/android/u/weibo/sina/business/bean/RateLimitStatus;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
