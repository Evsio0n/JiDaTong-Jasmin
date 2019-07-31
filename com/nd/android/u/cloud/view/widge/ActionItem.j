.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/view/widge/ActionItem
.super java/lang/Object

.field private 'iconid' I

.field private 'listener' Landroid/view/View$OnClickListener;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public <init>(I)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
iload 1
putfield com/nd/android/u/cloud/view/widge/ActionItem/iconid I
return
.limit locals 2
.limit stack 2
.end method

.method public getIcon()I
aload 0
getfield com/nd/android/u/cloud/view/widge/ActionItem/iconid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getListener()Landroid/view/View$OnClickListener;
aload 0
getfield com/nd/android/u/cloud/view/widge/ActionItem/listener Landroid/view/View$OnClickListener;
areturn
.limit locals 1
.limit stack 1
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/view/widge/ActionItem/listener Landroid/view/View$OnClickListener;
return
.limit locals 2
.limit stack 2
.end method
