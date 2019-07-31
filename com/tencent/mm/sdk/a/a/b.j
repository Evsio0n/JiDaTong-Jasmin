.bytecode 50.0
.class public final synchronized com/tencent/mm/sdk/a/a/b
.super java/lang/Object

.method public static a(Ljava/lang/String;ILjava/lang/String;)[B
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 0
ifnull L0
aload 3
aload 0
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L0:
aload 3
iload 1
invokevirtual java/lang/StringBuffer/append(I)Ljava/lang/StringBuffer;
pop
aload 3
aload 2
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "mMcShCsTr"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
iconst_1
bipush 9
invokevirtual java/lang/String/substring(II)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
invokestatic com/tencent/mm/a/a/a([B)Ljava/lang/String;
invokevirtual java/lang/String/getBytes()[B
areturn
.limit locals 4
.limit stack 3
.end method
