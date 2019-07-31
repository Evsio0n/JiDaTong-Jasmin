.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/bean/result/ResultNewsList
.super com/nd/android/forumsdk/business/bean/ForumResultBase

.field private static final 'serialVersionUID' J = -6825844012157116926L


.field private 'count' I

.field private 'data' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"

.field private 'max_ts' J

.field private 'min_ts' J

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
getfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/count I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getData()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/data Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMaxTs()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/max_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getMinTs()J
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/min_ts J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getTotal()I
aload 0
getfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setCount(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/count I
return
.limit locals 2
.limit stack 2
.end method

.method public setData(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/data Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setMaxTs(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/max_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setMinTs(J)V
aload 0
lload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/min_ts J
return
.limit locals 3
.limit stack 3
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/android/forumsdk/business/bean/result/ResultNewsList/total I
return
.limit locals 2
.limit stack 2
.end method
