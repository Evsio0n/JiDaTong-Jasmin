.bytecode 50.0
.class public synchronized com/nd/teamfile/sdk/type/ServerCapacity
.super java/lang/Object
.implements com/common/android/utils/parser/BaseType

.field private 'capacity' J

.field private 'fileCount' I

.field private 'usedSize' J

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCapacity()J
aload 0
getfield com/nd/teamfile/sdk/type/ServerCapacity/capacity J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFileCount()I
aload 0
getfield com/nd/teamfile/sdk/type/ServerCapacity/fileCount I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUsedSize()J
aload 0
getfield com/nd/teamfile/sdk/type/ServerCapacity/usedSize J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public setCapacity(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/ServerCapacity/capacity J
return
.limit locals 3
.limit stack 3
.end method

.method public setFileCount(I)V
aload 0
iload 1
putfield com/nd/teamfile/sdk/type/ServerCapacity/fileCount I
return
.limit locals 2
.limit stack 2
.end method

.method public setUsedSize(J)V
aload 0
lload 1
putfield com/nd/teamfile/sdk/type/ServerCapacity/usedSize J
return
.limit locals 3
.limit stack 3
.end method
