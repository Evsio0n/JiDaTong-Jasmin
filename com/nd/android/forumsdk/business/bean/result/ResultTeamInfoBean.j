.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 4202897885840408522L


.field private 'teamInfoBean' Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getTeamInfoBean()Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/teamInfoBean Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setTeamInfoBean(Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/teamInfoBean Lcom/nd/android/forumsdk/business/bean/structure/TeamInfoBean;
return
.limit locals 2
.limit stack 2
.end method
