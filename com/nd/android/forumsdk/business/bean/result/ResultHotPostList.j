.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultHotPostList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -9054020506140071025L


.field private 'count' I

.field private 'ghost_v' J

.field private 'latest_v' J

.field private 'posts' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/bean/ForumResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getGhost_v()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/ghost_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLatest_v()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/latest_v J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPosts()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/posts Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setGhost_v(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/ghost_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setLatest_v(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/latest_v J
return
.limit locals 3
.limit stack 3
.end method

.method public setPosts(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/posts Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultHotPostList/total I
return
.limit locals 2
.limit stack 2
.end method
