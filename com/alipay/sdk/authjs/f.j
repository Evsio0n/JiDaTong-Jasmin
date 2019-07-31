.bytecode 50.0
.class final synchronized com/alipay/sdk/authjs/f
.super java/util/TimerTask

.field final synthetic 'a' Lcom/alipay/sdk/authjs/a;

.field final synthetic 'b' Lcom/alipay/sdk/authjs/d;

.method <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/f/b Lcom/alipay/sdk/authjs/d;
aload 0
aload 2
putfield com/alipay/sdk/authjs/f/a Lcom/alipay/sdk/authjs/a;
aload 0
invokespecial java/util/TimerTask/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 1
L0:
aload 1
ldc "toastCallBack"
ldc "true"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
new com/alipay/sdk/authjs/a
dup
ldc "callback"
invokespecial com/alipay/sdk/authjs/a/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 0
getfield com/alipay/sdk/authjs/f/a Lcom/alipay/sdk/authjs/a;
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 2
aload 1
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
aload 0
getfield com/alipay/sdk/authjs/f/b Lcom/alipay/sdk/authjs/d;
getfield com/alipay/sdk/authjs/d/a Lcom/alipay/sdk/authjs/c;
aload 2
invokeinterface com/alipay/sdk/authjs/c/a(Lcom/alipay/sdk/authjs/a;)V 1
return
L2:
astore 2
goto L1
.limit locals 3
.limit stack 3
.end method
