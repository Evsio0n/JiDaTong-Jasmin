.bytecode 50.0
.class public synchronized com/nd/rj/common/login/GlobalSetting
.super java/lang/Object

.field public static final 'NETWORK_IN' I = 2


.field public static final 'NETWORK_OUT' I = 0


.field public static final 'NETWORK_SIMULATE' I = 1


.field private static 'mInstance' Lcom/nd/rj/common/login/GlobalSetting;

.field private 'mAppid' Ljava/lang/String;

.field private 'mNetworkEnv' I

.field private 'mSiteflat' I

.field private 'mUapAppid' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/GlobalSetting/mNetworkEnv I
return
.limit locals 1
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/GlobalSetting;
getstatic com/nd/rj/common/login/GlobalSetting/mInstance Lcom/nd/rj/common/login/GlobalSetting;
ifnonnull L0
new com/nd/rj/common/login/GlobalSetting
dup
invokespecial com/nd/rj/common/login/GlobalSetting/<init>()V
putstatic com/nd/rj/common/login/GlobalSetting/mInstance Lcom/nd/rj/common/login/GlobalSetting;
L0:
getstatic com/nd/rj/common/login/GlobalSetting/mInstance Lcom/nd/rj/common/login/GlobalSetting;
getfield com/nd/rj/common/login/GlobalSetting/mAppid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
getstatic com/nd/rj/common/login/GlobalSetting/mInstance Lcom/nd/rj/common/login/GlobalSetting;
aload 0
invokespecial com/nd/rj/common/login/GlobalSetting/getParam(Landroid/content/Context;)V
L1:
getstatic com/nd/rj/common/login/GlobalSetting/mInstance Lcom/nd/rj/common/login/GlobalSetting;
areturn
.limit locals 1
.limit stack 2
.end method

.method private getParam(Landroid/content/Context;)V
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L6
.catch android/content/pm/PackageManager$NameNotFoundException from L4 to L5 using L2
.catch java/lang/Exception from L5 to L7 using L6
.catch android/content/pm/PackageManager$NameNotFoundException from L5 to L7 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L7 to L8 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L9 to L10 using L2
L0:
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
sipush 128
invokevirtual android/content/pm/PackageManager/getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/metaData Landroid/os/Bundle;
astore 2
L1:
aload 2
ifnonnull L3
return
L3:
aload 0
aload 2
ldc "APPID"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/GlobalSetting/mAppid Ljava/lang/String;
L4:
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mAppid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 0
aload 2
ldc "APPID"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
putfield com/nd/rj/common/login/GlobalSetting/mAppid Ljava/lang/String;
L5:
aload 0
aload 2
ldc "UAPAPPID"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/rj/common/login/GlobalSetting/mUapAppid Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mUapAppid Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
aload 2
ldc "UAPAPPID"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
putfield com/nd/rj/common/login/GlobalSetting/mUapAppid Ljava/lang/String;
L7:
aload 0
aload 2
ldc "SITEFLAT"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/rj/common/login/GlobalSetting/mSiteflat I
aload 0
aload 2
ldc "NETWORK"
iconst_0
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;I)I
putfield com/nd/rj/common/login/GlobalSetting/mNetworkEnv I
L8:
return
L2:
astore 1
aload 1
invokevirtual android/content/pm/PackageManager$NameNotFoundException/printStackTrace()V
return
L6:
astore 3
L9:
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getparam fail:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_0
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
L10:
goto L7
.limit locals 4
.limit stack 4
.end method

.method public getAppid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mAppid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getNetworkEnv()I
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mNetworkEnv I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSiteflat()I
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mSiteflat I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUapAppid()Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/GlobalSetting/mUapAppid Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
