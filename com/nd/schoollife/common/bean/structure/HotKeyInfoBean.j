.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/structure/HotKeyInfoBean
.super java/lang/Object

.field private 'hits' I

.field private 'keywords' Ljava/lang/String;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getHits()I
aload 0
getfield com/nd/schoollife/common/bean/structure/HotKeyInfoBean/hits I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getKeywords()Ljava/lang/String;
aload 0
getfield com/nd/schoollife/common/bean/structure/HotKeyInfoBean/keywords Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setHits(I)V
aload 0
iload 1
putfield com/nd/schoollife/common/bean/structure/HotKeyInfoBean/hits I
return
.limit locals 2
.limit stack 2
.end method

.method public setKeywords(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/schoollife/common/bean/structure/HotKeyInfoBean/keywords Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
