.bytecode 50.0
.class public synchronized com/nd/crashcollection/lib/CrashHandler
.super java/lang/Object
.implements java/lang/Thread$UncaughtExceptionHandler
.inner class inner com/nd/crashcollection/lib/CrashHandler$1
.inner class public static abstract interface NDUncaughtExceptionHandler inner com/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler outer com/nd/crashcollection/lib/CrashHandler

.field private static 'INSTANCE' Lcom/nd/crashcollection/lib/CrashHandler;

.field private 'infos' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"

.field private 'mContext' Landroid/content/Context;

.field private 'mDefaultHandler' Ljava/lang/Thread$UncaughtExceptionHandler;

.field private 'mNDUncaughtExceptionHandler' Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;

.method static <clinit>()V
new com/nd/crashcollection/lib/CrashHandler
dup
invokespecial com/nd/crashcollection/lib/CrashHandler/<init>()V
putstatic com/nd/crashcollection/lib/CrashHandler/INSTANCE Lcom/nd/crashcollection/lib/CrashHandler;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/crashcollection/lib/CrashHandler/infos Ljava/util/Map;
return
.limit locals 1
.limit stack 3
.end method

.method static synthetic access$0(Lcom/nd/crashcollection/lib/CrashHandler;)Landroid/content/Context;
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private collectDeviceInfo()V
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L3 to L4 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L5 to L6 using L2
.catch android/content/pm/PackageManager$NameNotFoundException from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L11
L0:
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_1
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 4
L1:
aload 4
ifnull L6
L3:
aload 4
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
ifnonnull L7
L4:
ldc "null"
astore 3
L5:
new java/lang/StringBuilder
dup
aload 4
getfield android/content/pm/PackageInfo/versionCode I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/infos Ljava/util/Map;
ldc "versionName"
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/infos Ljava/util/Map;
ldc "versionCode"
aload 4
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L6:
ldc android/os/Build
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 3
aload 3
arraylength
istore 2
iconst_0
istore 1
L12:
iload 1
iload 2
if_icmplt L13
return
L7:
aload 4
getfield android/content/pm/PackageInfo/versionName Ljava/lang/String;
astore 3
L8:
goto L5
L13:
aload 3
iload 1
aaload
astore 4
L9:
aload 4
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/infos Ljava/util/Map;
aload 4
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
aload 4
aconst_null
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
L10:
iload 1
iconst_1
iadd
istore 1
goto L12
L11:
astore 4
goto L10
L2:
astore 3
goto L6
.limit locals 5
.limit stack 4
.end method

.method private getCrashInfo(Ljava/lang/String;)Ljava/lang/String;
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 2
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/infos Ljava/util/Map;
invokeinterface java/util/Map/entrySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifne L1
aload 2
ldc "\n"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
aload 1
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 2
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
areturn
L1:
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/Map$Entry
astore 5
aload 5
invokeinterface java/util/Map$Entry/getKey()Ljava/lang/Object; 0
checkcast java/lang/String
astore 4
aload 5
invokeinterface java/util/Map$Entry/getValue()Ljava/lang/Object; 0
checkcast java/lang/String
astore 5
aload 2
new java/lang/StringBuilder
dup
aload 4
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 5
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "\n"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L0
.limit locals 6
.limit stack 4
.end method

.method public static getInstance()Lcom/nd/crashcollection/lib/CrashHandler;
getstatic com/nd/crashcollection/lib/CrashHandler/INSTANCE Lcom/nd/crashcollection/lib/CrashHandler;
areturn
.limit locals 0
.limit stack 1
.end method

.method private getNetworkType(Landroid/content/Context;)Ljava/lang/String;
aload 1
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 1
aload 1
ifnonnull L0
ldc "unknown"
areturn
L0:
aload 1
invokevirtual android/net/NetworkInfo/getTypeName()Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method private getStack(Ljava/lang/Throwable;)Ljava/lang/String;
new java/io/StringWriter
dup
invokespecial java/io/StringWriter/<init>()V
astore 2
new java/io/PrintWriter
dup
aload 2
invokespecial java/io/PrintWriter/<init>(Ljava/io/Writer;)V
astore 3
aload 1
aload 3
invokevirtual java/lang/Throwable/printStackTrace(Ljava/io/PrintWriter;)V
aload 1
invokevirtual java/lang/Throwable/getCause()Ljava/lang/Throwable;
astore 1
L0:
aload 1
ifnonnull L1
aload 3
invokevirtual java/io/PrintWriter/close()V
aload 2
invokevirtual java/lang/Object/toString()Ljava/lang/String;
areturn
L1:
aload 1
aload 3
invokevirtual java/lang/Throwable/printStackTrace(Ljava/io/PrintWriter;)V
aload 1
invokevirtual java/lang/Throwable/getCause()Ljava/lang/Throwable;
astore 1
goto L0
.limit locals 4
.limit stack 3
.end method

