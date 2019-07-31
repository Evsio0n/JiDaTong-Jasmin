.bytecode 50.0
.class public synchronized com/nd/rj/common/microblogging/SNSUserInfo
.super java/lang/Object

.field private 'mStrHeadUrl' Ljava/lang/String;

.field private 'mStrNick' Ljava/lang/String;

.field private 'mStrUrl' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getUserHeadUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSUserInfo/mStrHeadUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserNick()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSUserInfo/mStrNick Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUserUrl()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/microblogging/SNSUserInfo/mStrUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method setJsonString(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 1
invokestatic com/nd/rj/common/microblogging/help/StrFun/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
ifnull L1
L0:
aload 0
aload 1
ldc "url"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrUrl Ljava/lang/String;
aload 0
aload 1
ldc "nick"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrNick Ljava/lang/String;
aload 0
aload 1
ldc "head"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrHeadUrl Ljava/lang/String;
L1:
return
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
return
.limit locals 2
.limit stack 3
.end method

.method public setUserHeadUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrHeadUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserNick(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrNick Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUserUrl(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/rj/common/microblogging/SNSUserInfo/mStrUrl Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
