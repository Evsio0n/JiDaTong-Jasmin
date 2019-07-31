.bytecode 50.0
.class synchronized com/nd/android/u/contact/cache/Node
.super java/lang/Object

.field 'classid' I

.field 'uid' J

.method public <init>(JI)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 3
putfield com/nd/android/u/contact/cache/Node/classid I
aload 0
lload 1
putfield com/nd/android/u/contact/cache/Node/uid J
return
.limit locals 4
.limit stack 3
.end method

.method public equals(Ljava/lang/Object;)Z
iconst_0
istore 3
iload 3
istore 2
aload 1
instanceof com/nd/android/u/contact/cache/Node
ifeq L0
aload 1
checkcast com/nd/android/u/contact/cache/Node
astore 1
iload 3
istore 2
aload 0
getfield com/nd/android/u/contact/cache/Node/classid I
aload 1
getfield com/nd/android/u/contact/cache/Node/classid I
if_icmpne L0
iload 3
istore 2
aload 0
getfield com/nd/android/u/contact/cache/Node/uid J
aload 1
getfield com/nd/android/u/contact/cache/Node/uid J
lcmp
ifne L0
iconst_1
istore 2
L0:
iload 2
ireturn
.limit locals 4
.limit stack 4
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/contact/cache/Node/classid I
ireturn
.limit locals 1
.limit stack 1
.end method
