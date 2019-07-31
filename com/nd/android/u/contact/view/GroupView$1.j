.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/GroupView$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/view/GroupView
.inner class inner com/nd/android/u/contact/view/GroupView$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/GroupView;

.method <init>(Lcom/nd/android/u/contact/view/GroupView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
ifnonnull L0
L1:
return
L0:
aconst_null
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupType()I
tableswitch 0
L2
L3
L4
L5
default : L6
L6:
aload 1
ifnull L1
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
aload 1
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
return
L2:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 2
ldc "gid"
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L6
L3:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 2
ldc "deptid"
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L6
L4:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 2
ldc "classgid"
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L6
L5:
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$100(Lcom/nd/android/u/contact/view/GroupView;)Landroid/content/Context;
ldc com/nd/android/u/contact/activity/DiscussionManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 2
ldc "groupkey"
iconst_3
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "gid"
aload 0
getfield com/nd/android/u/contact/view/GroupView$1/this$0 Lcom/nd/android/u/contact/view/GroupView;
invokestatic com/nd/android/u/contact/view/GroupView/access$000(Lcom/nd/android/u/contact/view/GroupView;)Lcom/product/android/commonInterface/contact/OapGroup;
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
goto L6
.limit locals 3
.limit stack 4
.end method
