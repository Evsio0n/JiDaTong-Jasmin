.bytecode 50.0
.class public synchronized com/common/android/ui/wheel/ItemsRange
.super java/lang/Object

.field private 'count' I

.field private 'first' I

.method public <init>()V
aload 0
iconst_0
iconst_0
invokespecial com/common/android/ui/wheel/ItemsRange/<init>(II)V
return
.limit locals 1
.limit stack 3
.end method

.method public <init>(II)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/common/android/ui/wheel/ItemsRange/first I
aload 0
iload 2
putfield com/common/android/ui/wheel/ItemsRange/count I
return
.limit locals 3
.limit stack 2
.end method

.method public contains(I)Z
iload 1
aload 0
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
if_icmplt L0
iload 1
aload 0
invokevirtual com/common/android/ui/wheel/ItemsRange/getLast()I
if_icmpgt L0
iconst_1
ireturn
L0:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/common/android/ui/wheel/ItemsRange/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFirst()I
aload 0
getfield com/common/android/ui/wheel/ItemsRange/first I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getLast()I
aload 0
invokevirtual com/common/android/ui/wheel/ItemsRange/getFirst()I
aload 0
invokevirtual com/common/android/ui/wheel/ItemsRange/getCount()I
iadd
iconst_1
isub
ireturn
.limit locals 1
.limit stack 2
.end method
