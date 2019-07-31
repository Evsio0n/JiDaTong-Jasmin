.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx
.super com/weibo/sdk/android/Oauth2AccessToken
.implements com/common/android/utils/parser/BaseType

.field public 'mnickName' Ljava/lang/String;

.field public 'msinaUid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/weibo/sdk/android/Oauth2AccessToken/<init>()V
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/msinaUid Ljava/lang/String;
aload 0
ldc ""
putfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/mnickName Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getSinaUid()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/msinaUid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setNickName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/mnickName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSinaUid(Ljava/lang/String;)V
aload 0
aload 1
putfield com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/msinaUid Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
