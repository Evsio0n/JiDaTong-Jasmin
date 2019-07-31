.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultSearchScope
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 4503494068267652197L


.field private 'scopes' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;>;"

.field private 'search_total' I

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getScopes()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchScope/scopes Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSearch_total()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchScope/search_total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setScopes(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/structure/ScopeInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchScope/scopes Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method

.method public setSearch_total(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchScope/search_total I
return
.limit locals 2
.limit stack 2
.end method
