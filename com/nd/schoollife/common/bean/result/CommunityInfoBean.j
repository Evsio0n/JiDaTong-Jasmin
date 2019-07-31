.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/CommunityInfoBean
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 7503961906174396185L


.field private 'avatar' Ljava/lang/String;

.field private 'category' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"

.field private 'id' J

.field private 'im_gid' J

.field private 'intro' Ljava/lang/String;

.field private 'members_total' I

.field private 'name' Ljava/lang/String;

.field private 'role' I

.field private 'source' Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;

.field private 'tags' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;>;"

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getCategory()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/category Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIm_gid()J
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/im_gid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getMembers_total()I
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/members_total I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getRole()I
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/role I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getSource()Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTags()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/CommunityInfoBean/tags Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setCategory(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/category Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setIm_gid(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/im_gid J
return
.limit locals 3
.limit stack 3
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setMembers_total(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/members_total I
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setRole(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/role I
return
.limit locals 2
.limit stack 2
.end method

.method public setSource(Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/source Lcom/nd/schoollife/common/bean/structure/RecommandSourceBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setTags(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/CommunityInfoBean/tags Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
