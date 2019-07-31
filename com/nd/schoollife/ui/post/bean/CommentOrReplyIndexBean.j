.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean
.super java/lang/Object

.field private 'mID' Ljava/lang/String;

.field private 'mIndex' I

.method public <init>(Ljava/lang/String;I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/mID Ljava/lang/String;
aload 0
iload 2
putfield com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/mIndex I
return
.limit locals 3
.limit stack 2
.end method

.method public getID()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/mID Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIndex()I
aload 0
getfield com/nd/schoollife/ui/post/bean/CommentOrReplyIndexBean/mIndex I
ireturn
.limit locals 1
.limit stack 1
.end method
