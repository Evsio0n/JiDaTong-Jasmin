.bytecode 50.0
.class public synchronized com/weibo/sdk/android/Weibo
.super java/lang/Object
.inner class inner com/weibo/sdk/android/Weibo$1
.inner class inner com/weibo/sdk/android/Weibo$2
.inner class inner com/weibo/sdk/android/Weibo$3

.field private static final 'AUTH_CODE' I = 0


.field private static final 'AUTH_ONCMPLT' I = 1000


.field private static final 'AUTH_ONRR' I = 1001


.field private static final 'AUTH_TOKEN' I = 1


.field private static final 'KEY_EXPIRES' Ljava/lang/String; = "expires_in"

.field private static final 'KEY_REFRESHTOKEN' Ljava/lang/String; = "refresh_token"

.field private static final 'KEY_TOKEN' Ljava/lang/String; = "access_token"

.field private static final 'SCOPE_DIRECT_MESSAGES_READ' Ljava/lang/String; = "direct_messages_read"

.field private static final 'SCOPE_DIRECT_MESSAGES_WRITE' Ljava/lang/String; = "direct_messages_write"

.field private static final 'SCOPE_EMAIL' Ljava/lang/String; = "email"

.field private static final 'SCOPE_FOLLOW_APP_OFFICIAL_MICROBLOG' Ljava/lang/String; = "follow_app_official_microblog"

.field private static final 'SCOPE_FRIENDSHIPS_GROUPS_READ' Ljava/lang/String; = "friendships_groups_read"

.field private static final 'SCOPE_FRIENDSHIPS_GROUPS_WRITE' Ljava/lang/String; = "friendships_groups_write"

.field private static final 'SCOPE_STATUSES_TO_ME_READ' Ljava/lang/String; = "statuses_to_me_read"

.field private static 'URL_OAUTH2_ACCESS_AUTHORIZE' Ljava/lang/String;

.field private static 'app_key' Ljava/lang/String;

.field private static 'app_secret' Ljava/lang/String;

.field private static 'isWifi' Z

.field private static 'mPackagename' Ljava/lang/String;

.field private static 'mWeiboInstance' Lcom/weibo/sdk/android/Weibo;

.field private static 'mkeyHash' Ljava/lang/String;

.field private static 'redirecturl' Ljava/lang/String;

.field private static 'scope' Ljava/lang/String;

.field private 'accessToken' Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private 'ct' Landroid/content/Context;

.field private 'mWeiboHandler' Landroid/os/Handler;

.field private 'mlistener' Lcom/weibo/sdk/android/WeiboAuthListener;

.method static <clinit>()V
ldc "https://open.weibo.cn/oauth2"
putstatic com/weibo/sdk/android/Weibo/URL_OAUTH2_ACCESS_AUTHORIZE Ljava/lang/String;
aconst_null
putstatic com/weibo/sdk/android/Weibo/mWeiboInstance Lcom/weibo/sdk/android/Weibo;
ldc ""
putstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
ldc ""
putstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
ldc ""
putstatic com/weibo/sdk/android/Weibo/scope Ljava/lang/String;
ldc ""
putstatic com/weibo/sdk/android/Weibo/app_secret Ljava/lang/String;
iconst_0
putstatic com/weibo/sdk/android/Weibo/isWifi Z
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/weibo/sdk/android/Weibo/accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 0
new com/weibo/sdk/android/Weibo$1
dup
aload 0
invokespecial com/weibo/sdk/android/Weibo$1/<init>(Lcom/weibo/sdk/android/Weibo;)V
putfield com/weibo/sdk/android/Weibo/mWeiboHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method private FtchAccessToken(Ljava/lang/String;)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 2
aload 2
ldc "client_id"
getstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "client_secret"
getstatic com/weibo/sdk/android/Weibo/app_secret Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "grant_type"
ldc "authorization_code"
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "code"
aload 1
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "redirect_uri"
getstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
getstatic com/weibo/sdk/android/Weibo/URL_OAUTH2_ACCESS_AUTHORIZE Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/access_token"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 2
ldc "POST"
new com/weibo/sdk/android/Weibo$3
dup
aload 0
invokespecial com/weibo/sdk/android/Weibo$3/<init>(Lcom/weibo/sdk/android/Weibo;)V
invokestatic com/weibo/sdk/android/net/AsyncWeiboRunner/request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 3
.limit stack 6
.end method

