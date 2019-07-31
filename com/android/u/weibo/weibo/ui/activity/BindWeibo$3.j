.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/BindWeibo$3
.super com/common/android/utils/task/progressTask/ProgressTask
.enclosing method com/android/u/weibo/weibo/ui/activity/BindWeibo/commitToServer()V
.inner class inner com/android/u/weibo/weibo/ui/activity/BindWeibo$3

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;

.field 'token' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.method <init>(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
new com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx
dup
invokespecial com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/<init>()V
putfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/finish()V
return
.limit locals 2
.limit stack 1
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setToken(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setSinaUid(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getExpireTime()J
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setExpiresTime(J)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getNickName()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setNickName(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifeq L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getRefreshToken()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/setRefreshToken(Ljava/lang/String;)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/isSessionValid()Z
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/controller/Manager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/Manager;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokestatic com/android/u/weibo/weibo/ui/activity/BindWeibo/access$600(Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;)Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;
invokevirtual com/android/u/weibo/weibo/utils/SSOBindWeibo/getWeiboUID()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
invokevirtual com/android/u/weibo/weibo/controller/Manager/setSinaUid(Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;J)Z
ifeq L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/token Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/setOauth2AccessToken(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)V
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L1:
iconst_1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 4
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo$3/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
iconst_m1
aload 1
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/BindWeibo$3/this$0 Lcom/android/u/weibo/weibo/ui/activity/BindWeibo;
invokevirtual com/android/u/weibo/weibo/ui/activity/BindWeibo/finish()V
return
.limit locals 2
.limit stack 3
.end method
