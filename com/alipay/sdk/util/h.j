.bytecode 50.0
.class public final synchronized com/alipay/sdk/util/h
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private static a()Ljava/lang/String;
ldc "1234567812345678A1F20E7="
areturn
.limit locals 0
.limit stack 1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L7 to L8 using L2
.catch java/lang/Exception from L9 to L10 using L2
.catch java/lang/Exception from L11 to L12 using L2
aconst_null
astore 3
aconst_null
astore 4
aload 3
astore 2
L0:
aload 0
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
aload 1
aconst_null
invokeinterface android/content/SharedPreferences/getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 2
astore 5
L1:
aload 4
astore 0
aload 3
astore 2
L3:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
L4:
aload 3
astore 2
L5:
ldc "1234567812345678A1F20E7="
aload 5
invokestatic com/alipay/sdk/encrypt/e/b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 0
L6:
aload 0
astore 2
L7:
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L12
L8:
aload 0
astore 2
L9:
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
L10:
aload 0
astore 2
L11:
ldc "cp"
ldc "TriDesEncryptError"
ldc "%s,%s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 5
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L12:
aload 0
areturn
L2:
astore 0
aload 2
areturn
.limit locals 6
.limit stack 7
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L2
L0:
ldc "1234567812345678A1F20E7="
aload 2
invokestatic com/alipay/sdk/encrypt/e/a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
ldc "cp"
ldc "TriDesDecryptError"
ldc "%s,%s"
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 2
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic com/alipay/sdk/app/statistic/a/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
L1:
aload 0
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
aload 3
invokeinterface android/content/SharedPreferences$Editor/putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 2
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L3:
return
L2:
astore 0
return
.limit locals 4
.limit stack 7
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
aload 1
invokeinterface android/content/SharedPreferences/contains(Ljava/lang/String;)Z 1
istore 2
L1:
iload 2
ireturn
L2:
astore 0
iconst_0
ireturn
.limit locals 3
.limit stack 2
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
.catch java/lang/Throwable from L0 to L1 using L2
L0:
aload 0
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
aload 1
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L1:
return
L2:
astore 0
return
.limit locals 2
.limit stack 2
.end method
