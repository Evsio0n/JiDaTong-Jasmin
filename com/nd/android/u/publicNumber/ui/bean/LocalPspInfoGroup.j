.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup
.super java/lang/Object

.field public 'groupname' Ljava/lang/String;

.field public 'pspInfoLists' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;>;"

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/publicNumber/ui/bean/LocalPspInfoGroup/pspInfoLists Ljava/util/ArrayList;
return
.limit locals 1
.limit stack 3
.end method
