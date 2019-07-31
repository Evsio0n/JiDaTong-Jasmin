.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultGetPraiseList
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 664412403169106855L


.field private 'praises' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;"

.field private 'total' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPraises()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetPraiseList/praises Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTotal()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetPraiseList/total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setPraises(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/UserInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetPraiseList/praises Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setTotal(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultGetPraiseList/total I
return
.limit locals 2
.limit stack 2
.end method
