.bytecode 50.0
.class public synchronized com/bestpay/util/PackageUtils
.super java/lang/Object

.field public static final 'MIMETYPE_APK' Ljava/lang/String; = "application/vnd.android.package-archive"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
L0:
aload 0
aload 1
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
areturn
L2:
astore 0
aconst_null
areturn
.limit locals 2
.limit stack 3
.end method

.method public static getPackageVersionCode(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
aload 0
aload 1
invokestatic com/bestpay/util/PackageUtils/getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
astore 0
aload 0
ifnull L0
aload 0
getfield android/content/pm/PackageInfo/versionCode I
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public static getPackageVersionName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
aload 0
aload 1
invokestatic com/bestpay/util/PackageUtils/getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
astore 0
aload 0
ifnull L0
aload 0
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public static installApplication(Landroid/content/Context;Ljava/lang/String;)V
.catch android/content/ActivityNotFoundException from L0 to L1 using L2
aload 1
invokestatic android/net/Uri/parse(Ljava/lang/String;)Landroid/net/Uri;
astore 3
aload 3
astore 2
aload 3
invokevirtual android/net/Uri/getScheme()Ljava/lang/String;
ifnonnull L3
new java/io/File
dup
aload 1
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
L3:
new android/content/Intent
dup
ldc "android.intent.action.VIEW"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
aload 1
aload 2
ldc "application/vnd.android.package-archive"
invokevirtual android/content/Intent/setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 1
ldc_w 268435456
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
L0:
aload 0
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L1:
return
L2:
astore 0
aload 0
invokevirtual android/content/ActivityNotFoundException/printStackTrace()V
return
.limit locals 4
.limit stack 3
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
aload 0
ifnonnull L0
L1:
iconst_0
ireturn
L0:
aload 0
getfield android/content/pm/ApplicationInfo/flags I
iconst_1
iand
iconst_1
if_icmpne L1
iconst_1
ireturn
.limit locals 1
.limit stack 2
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
aload 0
ifnull L0
aload 0
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
ifnonnull L1
L0:
iconst_0
ireturn
L1:
aload 0
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
invokestatic com/bestpay/util/PackageUtils/isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
aload 0
aload 1
invokestatic com/bestpay/util/PackageUtils/getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
invokestatic com/bestpay/util/PackageUtils/isSystemApp(Landroid/content/pm/PackageInfo;)Z
ireturn
.limit locals 2
.limit stack 2
.end method
