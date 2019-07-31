.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/bean/OrgUserNode
.super com/nd/android/u/contact/ui/bean/OrgNode

.field private 'intro' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/ui/bean/OrgNode/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getIntro()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgUserNode/intro Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setIntro(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/OrgUserNode/intro Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
