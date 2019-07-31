.bytecode 50.0
.class public synchronized com/alipay/sdk/util/e
.super java/lang/Object
.inner class public static abstract interface a inner com/alipay/sdk/util/e$a outer com/alipay/sdk/util/e

.field public static final 'a' Ljava/lang/String; = "failed"

.field private 'b' Landroid/app/Activity;

.field private 'c' Lcom/alipay/android/app/IAlixPay;

.field private final 'd' Ljava/lang/Object;

.field private 'e' Z

.field private 'f' Lcom/alipay/sdk/util/e$a;

.field private 'g' Landroid/content/ServiceConnection;

.field private 'h' Lcom/alipay/android/app/IRemoteServiceCallback;

.method public <init>(Landroid/app/Activity;Lcom/alipay/sdk/util/e$a;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc com/alipay/android/app/IAlixPay
putfield com/alipay/sdk/util/e/d Ljava/lang/Object;
aload 0
new com/alipay/sdk/util/f
dup
aload 0
invokespecial com/alipay/sdk/util/f/<init>(Lcom/alipay/sdk/util/e;)V
putfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
aload 0
new com/alipay/sdk/util/g
dup
aload 0
invokespecial com/alipay/sdk/util/g/<init>(Lcom/alipay/sdk/util/e;)V
putfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
aload 1
putfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 0
aload 2
putfield com/alipay/sdk/util/e/f Lcom/alipay/sdk/util/e$a;
return
.limit locals 3
.limit stack 4
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
aload 0
aload 1
putfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic a(Lcom/alipay/sdk/util/e;)Ljava/lang/Object;
aload 0
getfield com/alipay/sdk/util/e/d Ljava/lang/Object;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch java/lang/InterruptedException from L3 to L4 using L5
.catch all from L3 to L4 using L2
.catch all from L4 to L6 using L2
.catch java/lang/Throwable from L6 to L7 using L8
.catch all from L6 to L7 using L9
.catch java/lang/Throwable from L10 to L11 using L8
.catch all from L10 to L11 using L9
.catch java/lang/Throwable from L12 to L13 using L8
.catch all from L12 to L13 using L9
.catch java/lang/Throwable from L14 to L15 using L8
.catch all from L14 to L15 using L9
.catch all from L16 to L17 using L9
.catch java/lang/Throwable from L18 to L19 using L20
.catch java/lang/Throwable from L21 to L22 using L8
.catch all from L21 to L22 using L9
.catch java/lang/Throwable from L23 to L24 using L25
.catch java/lang/Throwable from L26 to L27 using L8
.catch all from L26 to L27 using L9
.catch java/lang/Throwable from L27 to L28 using L8
.catch all from L27 to L28 using L9
.catch java/lang/Throwable from L28 to L29 using L8
.catch all from L28 to L29 using L9
.catch java/lang/Throwable from L29 to L30 using L31
.catch java/lang/Throwable from L32 to L33 using L34
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
invokestatic com/alipay/sdk/util/i/f(Landroid/content/Context;)Ljava/lang/String;
astore 5
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
aload 2
aload 0
getfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
iconst_1
invokevirtual android/content/Context/bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
pop
aload 0
getfield com/alipay/sdk/util/e/d Ljava/lang/Object;
astore 2
aload 2
monitorenter
L0:
aload 0
getfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
astore 6
L1:
aload 6
ifnonnull L4
L3:
aload 0
getfield com/alipay/sdk/util/e/d Ljava/lang/Object;
invokestatic com/alipay/sdk/data/a/b()Lcom/alipay/sdk/data/a;
invokevirtual com/alipay/sdk/data/a/a()I
i2l
invokevirtual java/lang/Object/wait(J)V
L4:
aload 2
monitorexit
L6:
aload 0
getfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
ifnonnull L26
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
invokestatic com/alipay/sdk/util/i/f(Landroid/content/Context;)Ljava/lang/String;
astore 1
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
iconst_0
invokevirtual android/content/pm/PackageManager/getInstalledPackages(I)Ljava/util/List;
astore 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
L7:
iconst_0
istore 3
L10:
iload 3
aload 2
invokeinterface java/util/List/size()I 0
if_icmpge L21
aload 2
iload 3
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/content/pm/PackageInfo
astore 7
aload 7
getfield android/content/pm/PackageInfo/applicationInfo Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
istore 4
L11:
iload 4
iconst_1
iand
ifne L35
iload 4
sipush 128
iand
ifne L35
iconst_1
istore 4
L36:
iload 4
ifeq L13
L12:
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.eg.android.AlipayGphone"
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L14
aload 6
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
getfield android/content/pm/PackageInfo/versionCode I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L13:
iload 3
iconst_1
iadd
istore 3
goto L10
L2:
astore 1
aload 2
monitorexit
aload 1
athrow
L35:
iconst_0
istore 4
goto L36
L14:
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "theme"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L13
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.google."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L13
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
ldc "com.android."
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L13
aload 6
aload 7
getfield android/content/pm/PackageInfo/packageName Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "-"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L15:
goto L13
L8:
astore 1
L16:
ldc "biz"
ldc "ClientBindException"
aload 1
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
L17:
ldc "failed"
astore 2
L18:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
invokevirtual android/app/Activity/unbindService(Landroid/content/ServiceConnection;)V
L19:
aload 0
aconst_null
putfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 2
astore 1
aload 0
getfield com/alipay/sdk/util/e/e Z
ifeq L37
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
iconst_0
invokevirtual android/app/Activity/setRequestedOrientation(I)V
aload 0
iconst_0
putfield com/alipay/sdk/util/e/e Z
aload 2
astore 1
L37:
aload 1
areturn
L21:
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
ldc "biz"
ldc "ClientBindFailed"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "|"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L22:
ldc "failed"
astore 1
L23:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
invokevirtual android/app/Activity/unbindService(Landroid/content/ServiceConnection;)V
L24:
aload 0
aconst_null
putfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 0
getfield com/alipay/sdk/util/e/e Z
ifeq L37
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
iconst_0
invokevirtual android/app/Activity/setRequestedOrientation(I)V
aload 0
iconst_0
putfield com/alipay/sdk/util/e/e Z
ldc "failed"
areturn
L26:
aload 0
getfield com/alipay/sdk/util/e/f Lcom/alipay/sdk/util/e$a;
ifnull L27
aload 0
getfield com/alipay/sdk/util/e/f Lcom/alipay/sdk/util/e$a;
invokeinterface com/alipay/sdk/util/e$a/a()V 0
L27:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
invokevirtual android/app/Activity/getRequestedOrientation()I
ifne L28
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
iconst_1
invokevirtual android/app/Activity/setRequestedOrientation(I)V
aload 0
iconst_1
putfield com/alipay/sdk/util/e/e Z
L28:
aload 0
getfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 0
getfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
invokeinterface com/alipay/android/app/IAlixPay/registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V 1
aload 0
getfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 1
invokeinterface com/alipay/android/app/IAlixPay/Pay(Ljava/lang/String;)Ljava/lang/String; 1
astore 2
aload 0
getfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 0
getfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
invokeinterface com/alipay/android/app/IAlixPay/unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V 1
L29:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
invokevirtual android/app/Activity/unbindService(Landroid/content/ServiceConnection;)V
L30:
aload 0
aconst_null
putfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 2
astore 1
aload 0
getfield com/alipay/sdk/util/e/e Z
ifeq L37
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
iconst_0
invokevirtual android/app/Activity/setRequestedOrientation(I)V
aload 0
iconst_0
putfield com/alipay/sdk/util/e/e Z
aload 2
areturn
L9:
astore 1
L32:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
invokevirtual android/app/Activity/unbindService(Landroid/content/ServiceConnection;)V
L33:
aload 0
aconst_null
putfield com/alipay/sdk/util/e/h Lcom/alipay/android/app/IRemoteServiceCallback;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/g Landroid/content/ServiceConnection;
aload 0
aconst_null
putfield com/alipay/sdk/util/e/c Lcom/alipay/android/app/IAlixPay;
aload 0
getfield com/alipay/sdk/util/e/e Z
ifeq L38
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
iconst_0
invokevirtual android/app/Activity/setRequestedOrientation(I)V
aload 0
iconst_0
putfield com/alipay/sdk/util/e/e Z
L38:
aload 1
athrow
L34:
astore 2
goto L33
L20:
astore 1
goto L19
L31:
astore 1
goto L30
L25:
astore 2
goto L24
L5:
astore 6
goto L4
.limit locals 8
.limit stack 4
.end method

.method static synthetic b(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L9 to L10 using L11
.catch java/lang/Throwable from L12 to L13 using L2
L0:
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
ldc "com.eg.android.AlipayGphone"
invokestatic com/alipay/sdk/util/i/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/util/i$a;
astore 3
L1:
aload 3
ifnull L7
L3:
aload 3
getfield com/alipay/sdk/util/i$a/a [B
invokestatic com/alipay/sdk/util/i/a([B)Ljava/lang/String;
astore 4
L4:
aload 4
ifnull L7
L5:
aload 4
ldc "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"
invokestatic android/text/TextUtils/equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
ifne L7
ldc "biz"
ldc "ClientSignError"
aload 4
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L6:
ldc "failed"
areturn
L7:
aload 3
getfield com/alipay/sdk/util/i$a/b I
istore 2
L8:
iload 2
bipush 78
if_icmple L10
L9:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "com.eg.android.AlipayGphone"
ldc "com.alipay.android.app.TransProcessPayActivity"
invokevirtual android/content/Intent/setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/alipay/sdk/util/e/b Landroid/app/Activity;
aload 3
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
ldc2_w 150L
invokestatic java/lang/Thread/sleep(J)V
L10:
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 3
aload 3
ldc "com.eg.android.AlipayGphone"
invokevirtual android/content/Intent/setPackage(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 3
ldc "com.eg.android.AlipayGphone.IAlixPay"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
aload 1
aload 3
invokespecial com/alipay/sdk/util/e/a(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
areturn
L11:
astore 3
L12:
aload 3
invokevirtual java/lang/Throwable/printStackTrace()V
L13:
goto L10
L2:
astore 3
aload 3
invokevirtual java/lang/Throwable/printStackTrace()V
goto L10
.limit locals 5
.limit stack 3
.end method

.method public final a()V
aload 0
aconst_null
putfield com/alipay/sdk/util/e/b Landroid/app/Activity;
return
.limit locals 1
.limit stack 2
.end method
