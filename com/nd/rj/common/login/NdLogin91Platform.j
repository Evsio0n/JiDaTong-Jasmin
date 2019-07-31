.bytecode 50.0
.class public synchronized com/nd/rj/common/login/NdLogin91Platform
.super java/lang/Object
.inner class inner com/nd/rj/common/login/NdLogin91Platform$1
.inner class private ProgressGetCheckcode inner com/nd/rj/common/login/NdLogin91Platform$ProgressGetCheckcode outer com/nd/rj/common/login/NdLogin91Platform
.inner class private progressLogin91 inner com/nd/rj/common/login/NdLogin91Platform$progressLogin91 outer com/nd/rj/common/login/NdLogin91Platform

.field private static 'mInstance' Lcom/nd/rj/common/login/NdLogin91Platform;

.field private 'mCheckcode' Ljava/lang/String;

.field private 'mContext' Landroid/content/Context;

.field private 'mLogin91Assistant' Lcom/nd/rj/common/login/NdLogin91Assistant;

.field private 'mLoginPro' Lcom/nd/rj/common/login/LoginPro;

.field private 'mType' I

.field private 'mUser' Lcom/product/android/business/bean/UserInfo;

.field private 'mUserName' Ljava/lang/String;

.field private 'mbIsAccountChanged' Z

.field private 'mbTicketFirst' Z

