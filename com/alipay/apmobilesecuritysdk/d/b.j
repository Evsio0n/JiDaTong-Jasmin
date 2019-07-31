.bytecode 50.0
.class public final synchronized com/alipay/apmobilesecuritysdk/d/b
.super java/lang/Object

.method public static a(Landroid/content/Context;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
L0:
ldc "com.ut.device.UTDevice"
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
ldc "getUtdid"
iconst_1
anewarray java/lang/Class
dup
iconst_0
ldc android/content/Context
aastore
invokevirtual java/lang/Class/getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
aconst_null
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
aastore
invokevirtual java/lang/reflect/Method/invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
checkcast java/lang/String
astore 0
L1:
aload 0
areturn
L2:
astore 0
ldc ""
areturn
.limit locals 1
.limit stack 6
.end method
