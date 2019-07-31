.bytecode 50.0
.class public final synchronized enum com/alipay/sdk/authjs/a$a
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/alipay/sdk/authjs/a$a;>;"
.inner class public static final enum a inner com/alipay/sdk/authjs/a$a outer com/alipay/sdk/authjs/a

.field public static final enum 'a' Lcom/alipay/sdk/authjs/a$a;

.field public static final enum 'b' Lcom/alipay/sdk/authjs/a$a;

.field public static final enum 'c' Lcom/alipay/sdk/authjs/a$a;

.field public static final enum 'd' Lcom/alipay/sdk/authjs/a$a;

.field public static final enum 'e' Lcom/alipay/sdk/authjs/a$a;

.field private static final synthetic 'f' [Lcom/alipay/sdk/authjs/a$a;

.method static <clinit>()V
new com/alipay/sdk/authjs/a$a
dup
ldc "NONE_ERROR"
iconst_0
invokespecial com/alipay/sdk/authjs/a$a/<init>(Ljava/lang/String;I)V
putstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
new com/alipay/sdk/authjs/a$a
dup
ldc "FUNCTION_NOT_FOUND"
iconst_1
invokespecial com/alipay/sdk/authjs/a$a/<init>(Ljava/lang/String;I)V
putstatic com/alipay/sdk/authjs/a$a/b Lcom/alipay/sdk/authjs/a$a;
new com/alipay/sdk/authjs/a$a
dup
ldc "INVALID_PARAMETER"
iconst_2
invokespecial com/alipay/sdk/authjs/a$a/<init>(Ljava/lang/String;I)V
putstatic com/alipay/sdk/authjs/a$a/c Lcom/alipay/sdk/authjs/a$a;
new com/alipay/sdk/authjs/a$a
dup
ldc "RUNTIME_ERROR"
iconst_3
invokespecial com/alipay/sdk/authjs/a$a/<init>(Ljava/lang/String;I)V
putstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
new com/alipay/sdk/authjs/a$a
dup
ldc "NONE_PERMISS"
iconst_4
invokespecial com/alipay/sdk/authjs/a$a/<init>(Ljava/lang/String;I)V
putstatic com/alipay/sdk/authjs/a$a/e Lcom/alipay/sdk/authjs/a$a;
iconst_5
anewarray com/alipay/sdk/authjs/a$a
dup
iconst_0
getstatic com/alipay/sdk/authjs/a$a/a Lcom/alipay/sdk/authjs/a$a;
aastore
dup
iconst_1
getstatic com/alipay/sdk/authjs/a$a/b Lcom/alipay/sdk/authjs/a$a;
aastore
dup
iconst_2
getstatic com/alipay/sdk/authjs/a$a/c Lcom/alipay/sdk/authjs/a$a;
aastore
dup
iconst_3
getstatic com/alipay/sdk/authjs/a$a/d Lcom/alipay/sdk/authjs/a$a;
aastore
dup
iconst_4
getstatic com/alipay/sdk/authjs/a$a/e Lcom/alipay/sdk/authjs/a$a;
aastore
putstatic com/alipay/sdk/authjs/a$a/f [Lcom/alipay/sdk/authjs/a$a;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/authjs/a$a;
ldc com/alipay/sdk/authjs/a$a
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/alipay/sdk/authjs/a$a
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/alipay/sdk/authjs/a$a;
getstatic com/alipay/sdk/authjs/a$a/f [Lcom/alipay/sdk/authjs/a$a;
invokevirtual [Lcom/alipay/sdk/authjs/a$a;/clone()Ljava/lang/Object;
checkcast [Lcom/alipay/sdk/authjs/a$a;
areturn
.limit locals 0
.limit stack 1
.end method
