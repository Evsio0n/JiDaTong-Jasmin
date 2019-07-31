.bytecode 50.0
.class public final synchronized enum com/alipay/sdk/app/i
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/alipay/sdk/app/i;>;"

.field public static final enum 'a' Lcom/alipay/sdk/app/i;

.field public static final enum 'b' Lcom/alipay/sdk/app/i;

.field public static final enum 'c' Lcom/alipay/sdk/app/i;

.field public static final enum 'd' Lcom/alipay/sdk/app/i;

.field public static final enum 'e' Lcom/alipay/sdk/app/i;

.field public static final enum 'f' Lcom/alipay/sdk/app/i;

.field public static final enum 'g' Lcom/alipay/sdk/app/i;

.field private static final synthetic 'j' [Lcom/alipay/sdk/app/i;

.field private 'h' I

.field private 'i' Ljava/lang/String;

.method static <clinit>()V
new com/alipay/sdk/app/i
dup
ldc "SUCCEEDED"
iconst_0
sipush 9000
ldc "\u5904\u7406\u6210\u529f"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/a Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "FAILED"
iconst_1
sipush 4000
ldc "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "CANCELED"
iconst_2
sipush 6001
ldc "\u7528\u6237\u53d6\u6d88"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/c Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "NETWORK_ERROR"
iconst_3
sipush 6002
ldc "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "PARAMS_ERROR"
iconst_4
sipush 4001
ldc "\u53c2\u6570\u9519\u8bef"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/e Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "DOUBLE_REQUEST"
iconst_5
sipush 5000
ldc "\u91cd\u590d\u8bf7\u6c42"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/f Lcom/alipay/sdk/app/i;
new com/alipay/sdk/app/i
dup
ldc "PAY_WAITTING"
bipush 6
sipush 8000
ldc "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"
invokespecial com/alipay/sdk/app/i/<init>(Ljava/lang/String;IILjava/lang/String;)V
putstatic com/alipay/sdk/app/i/g Lcom/alipay/sdk/app/i;
bipush 7
anewarray com/alipay/sdk/app/i
dup
iconst_0
getstatic com/alipay/sdk/app/i/a Lcom/alipay/sdk/app/i;
aastore
dup
iconst_1
getstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
aastore
dup
iconst_2
getstatic com/alipay/sdk/app/i/c Lcom/alipay/sdk/app/i;
aastore
dup
iconst_3
getstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
aastore
dup
iconst_4
getstatic com/alipay/sdk/app/i/e Lcom/alipay/sdk/app/i;
aastore
dup
iconst_5
getstatic com/alipay/sdk/app/i/f Lcom/alipay/sdk/app/i;
aastore
dup
bipush 6
getstatic com/alipay/sdk/app/i/g Lcom/alipay/sdk/app/i;
aastore
putstatic com/alipay/sdk/app/i/j [Lcom/alipay/sdk/app/i;
return
.limit locals 0
.limit stack 6
.end method

.method private <init>(Ljava/lang/String;IILjava/lang/String;)V
.signature "(ILjava/lang/String;)V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
iload 3
putfield com/alipay/sdk/app/i/h I
aload 0
aload 4
putfield com/alipay/sdk/app/i/i Ljava/lang/String;
return
.limit locals 5
.limit stack 3
.end method

.method public static a(I)Lcom/alipay/sdk/app/i;
iload 0
lookupswitch
4001 : L0
5000 : L1
6001 : L2
6002 : L3
8000 : L4
9000 : L5
default : L6
L6:
getstatic com/alipay/sdk/app/i/b Lcom/alipay/sdk/app/i;
areturn
L5:
getstatic com/alipay/sdk/app/i/a Lcom/alipay/sdk/app/i;
areturn
L2:
getstatic com/alipay/sdk/app/i/c Lcom/alipay/sdk/app/i;
areturn
L3:
getstatic com/alipay/sdk/app/i/d Lcom/alipay/sdk/app/i;
areturn
L0:
getstatic com/alipay/sdk/app/i/e Lcom/alipay/sdk/app/i;
areturn
L4:
getstatic com/alipay/sdk/app/i/g Lcom/alipay/sdk/app/i;
areturn
L1:
getstatic com/alipay/sdk/app/i/f Lcom/alipay/sdk/app/i;
areturn
.limit locals 1
.limit stack 1
.end method

.method private a(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/sdk/app/i/i Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method private b(I)V
aload 0
iload 1
putfield com/alipay/sdk/app/i/h I
return
.limit locals 2
.limit stack 2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/app/i;
ldc com/alipay/sdk/app/i
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/alipay/sdk/app/i
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/alipay/sdk/app/i;
getstatic com/alipay/sdk/app/i/j [Lcom/alipay/sdk/app/i;
invokevirtual [Lcom/alipay/sdk/app/i;/clone()Ljava/lang/Object;
checkcast [Lcom/alipay/sdk/app/i;
areturn
.limit locals 0
.limit stack 1
.end method

.method public final a()I
aload 0
getfield com/alipay/sdk/app/i/h I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final b()Ljava/lang/String;
aload 0
getfield com/alipay/sdk/app/i/i Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
