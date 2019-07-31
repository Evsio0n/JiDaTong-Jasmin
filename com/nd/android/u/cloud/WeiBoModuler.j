.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/WeiBoModuler
.super java/lang/Object

.field private static 'alumnus_version' Ljava/lang/String;

.field public static final 'sIsFirstLogin' Ljava/lang/String; = "1"

.field public static final 'sIsFirstLoginVer' Ljava/lang/String; = "0"

.method static <clinit>()V
ldc "1"
putstatic com/nd/android/u/cloud/WeiBoModuler/alumnus_version Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static closeDB()V
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/closeDB()V
return
.limit locals 0
.limit stack 1
.end method

.method public static getUserGuideVer()Ljava/lang/String;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
ldc "0"
astore 0
L0:
getstatic com/nd/android/u/weibo/manager/XYWeiboManager/INSTANCE Lcom/nd/android/u/weibo/manager/XYWeiboManager;
invokevirtual com/nd/android/u/weibo/manager/XYWeiboManager/getUserGuideVer()Ljava/lang/String;
astore 1
L1:
aload 1
astore 0
L3:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L4
aload 0
ldc "0"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_0
invokestatic com/nd/android/u/cloud/LoginManager/saveGuideBefore(Landroid/content/Context;JZ)V
L4:
aload 0
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L3
L5:
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
invokestatic com/nd/android/u/cloud/LoginManager/saveGuideBefore(Landroid/content/Context;JZ)V
aload 0
areturn
.limit locals 2
.limit stack 4
.end method

.method public static isToGuidActivity(Ljava/lang/String;)Z
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public static setVersion()Z
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
iconst_0
istore 0
L0:
getstatic com/nd/android/u/weibo/manager/XYWeiboManager/INSTANCE Lcom/nd/android/u/weibo/manager/XYWeiboManager;
getstatic com/nd/android/u/cloud/WeiBoModuler/alumnus_version Ljava/lang/String;
invokevirtual com/nd/android/u/weibo/manager/XYWeiboManager/setUserGuideVer(Ljava/lang/String;)Z
istore 1
L1:
iload 1
istore 0
L3:
iload 0
ifeq L4
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
invokestatic com/nd/android/u/cloud/LoginManager/saveGuideBefore(Landroid/content/Context;JZ)V
L4:
iload 0
ireturn
L2:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L3
.limit locals 3
.limit stack 4
.end method
