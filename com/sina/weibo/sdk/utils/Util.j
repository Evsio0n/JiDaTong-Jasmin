.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/utils/Util
.super java/lang/Object
.inner class inner com/sina/weibo/sdk/utils/Util$1
.inner class inner com/sina/weibo/sdk/utils/Util$2

.field private static final 'CANCEL_CHINESS' Ljava/lang/String; = "\u4ee5\u540e\u518d\u8bf4"

.field private static final 'CANCEL_ENGLISH' Ljava/lang/String; = "Download Later"

.field private static final 'OK_CHINESS' Ljava/lang/String; = "\u73b0\u5728\u4e0b\u8f7d"

.field private static final 'OK_ENGLISH' Ljava/lang/String; = "Download Now"

.field private static final 'PROMPT_CHINESS' Ljava/lang/String; = "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"

.field private static final 'PROMPT_ENGLISH' Ljava/lang/String; = "Sina Weibo client is not installed, download now?"

.field private static final 'TITLE_CHINESS' Ljava/lang/String; = "\u63d0\u793a"

.field private static final 'TITLE_ENGLISH' Ljava/lang/String; = "Notice"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$0(Landroid/app/Activity;)V
aload 0
invokestatic com/sina/weibo/sdk/utils/Util/downloadWeibo(Landroid/app/Activity;)V
return
.limit locals 1
.limit stack 1
.end method

.method public static createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
ldc "\u63d0\u793a"
astore 5
ldc "\u672a\u5b89\u88c5\u5fae\u535a\u5ba2\u6237\u7aef\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\uff1f"
astore 4
ldc "\u73b0\u5728\u4e0b\u8f7d"
astore 3
ldc "\u4ee5\u540e\u518d\u8bf4"
astore 2
aload 0
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
invokestatic com/sina/weibo/sdk/utils/Util/isChineseLocale(Landroid/content/Context;)Z
ifne L0
ldc "Notice"
astore 5
ldc "Sina Weibo client is not installed, download now?"
astore 4
ldc "Download Now"
astore 3
ldc "Download Later"
astore 2
L0:
new android/app/AlertDialog$Builder
dup
aload 0
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 6
aload 6
aload 4
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 6
aload 5
invokevirtual android/app/AlertDialog$Builder/setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 6
aload 3
new com/sina/weibo/sdk/utils/Util$1
dup
aload 0
invokespecial com/sina/weibo/sdk/utils/Util$1/<init>(Landroid/app/Activity;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 6
aload 2
new com/sina/weibo/sdk/utils/Util$2
dup
aload 1
invokespecial com/sina/weibo/sdk/utils/Util$2/<init>(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 6
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 7
.limit stack 5
.end method

.method private static downloadWeibo(Landroid/app/Activity;)V
.catch java/lang/Exception from L0 to L1 using L2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "android.intent.action.VIEW"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 1
ldc "http://app.sina.cn/appdetail.php?appID=84560"
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
invokevirtual android/content/Intent/setData(Landroid/net/Uri;)Landroid/content/Intent;
pop
L0:
aload 0
aload 1
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 0
return
.limit locals 2
.limit stack 2
.end method

.method public static generateId()Ljava/lang/String;
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
ldc "-"
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)[B
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
bipush 64
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 3
L1:
iconst_0
istore 2
L3:
iload 2
aload 3
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
arraylength
if_icmplt L4
aconst_null
astore 0
L5:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
L4:
aload 3
getfield android/content/pm/PackageInfo/signatures [Landroid/content/pm/Signature;
iload 2
aaload
invokevirtual android/content/pm/Signature/toByteArray()[B
astore 1
aload 1
astore 0
aload 1
ifnonnull L5
iload 2
iconst_1
iadd
istore 2
goto L3
.limit locals 4
.limit stack 3
.end method

.method private static isChineseLocale(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
L0:
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
invokevirtual android/content/res/Resources/getConfiguration()Landroid/content/res/Configuration;
getfield android/content/res/Configuration/locale Ljava/util/Locale;
astore 0
getstatic java/util/Locale/CHINA Ljava/util/Locale;
aload 0
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
ifne L3
getstatic java/util/Locale/CHINESE Ljava/util/Locale;
aload 0
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
ifne L3
getstatic java/util/Locale/SIMPLIFIED_CHINESE Ljava/util/Locale;
aload 0
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
ifne L3
getstatic java/util/Locale/TAIWAN Ljava/util/Locale;
aload 0
invokevirtual java/util/Locale/equals(Ljava/lang/Object;)Z
istore 1
L1:
iload 1
ifeq L4
L3:
iconst_1
ireturn
L2:
astore 0
iconst_1
ireturn
L4:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method