.method static synthetic access$0(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/weibo/sdk/android/Weibo/mlistener Lcom/weibo/sdk/android/WeiboAuthListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1(Lcom/weibo/sdk/android/Weibo;Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/weibo/sdk/android/Weibo/FtchAccessToken(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$2(Lcom/weibo/sdk/android/Weibo;)Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 0
getfield com/weibo/sdk/android/Weibo/accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$3(Lcom/weibo/sdk/android/Weibo;Lcom/weibo/sdk/android/Oauth2AccessToken;)V
aload 0
aload 1
putfield com/weibo/sdk/android/Weibo/accessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$4(Lcom/weibo/sdk/android/Weibo;ILandroid/os/Bundle;Ljava/lang/Exception;)V
aload 0
iload 1
aload 2
aload 3
invokespecial com/weibo/sdk/android/Weibo/handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
return
.limit locals 4
.limit stack 4
.end method

.method public static getApp_key()Ljava/lang/String;
getstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;
.catch all from L0 to L1 using L1
.catch all from L2 to L3 using L1
.catch all from L3 to L4 using L1
ldc com/weibo/sdk/android/Weibo
monitorenter
L0:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ior
ifeq L2
new java/lang/RuntimeException
dup
ldc "Parameter is not complete, please fill complete appkey and redirectUrl."
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
L1:
astore 0
ldc com/weibo/sdk/android/Weibo
monitorexit
aload 0
athrow
L2:
getstatic com/weibo/sdk/android/Weibo/mWeiboInstance Lcom/weibo/sdk/android/Weibo;
ifnonnull L3
new com/weibo/sdk/android/Weibo
dup
invokespecial com/weibo/sdk/android/Weibo/<init>()V
putstatic com/weibo/sdk/android/Weibo/mWeiboInstance Lcom/weibo/sdk/android/Weibo;
L3:
aload 0
putstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
aload 1
putstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
aload 2
putstatic com/weibo/sdk/android/Weibo/scope Ljava/lang/String;
getstatic com/weibo/sdk/android/Weibo/mWeiboInstance Lcom/weibo/sdk/android/Weibo;
astore 0
L4:
ldc com/weibo/sdk/android/Weibo
monitorexit
aload 0
areturn
.limit locals 3
.limit stack 3
.end method

.method public static getRedirecturl()Ljava/lang/String;
getstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getScope()Ljava/lang/String;
getstatic com/weibo/sdk/android/Weibo/scope Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method private handleListItemEvent(ILandroid/os/Bundle;Ljava/lang/Exception;)V
invokestatic android/os/Message/obtain()Landroid/os/Message;
astore 4
aload 4
iload 1
putfield android/os/Message/what I
iload 1
tableswitch 1000
L0
L1
default : L2
L2:
aload 0
getfield com/weibo/sdk/android/Weibo/mWeiboHandler Landroid/os/Handler;
aload 4
invokevirtual android/os/Handler/sendMessage(Landroid/os/Message;)Z
pop
return
L0:
aload 2
ifnull L2
aload 4
aload 2
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
goto L2
L1:
aload 3
ifnull L3
aload 4
aload 3
putfield android/os/Message/obj Ljava/lang/Object;
L3:
aload 2
ifnull L2
aload 4
aload 2
invokevirtual android/os/Message/setData(Landroid/os/Bundle;)V
goto L2
.limit locals 5
.limit stack 2
.end method

.method public static isWifi()Z
getstatic com/weibo/sdk/android/Weibo/isWifi Z
ireturn
.limit locals 0
.limit stack 1
.end method

.method public static setWifi(Z)V
iload 0
putstatic com/weibo/sdk/android/Weibo/isWifi Z
return
.limit locals 1
.limit stack 1
.end method

.method private startDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/WeiboAuthListener;)V
aload 2
ldc "client_id"
getstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "response_type"
ldc "code"
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "redirect_uri"
getstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "display"
ldc "mobile"
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "scope"
getstatic com/weibo/sdk/android/Weibo/scope Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "packagename"
getstatic com/weibo/sdk/android/Weibo/mPackagename Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
aload 2
ldc "key_hash"
aload 1
getstatic com/weibo/sdk/android/Weibo/mPackagename Ljava/lang/String;
invokestatic com/weibo/sdk/android/util/Utility/getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/WeiboParameters/add(Ljava/lang/String;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
getstatic com/weibo/sdk/android/Weibo/URL_OAUTH2_ACCESS_AUTHORIZE Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/authorize?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokestatic com/weibo/sdk/android/util/Utility/encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 1
ldc "android.permission.INTERNET"
invokevirtual android/content/Context/checkCallingOrSelfPermission(Ljava/lang/String;)I
ifeq L0
aload 1
ldc "Error"
ldc "Application requires permission to access the Internet"
invokestatic com/weibo/sdk/android/util/Utility/showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return
L0:
new com/weibo/sdk/android/WeiboDialog
dup
aload 1
aload 2
aload 3
invokespecial com/weibo/sdk/android/WeiboDialog/<init>(Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V
invokevirtual com/weibo/sdk/android/WeiboDialog/show()V
return
.limit locals 4
.limit stack 5
.end method

.method public anthorize(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;)V
aload 0
aload 2
putfield com/weibo/sdk/android/Weibo/mlistener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
aload 1
putfield com/weibo/sdk/android/Weibo/ct Landroid/content/Context;
aload 0
getfield com/weibo/sdk/android/Weibo/ct Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
putstatic com/weibo/sdk/android/Weibo/mPackagename Ljava/lang/String;
aload 0
getfield com/weibo/sdk/android/Weibo/ct Landroid/content/Context;
invokestatic com/weibo/sdk/android/util/Utility/isWifi(Landroid/content/Context;)Z
putstatic com/weibo/sdk/android/Weibo/isWifi Z
aload 0
aload 1
aload 2
iconst_0
invokevirtual com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
return
.limit locals 3
.limit stack 4
.end method

.method public setupConsumerConfig(Ljava/lang/String;Ljava/lang/String;)V
aload 1
putstatic com/weibo/sdk/android/Weibo/app_key Ljava/lang/String;
aload 2
putstatic com/weibo/sdk/android/Weibo/redirecturl Ljava/lang/String;
return
.limit locals 3
.limit stack 1
.end method

.method public startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
new com/weibo/sdk/android/WeiboParameters
dup
invokespecial com/weibo/sdk/android/WeiboParameters/<init>()V
astore 4
aload 1
invokestatic android/webkit/CookieSyncManager/createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
pop
aload 0
aload 1
aload 4
new com/weibo/sdk/android/Weibo$2
dup
aload 0
iload 3
aload 2
invokespecial com/weibo/sdk/android/Weibo$2/<init>(Lcom/weibo/sdk/android/Weibo;ILcom/weibo/sdk/android/WeiboAuthListener;)V
invokespecial com/weibo/sdk/android/Weibo/startDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/WeiboAuthListener;)V
return
.limit locals 5
.limit stack 8
.end method
