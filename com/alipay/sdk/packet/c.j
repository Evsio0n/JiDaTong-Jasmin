.bytecode 50.0
.class public final synchronized com/alipay/sdk/packet/c
.super java/lang/Object

.field 'a' Z

.field 'b' [B

.method public <init>(Z[B)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/alipay/sdk/packet/c/a Z
aload 0
aload 2
putfield com/alipay/sdk/packet/c/b [B
return
.limit locals 3
.limit stack 2
.end method

.method private a(Z)V
aload 0
iload 1
putfield com/alipay/sdk/packet/c/a Z
return
.limit locals 2
.limit stack 2
.end method

.method private a([B)V
aload 0
aload 1
putfield com/alipay/sdk/packet/c/b [B
return
.limit locals 2
.limit stack 2
.end method

.method private a()Z
aload 0
getfield com/alipay/sdk/packet/c/a Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method private b()[B
aload 0
getfield com/alipay/sdk/packet/c/b [B
areturn
.limit locals 1
.limit stack 1
.end method
