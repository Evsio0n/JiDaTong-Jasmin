.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/view/ExtCheckButton
.super android/widget/TextView

.field private 'check' Z

.field private 'checkImageId' I

.field private 'uncheckImageId' I

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/TextView/<init>(Landroid/content/Context;)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/init()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
aload 1
aload 2
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/init()V
return
.limit locals 3
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
aload 1
aload 2
iload 3
invokespecial android/widget/TextView/<init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
aload 0
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/init()V
return
.limit locals 4
.limit stack 4
.end method

.method public getCheck()Z
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/check Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getCheckImageId()I
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/checkImageId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getUncheckImageId()I
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/uncheckImageId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
bipush 17
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setGravity(I)V
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/check Z
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/checkImageId I
aload 0
iconst_0
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/uncheckImageId I
return
.limit locals 1
.limit stack 2
.end method

.method public setCheck(Z)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/check Z
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/check Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/checkImageId I
ifeq L1
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/checkImageId I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setBackgroundResource(I)V
L1:
return
L0:
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/uncheckImageId I
ifeq L1
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/uncheckImageId I
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setCheckImage(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/checkImageId I
return
.limit locals 2
.limit stack 2
.end method

.method public setUncheckImage(I)V
aload 0
iload 1
putfield com/nd/schoollife/ui/team/view/ExtCheckButton/uncheckImageId I
return
.limit locals 2
.limit stack 2
.end method

.method public updateCheck()V
aload 0
aload 0
getfield com/nd/schoollife/ui/team/view/ExtCheckButton/check Z
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
return
.limit locals 1
.limit stack 2
.end method