.method private <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Platform/mbTicketFirst Z
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Platform/mType I
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Platform/mbIsAccountChanged Z
aload 0
aload 1
invokestatic com/nd/rj/common/login/NdLogin91Assistant/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Assistant;
putfield com/nd/rj/common/login/NdLogin91Platform/mLogin91Assistant Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
aload 1
invokestatic com/nd/rj/common/login/LoginPro/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/LoginPro;
putfield com/nd/rj/common/login/NdLogin91Platform/mLoginPro Lcom/nd/rj/common/login/LoginPro;
aload 0
aload 1
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
putfield com/nd/rj/common/login/NdLogin91Platform/mContext Landroid/content/Context;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mLogin91Assistant Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitSuccessful()Z
ifne L0
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mLogin91Assistant Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isInitializing()Z
ifeq L1
L0:
return
L1:
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform/doInit()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/NdLogin91Assistant;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mLogin91Assistant Lcom/nd/rj/common/login/NdLogin91Assistant;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/product/android/business/bean/UserInfo;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/rj/common/login/NdLogin91Platform;)Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mbTicketFirst Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/rj/common/login/NdLogin91Platform;)Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mbIsAccountChanged Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/rj/common/login/NdLogin91Platform;)Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mCheckcode Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/rj/common/login/NdLogin91Platform;)I
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/rj/common/login/NdLogin91Platform;)Lcom/nd/rj/common/login/LoginPro;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mLoginPro Lcom/nd/rj/common/login/LoginPro;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doInit()V
new java/lang/Thread
dup
new com/nd/rj/common/login/NdLogin91Platform$1
dup
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform$1/<init>(Lcom/nd/rj/common/login/NdLogin91Platform;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 1
.limit stack 5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/NdLogin91Platform;
getstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
ifnonnull L0
new com/nd/rj/common/login/NdLogin91Platform
dup
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
L0:
getstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
areturn
.limit locals 1
.limit stack 3
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/nd/rj/common/login/NdLogin91Platform;
getstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
ifnonnull L0
new com/nd/rj/common/login/NdLogin91Platform
dup
aload 0
invokespecial com/nd/rj/common/login/NdLogin91Platform/<init>(Landroid/content/Context;)V
putstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
L0:
getstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
iload 1
putfield com/nd/rj/common/login/NdLogin91Platform/mType I
getstatic com/nd/rj/common/login/NdLogin91Platform/mInstance Lcom/nd/rj/common/login/NdLogin91Platform;
areturn
.limit locals 2
.limit stack 3
.end method

.method public doLogin(Landroid/content/Context;Lcom/product/android/business/bean/UserInfo;Ljava/lang/String;Ljava/lang/String;Z)I
iconst_1
istore 7
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mContext Landroid/content/Context;
invokestatic com/nd/rj/common/util/ComfunHelp/isNetworkAvailable(Landroid/content/Context;)Z
ifeq L0
aload 0
aload 2
putfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
aload 0
aload 4
putfield com/nd/rj/common/login/NdLogin91Platform/mCheckcode Ljava/lang/String;
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
ifnull L1
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
invokevirtual com/product/android/business/bean/UserInfo/getUserPassMixedMd5()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
L1:
getstatic com/nd/rj/common/R$string/nd_empty_account I
ireturn
L2:
aload 0
iconst_0
putfield com/nd/rj/common/login/NdLogin91Platform/mbIsAccountChanged Z
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUserName Ljava/lang/String;
ifnull L3
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUserName Ljava/lang/String;
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L3
aload 0
iconst_1
putfield com/nd/rj/common/login/NdLogin91Platform/mbIsAccountChanged Z
L3:
aload 0
aload 2
invokevirtual com/product/android/business/bean/UserInfo/getUserName()Ljava/lang/String;
putfield com/nd/rj/common/login/NdLogin91Platform/mUserName Ljava/lang/String;
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
iconst_1
istore 6
L5:
iload 6
ifeq L6
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
aload 3
ldc "ECBC644F598318E42CA7ED92497BFB8019D4C166B62A60D0E83E73321FC6CE8596421F981545CAF93EE8231CA4D544BEBF0A6AEA3F9305A6ED675C96A4CA87A9"
ldc "10001"
invokestatic com/nd/rj/common/login/NdLoginComFun/RSAEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPass(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
aload 3
invokestatic com/nd/rj/common/login/NdLoginComFun/Md5Digest(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMd5(Ljava/lang/String;)V
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mUser Lcom/product/android/business/bean/UserInfo;
aload 3
ldc "GB2312"
invokestatic com/nd/rj/common/util/EncryptTool/getMD5str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/toLowerCase()Ljava/lang/String;
invokevirtual com/product/android/business/bean/UserInfo/setUserPassMixedMd5(Ljava/lang/String;)V
L6:
iload 5
ifeq L7
iload 6
ifne L7
iload 7
istore 5
L8:
aload 0
iload 5
putfield com/nd/rj/common/login/NdLogin91Platform/mbTicketFirst Z
new com/nd/rj/common/login/NdLogin91Platform$progressLogin91
dup
aload 0
aload 1
getstatic com/nd/rj/common/R$string/nd_login_logining I
invokespecial com/nd/rj/common/login/NdLogin91Platform$progressLogin91/<init>(Lcom/nd/rj/common/login/NdLogin91Platform;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/NdLogin91Platform$progressLogin91/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
iconst_0
ireturn
L4:
iconst_0
istore 6
goto L5
L7:
iconst_0
istore 5
goto L8
L0:
getstatic com/nd/rj/common/R$string/nd_network I
ireturn
.limit locals 8
.limit stack 5
.end method

.method public doRefreshCheckcode(Landroid/content/Context;)I
aload 0
getfield com/nd/rj/common/login/NdLogin91Platform/mContext Landroid/content/Context;
invokestatic com/nd/rj/common/util/ComfunHelp/isNetworkAvailable(Landroid/content/Context;)Z
ifeq L0
new com/nd/rj/common/login/NdLogin91Platform$ProgressGetCheckcode
dup
aload 0
aload 1
getstatic com/nd/rj/common/R$string/nd_resending I
invokespecial com/nd/rj/common/login/NdLogin91Platform$ProgressGetCheckcode/<init>(Lcom/nd/rj/common/login/NdLogin91Platform;Landroid/content/Context;I)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/rj/common/login/NdLogin91Platform$ProgressGetCheckcode/execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
pop
iconst_0
ireturn
L0:
getstatic com/nd/rj/common/R$string/nd_network I
ireturn
.limit locals 2
.limit stack 5
.end method
