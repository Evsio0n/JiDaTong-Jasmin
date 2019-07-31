.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/SSOBindWeibo
.super java/lang/Object
.inner class AuthDialogListener inner com/android/u/weibo/weibo/utils/SSOBindWeibo$AuthDialogListener outer com/android/u/weibo/weibo/utils/SSOBindWeibo
.inner class inner com/android/u/weibo/weibo/utils/SSOBindWeibo$AuthDialogListener$1

.field private static final 'SCOPE' Ljava/lang/String; = "friendships_groups_read,friendships_groups_write"

.field private static final 'TAG' Ljava/lang/String; = "FirstLoginOptionData"

.field public static 'm_accessToken' Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private final 'AUTH_RIDRECT_URL' Ljava/lang/String;

.field private 'mSsoHandler' Lcom/weibo/sdk/android/sso/SsoHandler;

.field private 'm_context' Landroid/content/Context;

.field private 'm_handler' Landroid/os/Handler;

.field private 'm_lExpireTime' J

.field private 'm_strAvatarUrl' Ljava/lang/String;

.field private 'm_strExpireIn' Ljava/lang/String;

.field private 'm_strNickName' Ljava/lang/String;

.field private 'm_strRefreshToken' Ljava/lang/String;

.field private 'm_strWeiboToken' Ljava/lang/String;

.field private 'm_strWeiboUID' Ljava/lang/String;

.method public <init>(Landroid/content/Context;Landroid/os/Handler;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "http://www.sina.com"
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/AUTH_RIDRECT_URL Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_context Landroid/content/Context;
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_handler Landroid/os/Handler;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboToken Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strExpireIn Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$102(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strExpireIn Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboUID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboUID Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$302(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strRefreshToken Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$400(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)Landroid/content/Context;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)Landroid/os/Handler;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_handler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;J)J
aload 0
lload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_lExpireTime J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$702(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strNickName Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$802(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strAvatarUrl Ljava/lang/String;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public beginSSOBind()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
getstatic com/product/android/business/config/Configuration/WEIBO_SINA_API_KEY Ljava/lang/String;
ldc "http://www.sina.com"
ldc "friendships_groups_read,friendships_groups_write"
invokestatic com/weibo/sdk/android/Weibo/getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;
astore 1
aload 0
new com/weibo/sdk/android/sso/SsoHandler
dup
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_context Landroid/content/Context;
checkcast android/app/Activity
aload 1
invokespecial com/weibo/sdk/android/sso/SsoHandler/<init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V
putfield com/android/u/weibo/weibo/utils/SSOBindWeibo/mSsoHandler Lcom/weibo/sdk/android/sso/SsoHandler;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/mSsoHandler Lcom/weibo/sdk/android/sso/SsoHandler;
new com/android/u/weibo/weibo/utils/SSOBindWeibo$AuthDialogListener
dup
aload 0
invokespecial com/android/u/weibo/weibo/utils/SSOBindWeibo$AuthDialogListener/<init>(Lcom/android/u/weibo/weibo/utils/SSOBindWeibo;)V
invokevirtual com/weibo/sdk/android/sso/SsoHandler/authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method public getAvatarUrl()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strAvatarUrl Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getExpireTime()J
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_lExpireTime J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getNickName()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strNickName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRefreshToken()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strRefreshToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWeiboToken()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboToken Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getWeiboUID()Ljava/lang/String;
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/m_strWeiboUID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public myOnActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/mSsoHandler Lcom/weibo/sdk/android/sso/SsoHandler;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/utils/SSOBindWeibo/mSsoHandler Lcom/weibo/sdk/android/sso/SsoHandler;
iload 1
iload 2
aload 3
invokevirtual com/weibo/sdk/android/sso/SsoHandler/authorizeCallBack(IILandroid/content/Intent;)V
L0:
return
.limit locals 4
.limit stack 4
.end method
