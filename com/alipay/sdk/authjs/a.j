.bytecode 50.0
.class public final synchronized com/alipay/sdk/authjs/a
.super java/lang/Object
.inner class public static final enum a inner com/alipay/sdk/authjs/a$a outer com/alipay/sdk/authjs/a

.field public static final 'a' Ljava/lang/String; = "CallInfo"

.field public static final 'b' Ljava/lang/String; = "call"

.field public static final 'c' Ljava/lang/String; = "callback"

.field public static final 'd' Ljava/lang/String; = "bundleName"

.field public static final 'e' Ljava/lang/String; = "clientId"

.field public static final 'f' Ljava/lang/String; = "param"

.field public static final 'g' Ljava/lang/String; = "func"

.field public static final 'h' Ljava/lang/String; = "msgType"

.field public 'i' Ljava/lang/String;

.field public 'j' Ljava/lang/String;

.field public 'k' Ljava/lang/String;

.field public 'l' Ljava/lang/String;

.field public 'm' Lorg/json/JSONObject;

.field private 'n' Z

.method public <init>(Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iconst_0
putfield com/alipay/sdk/authjs/a/n Z
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private static a(Lcom/alipay/sdk/authjs/a$a;)Ljava/lang/String;
getstatic com/alipay/sdk/authjs/b/a [I
aload 0
invokevirtual com/alipay/sdk/authjs/a$a/ordinal()I
iaload
tableswitch 1
L0
L1
L2
default : L3
L3:
ldc "none"
areturn
L0:
ldc "function not found"
areturn
L1:
ldc "invalid parameter"
areturn
L2:
ldc "runtime error"
areturn
.limit locals 1
.limit stack 2
.end method

.method private a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private a(Lorg/json/JSONObject;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
return
.limit locals 2
.limit stack 2
.end method

.method private a(Z)V
aload 0
iload 1
putfield com/alipay/sdk/authjs/a/n Z
return
.limit locals 2
.limit stack 2
.end method

.method private a()Z
aload 0
getfield com/alipay/sdk/authjs/a/n Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private b(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/j Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/authjs/a/j Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private c(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private d()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private d(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private e()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private f()Lorg/json/JSONObject;
aload 0
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 1
.end method

.method private g()Ljava/lang/String;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
aload 1
ldc "clientId"
aload 0
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "func"
aload 0
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "param"
aload 0
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
ldc "msgType"
aload 0
getfield com/alipay/sdk/authjs/a/l Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 3
.end method
