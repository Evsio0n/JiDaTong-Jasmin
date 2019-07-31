.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/b
.super java/lang/Object

.field 'a' Ljava/lang/String;

.field public 'b' Ljava/lang/String;

.method public <init>(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/packet/b/a Ljava/lang/String;
aload 0
aload 2
putfield com/alipay/sdk/packet/b/b Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method private a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/packet/b/a Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/packet/b/a Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method private b(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/packet/b/b Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private c()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a()Lorg/json/JSONObject;
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aconst_null
areturn
L0:
new org/json/JSONObject
dup
aload 0
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
L1:
aload 1
areturn
L2:
astore 1
aconst_null
astore 1
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final toString()Ljava/lang/String;
new java/lang/StringBuilder
dup
ldc "\nenvelop:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/packet/b/a Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\nbody:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/alipay/sdk/packet/b/b Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 1
.limit stack 3
.end method
