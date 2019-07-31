.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener

.field private 'context' Landroid/content/Context;

.field private 'oapunit' Lcom/nd/android/u/contact/dataStructure/OapUnit;

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/OapUnit;)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/context Landroid/content/Context;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
invokevirtual com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/startActivity()V
return
.limit locals 2
.limit stack 1
.end method

.method public startActivity()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 1
ldc "oapunit"
aload 0
getfield com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/oapunit Lcom/nd/android/u/contact/dataStructure/OapUnit;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 1
aload 0
getfield com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/context Landroid/content/Context;
ldc com/nd/android/u/cloud/activity/OrgDetailActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/ui/event/UnitDetailOnClickListener/context Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
.limit locals 2
.limit stack 3
.end method
