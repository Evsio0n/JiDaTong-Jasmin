.bytecode 50.0
.class public synchronized com/sina/weibo/sdk/log/Log
.super java/lang/Object

.field private static 'isDebug' Z

.method static <clinit>()V
iconst_0
putstatic com/sina/weibo/sdk/log/Log/isDebug Z
return
.limit locals 0
.limit stack 1
.end method

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/sina/weibo/sdk/log/Log/isDebug Z
ifne L0
return
L0:
ldc "weibosdk"
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/sina/weibo/sdk/log/Log/isDebug Z
ifne L0
return
L0:
ldc "weibosdk"
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/sina/weibo/sdk/log/Log/isDebug Z
ifne L0
return
L0:
ldc "weibosdk"
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static setDebug(Z)V
iload 0
putstatic com/sina/weibo/sdk/log/Log/isDebug Z
return
.limit locals 1
.limit stack 1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/sina/weibo/sdk/log/Log/isDebug Z
ifne L0
return
L0:
ldc "weibosdk"
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/v(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
getstatic com/sina/weibo/sdk/log/Log/isDebug Z
ifne L0
return
L0:
ldc "weibosdk"
new java/lang/StringBuilder
dup
aload 0
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc "  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/w(Ljava/lang/String;Ljava/lang/String;)I
pop
return
.limit locals 2
.limit stack 4
.end method
