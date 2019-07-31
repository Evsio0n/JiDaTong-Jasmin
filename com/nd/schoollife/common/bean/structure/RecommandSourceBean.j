.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/structure/RecommandSourceBean
.super java/lang/Object

.field private 'community' Lcom/nd/schoollife/common/bean/structure/SimpleCommunityInfoBean;

.field private 'tags' Ljava/lang/String;

.field private 'type' Ljava/lang/String;

.field private 'user' Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCommunity()Lcom/nd/schoollife/common/bean/structure/SimpleCommunityInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/community Lcom/nd/schoollife/common/bean/structure/SimpleCommunityInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTag()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/tags Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUser()Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;
aload 0
getfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/user Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCommunity(Lcom/nd/schoollife/common/bean/structure/SimpleCommunityInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/community Lcom/nd/schoollife/common/bean/structure/SimpleCommunityInfoBean;
return
.limit locals 2
.limit stack 2
.end method

.method public setTag(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/tags Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setUser(Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/RecommandSourceBean/user Lcom/nd/schoollife/common/bean/structure/CommunityUserInfoBean;
return
.limit locals 2
.limit stack 2
.end method
