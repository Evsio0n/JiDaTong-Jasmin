.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultSearchComplex2
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 4503494068267652197L


.field private 'communityList' Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;

.field private 'postList' Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;

.field private 'teamList' Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCommunityList()Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/communityList Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getPostList()Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/postList Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTeamList()Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/teamList Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCommunityList(Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/communityList Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList;
return
.limit locals 2
.limit stack 2
.end method

.method public setPostList(Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/postList Lcom/nd/android/forumsdk/business/bean/result/ResultSearchPost;
return
.limit locals 2
.limit stack 2
.end method

.method public setTeamList(Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultSearchComplex2/teamList Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
return
.limit locals 2
.limit stack 2
.end method
