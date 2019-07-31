.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/bean/OrgGroupNode
.super com/nd/android/u/contact/ui/bean/OrgNode

.field private 'createdId' J

.field private 'groupType' I

.field private 'intro' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/ui/bean/OrgNode/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getCreatedId()J
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgGroupNode/createdId J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getGroupType()I
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgGroupNode/groupType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgGroupNode/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setCreatedId(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/ui/bean/OrgGroupNode/createdId J
return
.limit locals 3
.limit stack 3
.end method

.method public setGroupType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/OrgGroupNode/groupType I
return
.limit locals 2
.limit stack 2
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/OrgGroupNode/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
