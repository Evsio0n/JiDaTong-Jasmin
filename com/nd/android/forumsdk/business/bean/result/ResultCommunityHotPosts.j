.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = 1012765484112991244L


.field private 'count' I

.field private 'posts' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"

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
getfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getPosts()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/posts Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setPosts(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/forumsdk/business/bean/result/PostInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/posts Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultCommunityHotPosts/total I
return
.limit locals 2
.limit stack 2
.end method
