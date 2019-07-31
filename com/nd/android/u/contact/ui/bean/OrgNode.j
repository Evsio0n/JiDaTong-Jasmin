.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/bean/OrgNode
.super java/lang/Object
.inner class public static final enum NODE_TYPE inner com/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE outer com/nd/android/u/contact/ui/bean/OrgNode

.field private 'backType' I

.field private 'id' J

.field private 'isSelected' Z

.field private 'level' I

.field private 'name' Ljava/lang/String;

.field private 'uiType' Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(Ljava/lang/String;JILcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/name Ljava/lang/String;
aload 0
lload 2
putfield com/nd/android/u/contact/ui/bean/OrgNode/id J
aload 0
iload 4
putfield com/nd/android/u/contact/ui/bean/OrgNode/level I
aload 0
aload 5
putfield com/nd/android/u/contact/ui/bean/OrgNode/uiType Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
return
.limit locals 6
.limit stack 3
.end method

.method public getBackType()I
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/backType I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getId()J
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/id J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public getLevel()I
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/level I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/name Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getUiType()Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/uiType Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
areturn
.limit locals 1
.limit stack 1
.end method

.method public isSelected()Z
aload 0
getfield com/nd/android/u/contact/ui/bean/OrgNode/isSelected Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setBackType(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/backType I
return
.limit locals 2
.limit stack 2
.end method

.method public setId(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/id J
return
.limit locals 3
.limit stack 3
.end method

.method public setLevel(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/level I
return
.limit locals 2
.limit stack 2
.end method

.method public setName(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/name Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method

.method public setSelected(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/isSelected Z
return
.limit locals 2
.limit stack 2
.end method

.method public setUiType(Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;)V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/bean/OrgNode/uiType Lcom/nd/android/u/contact/ui/bean/OrgNode$NODE_TYPE;
return
.limit locals 2
.limit stack 2
.end method