.method private getVersionCode(Landroid/content/Context;)I
.catch android/content/pm/PackageManager$NameNotFoundException from L0 to L1 using L2
aconst_null
astore 2
aload 1
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
astore 3
L0:
aload 3
aload 1
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
astore 1
L1:
aload 1
ifnonnull L3
iconst_m1
ireturn
L3:
aload 1
getfield android/content/pm/PackageInfo/versionCode I
ireturn
L2:
astore 1
aload 2
astore 1
goto L1
.limit locals 4
.limit stack 3
.end method

.method private handleException(Ljava/lang/Throwable;Z)Z
aload 1
ifnonnull L0
iconst_0
ireturn
L0:
iload 2
ifeq L1
aconst_null
astore 3
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mNDUncaughtExceptionHandler Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;
ifnull L2
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mNDUncaughtExceptionHandler Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;
invokeinterface com/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler/getTipMsgForException()Ljava/lang/String; 0
astore 3
L2:
aload 3
astore 4
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
ldc "\u5f88\u62b1\u6b49,\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38,\u5373\u5c06\u9000\u51fa."
astore 4
L3:
new com/nd/crashcollection/lib/CrashHandler$1
dup
aload 0
aload 4
invokespecial com/nd/crashcollection/lib/CrashHandler$1/<init>(Lcom/nd/crashcollection/lib/CrashHandler;Ljava/lang/String;)V
invokevirtual com/nd/crashcollection/lib/CrashHandler$1/start()V
L1:
aload 0
invokespecial com/nd/crashcollection/lib/CrashHandler/collectDeviceInfo()V
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/CrashHandler/saveCrashInfo2DB(Ljava/lang/Throwable;)Lcom/nd/crashcollection/lib/CrashInfo;
pop
iconst_1
ireturn
.limit locals 5
.limit stack 4
.end method

