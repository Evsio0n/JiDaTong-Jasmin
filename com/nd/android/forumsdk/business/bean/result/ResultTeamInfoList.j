.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -3807422661757817304L


.field private 'ghost_v' J

.field private 'latest_v' J

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getGhost_v()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/ghost_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLatest_v()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/latest_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setGhost_v(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/ghost_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setLatest_v(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/latest_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList/total I
return
.limit locals 2
.limit stack 2
.end method
