.bytecode 50.0
.class public final synchronized com/nd/schoollife/common/utils/ui/CalcUtil
.super java/lang/Object

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getIntRandomInRange(II)I
new java/util/Random
dup
invokespecial java/util/Random/<init>()V
iload 1
invokevirtual java/util/Random/nextInt(I)I
iload 0
iadd
ireturn
.limit locals 2
.limit stack 2
.end method
