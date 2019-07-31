.bytecode 50.0
.class synchronized com/weibo/sdk/android/Weibo$3
.super java/lang/Object
.implements com/weibo/sdk/android/net/RequestListener
.enclosing method com/weibo/sdk/android/Weibo/FtchAccessToken(Ljava/lang/String;)V
.inner class inner com/weibo/sdk/android/Weibo$3

.field final synthetic 'this$0' Lcom/weibo/sdk/android/Weibo;

.method <init>(Lcom/weibo/sdk/android/Weibo;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onComplete(Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
ifnonnull L0
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
new com/weibo/sdk/android/Oauth2AccessToken
dup
aload 1
invokespecial com/weibo/sdk/android/Oauth2AccessToken/<init>(Ljava/lang/String;)V
invokestatic com/weibo/sdk/android/Weibo/access$3(Lcom/weibo/sdk/android/Weibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)V
L0:
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/isSessionValid()Z
ifeq L1
ldc "Weibo-authorize"
new java/lang/StringBuilder
dup
ldc "Login Success! access_token="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getToken()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " expires="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getExpiresTime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc " refresh_token="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getRefreshToken()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
invokestatic com/weibo/sdk/android/Weibo/access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
invokestatic com/weibo/sdk/android/util/Utility/formBundle(Lcom/weibo/sdk/android/Oauth2AccessToken;)Landroid/os/Bundle;
astore 1
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
sipush 1000
aload 1
aconst_null
invokestatic com/weibo/sdk/android/Weibo/access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
return
L1:
ldc "Weibo-authorize"
ldc "Failed to receive access token"
invokestatic com/sina/weibo/sdk/log/Log/d(Ljava/lang/String;Ljava/lang/String;)V
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
sipush 1001
aconst_null
aconst_null
invokestatic com/weibo/sdk/android/Weibo/access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onComplete4binary(Ljava/io/ByteArrayOutputStream;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onError(Lcom/weibo/sdk/android/WeiboException;)V
aload 1
invokevirtual com/weibo/sdk/android/WeiboException/getMessage()Ljava/lang/String;
invokestatic com/weibo/sdk/android/util/Utility/errorSAX(Ljava/lang/String;)Landroid/os/Bundle;
astore 1
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
sipush 1001
aload 1
aconst_null
invokestatic com/weibo/sdk/android/Weibo/access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
return
.limit locals 2
.limit stack 4
.end method

.method public onIOException(Ljava/io/IOException;)V
aload 0
getfield com/weibo/sdk/android/Weibo$3/this$0 Lcom/weibo/sdk/android/Weibo;
sipush 1001
aconst_null
aload 1
invokestatic com/weibo/sdk/android/Weibo/access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
return
.limit locals 2
.limit stack 4
.end method
