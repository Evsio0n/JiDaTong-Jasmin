.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyOnCheckBoxOnClickListener inner com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener outer com/nd/android/u/contact/view/TreeNodeView

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/TreeNodeView;

.field 'treeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method public <init>(Lcom/nd/android/u/contact/view/TreeNodeView;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/this$0 Lcom/nd/android/u/contact/view/TreeNodeView;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Lcom/nd/android/u/contact/view/TreeNodeView;Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/this$0 Lcom/nd/android/u/contact/view/TreeNodeView;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/toggleChecked()V
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
sipush 635
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
return
.limit locals 2
.limit stack 2
.end method

.method public setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/TreeNodeView$MyOnCheckBoxOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method
