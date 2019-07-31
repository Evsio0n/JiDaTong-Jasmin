.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/w
.super com/alipay/android/phone/mrpc/core/ab

.field 'a' J

.field 'b' J

.field 'c' Ljava/lang/String;

.field 'd' Lcom/alipay/android/phone/mrpc/core/b;

.field private 'g' I

.field private 'h' Ljava/lang/String;

.method public <init>(Lcom/alipay/android/phone/mrpc/core/b;ILjava/lang/String;[B)V
aload 0
invokespecial com/alipay/android/phone/mrpc/core/ab/<init>()V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/w/d Lcom/alipay/android/phone/mrpc/core/b;
aload 0
iload 2
putfield com/alipay/android/phone/mrpc/core/w/g I
aload 0
aload 3
putfield com/alipay/android/phone/mrpc/core/w/h Ljava/lang/String;
aload 0
aload 4
putfield com/alipay/android/phone/mrpc/core/w/e [B
return
.limit locals 5
.limit stack 2
.end method

.method private a(J)V
aload 0
lload 1
putfield com/alipay/android/phone/mrpc/core/w/a J
return
.limit locals 3
.limit stack 3
.end method

.method private b()Lcom/alipay/android/phone/mrpc/core/b;
aload 0
getfield com/alipay/android/phone/mrpc/core/w/d Lcom/alipay/android/phone/mrpc/core/b;
areturn
.limit locals 1
.limit stack 1
.end method

.method private b(J)V
aload 0
lload 1
putfield com/alipay/android/phone/mrpc/core/w/b J
return
.limit locals 3
.limit stack 3
.end method

.method private b(Ljava/lang/String;)V
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/w/c Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
