.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 6022171252304247442L


.field private 'fail_count' I

.field private 'fail_list' [J

.field private 'succ_count' I

.field private 'succ_list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getFail_count()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/fail_count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getFail_list()[J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/fail_list [J
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSucc_count()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/succ_count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSucc_list()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/succ_list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setFail_count(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/fail_count I
return
.limit locals 2
.limit stack 2
.end method

.method public setFail_list([J)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/fail_list [J
return
.limit locals 2
.limit stack 2
.end method

.method public setSucc_count(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/succ_count I
return
.limit locals 2
.limit stack 2
.end method

.method public setSucc_list(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/succ_list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
