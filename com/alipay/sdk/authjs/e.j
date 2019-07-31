.bytecode 50.0
.class final synchronized com/alipay/sdk/authjs/e
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Lcom/alipay/sdk/authjs/a;

.field final synthetic 'b' Lcom/alipay/sdk/authjs/d;

.method <init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
aload 0
aload 1
putfield com/alipay/sdk/authjs/e/b Lcom/alipay/sdk/authjs/d;
aload 0
aload 2
putfield com/alipay/sdk/authjs/e/a Lcom/alipay/sdk/authjs/a;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/alipay/sdk/authjs/e/b Lcom/alipay/sdk/authjs/d;
astore 3
aload 0
getfield com/alipay/sdk/authjs/e/a Lcom/alipay/sdk/authjs/a;
astore 4
aload 4
ifnull L3
ldc "toast"
aload 4
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 4
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
astore 5
aload 5
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 5
ldc "duration"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
iconst_1
istore 1
iload 2
sipush 2500
if_icmpge L4
iconst_0
istore 1
L4:
aload 3
getfield com/alipay/sdk/authjs/d/b Landroid/content/Context;
aload 6
iload 1
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/alipay/sdk/authjs/f
dup
aload 3
aload 4
invokespecial com/alipay/sdk/authjs/f/<init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
iload 1
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
L3:
getstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
astore 3
aload 3
getstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
if_acmpeq L1
L0:
aload 0
getfield com/alipay/sdk/authjs/e/b Lcom/alipay/sdk/authjs/d;
aload 0
getfield com/alipay/sdk/authjs/e/a Lcom/alipay/sdk/authjs/a;
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 3
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
L1:
return
L2:
astore 3
return
.limit locals 7
.limit stack 5
.end method
