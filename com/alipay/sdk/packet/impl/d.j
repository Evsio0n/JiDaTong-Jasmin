.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/impl/d
.super com/alipay/sdk/packet/d

.method public <init>()V
aload 0
invokespecial com/alipay/sdk/packet/d/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected final a()Lorg/json/JSONObject;
.throws org/json/JSONException
ldc "cashier"
ldc "main"
invokestatic com/alipay/sdk/packet/d/a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
areturn
.limit locals 1
.limit stack 2
.end method
