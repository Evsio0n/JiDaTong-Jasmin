.bytecode 50.0
.class public final synchronized com/alipay/sdk/auth/h
.super java/lang/Object

.field private static final 'a' Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final 'b' I = 65


.field private static 'c' Lcom/alipay/sdk/widget/a;

.field private static 'd' Ljava/lang/String;

.method static <clinit>()V
aconst_null
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
aconst_null
putstatic com/alipay/sdk/auth/h/d Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic a()Lcom/alipay/sdk/widget/a;
getstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
areturn
.limit locals 0
.limit stack 1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
aload 0
putstatic com/alipay/sdk/auth/h/d Ljava/lang/String;
aload 0
areturn
.limit locals 1
.limit stack 1
.end method

.method public static a(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.catch java/lang/Exception from L0 to L1 using L2
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
astore 2
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
pop
aload 2
aload 0
invokevirtual com/alipay/sdk/sys/b/a(Landroid/content/Context;)V
aload 0
invokestatic com/alipay/sdk/auth/h/a(Landroid/content/Context;)Z
ifeq L3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "alipayauth://platformapi/startapp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "?appId=20000122"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&approveType=005"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&scope=kuaijie"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&productId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getProductId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&thirdpartyId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getAppId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&redirectUri="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
return
L3:
aload 0
ifnull L1
L0:
aload 0
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
new com/alipay/sdk/widget/a
dup
aload 0
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
astore 2
aload 2
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
aload 2
invokevirtual com/alipay/sdk/widget/a/a()V
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "app_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getAppId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&partner="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getPid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&scope=kuaijie"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&login_goal=auth"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&redirect_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&view=wap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&prod_code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getProductId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new java/lang/Thread
dup
new com/alipay/sdk/auth/i
dup
aload 0
aload 2
aload 1
invokespecial com/alipay/sdk/auth/i/<init>(Landroid/app/Activity;Ljava/lang/StringBuilder;Lcom/alipay/sdk/auth/APAuthInfo;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
L2:
astore 2
aconst_null
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
goto L1
.limit locals 3
.limit stack 7
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
L0:
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
aload 0
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 0
return
.limit locals 3
.limit stack 3
.end method

.method private static a(Landroid/content/Context;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.eg.android.AlipayGphone"
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnonnull L3
iconst_0
ireturn
L3:
aload 0
getfield android/content/pm/PackageInfo/versionCode I
istore 1
L4:
iload 1
bipush 65
if_icmplt L5
iconst_1
ireturn
L2:
astore 0
L5:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method static synthetic b()Lcom/alipay/sdk/widget/a;
aconst_null
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
aconst_null
areturn
.limit locals 0
.limit stack 1
.end method

.method private static b(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "alipayauth://platformapi/startapp"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "?appId=20000122"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&approveType=005"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&scope=kuaijie"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&productId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getProductId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&thirdpartyId="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getAppId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&redirectUri="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic c()Ljava/lang/String;
getstatic com/alipay/sdk/auth/h/d Ljava/lang/String;
areturn
.limit locals 0
.limit stack 1
.end method

.method private static c(Landroid/app/Activity;Lcom/alipay/sdk/auth/APAuthInfo;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
ifnull L1
L0:
aload 0
invokevirtual android/app/Activity/isFinishing()Z
ifne L1
new com/alipay/sdk/widget/a
dup
aload 0
ldc "\u6b63\u5728\u52a0\u8f7d"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
astore 2
aload 2
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
aload 2
invokevirtual com/alipay/sdk/widget/a/a()V
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
ldc "app_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getAppId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&partner="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getPid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&scope=kuaijie"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&login_goal=auth"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&redirect_url="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&view=wap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ldc "&prod_code="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
aload 1
invokevirtual com/alipay/sdk/auth/APAuthInfo/getProductId()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new java/lang/Thread
dup
new com/alipay/sdk/auth/i
dup
aload 0
aload 2
aload 1
invokespecial com/alipay/sdk/auth/i/<init>(Landroid/app/Activity;Ljava/lang/StringBuilder;Lcom/alipay/sdk/auth/APAuthInfo;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
L2:
astore 2
aconst_null
putstatic com/alipay/sdk/auth/h/c Lcom/alipay/sdk/widget/a;
goto L1
.limit locals 3
.limit stack 7
.end method
