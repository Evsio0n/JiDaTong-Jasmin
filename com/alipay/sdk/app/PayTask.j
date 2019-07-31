.bytecode 50.0
.class public synchronized com/alipay/sdk/app/PayTask
.super java/lang/Object
.inner class private final a inner com/alipay/sdk/app/PayTask$a outer com/alipay/sdk/app/PayTask

.field static final 'a' Ljava/lang/Object;

.field private static 'h' Ljava/util/concurrent/ConcurrentHashMap; signature "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'b' Landroid/app/Activity;

.field private 'c' Lcom/alipay/sdk/widget/a;

.field private 'd' Ljava/lang/String;

.field private 'e' Ljava/lang/String;

.field private 'f' Ljava/lang/String;

.field private 'g' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Lcom/alipay/sdk/app/PayTask$a;>;"

.method static <clinit>()V
ldc com/alipay/sdk/util/e
putstatic com/alipay/sdk/app/PayTask/a Ljava/lang/Object;
new java/util/concurrent/ConcurrentHashMap
dup
invokespecial java/util/concurrent/ConcurrentHashMap/<init>()V
putstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
return
.limit locals 0
.limit stack 2
.end method

.method public <init>(Landroid/app/Activity;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc "wappaygw.alipay.com/service/rest.htm"
putfield com/alipay/sdk/app/PayTask/d Ljava/lang/String;
aload 0
ldc "mclient.alipay.com/service/rest.htm"
putfield com/alipay/sdk/app/PayTask/e Ljava/lang/String;
aload 0
ldc "mclient.alipay.com/home/exterfaceAssign.htm"
putfield com/alipay/sdk/app/PayTask/f Ljava/lang/String;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 0
aload 1
putfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
astore 2
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
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
ldc "\u53bb\u652f\u4ed8\u5b9d\u4ed8\u6b3e"
invokespecial com/alipay/sdk/widget/a/<init>(Landroid/app/Activity;Ljava/lang/String;)V
putfield com/alipay/sdk/app/PayTask/c Lcom/alipay/sdk/widget/a;
return
.limit locals 4
.limit stack 5
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
new com/alipay/sdk/app/g
dup
aload 0
invokespecial com/alipay/sdk/app/g/<init>(Lcom/alipay/sdk/app/PayTask;)V
areturn
.limit locals 1
.limit stack 3
.end method

.method private a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch all from L4 to L5 using L3
aload 1
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
astore 1
new android/content/Intent
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
ldc com/alipay/sdk/app/H5PayActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 3
aload 3
ldc "url"
aload 1
iconst_0
aaload
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
arraylength
iconst_2
if_icmpne L6
aload 3
ldc "cookie"
aload 1
iconst_1
aaload
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L6:
aload 2
aload 3
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
getstatic com/alipay/sdk/app/PayTask/a Ljava/lang/Object;
astore 1
aload 1
monitorenter
L0:
getstatic com/alipay/sdk/app/PayTask/a Ljava/lang/Object;
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
ifeq L7
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 1
L7:
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
.limit locals 4
.limit stack 4
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
aload 0
astore 1
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
astore 1
aload 0
ldc "alipay_exterface_invoke_assign_sign"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L0
new java/lang/StringBuilder
dup
ldc "alipay_exterface_invoke_assign_sign="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "alipay_exterface_invoke_assign_sign="
ldc "&"
aload 0
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
ldc "sdk_start_time\\\":"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "sdk_start_time\\\":"
ldc "\\\""
aload 0
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
aload 0
aload 1
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
aload 2
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "={"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
aload 1
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 2
aload 0
aload 1
invokevirtual java/lang/String/length()I
iload 2
iadd
aload 0
ldc "}"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 4
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)V
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
return
.limit locals 1
.limit stack 1
.end method

