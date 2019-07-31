.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultGetTags
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -9043073030041304349L


.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTags/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultGetTags/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTags/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultGetTags/total I
return
.limit locals 2
.limit stack 2
.end method
