.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 7249463767581413404L


.field private 'count' I

.field private 'max_active' J

.field private 'min_active' J

.field private 'posts' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;>;"

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
getfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getMax_active()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/max_active J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMin_active()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/min_active J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getPosts()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/posts Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setMax_active(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/max_active J
return
.limit locals 3
.limit stack 3
.end method

.method public setMin_active(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/min_active J
return
.limit locals 3
.limit stack 3
.end method

.method public setPosts(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/PostWithActiveBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/posts Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultMyRssPostList/total I
return
.limit locals 2
.limit stack 2
.end method
