.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/WeiboSDK
.super java/lang/Object

.field private static 'weibo' Lcom/sina/weibo/sdk/api/IWeiboAPI;

.method static <clinit>()V
aconst_null
putstatic com/sina/weibo/sdk/WeiboSDK/weibo Lcom/sina/weibo/sdk/api/IWeiboAPI;
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

.method public static createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/IWeiboAPI;
aload 0
aload 1
iconst_1
invokestatic com/sina/weibo/sdk/WeiboSDK/createWeiboAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/IWeiboAPI;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static createWeiboAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sina/weibo/sdk/api/IWeiboAPI;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
ldc com/sina/weibo/sdk/WeiboSDK
monitorenter
L0:
getstatic com/sina/weibo/sdk/WeiboSDK/weibo Lcom/sina/weibo/sdk/api/IWeiboAPI;
ifnonnull L1
new com/sina/weibo/sdk/api/WeiboApiImpl
dup
aload 0
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
aload 1
iload 2
invokespecial com/sina/weibo/sdk/api/WeiboApiImpl/<init>(Landroid/content/Context;Ljava/lang/String;Z)V
putstatic com/sina/weibo/sdk/WeiboSDK/weibo Lcom/sina/weibo/sdk/api/IWeiboAPI;
L1:
getstatic com/sina/weibo/sdk/WeiboSDK/weibo Lcom/sina/weibo/sdk/api/IWeiboAPI;
astore 0
L3:
ldc com/sina/weibo/sdk/WeiboSDK
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/sina/weibo/sdk/WeiboSDK
monitorexit
aload 0
athrow
.limit locals 3
.limit stack 5
.end method
