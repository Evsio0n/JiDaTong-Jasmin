.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 6139409089413284169L


.field private 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/DetailTeam;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/DetailTeam;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/DetailTeam;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList/total I
return
.limit locals 2
.limit stack 2
.end method
