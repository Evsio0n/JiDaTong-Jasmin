.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/a
.super java/lang/Exception

.field public static final 'a' I = 0


.field public static final 'b' I = 1


.field public static final 'c' I = 2


.field public static final 'd' I = 3


.field public static final 'e' I = 4


.field public static final 'f' I = 5


.field public static final 'g' I = 6


.field public static final 'h' I = 7


.field public static final 'i' I = 8


.field public static final 'j' I = 9


.field private static final 'k' J = -6320569206365033676L


.field private 'l' I

.field private 'm' Ljava/lang/String;

.method public <init>(Ljava/lang/Integer;Ljava/lang/String;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
ldc "Http Transport error"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
ifnull L0
aload 3
ldc "["
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc "]"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
aload 3
ldc " : "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 2
ifnull L1
aload 3
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L1:
aload 0
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
aload 1
invokevirtual java/lang/Integer/intValue()I
putfield com/alipay/android/phone/mrpc/core/a/l I
aload 0
aload 2
putfield com/alipay/android/phone/mrpc/core/a/m Ljava/lang/String;
return
.limit locals 4
.limit stack 2
.end method

.method private <init>(Ljava/lang/String;)V
aload 0
aload 1
invokespecial java/lang/Exception/<init>(Ljava/lang/String;)V
aload 0
iconst_0
putfield com/alipay/android/phone/mrpc/core/a/l I
aload 0
aload 1
putfield com/alipay/android/phone/mrpc/core/a/m Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public final a()I
aload 0
getfield com/alipay/android/phone/mrpc/core/a/l I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final b()Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/a/m Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method
