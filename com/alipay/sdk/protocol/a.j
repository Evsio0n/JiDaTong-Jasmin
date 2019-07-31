.bytecode 50.0
.class public final synchronized enum com/alipay/sdk/protocol/a
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/alipay/sdk/protocol/a;>;"

.field public static final enum 'a' Lcom/alipay/sdk/protocol/a;

.field public static final enum 'b' Lcom/alipay/sdk/protocol/a;

.field public static final enum 'c' Lcom/alipay/sdk/protocol/a;

.field private static final synthetic 'e' [Lcom/alipay/sdk/protocol/a;

.field private 'd' Ljava/lang/String;

.method static <clinit>()V
new com/alipay/sdk/protocol/a
dup
ldc "None"
iconst_0
ldc "none"
invokespecial com/alipay/sdk/protocol/a/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/alipay/sdk/protocol/a/a Lcom/alipay/sdk/protocol/a;
new com/alipay/sdk/protocol/a
dup
ldc "WapPay"
iconst_1
ldc "js://wappay"
invokespecial com/alipay/sdk/protocol/a/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/alipay/sdk/protocol/a/b Lcom/alipay/sdk/protocol/a;
new com/alipay/sdk/protocol/a
dup
ldc "Update"
iconst_2
ldc "js://update"
invokespecial com/alipay/sdk/protocol/a/<init>(Ljava/lang/String;ILjava/lang/String;)V
putstatic com/alipay/sdk/protocol/a/c Lcom/alipay/sdk/protocol/a;
iconst_3
anewarray com/alipay/sdk/protocol/a
dup
iconst_0
getstatic com/alipay/sdk/protocol/a/a Lcom/alipay/sdk/protocol/a;
aastore
dup
iconst_1
getstatic com/alipay/sdk/protocol/a/b Lcom/alipay/sdk/protocol/a;
aastore
dup
iconst_2
getstatic com/alipay/sdk/protocol/a/c Lcom/alipay/sdk/protocol/a;
aastore
putstatic com/alipay/sdk/protocol/a/e [Lcom/alipay/sdk/protocol/a;
return
.limit locals 0
.limit stack 5
.end method

.method private <init>(Ljava/lang/String;ILjava/lang/String;)V
.signature "(Ljava/lang/String;)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
aload 3
putfield com/alipay/sdk/protocol/a/d Ljava/lang/String;
return
.limit locals 4
.limit stack 3
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
aload 0
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
getstatic com/alipay/sdk/protocol/a/a Lcom/alipay/sdk/protocol/a;
astore 3
L1:
aload 3
areturn
L0:
getstatic com/alipay/sdk/protocol/a/a Lcom/alipay/sdk/protocol/a;
astore 5
invokestatic com/alipay/sdk/protocol/a/values()[Lcom/alipay/sdk/protocol/a;
astore 6
aload 6
arraylength
istore 2
iconst_0
istore 1
L2:
iload 1
iload 2
if_icmpge L3
aload 6
iload 1
aaload
astore 4
aload 4
astore 3
aload 0
aload 4
getfield com/alipay/sdk/protocol/a/d Ljava/lang/String;
invokevirtual java/lang/String/startsWith(Ljava/lang/String;)Z
ifne L1
iload 1
iconst_1
iadd
istore 1
goto L2
L3:
aload 5
areturn
.limit locals 7
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
ldc com/alipay/sdk/protocol/a
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/alipay/sdk/protocol/a
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/alipay/sdk/protocol/a;
getstatic com/alipay/sdk/protocol/a/e [Lcom/alipay/sdk/protocol/a;
invokevirtual [Lcom/alipay/sdk/protocol/a;/clone()Ljava/lang/Object;
checkcast [Lcom/alipay/sdk/protocol/a;
areturn
.limit locals 0
.limit stack 1
.end method
