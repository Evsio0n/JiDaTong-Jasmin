.bytecode 50.0
.class public final synchronized com/alipay/sdk/authjs/d
.super java/lang/Object

.field 'a' Lcom/alipay/sdk/authjs/c;

.field 'b' Landroid/content/Context;

.method public <init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/c;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/authjs/d/b Landroid/content/Context;
aload 0
aload 2
putfield com/alipay/sdk/authjs/d/a Lcom/alipay/sdk/authjs/c;
return
.limit locals 3
.limit stack 2
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
aload 1
ifnull L0
ldc "toast"
aload 1
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 1
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
astore 4
aload 4
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 4
ldc "duration"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
iconst_1
istore 2
iload 3
sipush 2500
if_icmpge L1
iconst_0
istore 2
L1:
aload 0
getfield com/alipay/sdk/authjs/d/b Landroid/content/Context;
aload 5
iload 2
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/alipay/sdk/authjs/f
dup
aload 0
aload 1
invokespecial com/alipay/sdk/authjs/f/<init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
iload 2
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
L0:
getstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
areturn
.limit locals 6
.limit stack 5
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;)Lcom/alipay/sdk/authjs/c;
aload 0
getfield com/alipay/sdk/authjs/d/a Lcom/alipay/sdk/authjs/c;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static synthetic a(Lcom/alipay/sdk/authjs/d;Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
.throws org/json/JSONException
aload 0
aload 1
aload 2
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
return
.limit locals 3
.limit stack 3
.end method

.method private static a(Ljava/lang/Runnable;)V
aload 0
ifnonnull L0
return
L0:
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
if_acmpne L1
iconst_1
istore 1
L2:
iload 1
ifeq L3
aload 0
invokeinterface java/lang/Runnable/run()V 0
return
L1:
iconst_0
istore 1
goto L2
L3:
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
aload 0
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 2
.limit stack 3
.end method

.method private a(Ljava/lang/String;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L4
.catch java/lang/Exception from L5 to L6 using L4
.catch java/lang/Exception from L6 to L7 using L4
.catch org/json/JSONException from L8 to L9 using L10
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 3
aload 3
ldc "clientId"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 2
L1:
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
L3:
return
L5:
aload 3
ldc "param"
invokevirtual org/json/JSONObject/getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
aload 1
instanceof org/json/JSONObject
ifeq L11
aload 1
checkcast org/json/JSONObject
astore 1
L6:
aload 3
ldc "func"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 3
ldc "bundleName"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
astore 3
new com/alipay/sdk/authjs/a
dup
ldc "call"
invokespecial com/alipay/sdk/authjs/a/<init>(Ljava/lang/String;)V
astore 5
aload 5
aload 3
putfield com/alipay/sdk/authjs/a/j Ljava/lang/String;
aload 5
aload 4
putfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
aload 5
aload 1
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
aload 5
aload 2
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 0
aload 5
invokevirtual com/alipay/sdk/authjs/d/a(Lcom/alipay/sdk/authjs/a;)V
L7:
return
L4:
astore 1
aload 2
astore 1
L12:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L13
L8:
aload 0
aload 1
getstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
L9:
return
L10:
astore 1
return
L2:
astore 1
aconst_null
astore 1
goto L12
L11:
aconst_null
astore 1
goto L6
L13:
return
.limit locals 6
.limit stack 3
.end method

.method private b(Lcom/alipay/sdk/authjs/a;)Lcom/alipay/sdk/authjs/a$a;
aload 1
ifnull L0
ldc "toast"
aload 1
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
aload 1
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
astore 4
aload 4
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 4
ldc "duration"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
iconst_1
istore 2
iload 3
sipush 2500
if_icmpge L1
iconst_0
istore 2
L1:
aload 0
getfield com/alipay/sdk/authjs/d/b Landroid/content/Context;
aload 5
iload 2
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/alipay/sdk/authjs/f
dup
aload 0
aload 1
invokespecial com/alipay/sdk/authjs/f/<init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
iload 2
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
L0:
getstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
areturn
.limit locals 6
.limit stack 5
.end method

.method private c(Lcom/alipay/sdk/authjs/a;)V
aload 1
getfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
astore 4
aload 4
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 4
ldc "duration"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 3
iconst_1
istore 2
iload 3
sipush 2500
if_icmpge L0
iconst_0
istore 2
L0:
aload 0
getfield com/alipay/sdk/authjs/d/b Landroid/content/Context;
aload 5
iload 2
invokestatic android/widget/Toast/makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
invokevirtual android/widget/Toast/show()V
new java/util/Timer
dup
invokespecial java/util/Timer/<init>()V
new com/alipay/sdk/authjs/f
dup
aload 0
aload 1
invokespecial com/alipay/sdk/authjs/f/<init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
iload 2
i2l
invokevirtual java/util/Timer/schedule(Ljava/util/TimerTask;J)V
return
.limit locals 6
.limit stack 5
.end method

.method public final a(Lcom/alipay/sdk/authjs/a;)V
.throws org/json/JSONException
aload 1
ifnonnull L0
return
L0:
aload 1
getfield com/alipay/sdk/authjs/a/k Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
aload 1
getfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
getstatic com/alipay/sdk/authjs/a$a/c Lcom/alipay/sdk/authjs/a$a;
invokevirtual com/alipay/sdk/authjs/d/a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
return
L1:
new com/alipay/sdk/authjs/e
dup
aload 0
aload 1
invokespecial com/alipay/sdk/authjs/e/<init>(Lcom/alipay/sdk/authjs/d;Lcom/alipay/sdk/authjs/a;)V
astore 1
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokestatic android/os/Looper/myLooper()Landroid/os/Looper;
if_acmpne L2
iconst_1
istore 2
L3:
iload 2
ifeq L4
aload 1
invokeinterface java/lang/Runnable/run()V 0
return
L2:
iconst_0
istore 2
goto L3
L4:
new android/os/Handler
dup
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
aload 1
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
return
.limit locals 3
.limit stack 4
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
.throws org/json/JSONException
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
return
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "error"
aload 2
invokevirtual com/alipay/sdk/authjs/a$a/ordinal()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
new com/alipay/sdk/authjs/a
dup
ldc "callback"
invokespecial com/alipay/sdk/authjs/a/<init>(Ljava/lang/String;)V
astore 2
aload 2
aload 3
putfield com/alipay/sdk/authjs/a/m Lorg/json/JSONObject;
aload 2
aload 1
putfield com/alipay/sdk/authjs/a/i Ljava/lang/String;
aload 0
getfield com/alipay/sdk/authjs/d/a Lcom/alipay/sdk/authjs/c;
aload 2
invokeinterface com/alipay/sdk/authjs/c/a(Lcom/alipay/sdk/authjs/a;)V 1
return
.limit locals 4
.limit stack 3
.end method
