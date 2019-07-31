.bytecode 50.0
.class synchronized com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class MyOnClickListener inner com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener outer com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;

.field 'treeNode' Lcom/nd/android/u/contact/dataStructure/TreeNode;

.method <init>(Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/this$0 Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/toggleChecked()V
aload 0
getfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/this$0 Lcom/nd/android/u/cloud/ui/adapter/SelectUnitAdapter;
invokevirtual com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 1
.end method

.method public setTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/adapter/SelectUnitAdapter$MyOnClickListener/treeNode Lcom/nd/android/u/contact/dataStructure/TreeNode;
return
.limit locals 2
.limit stack 2
.end method
