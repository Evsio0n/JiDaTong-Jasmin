.bytecode 50.0
.class public synchronized com/alipay/sdk/app/AuthTask
.super java/lang/Object

.field static final 'a' Ljava/lang/Object;

.field private static final 'b' I = 73


.field private 'c' Landroid/app/Activity;

.field private 'd' Lcom/alipay/sdk/widget/a;

.method static <clinit>()V
ldc com/alipay/sdk/util/e
putstatic com/alipay/sdk/app/AuthTask/a Ljava/lang/Object;
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
astore 2
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
astore 3
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
pop
aload 2
aload 3
invokevirtual com/alipay/sdk/sys/b/a(Landroid/content/Context;)V
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;)V
aload 0
new com/alipay/sdk/widget/a
dup
aload 1
ldc "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/app/AuthTask/d Lcom/alipay/sdk/widget/a;
return
.limit locals 4
.limit stack 5
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
new com/alipay/sdk/app/a
dup
aload 0
invokespecial com/alipay/sdk/app/a/<init>(Lcom/alipay/sdk/app/AuthTask;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
aload 2
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
invokestatic com/alipay/sdk/app/AuthTask/a(Landroid/content/Context;)Z
ifeq L0
new com/alipay/sdk/util/e
dup
aload 1
new com/alipay/sdk/app/a
dup
aload 0
invokespecial com/alipay/sdk/app/a/<init>(Lcom/alipay/sdk/app/AuthTask;)V
invokespecial com/alipay/sdk/util/e/<init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
aload 3
invokevirtual com/alipay/sdk/util/e/a(Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
ldc "failed"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
aload 1
aload 3
invokespecial com/alipay/sdk/app/AuthTask/b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
astore 1
L2:
aload 1
areturn
L1:
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L2
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
areturn
L0:
aload 0
aload 1
aload 3
invokespecial com/alipay/sdk/app/AuthTask/b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 4
.limit stack 6
.end method

.method private a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
aload 1
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "url"
aload 2
iconst_0
aaload
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
new android/content/Intent
dup
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
ldc com/alipay/sdk/app/H5AuthActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
aload 1
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
getstatic com/alipay/sdk/app/AuthTask/a Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
getstatic com/alipay/sdk/app/AuthTask/a Ljava/lang/Object;
invokevirtual java/lang/Object/wait()V
L1:
aload 1
monitorexit
getstatic com/alipay/sdk/app/h/a Ljava/lang/String;
astore 2
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 1
L6:
aload 1
areturn
L2:
astore 2
L4:
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 2
aload 1
monitorexit
L5:
aload 2
areturn
L3:
astore 2
aload 1
monitorexit
aload 2
athrow
.limit locals 3
.limit stack 4
.end method

.method static synthetic a(Lcom/alipay/sdk/app/AuthTask;)V
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a(Landroid/content/Context;)Z
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
ldc "com.eg.android.AlipayGphone"
sipush 128
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 0
L1:
aload 0
ifnonnull L3
iconst_0
ireturn
L3:
aload 0
getfield android/content/pm/PackageInfo/versionCode I
istore 1
L4:
iload 1
bipush 73
if_icmplt L5
iconst_1
ireturn
L2:
astore 0
L5:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Throwable from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/IOException from L5 to L6 using L2
.catch java/lang/Throwable from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch all from L7 to L8 using L4
.catch all from L9 to L10 using L4
aload 0
invokespecial com/alipay/sdk/app/AuthTask/b()V
L0:
new com/alipay/sdk/packet/impl/a
dup
invokespecial com/alipay/sdk/packet/impl/a/<init>()V
aload 1
aload 2
invokevirtual com/alipay/sdk/packet/impl/a/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
invokevirtual com/alipay/sdk/packet/b/a()Lorg/json/JSONObject;
ldc "form"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "onload"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokestatic com/alipay/sdk/protocol/b/a(Lorg/json/JSONObject;)Ljava/util/List;
astore 1
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
L1:
iconst_0
istore 3
L5:
iload 3
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L11
aload 1
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
getstatic com/alipay/sdk/protocol/a/b Lcom/alipay/sdk/protocol/a;
if_acmpne L12
aload 0
aload 1
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
invokespecial com/alipay/sdk/app/AuthTask/a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
astore 1
L6:
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aload 1
areturn
L12:
iload 3
iconst_1
iadd
istore 3
goto L5
L11:
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aconst_null
astore 1
L13:
aload 1
astore 2
aload 1
ifnonnull L14
getstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 2
L14:
aload 2
invokevirtual com/alipay/sdk/app/i/a()I
aload 2
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
L2:
astore 2
L7:
getstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 1
ldc "net"
aload 2
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/Throwable;)V
L8:
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
goto L13
L3:
astore 1
L9:
ldc "biz"
ldc "H5AuthDataAnalysisError"
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
L10:
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aconst_null
astore 1
goto L13
L4:
astore 1
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aload 1
athrow
.limit locals 4
.limit stack 3
.end method

.method private b()V
aload 0
getfield com/alipay/sdk/app/AuthTask/d Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/app/AuthTask/d Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private c()V
aload 0
getfield com/alipay/sdk/app/AuthTask/d Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/app/AuthTask/d Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public auth(Ljava/lang/String;Z)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L1 to L3 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch java/lang/Exception from L7 to L8 using L5
.catch all from L7 to L8 using L6
.catch all from L8 to L9 using L2
.catch java/lang/Exception from L10 to L11 using L5
.catch all from L10 to L11 using L6
.catch all from L12 to L13 using L2
.catch all from L14 to L2 using L2
aload 0
monitorenter
iload 2
ifeq L1
L0:
aload 0
invokespecial com/alipay/sdk/app/AuthTask/b()V
L1:
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
astore 3
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
astore 4
invokestatic com/alipay/sdk/data/c/a()Lcom/alipay/sdk/data/c;
pop
aload 3
aload 4
invokevirtual com/alipay/sdk/sys/b/a(Landroid/content/Context;)V
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 4
L3:
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
astore 3
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
aload 1
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 3
invokestatic com/alipay/sdk/app/AuthTask/a(Landroid/content/Context;)Z
ifeq L10
new com/alipay/sdk/util/e
dup
aload 3
new com/alipay/sdk/app/a
dup
aload 0
invokespecial com/alipay/sdk/app/a/<init>(Lcom/alipay/sdk/app/AuthTask;)V
invokespecial com/alipay/sdk/util/e/<init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
aload 6
invokevirtual com/alipay/sdk/util/e/a(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 5
ldc "failed"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L10
L4:
aload 5
astore 3
L7:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L8
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 3
L8:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
L9:
aload 0
monitorexit
aload 3
areturn
L10:
aload 0
aload 3
aload 6
invokespecial com/alipay/sdk/app/AuthTask/b(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
astore 3
L11:
goto L8
L5:
astore 3
L12:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
L13:
aload 4
astore 3
goto L9
L6:
astore 3
L14:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/AuthTask/c()V
aload 0
getfield com/alipay/sdk/app/AuthTask/c Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
aload 3
athrow
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 7
.limit stack 6
.end method
