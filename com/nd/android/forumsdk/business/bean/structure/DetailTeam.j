.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/structure/DetailTeam
.super java/lang/Object

.field private 'avatar' Ljava/lang/String;

.field private 'category' Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;

.field private 'created_at' J

.field private 'creator' Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;

.field private 'creator_uid' J

.field private 'follow_total' I

.field private 'id' J

.field private 'intro' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'status' I

.field private 'tags' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/name Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/avatar Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/intro Ljava/lang/String;
return
.limit locals 1
.limit stack 2
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/category Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreated_at()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/created_at J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getCreator()Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/creator Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCreator_uid()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/creator_uid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getFollow_total()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/follow_total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getStatus()I
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/status I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTags()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/tags Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/category Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreated_at(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/created_at J
return
.limit locals 3
.limit stack 3
.end method

.method public setCreator(Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/creator Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setCreator_uid(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/creator_uid J
return
.limit locals 3
.limit stack 3
.end method

.method public setFollow_total(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/follow_total I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setStatus(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/status I
return
.limit locals 2
.limit stack 2
.end method

.method public setTags(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/structure/DetailTeam/tags Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
