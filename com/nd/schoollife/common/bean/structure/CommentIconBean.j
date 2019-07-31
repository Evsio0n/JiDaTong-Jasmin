.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/structure/CommentIconBean
.super java/lang/Object

.field private 'resId' I

.field private 'title' Ljava/lang/String;

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/CommentIconBean/title Ljava/lang/String;
aload 0
iload 2
putfield com/nd/schoollife/common/bean/structure/CommentIconBean/resId I
return
.limit locals 3
.limit stack 2
.end method

.method public getResId()I
aload 0
getfield com/nd/schoollife/common/bean/structure/CommentIconBean/resId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTitle()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/CommentIconBean/title Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setResId(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/structure/CommentIconBean/resId I
return
.limit locals 2
.limit stack 2
.end method

.method public setTitle(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/CommentIconBean/title Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