.method private isDebuggable(Landroid/content/Context;)Z
aload 1
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
iconst_2
iand
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method private saveCrashInfo2DB(Ljava/lang/Throwable;)Lcom/nd/crashcollection/lib/CrashInfo;
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/CrashHandler/getStack(Ljava/lang/Throwable;)Ljava/lang/String;
astore 5
aload 5
bipush 10
invokevirtual java/lang/String/indexOf(I)I
istore 2
ldc ""
astore 1
iload 2
iconst_m1
if_icmpeq L0
aload 5
iconst_0
iload 2
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
astore 1
L0:
new com/nd/crashcollection/lib/CrashInfo
dup
invokespecial com/nd/crashcollection/lib/CrashInfo/<init>()V
astore 6
aload 6
getstatic android/os/Build$VERSION/SDK_INT I
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAndroidSdk(I)V
aload 6
getstatic android/os/Build$VERSION/RELEASE Ljava/lang/String;
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAndroidRelease(Ljava/lang/String;)V
aload 6
invokestatic java/util/Locale/getDefault()Ljava/util/Locale;
invokevirtual java/util/Locale/getLanguage()Ljava/lang/String;
invokevirtual com/nd/crashcollection/lib/CrashInfo/setLanguage(Ljava/lang/String;)V
aload 0
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
invokespecial com/nd/crashcollection/lib/CrashHandler/getVersionCode(Landroid/content/Context;)I
istore 2
aload 6
iload 2
invokevirtual com/nd/crashcollection/lib/CrashInfo/setAppVersion(I)V
aload 6
aload 0
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
invokespecial com/nd/crashcollection/lib/CrashHandler/getNetworkType(Landroid/content/Context;)Ljava/lang/String;
invokevirtual com/nd/crashcollection/lib/CrashInfo/setNetworkType(Ljava/lang/String;)V
aload 6
aload 1
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashType(Ljava/lang/String;)V
aload 6
aload 0
aload 5
invokespecial com/nd/crashcollection/lib/CrashHandler/getCrashInfo(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashInfo(Ljava/lang/String;)V
aload 6
iload 2
aload 5
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashStackMd5(ILjava/lang/String;)V
invokestatic java/lang/System/currentTimeMillis()J
lstore 3
aload 6
getstatic java/util/concurrent/TimeUnit/MILLISECONDS Ljava/util/concurrent/TimeUnit;
lload 3
invokevirtual java/util/concurrent/TimeUnit/toSeconds(J)J
invokevirtual com/nd/crashcollection/lib/CrashInfo/setCrashTime(J)V
new com/nd/crashcollection/lib/CrashInfoSQLiteHelper
dup
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
invokespecial com/nd/crashcollection/lib/CrashInfoSQLiteHelper/<init>(Landroid/content/Context;)V
aload 6
invokevirtual com/nd/crashcollection/lib/CrashInfoSQLiteHelper/insertCrashInfo(Lcom/nd/crashcollection/lib/CrashInfo;)V
aload 6
areturn
.limit locals 7
.limit stack 4
.end method

.method public init(Landroid/content/Context;)V
aload 0
aload 1
invokespecial com/nd/crashcollection/lib/CrashHandler/isDebuggable(Landroid/content/Context;)Z
ifeq L0
iconst_0
istore 2
L1:
aload 0
aload 1
iload 2
aconst_null
invokevirtual com/nd/crashcollection/lib/CrashHandler/init(Landroid/content/Context;ZLcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;)V
return
L0:
iconst_1
istore 2
goto L1
.limit locals 3
.limit stack 4
.end method

.method public init(Landroid/content/Context;ZLcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;)V
.catch java/lang/Exception from L0 to L1 using L2
iload 2
ifeq L1
aload 0
aload 3
putfield com/nd/crashcollection/lib/CrashHandler/mNDUncaughtExceptionHandler Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;
L0:
aload 0
aload 1
putfield com/nd/crashcollection/lib/CrashHandler/mContext Landroid/content/Context;
aload 0
invokestatic java/lang/Thread/getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
putfield com/nd/crashcollection/lib/CrashHandler/mDefaultHandler Ljava/lang/Thread$UncaughtExceptionHandler;
aload 0
invokestatic java/lang/Thread/setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
aload 1
new android/content/Intent
dup
aload 1
ldc com/nd/crashcollection/lib/UploadCrashInfoService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
L1:
return
L2:
astore 1
return
.limit locals 4
.limit stack 5
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.catch java/lang/InterruptedException from L0 to L1 using L2
invokestatic android/os/Looper/getMainLooper()Landroid/os/Looper;
invokevirtual android/os/Looper/getThread()Ljava/lang/Thread;
aload 1
if_acmpne L3
iconst_1
istore 3
L4:
aload 0
aload 2
iload 3
invokespecial com/nd/crashcollection/lib/CrashHandler/handleException(Ljava/lang/Throwable;Z)Z
ifne L5
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mDefaultHandler Ljava/lang/Thread$UncaughtExceptionHandler;
ifnull L5
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mDefaultHandler Ljava/lang/Thread$UncaughtExceptionHandler;
aload 1
aload 2
invokeinterface java/lang/Thread$UncaughtExceptionHandler/uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V 2
L6:
return
L3:
iconst_0
istore 3
goto L4
L5:
iload 3
ifeq L6
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mNDUncaughtExceptionHandler Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;
ifnonnull L7
L0:
ldc2_w 3000L
invokestatic java/lang/Thread/sleep(J)V
L1:
getstatic android/os/Build$VERSION/SDK_INT I
bipush 17
if_icmplt L8
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mDefaultHandler Ljava/lang/Thread$UncaughtExceptionHandler;
aload 1
aload 2
invokeinterface java/lang/Thread$UncaughtExceptionHandler/uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V 2
return
L7:
aload 0
getfield com/nd/crashcollection/lib/CrashHandler/mNDUncaughtExceptionHandler Lcom/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler;
invokeinterface com/nd/crashcollection/lib/CrashHandler$NDUncaughtExceptionHandler/beforeExitSoft()V 0
goto L1
L8:
invokestatic android/os/Process/myPid()I
invokestatic android/os/Process/killProcess(I)V
iconst_1
invokestatic java/lang/System/exit(I)V
return
L2:
astore 4
goto L1
.limit locals 5
.limit stack 3
.end method
