.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = -5603539979191174060L


.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory/total I
return
.limit locals 2
.limit stack 2
.end method
