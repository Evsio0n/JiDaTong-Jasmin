.bytecode 50.0
.class public final synchronized com/alipay/sdk/data/a
.super java/lang/Object

.field public static final 'a' I = 3500


.field public static final 'b' Ljava/lang/String; = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

.field public static final 'c' I = 1000


.field public static final 'd' I = 20000


.field public static final 'e' Ljava/lang/String; = "alipay_cashier_dynamic_config"

.field public static final 'f' Ljava/lang/String; = "timeout"

.field public static final 'g' Ljava/lang/String; = "st_sdk_config"

.field public static final 'h' Ljava/lang/String; = "tbreturl"

.field private static 'k' Lcom/alipay/sdk/data/a;

.field public 'i' Ljava/lang/String;

.field private 'j' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
sipush 3500
putfield com/alipay/sdk/data/a/j I
aload 0
ldc "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"
putfield com/alipay/sdk/data/a/i Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method private static synthetic a(Lcom/alipay/sdk/data/a;)V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
aload 1
ldc "timeout"
aload 0
invokevirtual com/alipay/sdk/data/a/a()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "tbreturl"
aload 0
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
ldc "alipay_cashier_dynamic_config"
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L2:
astore 0
return
.limit locals 2
.limit stack 3
.end method

.method private static synthetic a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
aload 0
aload 1
invokevirtual com/alipay/sdk/data/a/a(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method public static b()Lcom/alipay/sdk/data/a;
getstatic com/alipay/sdk/data/a/k Lcom/alipay/sdk/data/a;
ifnonnull L0
new com/alipay/sdk/data/a
dup
invokespecial com/alipay/sdk/data/a/<init>()V
astore 0
aload 0
putstatic com/alipay/sdk/data/a/k Lcom/alipay/sdk/data/a;
aload 0
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
ldc "alipay_cashier_dynamic_config"
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/alipay/sdk/data/a/a(Ljava/lang/String;)V
L0:
getstatic com/alipay/sdk/data/a/k Lcom/alipay/sdk/data/a;
areturn
.limit locals 1
.limit stack 3
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private d()V
aload 0
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
ldc "alipay_cashier_dynamic_config"
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/alipay/sdk/data/a/a(Ljava/lang/String;)V
return
.limit locals 1
.limit stack 3
.end method

.method private e()V
.catch java/lang/Exception from L0 to L1 using L2
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
aload 1
ldc "timeout"
aload 0
invokevirtual com/alipay/sdk/data/a/a()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 1
ldc "tbreturl"
aload 0
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
ldc "alipay_cashier_dynamic_config"
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 3
.end method

.method public final a()I
aload 0
getfield com/alipay/sdk/data/a/j I
sipush 1000
if_icmplt L0
aload 0
getfield com/alipay/sdk/data/a/j I
sipush 20000
if_icmple L1
L0:
sipush 3500
ireturn
L1:
new java/lang/StringBuilder
dup
ldc "DynamicConfig::getJumpTimeout >"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/data/a/j I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 0
getfield com/alipay/sdk/data/a/j I
ireturn
.limit locals 1
.limit stack 3
.end method

.method public final a(Landroid/content/Context;)V
new java/lang/Thread
dup
new com/alipay/sdk/data/b
dup
aload 0
aload 1
invokespecial com/alipay/sdk/data/b/<init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 2
.limit stack 6
.end method

.method final a(Ljava/lang/String;)V
.catch java/lang/Throwable from L0 to L1 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "st_sdk_config"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 0
aload 1
ldc "timeout"
sipush 3500
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/alipay/sdk/data/a/j I
aload 0
aload 1
ldc "tbreturl"
ldc "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
putfield com/alipay/sdk/data/a/i Ljava/lang/String;
L1:
return
L2:
astore 1
return
.limit locals 2
.limit stack 4
.end method
