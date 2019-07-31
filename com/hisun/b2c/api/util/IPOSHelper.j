.bytecode 50.0
.class public final synchronized com/hisun/b2c/api/util/IPOSHelper
.super java/lang/Object

.field public static final 'IPOS_FULL_PACK_NAME' Ljava/lang/String; = "com.hisun.ipos2"

.field public static final 'IPOS_RELEASE_FILE_NAME' Ljava/lang/String; = "ipos_ii"

.field public static final 'PLAT' Ljava/lang/String; = "3"

.field public static final 'PROGRESS_DIALOG_INIT_CONTENT' Ljava/lang/String; = "\u6b63\u5728\u521d\u59cb\u5316\u5b89\u5168\u652f\u4ed8\u7ec4\u4ef6, \u5982\u679c\u662f\u7b2c\u4e00\u6b21\u4f7f\u7528,\u8be5\u8fc7\u7a0b\u53ef\u80fd\u6bd4\u8f83\u957f,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

.field public static final 'PROGRESS_DIALOG_PAY_CONTENT' Ljava/lang/String; = "\u6b63\u5728\u53d1\u9001\u652f\u4ed8\u8bf7\u6c42,\u8bf7\u7a0d\u4faf..."

.field public static final 'PROGRESS_DIALOG_SSOLOGIN_CONTENT' Ljava/lang/String; = "\u6b63\u5728\u8fdb\u884c\u5355\u70b9\u767b\u5f55,\u8bf7\u8010\u5fc3\u7b49\u5f85..."

.field public static final 'PROGRESS_DIALOG_TITLE' Ljava/lang/String; = "\u63d0\u793a"

.field public static final 'UA' Ljava/lang/String; = "TEMP_UA01"

.field public static final 'XMLHeader' Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>"

.field private static final 'getVer' Ljava/lang/String; = "/OCLIIPS3/702000.dow?plat=3&ua=TEMP_UA01&ver="

.field private static final 'prePtcRequestUrl' Ljava/lang/String; = "http://111.8.12.50/ccaweb/"

.field private static final 'ptcRequestUrl' Ljava/lang/String; = "https://mca.cmpay.com/ccaweb"

.field private static final 'sso' Ljava/lang/String; = "/CCLIIPS1/801201.dor"

.field private static final 'uatRequestUrl' Ljava/lang/String; = "http://211.138.236.210:28700/ccaweb"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getNewVerRequestUrl(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokestatic com/hisun/b2c/api/util/IPOSHelper/getRequestUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/OCLIIPS3/702000.dow?plat=3&ua=TEMP_UA01&ver="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method

.method private static getRequestUrl()Ljava/lang/String;
new java/io/File
dup
ldc "/mnt/sdcard/ipos2ptcflag"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L0
ldc "file test"
ldc "bpascal file iposuatflagfile on the disk"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "https://mca.cmpay.com/ccaweb"
areturn
L0:
new java/io/File
dup
ldc "/mnt/sdcard/ipos2preptcflag"
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokevirtual java/io/File/exists()Z
ifeq L1
ldc "file test"
ldc "bpascal file ipos2preptcflag on the disk"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "http://111.8.12.50/ccaweb/"
areturn
L1:
ldc "file test"
ldc "bpascal no files the disk"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
ldc "http://211.138.236.210:28700/ccaweb"
areturn
.limit locals 0
.limit stack 3
.end method

.method public static getSSOLoginRequestUrl()Ljava/lang/String;
new java/lang/StringBuilder
dup
invokestatic com/hisun/b2c/api/util/IPOSHelper/getRequestUrl()Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "/CCLIIPS1/801201.dor"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 0
.limit stack 3
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 1
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
aload 0
aload 2
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
iload 3
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
iconst_0
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
invokevirtual android/app/ProgressDialog/show()V
aload 0
areturn
.limit locals 5
.limit stack 3
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;
new android/app/ProgressDialog
dup
aload 0
invokespecial android/app/ProgressDialog/<init>(Landroid/content/Context;)V
astore 0
aload 0
aload 1
invokevirtual android/app/ProgressDialog/setTitle(Ljava/lang/CharSequence;)V
aload 0
aload 2
invokevirtual android/app/ProgressDialog/setMessage(Ljava/lang/CharSequence;)V
aload 0
iload 3
invokevirtual android/app/ProgressDialog/setIndeterminate(Z)V
aload 0
iconst_1
invokevirtual android/app/ProgressDialog/setCancelable(Z)V
aload 0
aload 5
invokevirtual android/app/ProgressDialog/setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
aload 0
invokevirtual android/app/ProgressDialog/show()V
aload 0
areturn
.limit locals 6
.limit stack 3
.end method
