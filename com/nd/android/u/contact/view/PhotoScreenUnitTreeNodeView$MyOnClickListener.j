.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyOnClickListener inner com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener outer com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;

.field 'treeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method <init>(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/this$0 Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;
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
aload 2
ldc "unitid"
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getUnitid()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "departid"
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getDeptid()I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "nodename"
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getNodeName()Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/this$0 Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;
invokestatic com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/access$000(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)Landroid/content/Context;
checkcast android/app/Activity
invokevirtual android/app/Activity/finish()V
aload 0
getfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/this$0 Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;
invokestatic com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView/access$000(Lcom/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView;)Landroid/content/Context;
invokestatic android/support/v4/content/LocalBroadcastManager/getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
aload 1
invokevirtual android/support/v4/content/LocalBroadcastManager/sendBroadcast(Landroid/content/Intent;)Z
pop
return
.limit locals 3
.limit stack 3
.end method

.method public setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/PhotoScreenUnitTreeNodeView$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method