.method private static transient a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
.signature "(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;[Ljava/lang/String;)Z"
aload 5
arraylength
istore 7
iconst_0
istore 6
L0:
iload 6
iload 7
if_icmpge L1
aload 5
iload 6
aaload
astore 8
aload 4
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 4
aload 8
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 4
L3:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
iload 1
ifeq L5
iconst_0
ireturn
L2:
iload 6
iconst_1
iadd
istore 6
goto L0
L4:
iload 0
ifeq L6
aload 3
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L5:
iconst_1
ireturn
L6:
aload 3
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
goto L5
L1:
ldc ""
astore 4
goto L3
.limit locals 9
.limit stack 2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 1
ldc "alipay_exterface_invoke_assign_sign"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L5
new java/lang/StringBuilder
dup
ldc "alipay_exterface_invoke_assign_sign="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "alipay_exterface_invoke_assign_sign="
ldc "&"
aload 1
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new java/lang/StringBuilder
dup
ldc "sdk_start_time\\\":"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "sdk_start_time\\\":"
ldc "\\\""
aload 1
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
aload 1
aload 2
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
aload 3
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 2
L6:
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
aload 1
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;)Ljava/lang/String;
astore 3
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
astore 1
aload 1
monitorenter
L0:
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
getstatic com/alipay/sdk/app/i/f Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 2
aload 2
invokevirtual com/alipay/sdk/app/i/a()I
aload 2
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 1
monitorexit
L1:
aload 2
areturn
L3:
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
ldc "true"
invokevirtual java/util/concurrent/ConcurrentHashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
monitorexit
L4:
aload 3
ldc "paymethod=\"expressGateway\""
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L7
aload 0
aload 3
invokespecial com/alipay/sdk/app/PayTask/c(Ljava/lang/String;)Ljava/lang/String;
astore 1
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
areturn
L2:
astore 2
aload 1
monitorexit
aload 2
athrow
L7:
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokestatic com/alipay/sdk/util/i/b(Landroid/content/Context;)Z
ifeq L8
new com/alipay/sdk/util/e
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
new com/alipay/sdk/app/g
dup
aload 0
invokespecial com/alipay/sdk/app/g/<init>(Lcom/alipay/sdk/app/PayTask;)V
invokespecial com/alipay/sdk/util/e/<init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
astore 1
aload 1
aload 3
invokevirtual com/alipay/sdk/util/e/a(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 1
invokevirtual com/alipay/sdk/util/e/a()V
aload 4
ldc "failed"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L9
aload 0
aload 3
invokespecial com/alipay/sdk/app/PayTask/c(Ljava/lang/String;)Ljava/lang/String;
astore 1
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
areturn
L9:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L10
invokestatic com/alipay/sdk/app/h/a()Ljava/lang/String;
astore 1
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
areturn
L10:
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 4
areturn
L8:
aload 0
aload 3
invokespecial com/alipay/sdk/app/PayTask/c(Ljava/lang/String;)Ljava/lang/String;
astore 1
getstatic com/alipay/sdk/app/PayTask/h Ljava/util/concurrent/ConcurrentHashMap;
aload 2
invokevirtual java/util/concurrent/ConcurrentHashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 1
areturn
L5:
aload 1
astore 2
goto L6
.limit locals 5
.limit stack 6
.end method

.method private b()V
aload 0
getfield com/alipay/sdk/app/PayTask/c Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/app/PayTask/c Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/a()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
.catch java/io/IOException from L0 to L1 using L2
.catch java/lang/Throwable from L0 to L1 using L3
.catch all from L0 to L1 using L4
.catch java/io/IOException from L5 to L6 using L2
.catch java/lang/Throwable from L5 to L6 using L3
.catch all from L5 to L6 using L4
.catch java/io/IOException from L7 to L8 using L2
.catch java/lang/Throwable from L7 to L8 using L3
.catch all from L7 to L8 using L4
.catch java/lang/Exception from L8 to L9 using L10
.catch all from L8 to L9 using L11
.catch java/io/IOException from L9 to L12 using L2
.catch java/lang/Throwable from L9 to L12 using L3
.catch all from L9 to L12 using L4
.catch all from L13 to L14 using L4
.catch java/io/IOException from L15 to L16 using L2
.catch java/lang/Throwable from L15 to L16 using L3
.catch all from L15 to L16 using L4
.catch all from L17 to L18 using L4
.catch java/io/IOException from L19 to L4 using L2
.catch java/lang/Throwable from L19 to L4 using L3
.catch all from L19 to L4 using L4
.catch java/io/IOException from L20 to L21 using L2
.catch java/lang/Throwable from L20 to L21 using L3
.catch all from L20 to L21 using L4
.catch java/io/IOException from L22 to L23 using L2
.catch java/lang/Throwable from L22 to L23 using L3
.catch all from L22 to L23 using L4
iconst_0
istore 3
aload 0
invokespecial com/alipay/sdk/app/PayTask/b()V
L0:
new com/alipay/sdk/packet/impl/d
dup
invokespecial com/alipay/sdk/packet/impl/d/<init>()V
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
aload 1
invokevirtual com/alipay/sdk/packet/impl/d/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
invokevirtual com/alipay/sdk/packet/b/a()Lorg/json/JSONObject;
ldc "form"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ldc "onload"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokestatic com/alipay/sdk/protocol/b/a(Lorg/json/JSONObject;)Ljava/util/List;
astore 1
L1:
iconst_0
istore 2
L5:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L20
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
getstatic com/alipay/sdk/protocol/a/c Lcom/alipay/sdk/protocol/a;
if_acmpne L24
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/b [Ljava/lang/String;
astore 4
aload 4
arraylength
iconst_3
if_icmpne L24
ldc "tid"
aload 4
iconst_0
aaload
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifeq L24
invokestatic com/alipay/sdk/sys/b/a()Lcom/alipay/sdk/sys/b;
getfield com/alipay/sdk/sys/b/a Landroid/content/Context;
astore 5
invokestatic com/alipay/sdk/tid/b/a()Lcom/alipay/sdk/tid/b;
astore 6
aload 4
iconst_1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L24
aload 4
iconst_2
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
L6:
goto L24
L7:
aload 6
aload 4
iconst_1
aaload
putfield com/alipay/sdk/tid/b/a Ljava/lang/String;
aload 6
aload 4
iconst_2
aaload
putfield com/alipay/sdk/tid/b/b Ljava/lang/String;
new com/alipay/sdk/tid/a
dup
aload 5
invokespecial com/alipay/sdk/tid/a/<init>(Landroid/content/Context;)V
astore 4
L8:
aload 4
aload 5
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/a()Ljava/lang/String;
aload 5
invokestatic com/alipay/sdk/util/a/a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;
invokevirtual com/alipay/sdk/util/a/b()Ljava/lang/String;
aload 6
getfield com/alipay/sdk/tid/b/a Ljava/lang/String;
aload 6
getfield com/alipay/sdk/tid/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/tid/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L9:
aload 4
invokevirtual com/alipay/sdk/tid/a/close()V
L12:
goto L24
L2:
astore 4
L13:
getstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 1
ldc "net"
aload 4
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/Throwable;)V
L14:
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
L25:
aload 1
astore 4
aload 1
ifnonnull L26
getstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
invokevirtual com/alipay/sdk/app/i/a()I
invokestatic com/alipay/sdk/app/i/a(I)Lcom/alipay/sdk/app/i;
astore 4
L26:
aload 4
invokevirtual com/alipay/sdk/app/i/a()I
aload 4
invokevirtual com/alipay/sdk/app/i/b()Ljava/lang/String;
ldc ""
invokestatic com/alipay/sdk/app/h/a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
areturn
L10:
astore 5
L15:
aload 4
invokevirtual com/alipay/sdk/tid/a/close()V
L16:
goto L24
L3:
astore 1
L17:
ldc "biz"
ldc "H5PayDataAnalysisError"
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
L18:
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aconst_null
astore 1
goto L25
L11:
astore 1
L19:
aload 4
invokevirtual com/alipay/sdk/tid/a/close()V
aload 1
athrow
L4:
astore 1
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aload 1
athrow
L20:
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
L21:
iload 3
istore 2
L22:
iload 2
aload 1
invokeinterface java/util/List/size()I 0
if_icmpge L27
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
getfield com/alipay/sdk/protocol/b/a Lcom/alipay/sdk/protocol/a;
getstatic com/alipay/sdk/protocol/a/b Lcom/alipay/sdk/protocol/a;
if_acmpne L28
aload 0
aload 1
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/alipay/sdk/protocol/b
invokespecial com/alipay/sdk/app/PayTask/a(Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
astore 1
L23:
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aload 1
areturn
L28:
iload 2
iconst_1
iadd
istore 2
goto L22
L27:
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aconst_null
astore 1
goto L25
L24:
iload 2
iconst_1
iadd
istore 2
goto L5
.limit locals 7
.limit stack 5
.end method

.method private c()V
aload 0
getfield com/alipay/sdk/app/PayTask/c Lcom/alipay/sdk/widget/a;
ifnull L0
aload 0
getfield com/alipay/sdk/app/PayTask/c Lcom/alipay/sdk/widget/a;
invokevirtual com/alipay/sdk/widget/a/b()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L1 to L4 using L2
.catch all from L1 to L4 using L3
.catch java/lang/Throwable from L5 to L6 using L2
.catch all from L5 to L6 using L3
.catch java/lang/Throwable from L6 to L7 using L2
.catch all from L6 to L7 using L3
.catch java/lang/Throwable from L8 to L9 using L2
.catch all from L8 to L9 using L3
.catch java/lang/Throwable from L9 to L10 using L2
.catch all from L9 to L10 using L3
.catch java/lang/Throwable from L11 to L12 using L13
.catch all from L11 to L12 using L3
.catch java/lang/Throwable from L14 to L15 using L2
.catch all from L14 to L15 using L3
.catch java/lang/Throwable from L16 to L17 using L2
.catch all from L16 to L17 using L3
.catch java/lang/Throwable from L18 to L19 using L2
.catch all from L18 to L19 using L3
.catch java/lang/Throwable from L20 to L21 using L2
.catch all from L20 to L21 using L3
.catch java/lang/Throwable from L22 to L23 using L2
.catch all from L22 to L23 using L3
aload 0
monitorenter
L0:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L24
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 3
aload 3
new java/lang/StringBuilder
dup
ldc "https://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
aload 3
new java/lang/StringBuilder
dup
ldc "http://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L5
L1:
aload 3
new java/lang/StringBuilder
dup
ldc "(http|https)://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\\?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
ldc "<request_token>"
ldc "</request_token>"
aload 4
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;)Ljava/util/Map;
ldc "req_data"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
ldc "_input_charset=\"utf-8\"&ordertoken=\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
ldc "sc"
ldc "h5tonative"
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L4:
aload 0
monitorexit
aload 1
areturn
L5:
aload 3
new java/lang/StringBuilder
dup
ldc "https://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/e Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L6
aload 3
new java/lang/StringBuilder
dup
ldc "http://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/e Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L8
L6:
aload 3
new java/lang/StringBuilder
dup
ldc "(http|https)://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/e Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\\?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 4
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L8
ldc "<request_token>"
ldc "</request_token>"
aload 4
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;)Ljava/util/Map;
ldc "req_data"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
new java/lang/StringBuilder
dup
ldc "_input_charset=\"utf-8\"&ordertoken=\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
ldc "sc"
ldc "h5tonative"
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
L7:
goto L4
L8:
aload 3
new java/lang/StringBuilder
dup
ldc "https://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/f Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L9
aload 3
new java/lang/StringBuilder
dup
ldc "http://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/f Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifeq L14
L9:
aload 3
ldc "alipay.wap.create.direct.pay.by.user"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L14
aload 3
new java/lang/StringBuilder
dup
ldc "(http|https)://"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/f Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\\?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 2
L10:
iload 2
ifne L14
L11:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "url"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 3
ldc "bizcontext"
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
ldc "sc"
ldc "h5tonative"
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
new java/lang/StringBuilder
dup
ldc "new_external_info=="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L12:
aload 3
astore 1
goto L4
L13:
astore 3
L14:
ldc "^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)"
invokestatic java/util/regex/Pattern/compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
aload 1
invokevirtual java/util/regex/Pattern/matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
invokevirtual java/util/regex/Matcher/find()Z
ifeq L24
ldc "?"
ldc ""
aload 1
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L24
aload 1
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;)Ljava/util/Map;
astore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
iconst_0
iconst_1
ldc "trade_no"
aload 5
aload 4
iconst_2
anewarray java/lang/String
dup
iconst_0
ldc "trade_no"
aastore
dup
iconst_1
ldc "alipay_trade_no"
aastore
invokestatic com/alipay/sdk/app/PayTask/a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
ifeq L24
iconst_1
iconst_0
ldc "pay_phase_id"
aload 5
aload 4
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc "payPhaseId"
aastore
dup
iconst_1
ldc "pay_phase_id"
aastore
dup
iconst_2
ldc "out_relation_id"
aastore
invokestatic com/alipay/sdk/app/PayTask/a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
pop
aload 5
ldc "&biz_sub_type=\"TRADE\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "&biz_type=\"trade\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "app_name"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 3
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L25
aload 4
ldc "cid"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L25
L15:
ldc "ali1688"
astore 1
L16:
aload 5
new java/lang/StringBuilder
dup
ldc "&app_name=\""
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iconst_1
iconst_1
ldc "extern_token"
aload 5
aload 4
iconst_4
anewarray java/lang/String
dup
iconst_0
ldc "extern_token"
aastore
dup
iconst_1
ldc "cid"
aastore
dup
iconst_2
ldc "sid"
aastore
dup
iconst_3
ldc "s_id"
aastore
invokestatic com/alipay/sdk/app/PayTask/a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
ifne L22
L17:
ldc ""
astore 1
goto L4
L25:
aload 3
astore 1
L18:
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L16
aload 4
ldc "sid"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L26
L19:
aload 3
astore 1
L20:
aload 4
ldc "s_id"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/CharSequence
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L16
L21:
goto L26
L22:
iconst_1
iconst_0
ldc "appenv"
aload 5
aload 4
iconst_1
anewarray java/lang/String
dup
iconst_0
ldc "appenv"
aastore
invokestatic com/alipay/sdk/app/PayTask/a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
pop
aload 5
ldc "&pay_channel_id=\"alipay_sdk\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/alipay/sdk/app/PayTask$a
dup
aload 0
iconst_0
invokespecial com/alipay/sdk/app/PayTask$a/<init>(Lcom/alipay/sdk/app/PayTask;B)V
astore 3
aload 3
aload 4
ldc "return_url"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
putfield com/alipay/sdk/app/PayTask$a/a Ljava/lang/String;
aload 3
aload 4
ldc "pay_order_id"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
putfield com/alipay/sdk/app/PayTask$a/b Ljava/lang/String;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "&bizcontext=\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new com/alipay/sdk/sys/a
dup
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokespecial com/alipay/sdk/sys/a/<init>(Landroid/content/Context;)V
ldc "sc"
ldc "h5tonative"
invokevirtual com/alipay/sdk/sys/a/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 1
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L23:
goto L4
L2:
astore 1
L24:
ldc ""
astore 1
goto L4
L3:
astore 1
aload 0
monitorexit
aload 1
athrow
L26:
ldc "tb"
astore 1
goto L16
.limit locals 6
.limit stack 9
.end method

