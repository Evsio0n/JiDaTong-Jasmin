.bytecode 50.0
.class public synchronized com/product/android/commonInterface/contact/parser/RankInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/product/android/commonInterface/contact/RankInfo;>;"

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
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/contact/RankInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/contact/RankInfo;
.throws org/json/JSONException
new com/product/android/commonInterface/contact/RankInfo
dup
invokespecial com/product/android/commonInterface/contact/RankInfo/<init>()V
astore 2
aload 2
aload 1
ldc "rank"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/RankInfo/setRanking(I)V
aload 2
aload 1
ldc "total"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/product/android/commonInterface/contact/RankInfo/setTotal(I)V
aload 2
aload 1
ldc "uid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/product/android/commonInterface/contact/RankInfo/setUid(J)V
aload 2
aload 1
ldc "nickname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/contact/RankInfo/userName Ljava/lang/String;
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/product/android/commonInterface/contact/RankInfo
invokevirtual com/product/android/commonInterface/contact/parser/RankInfoParser/toJSONObject(Lcom/product/android/commonInterface/contact/RankInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/product/android/commonInterface/contact/RankInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method
