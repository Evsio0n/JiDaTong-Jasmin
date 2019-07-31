.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/event/AddOrgOnClick
.super java/lang/Object
.implements android/view/View$OnClickListener

.field 'context' Landroid/content/Context;

.field 'oapunit' Lcom/nd/android/u/contact/dataStructure/OapUnit;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/event/AddOrgOnClick/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/event/AddOrgOnClick/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog
dup
aload 0
getfield com/nd/android/u/cloud/ui/event/AddOrgOnClick/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/event/AddOrgOnClick/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokespecial com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/<init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
astore 1
aload 1
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/create()Landroid/app/AlertDialog;
pop
aload 1
invokevirtual com/nd/android/u/cloud/ui/dialog/AddOrgRequestDialog/show()Landroid/app/AlertDialog;
pop
return
.limit locals 2
.limit stack 4
.end method
