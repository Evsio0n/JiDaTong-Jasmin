.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/z
.super java/lang/Object

.field private static 'a' Ljava/lang/Boolean;

.method static <clinit>()V
aconst_null
putstatic com/alipay/android/phone/mrpc/core/z/a Ljava/lang/Boolean;
return
.limit locals 0
.limit stack 1
.end method

.method public static final a(Landroid/content/Context;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
getstatic com/alipay/android/phone/mrpc/core/z/a Ljava/lang/Boolean;
ifnull L0
getstatic com/alipay/android/phone/mrpc/core/z/a Ljava/lang/Boolean;
invokevirtual java/lang/Boolean/booleanValue()Z
ireturn
L0:
aload 0
invokevirtual android/content/Context/getPackageManager()Landroid/content/pm/PackageManager;
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
iconst_0
invokevirtual android/content/pm/PackageManager/getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
getfield android/content/pm/ApplicationInfo/flags I
iconst_2
iand
ifeq L5
L1:
iconst_1
istore 1
L3:
iload 1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
astore 0
aload 0
putstatic com/alipay/android/phone/mrpc/core/z/a Ljava/lang/Boolean;
aload 0
invokevirtual java/lang/Boolean/booleanValue()Z
istore 1
L4:
iload 1
ireturn
L5:
iconst_0
istore 1
goto L3
L2:
astore 0
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method
