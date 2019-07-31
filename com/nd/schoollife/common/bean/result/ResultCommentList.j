.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultCommentList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -6128471714143536252L


.field private 'data' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;"

.field private 'max_ts' J

.field private 'min_ts' J

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getData()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommentList/data Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMax_ts()J
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommentList/max_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMin_ts()J
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommentList/min_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTotal()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommentList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/result/CommentInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultCommentList/data Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setMax_ts(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/ResultCommentList/max_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setMin_ts(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/ResultCommentList/min_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultCommentList/total I
return
.limit locals 2
.limit stack 2
.end method
