.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultGetCommunityInfo
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = -8905120925978907805L


.field private 'avatar' Ljava/lang/String;

.field private 'category' [Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;

.field private 'im_gid' I

.field private 'intro' Ljava/lang/String;

.field private 'members_total' I

.field private 'name' Ljava/lang/String;

.field private 'role' I

.field private 'tags' [Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/category [Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getIm_gid()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/im_gid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMembers_total()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/members_total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRole()I
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/role I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getTags()[Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/tags [Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory([Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/category [Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setIm_gid(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/im_gid I
return
.limit locals 2
.limit stack 2
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMembers_total(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/members_total I
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRole(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/role I
return
.limit locals 2
.limit stack 2
.end method

.method public setTags([Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/tags [Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
return
.limit locals 2
.limit stack 2
.end method
