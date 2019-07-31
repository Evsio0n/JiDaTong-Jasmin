.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/structure/BannerItemBean
.super java/lang/Object

.field private 'avatar' Ljava/lang/String;

.field private 'name' Ljava/lang/String;

.field private 'scope_id' J

.field private 'type' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getAvatar()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/BannerItemBean/avatar Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/BannerItemBean/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getScope_id()J
aload 0
getfield com/nd/schoollife/common/bean/structure/BannerItemBean/scope_id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getType()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/BannerItemBean/type Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setAvatar(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/BannerItemBean/avatar Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/BannerItemBean/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setScope_id(J)V
aload 0
lload 1
putfield com/nd/schoollife/common/bean/structure/BannerItemBean/scope_id J
return
.limit locals 3
.limit stack 3
.end method

.method public setType(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/BannerItemBean/type Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
