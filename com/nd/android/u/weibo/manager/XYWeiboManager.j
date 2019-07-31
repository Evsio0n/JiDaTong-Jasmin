.bytecode 50.0
.class public final synchronized enum com/nd/android/u/weibo/manager/XYWeiboManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/weibo/manager/XYWeiboManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/weibo/manager/XYWeiboManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/weibo/manager/XYWeiboManager;

.method static <clinit>()V
new com/nd/android/u/weibo/manager/XYWeiboManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/weibo/manager/XYWeiboManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/weibo/manager/XYWeiboManager/INSTANCE Lcom/nd/android/u/weibo/manager/XYWeiboManager;
iconst_1
anewarray com/nd/android/u/weibo/manager/XYWeiboManager
dup
iconst_0
getstatic com/nd/android/u/weibo/manager/XYWeiboManager/INSTANCE Lcom/nd/android/u/weibo/manager/XYWeiboManager;
aastore
putstatic com/nd/android/u/weibo/manager/XYWeiboManager/$VALUES [Lcom/nd/android/u/weibo/manager/XYWeiboManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/weibo/manager/XYWeiboManager;
ldc com/nd/android/u/weibo/manager/XYWeiboManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/weibo/manager/XYWeiboManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/weibo/manager/XYWeiboManager;
getstatic com/nd/android/u/weibo/manager/XYWeiboManager/$VALUES [Lcom/nd/android/u/weibo/manager/XYWeiboManager;
invokevirtual [Lcom/nd/android/u/weibo/manager/XYWeiboManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/weibo/manager/XYWeiboManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getRecommends()Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/weibo/buss/sdk/XYUserSdk
dup
invokespecial com/nd/android/u/weibo/buss/sdk/XYUserSdk/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/nd/android/u/weibo/buss/sdk/XYUserSdk/getRecommends(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method public getUserGuideVer()Ljava/lang/String;
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/weibo/buss/sdk/XYUserSdk
dup
invokespecial com/nd/android/u/weibo/buss/sdk/XYUserSdk/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual com/nd/android/u/weibo/buss/sdk/XYUserSdk/getUserGuideVer(Landroid/content/Context;)Ljava/lang/String;
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method public setUserGuideVer(Ljava/lang/String;)Z
.throws com/android/u/weibo/weibo/controller/WeiBoException
.catch org/json/JSONException from L0 to L1 using L2
L0:
new com/nd/android/u/weibo/buss/sdk/XYUserSdk
dup
invokespecial com/nd/android/u/weibo/buss/sdk/XYUserSdk/<init>()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
aload 1
invokevirtual com/nd/android/u/weibo/buss/sdk/XYUserSdk/setUserGuideVer(Landroid/content/Context;Ljava/lang/String;)Z
istore 2
L1:
iload 2
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 3
.limit stack 3
.end method
