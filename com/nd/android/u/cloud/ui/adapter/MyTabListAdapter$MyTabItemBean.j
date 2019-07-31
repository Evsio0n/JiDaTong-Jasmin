.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean
.super java/lang/Object
.inner class public static MyTabItemBean inner com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean outer com/nd/android/u/cloud/ui/adapter/MyTabListAdapter

.field private 'itemName' Ljava/lang/String;

.field private 'subItemName' Ljava/lang/String;

.field private 'taskProcess' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getItemName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/itemName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSubItemName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/subItemName Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getTaskProcess()I
aload 0
getfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/taskProcess I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setItemName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/itemName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSubItemName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/subItemName Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setTaskProcess(I)V
aload 0
iload 1
putfield com/nd/android/u/cloud/ui/adapter/MyTabListAdapter$MyTabItemBean/taskProcess I
return
.limit locals 2
.limit stack 2
.end method
