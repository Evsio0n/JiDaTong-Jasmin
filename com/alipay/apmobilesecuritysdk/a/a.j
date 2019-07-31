.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/a/a
.super java/lang/Object

.field private static 'b' Z

.field private final 'a' Landroid/content/Context;

.method static <clinit>()V
iconst_0
putstatic com/alipay/apmobilesecuritysdk/a/a/b Z
return
.limit locals 0
.limit stack 1
.end method

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L9 to L10 using L2
.catch java/lang/Throwable from L11 to L12 using L2
ldc ""
astore 1
L0:
invokestatic com/alipay/apmobilesecuritysdk/e/f/b()Ljava/lang/String;
astore 2
L1:
aload 2
astore 1
L3:
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L13
L4:
aload 2
areturn
L13:
aload 2
astore 1
L5:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 3
L6:
aload 2
astore 0
aload 3
ifnull L14
aload 2
astore 1
aload 2
astore 0
L7:
aload 3
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L14
L8:
aload 2
astore 1
L9:
aload 3
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
astore 0
L10:
aload 0
astore 1
L11:
aload 3
invokestatic com/alipay/apmobilesecuritysdk/e/f/a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
L12:
aload 0
areturn
L2:
astore 0
aload 1
astore 0
L14:
aload 0
areturn
.limit locals 4
.limit stack 1
.end method

.method static synthetic a(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Throwable from L0 to L1 using L2
.catch all from L0 to L1 using L3
.catch java/lang/Throwable from L4 to L5 using L2
.catch all from L4 to L5 using L3
.catch all from L6 to L7 using L3
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/security/mobile/module/a/d/a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;
ldc "android"
aload 1
aload 2
aload 3
invokeinterface com/alipay/security/mobile/module/a/c/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/security/mobile/module/a/b/a; 4
astore 1
aload 1
getfield com/alipay/security/mobile/module/a/b/a/c Z
istore 4
L1:
iload 4
ifne L4
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Z)V
return
L4:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
aload 1
getfield com/alipay/security/mobile/module/a/b/a/b Ljava/lang/String;
aload 1
getfield com/alipay/security/mobile/module/a/b/a/a Ljava/lang/String;
invokestatic com/alipay/apmobilesecuritysdk/e/e/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
L5:
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Z)V
return
L2:
astore 0
L6:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
L7:
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Z)V
return
L3:
astore 0
iconst_0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Z)V
aload 0
athrow
.limit locals 5
.limit stack 5
.end method

.method private static a(Z)V
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/a/a
monitorenter
L0:
iload 0
putstatic com/alipay/apmobilesecuritysdk/a/a/b Z
L1:
ldc com/alipay/apmobilesecuritysdk/a/a
monitorexit
return
L2:
astore 1
ldc com/alipay/apmobilesecuritysdk/a/a
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method private static a()Z
.catch all from L0 to L1 using L2
ldc com/alipay/apmobilesecuritysdk/a/a
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/a/a/b Z
istore 0
L1:
ldc com/alipay/apmobilesecuritysdk/a/a
monitorexit
iload 0
ireturn
L2:
astore 1
ldc com/alipay/apmobilesecuritysdk/a/a
monitorexit
aload 1
athrow
.limit locals 2
.limit stack 1
.end method

