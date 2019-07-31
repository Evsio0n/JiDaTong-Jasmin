.bytecode 50.0
.class public final synchronized com/alipay/sdk/app/statistic/a
.super java/lang/Object

.field public static final 'a' Ljava/lang/String; = "alipay_cashier_statistic_record"

.field private static 'b' Lcom/alipay/sdk/app/statistic/c;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static a(Landroid/content/Context;)V
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
ifnull L0
return
L0:
new com/alipay/sdk/app/statistic/c
dup
aload 0
invokespecial com/alipay/sdk/app/statistic/c/<init>(Landroid/content/Context;)V
putstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
return
.limit locals 1
.limit stack 3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
.catch all from L5 to L6 using L2
.catch all from L7 to L8 using L2
.catch all from L9 to L10 using L2
.catch all from L11 to L12 using L2
.catch all from L13 to L14 using L2
.catch all from L15 to L16 using L2
.catch all from L17 to L18 using L2
.catch all from L19 to L20 using L2
aconst_null
astore 5
aconst_null
astore 4
ldc com/alipay/sdk/app/statistic/a
monitorenter
L0:
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
astore 6
L1:
aload 6
ifnonnull L3
L21:
ldc com/alipay/sdk/app/statistic/a
monitorexit
return
L3:
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
astore 7
aload 7
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L7
L4:
ldc ""
astore 1
L5:
new java/lang/Thread
dup
new com/alipay/sdk/app/statistic/b
dup
aload 0
aload 1
invokespecial com/alipay/sdk/app/statistic/b/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
aconst_null
putstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
L6:
goto L21
L2:
astore 0
ldc com/alipay/sdk/app/statistic/a
monitorexit
aload 0
athrow
L7:
aload 1
ldc "&"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 8
L8:
aload 8
ifnull L22
L9:
aload 8
arraylength
istore 3
L10:
iconst_0
istore 2
aconst_null
astore 1
L23:
aload 4
astore 5
aload 1
astore 6
iload 2
iload 3
if_icmpge L19
L11:
aload 8
iload 2
aaload
ldc "="
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 9
L12:
aload 4
astore 5
aload 1
astore 6
aload 9
ifnull L24
aload 4
astore 5
aload 1
astore 6
L13:
aload 9
arraylength
iconst_2
if_icmpne L24
aload 9
iconst_0
aaload
ldc "partner"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L15
aload 9
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
pop
L14:
aload 4
astore 5
aload 1
astore 6
goto L24
L15:
aload 9
iconst_0
aaload
ldc "out_trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L25
aload 9
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 6
L16:
aload 4
astore 5
goto L24
L25:
aload 4
astore 5
aload 1
astore 6
L17:
aload 9
iconst_0
aaload
ldc "trade_no"
invokevirtual java/lang/String/equalsIgnoreCase(Ljava/lang/String;)Z
ifeq L24
aload 9
iconst_1
aaload
ldc "\""
ldc ""
invokevirtual java/lang/String/replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
astore 5
L18:
aload 1
astore 6
goto L24
L19:
aload 5
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 1
aload 6
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 7
ldc "%s,%s,-,%s,-,-,-"
iconst_3
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
dup
iconst_1
aload 4
aastore
dup
iconst_2
aload 4
invokestatic com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;)Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
putfield com/alipay/sdk/app/statistic/c/r Ljava/lang/String;
ldc "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"
bipush 10
anewarray java/lang/Object
dup
iconst_0
aload 7
getfield com/alipay/sdk/app/statistic/c/q Ljava/lang/String;
aastore
dup
iconst_1
aload 7
getfield com/alipay/sdk/app/statistic/c/r Ljava/lang/String;
aastore
dup
iconst_2
aload 7
getfield com/alipay/sdk/app/statistic/c/s Ljava/lang/String;
aastore
dup
iconst_3
aload 7
getfield com/alipay/sdk/app/statistic/c/t Ljava/lang/String;
aastore
dup
iconst_4
aload 7
getfield com/alipay/sdk/app/statistic/c/u Ljava/lang/String;
aastore
dup
iconst_5
aload 7
getfield com/alipay/sdk/app/statistic/c/v Ljava/lang/String;
aastore
dup
bipush 6
aload 7
getfield com/alipay/sdk/app/statistic/c/w Ljava/lang/String;
aastore
dup
bipush 7
aload 7
getfield com/alipay/sdk/app/statistic/c/x Ljava/lang/String;
aastore
dup
bipush 8
aload 7
getfield com/alipay/sdk/app/statistic/c/y Ljava/lang/String;
aastore
dup
bipush 9
aload 7
getfield com/alipay/sdk/app/statistic/c/z Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 1
L20:
goto L5
L24:
iload 2
iconst_1
iadd
istore 2
aload 5
astore 4
aload 6
astore 1
goto L23
L22:
aconst_null
astore 6
goto L19
.limit locals 10
.limit stack 6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
ifnonnull L0
return
L0:
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
aload 0
aload 1
aload 2
invokevirtual com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
ifnonnull L0
return
L0:
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
aload 0
aload 1
aload 2
invokevirtual com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return
.limit locals 3
.limit stack 4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
ifnonnull L0
L1:
return
L0:
aload 1
ifnull L1
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
ifnull L1
getstatic com/alipay/sdk/app/statistic/a/b Lcom/alipay/sdk/app/statistic/c;
aload 0
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getSimpleName()Ljava/lang/String;
aload 1
invokevirtual com/alipay/sdk/app/statistic/c/a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return
.limit locals 2
.limit stack 4
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
new java/lang/Thread
dup
new com/alipay/sdk/app/statistic/b
dup
aload 0
aload 1
invokespecial com/alipay/sdk/app/statistic/b/<init>(Landroid/content/Context;Ljava/lang/String;)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
return
.limit locals 2
.limit stack 6
.end method
