.bytecode 50.0
.class synchronized com/nd/android/u/cloud/cache/CornerMark
.super java/lang/Object
.implements java/io/Serializable

.field public 'appid' I

.field public 'code' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(ILjava/lang/String;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/cloud/cache/CornerMark/appid I
aload 0
aload 2
putfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
return
.limit locals 3
.limit stack 2
.end method

.method public equals(Ljava/lang/Object;)Z
aload 1
instanceof com/nd/android/u/cloud/cache/CornerMark
ifeq L0
aload 1
checkcast com/nd/android/u/cloud/cache/CornerMark
astore 1
aload 0
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
aload 1
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
if_icmpne L0
aload 0
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
aload 1
getfield com/nd/android/u/cloud/cache/CornerMark/code Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public hashCode()I
aload 0
getfield com/nd/android/u/cloud/cache/CornerMark/appid I
ireturn
.limit locals 1
.limit stack 1
.end method
