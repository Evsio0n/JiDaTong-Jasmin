.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultPraise
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 37167143120186347L


.field private 'count' I

.field private 'max_ts' J

.field private 'min_ts' J

.field private 'total' I

.field private 'users' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultPraise/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxTs()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultPraise/max_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMin_ts()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultPraise/min_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultPraise/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUsers()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultPraise/users Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultPraise/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setMaxTs(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultPraise/max_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setMin_ts(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultPraise/min_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultPraise/total I
return
.limit locals 2
.limit stack 2
.end method

.method public setUsers(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PraiseUserInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultPraise/users Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