.method private b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/a/b/c;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Lcom/alipay/security/mobile/module/a/b/c;"
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L6 to L7 using L2
.catch java/lang/Throwable from L8 to L9 using L2
.catch java/lang/Throwable from L10 to L11 using L2
.catch java/lang/Throwable from L12 to L13 using L2
.catch java/lang/Throwable from L13 to L14 using L2
L0:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
astore 8
new com/alipay/security/mobile/module/a/b/d
dup
invokespecial com/alipay/security/mobile/module/a/b/d/<init>()V
astore 9
L1:
ldc ""
astore 5
ldc ""
astore 3
L3:
aload 1
ldc "umid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 10
aload 8
invokestatic com/alipay/apmobilesecuritysdk/e/a/b(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 4
L4:
aload 4
ifnull L15
L5:
aload 4
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
astore 5
aload 4
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
astore 2
aload 4
getfield com/alipay/apmobilesecuritysdk/e/b/d Ljava/lang/String;
astore 4
L6:
invokestatic com/alipay/apmobilesecuritysdk/e/a/a()Lcom/alipay/apmobilesecuritysdk/e/b;
astore 6
L7:
aload 6
ifnull L9
L8:
aload 6
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
astore 3
L9:
aload 3
astore 7
aload 2
astore 6
L10:
aload 2
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L13
L11:
aload 3
astore 7
aload 2
astore 6
L12:
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L13
aload 8
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/b(Landroid/content/Context;)Ljava/lang/String;
astore 6
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a()Ljava/lang/String;
astore 7
L13:
aload 9
ldc "android"
putfield com/alipay/security/mobile/module/a/b/d/a Ljava/lang/String;
aload 9
aload 6
putfield com/alipay/security/mobile/module/a/b/d/d Ljava/lang/String;
aload 9
aload 7
putfield com/alipay/security/mobile/module/a/b/d/c Ljava/lang/String;
aload 9
aload 5
putfield com/alipay/security/mobile/module/a/b/d/e Ljava/lang/String;
aload 9
aload 10
putfield com/alipay/security/mobile/module/a/b/d/f Ljava/lang/String;
aload 9
aload 4
putfield com/alipay/security/mobile/module/a/b/d/h Ljava/lang/String;
aload 9
ldc "3"
putfield com/alipay/security/mobile/module/a/b/d/g Ljava/lang/String;
aload 9
aload 8
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/e/a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
putfield com/alipay/security/mobile/module/a/b/d/i Ljava/util/Map;
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/security/mobile/module/a/d/a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;
aload 9
invokeinterface com/alipay/security/mobile/module/a/c/a/a(Lcom/alipay/security/mobile/module/a/b/d;)Lcom/alipay/security/mobile/module/a/b/c; 1
astore 1
L14:
aload 1
areturn
L2:
astore 1
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
aconst_null
areturn
L15:
ldc ""
astore 2
ldc ""
astore 4
goto L6
.limit locals 11
.limit stack 3
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L7 to L8 using L2
.catch java/lang/Throwable from L9 to L10 using L2
.catch java/lang/Throwable from L11 to L12 using L2
.catch java/lang/Throwable from L13 to L14 using L2
.catch java/lang/Throwable from L15 to L16 using L2
.catch java/lang/Throwable from L17 to L18 using L2
.catch java/lang/Throwable from L19 to L20 using L2
ldc ""
astore 2
L0:
invokestatic com/alipay/apmobilesecuritysdk/e/f/a()Ljava/lang/String;
astore 3
L1:
aload 3
astore 2
L3:
aload 3
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L21
L4:
aload 3
areturn
L21:
aload 3
astore 2
L5:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 4
L6:
aload 4
ifnull L12
aload 3
astore 2
L7:
aload 4
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L12
L8:
aload 3
astore 2
L9:
aload 4
invokestatic com/alipay/apmobilesecuritysdk/e/f/a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
L10:
aload 3
astore 2
L11:
aload 4
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
areturn
L12:
aload 3
astore 2
L13:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a(Landroid/content/Context;)Ljava/lang/String;
astore 4
L14:
aload 4
astore 2
aload 4
astore 3
L15:
aload 4
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L22
L16:
aload 4
astore 2
L17:
aload 0
invokestatic com/alipay/apmobilesecuritysdk/f/b/a(Landroid/content/Context;)Ljava/lang/String;
astore 0
L18:
aload 0
astore 2
L19:
aload 0
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 1
L20:
aload 0
astore 3
iload 1
ifne L22
aload 0
areturn
L2:
astore 0
aload 2
astore 3
L22:
aload 3
areturn
.limit locals 5
.limit stack 1
.end method

.method public final a(Ljava/util/Map;)Ljava/lang/String;
.signature "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)Ljava/lang/String;"
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
.catch java/lang/Throwable from L5 to L6 using L2
.catch java/lang/Throwable from L6 to L7 using L2
.catch java/lang/Throwable from L8 to L9 using L2
.catch java/lang/Throwable from L10 to L11 using L2
.catch java/lang/Throwable from L12 to L13 using L2
.catch java/lang/Throwable from L14 to L15 using L2
.catch java/lang/Throwable from L15 to L16 using L17
.catch java/lang/Throwable from L18 to L19 using L17
.catch java/lang/Throwable from L19 to L20 using L17
.catch java/lang/Throwable from L20 to L21 using L2
.catch java/lang/Throwable from L21 to L22 using L23
.catch java/lang/Throwable from L22 to L24 using L2
.catch java/lang/Throwable from L25 to L26 using L2
.catch java/lang/Throwable from L26 to L27 using L28
.catch java/lang/Throwable from L29 to L30 using L28
.catch java/lang/Throwable from L30 to L31 using L2
.catch java/lang/Throwable from L31 to L32 using L33
.catch java/lang/Throwable from L34 to L35 using L33
.catch java/lang/Throwable from L36 to L37 using L33
.catch java/lang/Throwable from L38 to L39 using L33
.catch java/lang/Throwable from L40 to L41 using L2
.catch java/lang/Throwable from L42 to L43 using L2
.catch java/lang/Throwable from L44 to L45 using L2
.catch java/lang/Throwable from L46 to L47 using L2
.catch java/lang/Throwable from L48 to L49 using L2
.catch java/lang/Throwable from L50 to L51 using L2
.catch java/lang/Throwable from L52 to L53 using L17
.catch java/lang/Throwable from L54 to L55 using L2
.catch java/lang/Throwable from L55 to L56 using L2
.catch java/lang/Throwable from L57 to L58 using L2
.catch java/lang/Throwable from L59 to L60 using L33
aload 1
ifnonnull L0
ldc ""
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokevirtual android/content/Context/getFilesDir()Ljava/io/File;
invokevirtual java/io/File/getAbsolutePath()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/log/ap"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 7
getstatic android/os/Build/MODEL Ljava/lang/String;
astore 8
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokevirtual android/content/Context/getApplicationContext()Landroid/content/Context;
invokevirtual android/content/Context/getApplicationInfo()Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/packageName Ljava/lang/String;
astore 9
aload 1
ldc "tid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 10
aload 1
ldc "utdid"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 11
L1:
ldc ""
astore 6
L3:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 12
L4:
aload 12
ifnull L6
L5:
aload 12
getfield com/alipay/apmobilesecuritysdk/e/b/a Ljava/lang/String;
astore 6
L6:
new com/alipay/apmobilesecuritysdk/b/a
dup
aload 8
aload 9
ldc "security-sdk-token"
ldc "3.0.2.20151027"
aload 10
aload 11
aload 6
invokespecial com/alipay/apmobilesecuritysdk/b/a/<init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
astore 6
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTime()Ljava/util/Date;
astore 8
new java/text/SimpleDateFormat
dup
ldc "yyyyMMdd"
invokespecial java/text/SimpleDateFormat/<init>(Ljava/lang/String;)V
aload 8
invokevirtual java/text/SimpleDateFormat/format(Ljava/util/Date;)Ljava/lang/String;
astore 8
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ".log"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 6
invokevirtual com/alipay/apmobilesecuritysdk/b/a/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
aload 1
ldc "userId"
ldc ""
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 8
new java/util/Date
dup
invokespecial java/util/Date/<init>()V
astore 6
new java/util/Date
dup
bipush 115
bipush 10
bipush 10
iconst_0
iconst_0
iconst_0
invokespecial java/util/Date/<init>(IIIIII)V
astore 9
new java/util/Date
dup
bipush 115
bipush 10
bipush 11
bipush 23
bipush 59
bipush 59
invokespecial java/util/Date/<init>(IIIIII)V
astore 10
aload 6
aload 9
invokevirtual java/util/Date/after(Ljava/util/Date;)Z
ifeq L61
aload 6
aload 10
invokevirtual java/util/Date/before(Ljava/util/Date;)Z
ifeq L61
L7:
iconst_1
istore 2
goto L62
L63:
iload 2
ifeq L44
L8:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 6
L9:
aload 6
ifnonnull L42
iconst_1
istore 2
L64:
iload 2
ifeq L55
L10:
aload 0
aload 1
invokespecial com/alipay/apmobilesecuritysdk/a/a/b(Ljava/util/Map;)Lcom/alipay/security/mobile/module/a/b/c;
astore 9
L11:
aload 9
ifnull L65
L12:
aload 9
getfield com/alipay/security/mobile/module/a/b/c/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L66
aload 9
getfield com/alipay/security/mobile/module/a/b/c/c Z
istore 3
L13:
iload 3
ifeq L65
L14:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
astore 6
ldc "1"
aload 9
getfield com/alipay/security/mobile/module/a/b/c/h Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
istore 3
L15:
aload 6
ldc "vkeyid_settings"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 10
L16:
aload 10
ifnull L20
iload 3
ifeq L52
L18:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
ldc "1"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L19:
aload 10
ldc "log_switch"
aload 6
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 10
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L20:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/e/e/c(Landroid/content/Context;)Ljava/lang/String;
astore 6
aload 9
getfield com/alipay/security/mobile/module/a/b/c/i Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifne L22
aload 6
aload 9
getfield com/alipay/security/mobile/module/a/b/c/i Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;Ljava/lang/String;)Z
ifne L22
aload 9
getfield com/alipay/security/mobile/module/a/b/c/b Ljava/lang/String;
astore 6
invokestatic com/alipay/apmobilesecuritysdk/a/a/a()Z
ifne L22
iconst_1
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Z)V
L21:
new com/alipay/apmobilesecuritysdk/a/b
dup
aload 0
aload 8
aload 6
ldc ""
invokespecial com/alipay/apmobilesecuritysdk/a/b/<init>(Lcom/alipay/apmobilesecuritysdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invokevirtual java/lang/Thread/start()V
L22:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/e/b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
astore 1
L24:
aload 9
ifnull L30
L25:
new com/alipay/apmobilesecuritysdk/e/b
dup
aload 9
aload 1
invokespecial com/alipay/apmobilesecuritysdk/e/b/<init>(Lcom/alipay/security/mobile/module/a/b/c;Ljava/lang/String;)V
astore 1
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
aload 1
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;Lcom/alipay/apmobilesecuritysdk/e/b;)V
aload 1
invokestatic com/alipay/apmobilesecuritysdk/e/f/a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
astore 6
aload 1
invokestatic com/alipay/apmobilesecuritysdk/a/a/a/a(Lcom/alipay/apmobilesecuritysdk/e/b;)V
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
astore 1
invokestatic java/lang/System/currentTimeMillis()J
lstore 4
L26:
aload 1
ldc "vkeyid_settings"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 1
L27:
aload 1
ifnull L30
L29:
aload 1
ldc "vkey_valid"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
lload 4
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L30:
aload 9
getfield com/alipay/security/mobile/module/a/b/c/b Ljava/lang/String;
astore 1
L31:
new com/alipay/apmobilesecuritysdk/b/b
dup
aload 7
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/security/mobile/module/a/d/a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/a/c/a;
invokespecial com/alipay/apmobilesecuritysdk/b/b/<init>(Ljava/lang/String;Lcom/alipay/security/mobile/module/a/c/a;)V
astore 7
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
astore 8
aload 8
ldc "connectivity"
invokevirtual android/content/Context/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/net/ConnectivityManager
astore 6
L32:
aload 6
ifnonnull L59
aconst_null
astore 6
L67:
aload 6
ifnull L68
L34:
aload 6
invokevirtual android/net/NetworkInfo/isConnected()Z
ifeq L68
aload 6
invokevirtual android/net/NetworkInfo/getType()I
iconst_1
if_icmpne L68
L35:
iconst_1
istore 2
L36:
aload 8
invokestatic com/alipay/apmobilesecuritysdk/e/e/a(Landroid/content/Context;)Z
istore 3
L37:
iload 2
ifeq L39
iload 3
ifeq L39
L38:
new java/lang/Thread
dup
new com/alipay/apmobilesecuritysdk/b/c
dup
aload 7
invokespecial com/alipay/apmobilesecuritysdk/b/c/<init>(Lcom/alipay/apmobilesecuritysdk/b/b;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L39:
aload 1
areturn
L61:
iconst_0
istore 2
goto L62
L40:
new java/util/Date
dup
bipush 115
bipush 11
bipush 11
iconst_0
iconst_0
iconst_0
invokespecial java/util/Date/<init>(IIIIII)V
astore 9
new java/util/Date
dup
bipush 115
bipush 11
bipush 12
bipush 23
bipush 59
bipush 59
invokespecial java/util/Date/<init>(IIIIII)V
astore 10
aload 6
aload 9
invokevirtual java/util/Date/after(Ljava/util/Date;)Z
ifeq L69
aload 6
aload 10
invokevirtual java/util/Date/before(Ljava/util/Date;)Z
ifeq L69
L41:
iconst_1
istore 2
goto L63
L42:
aload 6
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L70
L43:
iconst_1
istore 2
goto L64
L44:
invokestatic com/alipay/apmobilesecuritysdk/c/e/a()V
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
aload 1
invokestatic com/alipay/apmobilesecuritysdk/c/e/b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
astore 6
new java/lang/StringBuilder
dup
ldc "[*]currentDeviceInfoHash = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/e/a/a(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/e/b;
astore 9
L45:
aload 9
ifnonnull L46
iconst_1
istore 2
goto L64
L46:
aload 9
getfield com/alipay/apmobilesecuritysdk/e/b/b Ljava/lang/String;
astore 10
new java/lang/StringBuilder
dup
ldc "[*]storedDeviceInfoHash = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 10
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
pop
aload 6
aload 10
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;Ljava/lang/String;)Z
ifne L71
L47:
iconst_1
istore 2
goto L72
L48:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/e/f/a(Landroid/content/Context;)Z
ifne L50
L49:
iconst_1
istore 2
goto L64
L50:
aload 9
getfield com/alipay/apmobilesecuritysdk/e/b/c Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
istore 3
L51:
iload 3
ifeq L73
iconst_1
istore 2
goto L64
L73:
iconst_0
istore 2
goto L64
L66:
iconst_0
istore 3
goto L13
L52:
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a()Ljava/lang/String;
ldc "0"
invokestatic com/alipay/security/mobile/module/commonutils/crypto/i/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
L53:
goto L19
L65:
aload 9
ifnull L57
L54:
new java/lang/StringBuilder
dup
ldc "Server error, result:"
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
aload 9
getfield com/alipay/security/mobile/module/a/b/b/d Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/String;)V
L55:
aload 0
getfield com/alipay/apmobilesecuritysdk/a/a/a Landroid/content/Context;
invokestatic com/alipay/apmobilesecuritysdk/a/a/a(Landroid/content/Context;)Ljava/lang/String;
astore 1
L56:
goto L31
L57:
ldc "Server error, response is null"
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/String;)V
L58:
goto L55
L2:
astore 6
ldc ""
astore 1
L74:
aload 6
invokestatic com/alipay/security/mobile/module/commonutils/d/a(Ljava/lang/Throwable;)V
aload 1
areturn
L59:
aload 6
invokevirtual android/net/ConnectivityManager/getActiveNetworkInfo()Landroid/net/NetworkInfo;
astore 6
L60:
goto L67
L68:
iconst_0
istore 2
goto L36
L33:
astore 6
goto L74
L28:
astore 1
goto L30
L23:
astore 6
goto L22
L17:
astore 6
goto L20
L62:
iload 2
ifeq L40
iconst_1
istore 2
goto L63
L69:
iconst_0
istore 2
goto L63
L70:
iconst_0
istore 2
goto L64
L72:
iload 2
ifeq L48
iconst_1
istore 2
goto L64
L71:
iconst_0
istore 2
goto L72
.limit locals 13
.limit stack 9
.end method
