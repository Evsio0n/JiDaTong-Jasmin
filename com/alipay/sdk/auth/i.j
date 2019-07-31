.bytecode 50.0
.class final synchronized com/alipay/sdk/auth/i
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/app/Activity;

.field final synthetic 'b' Ljava/lang/StringBuilder;

.field final synthetic 'c' Lcom/alipay/sdk/auth/APAuthInfo;

.method <init>(Landroid/app/Activity;Ljava/lang/StringBuilder;Lcom/alipay/sdk/auth/APAuthInfo;)V
aload 0
aload 1
putfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
aload 0
aload 2
putfield com/alipay/sdk/auth/i/b Ljava/lang/StringBuilder;
aload 0
aload 3
putfield com/alipay/sdk/auth/i/c Lcom/alipay/sdk/auth/APAuthInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 4
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Exception from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L4 to L5 using L6
.catch java/lang/Exception from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch java/lang/Exception from L7 to L8 using L2
.catch all from L7 to L8 using L3
.catch java/lang/Exception from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/lang/Exception from L11 to L12 using L2
.catch all from L11 to L12 using L3
.catch java/lang/Exception from L13 to L14 using L2
.catch all from L13 to L14 using L3
.catch java/lang/Exception from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Exception from L16 to L17 using L2
.catch all from L16 to L17 using L3
L0:
new com/alipay/sdk/packet/impl/a
dup
invokespecial com/alipay/sdk/packet/impl/a/<init>()V
astore 3
L1:
aconst_null
astore 2
L4:
aload 3
aload 0
getfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/auth/i/b Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/alipay/sdk/packet/impl/a/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
astore 3
L5:
aload 3
astore 2
L7:
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L8
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
invokestatic com/alipay/sdk/auth/h/b()Lcom/alipay/sdk/widget/a;
pop
L8:
aload 2
ifnonnull L11
L9:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/auth/i/c Lcom/alipay/sdk/auth/APAuthInfo;
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=202"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
invokestatic com/alipay/sdk/auth/h/c()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
L10:
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L18
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L18:
return
L11:
aload 2
invokevirtual com/alipay/sdk/packet/b/a()Lorg/json/JSONObject;
ldc "form"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "onload"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokestatic com/alipay/sdk/protocol/b/a(Lorg/json/JSONObject;)Ljava/util/List;
astore 2
L12:
iconst_0
istore 1
L13:
iload 1
aload 2
invokeinterface java/util/List/size()I 0
if_icmpge L14
aload 2
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
getstatic com/alipay/sdk/protocol/a/b Lcom/alipay/sdk/protocol/a;
if_acmpne L19
aload 2
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
iconst_0
aaload
invokestatic com/alipay/sdk/auth/h/a(Ljava/lang/String;)Ljava/lang/String;
pop
L14:
invokestatic com/alipay/sdk/auth/h/c()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L16
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/sdk/auth/i/c Lcom/alipay/sdk/auth/APAuthInfo;
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?resultCode=202"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Ljava/lang/String;)Ljava/lang/String;
pop
aload 0
getfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
invokestatic com/alipay/sdk/auth/h/c()Ljava/lang/String;
invokestatic com/alipay/sdk/auth/h/a(Landroid/app/Activity;Ljava/lang/String;)V
L15:
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L18
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
return
L19:
iload 1
iconst_1
iadd
istore 1
goto L13
L16:
new android/content/Intent
dup
aload 0
getfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
ldc com/alipay/sdk/auth/AuthActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "params"
invokestatic com/alipay/sdk/auth/h/c()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "redirectUri"
aload 0
getfield com/alipay/sdk/auth/i/c Lcom/alipay/sdk/auth/APAuthInfo;
invokevirtual com/alipay/sdk/auth/APAuthInfo/getRedirectUri()Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/alipay/sdk/auth/i/a Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
L17:
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L18
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
return
L2:
astore 2
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L18
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
return
L3:
astore 2
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
ifnull L20
invokestatic com/alipay/sdk/auth/h/a()Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L20:
aload 2
athrow
L6:
astore 3
goto L7
.limit locals 4
.limit stack 4
.end method
