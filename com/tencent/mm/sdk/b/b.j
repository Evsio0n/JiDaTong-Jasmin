.bytecode 50.0
.class final synchronized com/tencent/mm/sdk/b/b
.super java/lang/Object
.implements com/tencent/mm/sdk/b/a$a

.method <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final b()I
invokestatic com/tencent/mm/sdk/b/a/a()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/tencent/mm/sdk/b/a/a()I
iconst_2
if_icmpgt L0
aload 1
aload 2
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/tencent/mm/sdk/b/a/a()I
iconst_1
if_icmpgt L0
aload 1
aload 2
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 2
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
invokestatic com/tencent/mm/sdk/b/a/a()I
iconst_4
if_icmpgt L0
aload 1
aload 2
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
L0:
return
.limit locals 3
.limit stack 2
.end method
