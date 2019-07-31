.bytecode 50.0
.class public synchronized com/weibo/sdk/android/Oauth2AccessToken
.super java/lang/Object

.field private 'mAccessToken' Ljava/lang/String;

.field private 'mExpiresTime' J

.field private 'mRefreshToken' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mRefreshToken Ljava/lang/String;
aload 0
lconst_0
putfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;)V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mRefreshToken Ljava/lang/String;
aload 0
lconst_0
putfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
aload 1
ifnull L1
aload 1
ldc "{"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
iflt L1
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
aload 1
ldc "access_token"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setToken(Ljava/lang/String;)V
aload 0
aload 1
ldc "expires_in"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setExpiresIn(Ljava/lang/String;)V
aload 0
aload 1
ldc "refresh_token"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setRefreshToken(Ljava/lang/String;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
aload 0
ldc ""
putfield com/weibo/sdk/android/Oauth2AccessToken/mRefreshToken Ljava/lang/String;
aload 0
lconst_0
putfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
aload 0
aload 1
putfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
aload 0
invokestatic java/lang/System/currentTimeMillis()J
aload 2
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
ladd
putfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
return
.limit locals 3
.limit stack 7
.end method

.method public getExpiresTime()J
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getRefreshToken()Ljava/lang/String;
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mRefreshToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getToken()Ljava/lang/String;
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isSessionValid()Z
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
lconst_0
lcmp
ifeq L1
invokestatic java/lang/System/currentTimeMillis()J
aload 0
getfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
lcmp
ifge L0
L1:
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 4
.end method

.method public setExpiresIn(Ljava/lang/String;)V
aload 1
ifnull L0
aload 1
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
invokestatic java/lang/System/currentTimeMillis()J
aload 1
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
ldc2_w 1000L
lmul
ladd
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setExpiresTime(J)V
L0:
return
.limit locals 2
.limit stack 7
.end method

.method public setExpiresTime(J)V
aload 0
lload 1
putfield com/weibo/sdk/android/Oauth2AccessToken/mExpiresTime J
return
.limit locals 3
.limit stack 3
.end method

.method public setRefreshToken(Ljava/lang/String;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Oauth2AccessToken/mRefreshToken Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setToken(Ljava/lang/String;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Oauth2AccessToken/mAccessToken Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
