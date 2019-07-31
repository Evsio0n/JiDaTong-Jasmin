.bytecode 50.0
.class public final synchronized com/flurry/android/InstallReceiver
.super android/content/BroadcastReceiver

.field private final 'a' Landroid/os/Handler;

.field private 'b' Ljava/io/File;

.method private <init>()V
aload 0
invokespecial android/content/BroadcastReceiver/<init>()V
aload 0
aconst_null
putfield com/flurry/android/InstallReceiver/b Ljava/io/File;
new android/os/HandlerThread
dup
ldc "InstallReceiver"
invokespecial android/os/HandlerThread/<init>(Ljava/lang/String;)V
astore 1
aload 1
invokevirtual android/os/HandlerThread/start()V
aload 0
new android/os/Handler
dup
aload 1
invokevirtual android/os/HandlerThread/getLooper()Landroid/os/Looper;
invokespecial android/os/Handler/<init>(Landroid/os/Looper;)V
putfield com/flurry/android/InstallReceiver/a Landroid/os/Handler;
return
.limit locals 2
.limit stack 4
.end method

.method static synthetic a(Lcom/flurry/android/InstallReceiver;)Ljava/io/File;
aload 0
getfield com/flurry/android/InstallReceiver/b Ljava/io/File;
areturn
.limit locals 1
.limit stack 1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
aload 0
ifnull L0
aload 0
invokevirtual java/lang/String/trim()Ljava/lang/String;
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L1
L0:
new java/lang/IllegalArgumentException
dup
ldc "Referrer is null or empty"
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L1:
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 3
aload 0
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 4
aload 4
arraylength
istore 2
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L3
aload 4
iload 1
aaload
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 5
aload 5
arraylength
iconst_2
if_icmpeq L4
ldc "InstallReceiver"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid referrer Element: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
iload 1
aaload
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc " in referrer tag "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/a(Ljava/lang/String;Ljava/lang/String;)I
pop
L5:
iload 1
iconst_1
iadd
istore 1
goto L2
L4:
aload 3
aload 5
iconst_0
aaload
aload 5
iconst_1
aaload
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L5
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 0
aload 3
ldc "utm_source"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L6
aload 0
ldc "Campaign Source is missing.\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L6:
aload 3
ldc "utm_medium"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L7
aload 0
ldc "Campaign Medium is missing.\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L7:
aload 3
ldc "utm_campaign"
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
ifnonnull L8
aload 0
ldc "Campaign Name is missing.\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L8:
aload 0
invokevirtual java/lang/StringBuilder/length()I
ifle L9
new java/lang/IllegalArgumentException
dup
aload 0
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/IllegalArgumentException/<init>(Ljava/lang/String;)V
athrow
L9:
aload 3
areturn
.limit locals 6
.limit stack 4
.end method

.method private a(Ljava/util/Map;)V
.catch all from L0 to L1 using L2
aload 0
monitorenter
L0:
new com/flurry/android/t
dup
aload 0
aload 1
invokespecial com/flurry/android/t/<init>(Lcom/flurry/android/InstallReceiver;Ljava/util/Map;)V
astore 1
aload 0
getfield com/flurry/android/InstallReceiver/a Landroid/os/Handler;
aload 1
invokevirtual android/os/Handler/post(Ljava/lang/Runnable;)Z
pop
L1:
aload 0
monitorexit
return
L2:
astore 1
aload 0
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 4
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.catch java/lang/IllegalArgumentException from L0 to L1 using L2
aload 0
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ".flurryinstallreceiver."
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokestatic com/flurry/android/FlurryAgent/e()Ljava/lang/String;
invokevirtual java/lang/String/hashCode()I
bipush 16
invokestatic java/lang/Integer/toString(II)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/content/Context/getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
putfield com/flurry/android/InstallReceiver/b Ljava/io/File;
invokestatic com/flurry/android/FlurryAgent/isCaptureUncaughtExceptions()Z
ifeq L3
new com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler
dup
invokespecial com/flurry/android/FlurryAgent$FlurryDefaultExceptionHandler/<init>()V
invokestatic java/lang/Thread/setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
L3:
aload 2
ldc "referrer"
invokevirtual android/content/Intent/getStringExtra(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
ifnull L4
ldc "com.android.vending.INSTALL_REFERRER"
aload 2
invokevirtual android/content/Intent/getAction()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
L4:
return
L0:
aload 0
aload 1
invokestatic com/flurry/android/InstallReceiver/a(Ljava/lang/String;)Ljava/util/Map;
invokespecial com/flurry/android/InstallReceiver/a(Ljava/util/Map;)V
L1:
return
L2:
astore 1
ldc "InstallReceiver"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "Invalid referrer Tag: "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/IllegalArgumentException/getMessage()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/flurry/android/ai/c(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 3
.limit stack 5
.end method
