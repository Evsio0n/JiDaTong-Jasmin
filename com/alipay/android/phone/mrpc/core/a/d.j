.bytecode 50.0
.class public final synchronized com/alipay/android/phone/mrpc/core/a/d
.super com/alipay/android/phone/mrpc/core/a/a

.method public <init>(Ljava/lang/reflect/Type;[B)V
aload 0
aload 1
aload 2
invokespecial com/alipay/android/phone/mrpc/core/a/a/<init>(Ljava/lang/reflect/Type;[B)V
return
.limit locals 3
.limit stack 3
.end method

.method public final a()Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L2 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
L0:
new java/lang/String
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/a/d/b [B
invokespecial java/lang/String/<init>([B)V
astore 2
new java/lang/StringBuilder
dup
ldc "threadid = "
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
invokestatic java/lang/Thread/currentThread()Ljava/lang/Thread;
invokevirtual java/lang/Thread/getId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc "; rpc response:  "
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new org/json/JSONObject
dup
aload 2
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 2
aload 2
ldc "resultStatus"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 1
L1:
iload 1
sipush 1000
if_icmpeq L4
L3:
new com/alipay/android/phone/mrpc/core/c
dup
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
ldc "tips"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;)V
athrow
L2:
astore 2
new java/lang/StringBuilder
dup
ldc "response  ="
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
new java/lang/String
dup
aload 0
getfield com/alipay/android/phone/mrpc/core/a/d/b [B
invokespecial java/lang/String/<init>([B)V
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ":"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ifnonnull L7
ldc ""
astore 2
L8:
new com/alipay/android/phone/mrpc/core/c
dup
bipush 10
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aload 2
invokespecial com/alipay/android/phone/mrpc/core/c/<init>(Ljava/lang/Integer;Ljava/lang/String;)V
athrow
L4:
aload 0
getfield com/alipay/android/phone/mrpc/core/a/d/a Ljava/lang/reflect/Type;
ldc java/lang/String
if_acmpne L5
aload 2
ldc "result"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
areturn
L5:
aload 2
ldc "result"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/alipay/android/phone/mrpc/core/a/d/a Ljava/lang/reflect/Type;
invokestatic com/alipay/a/a/e/a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
astore 2
L6:
aload 2
areturn
L7:
aload 2
invokevirtual java/lang/Exception/getMessage()Ljava/lang/String;
astore 2
goto L8
.limit locals 3
.limit stack 5
.end method
