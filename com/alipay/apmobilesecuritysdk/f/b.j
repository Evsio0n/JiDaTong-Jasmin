.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/f/b
.super java/lang/Object

.field private static 'a' Ljava/lang/String;

.method static <clinit>()V
ldc ""
putstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
return
.limit locals 0
.limit stack 1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L6 to L7 using L2
ldc com/alipay/apmobilesecuritysdk/f/b
monitorenter
L0:
getstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L6
aload 0
ldc "alipay_vkey_random"
ldc "random"
ldc ""
invokestatic com/alipay/security/mobile/module/localstorage/c/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 1
putstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
aload 1
invokestatic com/alipay/security/mobile/module/commonutils/a/a(Ljava/lang/String;)Z
ifeq L6
invokestatic java/util/UUID/randomUUID()Ljava/util/UUID;
invokevirtual java/util/UUID/toString()Ljava/lang/String;
invokestatic com/alipay/security/mobile/module/commonutils/crypto/d/a(Ljava/lang/String;)Ljava/lang/String;
putstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
getstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
astore 1
L1:
aload 1
ifnull L6
L3:
aload 0
ldc "alipay_vkey_random"
iconst_0
invokevirtual android/content/Context/getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
astore 0
L4:
aload 0
ifnull L6
L5:
aload 0
invokeinterface android/content/SharedPreferences$Editor/clear()Landroid/content/SharedPreferences$Editor; 0
pop
aload 0
ldc "random"
aload 1
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
pop
aload 0
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L6:
getstatic com/alipay/apmobilesecuritysdk/f/b/a Ljava/lang/String;
astore 0
L7:
ldc com/alipay/apmobilesecuritysdk/f/b
monitorexit
aload 0
areturn
L2:
astore 0
ldc com/alipay/apmobilesecuritysdk/f/b
monitorexit
aload 0
athrow
.limit locals 2
.limit stack 4
.end method
