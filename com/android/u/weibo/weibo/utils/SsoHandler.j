.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/utils/SsoHandler
.super java/lang/Object
.inner class inner com/android/u/weibo/weibo/utils/SsoHandler$1

.field private static final 'DEFAULT_AUTH_ACTIVITY_CODE' I = 32973


.field private static final 'WEIBO_SIGNATURE' Ljava/lang/String; = "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"

.field private static 'ssoActivityName' Ljava/lang/String;

.field private static 'ssoPackageName' Ljava/lang/String;

.field private 'conn' Landroid/content/ServiceConnection;

.field private 'mAccessToken' Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private 'mAuthActivity' Landroid/app/Activity;

.field private 'mAuthActivityCode' I

.field private 'mAuthDialogListener' Lcom/weibo/sdk/android/WeiboAuthListener;

.field private 'mType' I

.field private 'mWeibo' Lcom/weibo/sdk/android/Weibo;

.method static <clinit>()V
ldc ""
putstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoPackageName Ljava/lang/String;
ldc ""
putstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoActivityName Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/android/u/weibo/weibo/utils/SsoHandler/conn Landroid/content/ServiceConnection;
aload 0
aconst_null
putfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 0
iconst_0
putfield com/android/u/weibo/weibo/utils/SsoHandler/mType I
aload 0
aload 1
putfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/SsoHandler/mWeibo Lcom/weibo/sdk/android/Weibo;
aload 1
invokestatic com/weibo/sdk/android/util/Utility/isWifi(Landroid/content/Context;)Z
invokestatic com/weibo/sdk/android/Weibo/setWifi(Z)V
aload 0
new com/android/u/weibo/weibo/utils/SsoHandler$1
dup
aload 0
invokespecial com/android/u/weibo/weibo/utils/SsoHandler$1/<init>(Lcom/android/u/weibo/weibo/utils/SsoHandler;)V
putfield com/android/u/weibo/weibo/utils/SsoHandler/conn Landroid/content/ServiceConnection;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic access$000(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivity Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/android/u/weibo/weibo/utils/SsoHandler;)I
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/android/u/weibo/weibo/utils/SsoHandler;)Lcom/weibo/sdk/android/Weibo;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mWeibo Lcom/weibo/sdk/android/Weibo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
aload 0
putstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoPackageName Ljava/lang/String;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
aload 0
putstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoActivityName Ljava/lang/String;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/android/u/weibo/weibo/utils/SsoHandler;)I
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivityCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$700(Lcom/android/u/weibo/weibo/utils/SsoHandler;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
aload 0
aload 1
aload 2
aload 3
iload 4
invokespecial com/android/u/weibo/weibo/utils/SsoHandler/startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
ireturn
.limit locals 5
.limit stack 5
.end method

.method private authorize(ILcom/weibo/sdk/android/WeiboAuthListener;)V
aload 0
iload 1
putfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivityCode I
aload 0
aload 2
putfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivity Landroid/app/Activity;
invokespecial com/android/u/weibo/weibo/utils/SsoHandler/bindRemoteSSOService(Landroid/app/Activity;)Z
ifne L0
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mWeibo Lcom/weibo/sdk/android/Weibo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mWeibo Lcom/weibo/sdk/android/Weibo;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mType I
invokevirtual com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
L0:
return
.limit locals 3
.limit stack 4
.end method

.method private bindRemoteSSOService(Landroid/app/Activity;)Z
aload 1
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
new android/content/Intent
dup
ldc "com.sina.weibo.remotessoservice"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/conn Landroid/content/ServiceConnection;
iconst_1
invokevirtual android/content/Context/bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
ireturn
.limit locals 2
.limit stack 4
.end method

.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
iconst_1
istore 5
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 6
aload 6
getstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoPackageName Ljava/lang/String;
getstatic com/android/u/weibo/weibo/utils/SsoHandler/ssoActivityName Ljava/lang/String;
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "appKey"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "redirectUri"
invokestatic com/weibo/sdk/android/Weibo/getRedirecturl()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
arraylength
ifle L3
aload 6
ldc "scope"
ldc ","
aload 3
invokestatic android/text/TextUtils/join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L3:
aload 0
aload 1
aload 6
invokespecial com/android/u/weibo/weibo/utils/SsoHandler/validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
ifne L0
iconst_0
ireturn
L0:
aload 1
aload 6
iload 4
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
L1:
aload 1
invokevirtual android/app/Activity/getApplication()Landroid/app/Application;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/conn Landroid/content/ServiceConnection;
invokevirtual android/app/Application/unbindService(Landroid/content/ServiceConnection;)V
iload 5
ireturn
L2:
astore 2
iconst_0
istore 5
goto L1
.limit locals 7
.limit stack 4
.end method

.method private validateAppSignatureForIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
aload 1
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
aload 2
iconst_0
invokevirtual android/content/pm/PackageManager/resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
astore 2
aload 2
ifnonnull L5
L6:
iconst_0
ireturn
L5:
aload 2
getfield android/content/pm/ResolveInfo/activityInfo Landroid/content/pm/ActivityInfo;
getfield android/content/pm/ActivityInfo/packageName Ljava/lang/String;
astore 2
L0:
aload 1
invokevirtual android/app/Activity/getPackageManager()Landroid/content/pm/PackageManager;
aload 2
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
astore 1
aload 1
arraylength
istore 4
L1:
iconst_0
istore 3
L7:
iload 3
iload 4
if_icmpge L6
L3:
ldc "30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4"
aload 1
iload 3
aaload
invokevirtual android/content/pm/Signature/toCharsString()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 5
L4:
iload 5
ifeq L8
iconst_1
ireturn
L8:
iload 3
iconst_1
iadd
istore 3
goto L7
L2:
astore 1
iconst_0
ireturn
.limit locals 6
.limit stack 3
.end method

.method public authorize(Lcom/weibo/sdk/android/WeiboAuthListener;)V
aload 0
ldc_w 32973
aload 1
invokespecial com/android/u/weibo/weibo/utils/SsoHandler/authorize(ILcom/weibo/sdk/android/WeiboAuthListener;)V
return
.limit locals 2
.limit stack 3
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
iload 1
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivityCode I
if_icmpne L0
iload 2
iconst_m1
if_icmpne L1
aload 3
ldc "error"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
astore 4
aload 5
ifnonnull L2
aload 3
ldc "error_type"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 4
L2:
aload 4
ifnull L3
aload 4
ldc "access_denied"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 4
ldc "OAuthAccessDeniedException"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
ldc "Weibo-authorize"
ldc "Login canceled by user."
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onCancel()V 0
L0:
return
L5:
aload 3
ldc "error_description"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 4
astore 3
aload 5
ifnull L6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L6:
ldc "Weibo-authorize"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Login failed: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboDialogError
dup
aload 3
iload 2
aload 5
invokespecial com/weibo/sdk/android/WeiboDialogError/<init>(Ljava/lang/String;ILjava/lang/String;)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onError(Lcom/weibo/sdk/android/WeiboDialogError;)V 1
return
L3:
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
ifnonnull L7
aload 0
new com/weibo/sdk/android/Oauth2AccessToken
dup
invokespecial com/weibo/sdk/android/Oauth2AccessToken/<init>()V
putfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
L7:
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 3
ldc "access_token"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setToken(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 3
ldc "expires_in"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setExpiresIn(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
aload 3
ldc "refresh_token"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/setRefreshToken(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/isSessionValid()Z
ifeq L8
ldc "Weibo-authorize"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Login Success! access_token="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getToken()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " expires="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getExpiresTime()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "refresh_token="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAccessToken Lcom/weibo/sdk/android/Oauth2AccessToken;
invokevirtual com/weibo/sdk/android/Oauth2AccessToken/getRefreshToken()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onComplete(Landroid/os/Bundle;)V 1
return
L8:
ldc "Weibo-authorize"
ldc "Failed to receive access token by SSO"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mWeibo Lcom/weibo/sdk/android/Weibo;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthActivity Landroid/app/Activity;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mType I
invokevirtual com/weibo/sdk/android/Weibo/startAuthDialog(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;I)V
return
L1:
iload 2
ifne L0
aload 3
ifnull L9
ldc "Weibo-authorize"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Login failed: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
ldc "error"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
new com/weibo/sdk/android/WeiboDialogError
dup
aload 3
ldc "error"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
aload 3
ldc "error_code"
iconst_m1
invokevirtual android/content/Intent/getIntExtra(Ljava/lang/String;I)I
aload 3
ldc "failing_url"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/weibo/sdk/android/WeiboDialogError/<init>(Ljava/lang/String;ILjava/lang/String;)V
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onError(Lcom/weibo/sdk/android/WeiboDialogError;)V 1
return
L9:
ldc "Weibo-authorize"
ldc "Login canceled by user."
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/weibo/utils/SsoHandler/mAuthDialogListener Lcom/weibo/sdk/android/WeiboAuthListener;
invokeinterface com/weibo/sdk/android/WeiboAuthListener/onCancel()V 0
return
.limit locals 6
.limit stack 7
.end method
