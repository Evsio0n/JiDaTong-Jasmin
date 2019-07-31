.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyOnClickListener inner com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener outer com/nd/android/u/contact/activity/SearchDepartActivity

.field 'mtreeNode' Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/SearchDepartActivity;

.method <init>(Lcom/nd/android/u/contact/activity/SearchDepartActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
new android/content/Intent
dup
ldc "com.nd.android.u.cloud.ui.dialog.PhotoScreenDialog"
invokespecial android/content/Intent/<init>(Ljava/lang/String;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/type I
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
ifnonnull L1
return
L1:
aload 2
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getUnitid()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "departid"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/mdepart Lcom/nd/android/u/contact/dataStructure/OapDepart;
invokevirtual com/nd/android/u/contact/dataStructure/OapDepart/getDeptid()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "nodename"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/getNodeName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
L2:
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/this$0 Lcom/nd/android/u/contact/activity/SearchDepartActivity;
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity/finish()V
return
L0:
aload 2
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
getfield com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/munitid I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "departid"
iconst_0
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "nodename"
aload 0
getfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
invokevirtual com/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode/getNodeName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
goto L2
.limit locals 3
.limit stack 3
.end method

.method public setTreeNode(Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/SearchDepartActivity$MyOnClickListener/mtreeNode Lcom/nd/android/u/contact/activity/SearchDepartActivity$SearchDepartNode;
return
.limit locals 2
.limit stack 2
.end method
