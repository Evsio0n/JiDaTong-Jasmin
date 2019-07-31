.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultCommunityInfoList
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 4222263937107604925L


.field private 'ghost_v' J

.field private 'latest_v' J

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGhost_v()J
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/ghost_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLatest_v()J
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/latest_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setGhost_v(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/ghost_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setLatest_v(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/latest_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/schoollife/common/bean/result/CommunityInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultCommunityInfoList/total I
return
.limit locals 2
.limit stack 2
.end method
