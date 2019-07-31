.bytecode 50.0
.class final synchronized com/alipay/android/phone/mrpc/core/i$b
.super java/lang/Object
.inner class private static final b inner com/alipay/android/phone/mrpc/core/i$b outer com/alipay/android/phone/mrpc/core/i

.field final 'a' Ljava/lang/String;

.field final 'b' I

.method private static synthetic a(Lcom/alipay/android/phone/mrpc/core/i$b;Ljava/lang/String;)V
aload 0
getfield com/alipay/android/phone/mrpc/core/i$b/b I
aload 0
getfield com/alipay/android/phone/mrpc/core/i$b/a Ljava/lang/String;
aload 1
invokestatic android/util/Log/println(ILjava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 3
.end method

.method private static synthetic a(Lcom/alipay/android/phone/mrpc/core/i$b;)Z
aload 0
getfield com/alipay/android/phone/mrpc/core/i$b/a Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/i$b/b I
invokestatic android/util/Log/isLoggable(Ljava/lang/String;I)Z
ireturn
.limit locals 1
.limit stack 2
.end method