.method public getVersion()Ljava/lang/String;
ldc "15.0.8"
areturn
.limit locals 1
.limit stack 1
.end method

.method public h5Pay(Ljava/lang/String;Z)Lcom/alipay/sdk/util/H5PayResultModel;
.catch all from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L4
.catch all from L1 to L3 using L2
.catch java/lang/Throwable from L5 to L6 using L4
.catch all from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L4
.catch all from L7 to L8 using L2
.catch java/lang/Throwable from L8 to L9 using L4
.catch all from L8 to L9 using L2
.catch java/lang/Throwable from L10 to L11 using L4
.catch all from L10 to L11 using L2
.catch java/lang/Throwable from L12 to L13 using L14
.catch all from L12 to L13 using L2
.catch java/lang/Throwable from L15 to L16 using L14
.catch all from L15 to L16 using L2
.catch java/lang/Throwable from L16 to L17 using L14
.catch all from L16 to L17 using L2
.catch java/lang/Throwable from L18 to L19 using L14
.catch all from L18 to L19 using L2
.catch java/lang/Throwable from L20 to L21 using L14
.catch all from L20 to L21 using L2
.catch java/lang/Throwable from L22 to L23 using L14
.catch all from L22 to L23 using L2
.catch java/lang/Throwable from L24 to L25 using L14
.catch all from L24 to L25 using L2
.catch java/lang/Throwable from L26 to L27 using L14
.catch all from L26 to L27 using L2
.catch java/lang/Throwable from L28 to L29 using L14
.catch all from L28 to L29 using L2
.catch java/lang/Throwable from L30 to L31 using L14
.catch all from L30 to L31 using L2
.catch java/lang/Throwable from L31 to L32 using L14
.catch all from L31 to L32 using L2
.catch java/lang/Throwable from L33 to L34 using L14
.catch all from L33 to L34 using L2
.catch java/lang/Throwable from L35 to L36 using L14
.catch all from L35 to L36 using L2
iconst_0
istore 3
aload 0
monitorenter
L0:
new com/alipay/sdk/util/H5PayResultModel
dup
invokespecial com/alipay/sdk/util/H5PayResultModel/<init>()V
astore 7
L1:
aload 1
invokevirtual java/lang/String/trim()Ljava/lang/String;
pop
aload 0
aload 1
iload 2
invokevirtual com/alipay/sdk/app/PayTask/pay(Ljava/lang/String;Z)Ljava/lang/String;
ldc ";"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 6
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 8
aload 6
arraylength
istore 4
L3:
iload 3
iload 4
if_icmpge L7
aload 6
iload 3
aaload
astore 9
L5:
aload 9
iconst_0
aload 9
ldc "={"
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 10
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "={"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 11
aload 9
aload 11
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
istore 5
aload 8
aload 10
aload 9
aload 11
invokevirtual java/lang/String/length()I
iload 5
iadd
aload 9
ldc "}"
invokevirtual java/lang/String/lastIndexOf(Ljava/lang/String;)I
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L6:
iload 3
iconst_1
iadd
istore 3
goto L3
L7:
aload 8
ldc "resultStatus"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L8
aload 7
aload 8
ldc "resultStatus"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokevirtual com/alipay/sdk/util/H5PayResultModel/setResultCode(Ljava/lang/String;)V
L8:
aload 8
ldc "callBackUrl"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L10
aload 7
aload 8
ldc "callBackUrl"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
invokevirtual com/alipay/sdk/util/H5PayResultModel/setReturnUrl(Ljava/lang/String;)V
L9:
aload 0
monitorexit
aload 7
areturn
L10:
aload 8
ldc "result"
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
istore 2
L11:
iload 2
ifeq L9
L12:
aload 8
ldc "result"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast java/lang/String
astore 8
aload 8
invokevirtual java/lang/String/length()I
bipush 15
if_icmple L33
aload 0
getfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alipay/sdk/app/PayTask$a
astore 6
L13:
aload 6
ifnull L20
L15:
aload 6
getfield com/alipay/sdk/app/PayTask$a/b Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L18
aload 7
aload 6
getfield com/alipay/sdk/app/PayTask$a/a Ljava/lang/String;
invokevirtual com/alipay/sdk/util/H5PayResultModel/setReturnUrl(Ljava/lang/String;)V
L16:
aload 0
getfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L17:
goto L9
L18:
aload 7
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
ldc "$OrderId$"
aload 6
getfield com/alipay/sdk/app/PayTask$a/b Ljava/lang/String;
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
invokevirtual com/alipay/sdk/util/H5PayResultModel/setReturnUrl(Ljava/lang/String;)V
L19:
goto L16
L20:
ldc "&callBackUrl=\""
ldc "\""
aload 8
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L21:
aload 6
astore 1
L22:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L37
ldc "&call_back_url=\""
ldc "\""
aload 8
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L23:
aload 6
astore 1
L24:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L37
ldc "&return_url=\""
ldc "\""
aload 8
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L25:
aload 6
astore 1
L26:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L37
ldc "&return_url="
ldc "&"
aload 8
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "utf-8"
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L27:
aload 6
astore 1
L28:
aload 6
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L37
ldc "&callBackUrl="
ldc "&"
aload 8
invokestatic com/alipay/sdk/util/i/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
ldc "utf-8"
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
L29:
aload 1
astore 6
L30:
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L31
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
getfield com/alipay/sdk/data/a/i Ljava/lang/String;
astore 6
L31:
aload 7
aload 6
ldc "utf-8"
invokestatic java/net/URLDecoder/decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/alipay/sdk/util/H5PayResultModel/setReturnUrl(Ljava/lang/String;)V
L32:
goto L9
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L33:
aload 0
getfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 1
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/alipay/sdk/app/PayTask$a
astore 6
L34:
aload 6
ifnull L9
L35:
aload 7
aload 6
getfield com/alipay/sdk/app/PayTask$a/a Ljava/lang/String;
invokevirtual com/alipay/sdk/util/H5PayResultModel/setReturnUrl(Ljava/lang/String;)V
aload 0
getfield com/alipay/sdk/app/PayTask/g Ljava/util/Map;
aload 1
invokeinterface java/util/Map/remove(Ljava/lang/Object;)Ljava/lang/Object; 1
pop
L36:
goto L9
L4:
astore 1
goto L9
L37:
goto L29
L14:
astore 1
goto L9
.limit locals 12
.limit stack 6
.end method

.method public pay(Ljava/lang/String;Z)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L5
.catch all from L3 to L4 using L6
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
aload 0
monitorenter
iload 2
ifeq L1
L0:
aload 0
invokespecial com/alipay/sdk/app/PayTask/b()V
L1:
ldc ""
astore 3
L3:
aload 0
aload 1
invokespecial com/alipay/sdk/app/PayTask/b(Ljava/lang/String;)Ljava/lang/String;
astore 4
L4:
aload 4
astore 3
L7:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
L8:
aload 0
monitorexit
aload 3
areturn
L5:
astore 4
L9:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
L10:
goto L8
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
L6:
astore 3
L11:
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
invokevirtual com/alipay/sdk/data/a/a(Landroid/content/Context;)V
aload 0
invokespecial com/alipay/sdk/app/PayTask/c()V
aload 0
getfield com/alipay/sdk/app/PayTask/b Landroid/app/Activity;
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Landroid/content/Context;Ljava/lang/String;)V
aload 3
athrow
L12:
.limit locals 5
.limit stack 2
.end method
