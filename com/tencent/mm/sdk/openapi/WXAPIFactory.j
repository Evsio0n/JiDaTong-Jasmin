.bytecode 50.0
.class public synchronized com/tencent/mm/sdk/openapi/WXAPIFactory
.super java/lang/Object

.field private static final 'TAG' Ljava/lang/String; = "MicroMsg.PaySdk.WXFactory"

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
new java/lang/RuntimeException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " should not be instantiated"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/RuntimeException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public static createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
aload 0
aload 1
iconst_0
invokestatic com/tencent/mm/sdk/openapi/WXAPIFactory/createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;
areturn
.limit locals 2
.limit stack 3
.end method

.method public static createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;
ldc "MicroMsg.PaySdk.WXFactory"
new java/lang/StringBuilder
dup
ldc "createWXAPI, appId = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ", checkSignature = "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(Z)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/tencent/mm/sdk/b/a/c(Ljava/lang/String;Ljava/lang/String;)V
new com/tencent/mm/sdk/openapi/WXApiImplV10
dup
aload 0
aload 1
iload 2
invokespecial com/tencent/mm/sdk/openapi/WXApiImplV10/<init>(Landroid/content/Context;Ljava/lang/String;Z)V
areturn
.limit locals 3
.limit stack 5
.end method
