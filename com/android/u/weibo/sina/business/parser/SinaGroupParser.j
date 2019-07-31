.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/SinaGroupParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/sina/business/bean/SinaGroup;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/SinaGroup;
.throws org/json/JSONException
new com/android/u/weibo/sina/business/bean/SinaGroup
dup
invokespecial com/android/u/weibo/sina/business/bean/SinaGroup/<init>()V
astore 2
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/getLong(Ljava/lang/String;)J
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setId(J)V
aload 2
aload 1
ldc "idstr"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setIdString(Ljava/lang/String;)V
aload 2
aload 1
ldc "name"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setName(Ljava/lang/String;)V
aload 2
aload 1
ldc "mode"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setMode(Ljava/lang/String;)V
aload 2
aload 1
ldc "profile_image_url"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setProfileImgUrl(Ljava/lang/String;)V
aload 2
aload 1
ldc "description"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setDescription(Ljava/lang/String;)V
aload 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setCreateString(Ljava/lang/String;)V
aload 2
aload 1
ldc "visible"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setVisible(I)V
aload 2
aload 1
ldc "like_count"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setLikeCount(I)V
aload 2
aload 1
ldc "member_count"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setMemberCount(I)V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 1
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
astore 3
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
astore 1
L1:
aload 2
aload 3
aload 1
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroup/setUser(Lcom/product/android/commonInterface/weibo/WbUserInfo;)V
aload 2
areturn
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/SinaGroup;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/sina/business/bean/SinaGroup;)Lorg/json/JSONObject;
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
checkcast com/android/u/weibo/sina/business/bean/SinaGroup
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupParser/toJSONObject(Lcom/android/u/weibo/sina/business/bean/SinaGroup;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
