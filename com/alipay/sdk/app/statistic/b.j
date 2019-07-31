.bytecode 50.0
.class final synchronized com/alipay/sdk/app/statistic/b
.super java/lang/Object
.implements java/lang/Runnable

.field final synthetic 'a' Landroid/content/Context;

.field final synthetic 'b' Ljava/lang/String;

.method <init>(Landroid/content/Context;Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
aload 0
aload 2
putfield com/alipay/sdk/app/statistic/b/b Ljava/lang/String;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public final run()V
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L1 to L3 using L4
.catch java/io/IOException from L3 to L5 using L6
.catch java/lang/Throwable from L3 to L5 using L7
new com/alipay/sdk/packet/impl/c
dup
invokespecial com/alipay/sdk/packet/impl/c/<init>()V
astore 1
L0:
aload 0
getfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
ldc "alipay_cashier_statistic_record"
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 1
aload 0
getfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
aload 2
invokevirtual com/alipay/sdk/packet/impl/c/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
ifnull L3
aload 0
getfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
astore 2
L1:
aload 2
invokestatic android/preference/PreferenceManager/getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
invokeinterface android/content/SharedPreferences/edit()Landroid/content/SharedPreferences$Editor; 0
ldc "alipay_cashier_statistic_record"
invokeinterface android/content/SharedPreferences$Editor/remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor; 1
invokeinterface android/content/SharedPreferences$Editor/commit()Z 0
pop
L3:
aload 0
getfield com/alipay/sdk/app/statistic/b/b Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L5
aload 1
aload 0
getfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
aload 0
getfield com/alipay/sdk/app/statistic/b/b Ljava/lang/String;
invokevirtual com/alipay/sdk/packet/impl/c/a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;
pop
L5:
return
L6:
astore 1
aload 0
getfield com/alipay/sdk/app/statistic/b/a Landroid/content/Context;
ldc "alipay_cashier_statistic_record"
aload 0
getfield com/alipay/sdk/app/statistic/b/b Ljava/lang/String;
invokestatic com/alipay/sdk/util/h/a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return
L7:
astore 1
return
L2:
astore 2
goto L3
L4:
astore 2
goto L3
.limit locals 3
.limit stack 3
.end method
