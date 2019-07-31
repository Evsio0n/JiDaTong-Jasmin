.bytecode 50.0
.class public synchronized com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey
.super com/nd/schoollife/common/bean/SchoolLifeResultBase

.field private static final 'serialVersionUID' J = 1642464972928247150L


.field private 'list' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/HotKeyInfoBean;>;"

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/common/bean/SchoolLifeResultBase/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/HotKeyInfoBean;>;"
aload 0
getfield com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/list Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/schoollife/common/bean/structure/HotKeyInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/schoollife/common/bean/result/ResultGetCommunityHotKey/list Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
