.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultSearchComplex
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 4503494068267652197L


.field private 'postList' Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;

.field private 'teamOrCommunityList' Lcom/nd/schoollife/common/bean/result/ResultSearchScope;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getPostList()Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchComplex/postList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTeamOrCommunityList()Lcom/nd/schoollife/common/bean/result/ResultSearchScope;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchComplex/teamOrCommunityList Lcom/nd/schoollife/common/bean/result/ResultSearchScope;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchComplex/postList Lcom/nd/android/forumsdk/business/bean/result/ResultPostList;
return
.limit locals 2
.limit stack 2
.end method

.method public setTeamOrCommunityList(Lcom/nd/schoollife/common/bean/result/ResultSearchScope;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchComplex/teamOrCommunityList Lcom/nd/schoollife/common/bean/result/ResultSearchScope;
return
.limit locals 2
.limit stack 2
.end method
