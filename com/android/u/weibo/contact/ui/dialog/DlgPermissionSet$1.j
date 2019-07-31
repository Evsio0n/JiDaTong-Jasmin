.bytecode 50.0
.class synchronized com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/android/u/weibo/contact/ui/dialog/DlgPermissionSet
.inner class inner com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1

.field final synthetic 'this$0' Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;

.method <init>(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)V
aload 0
aload 1
putfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
iload 3
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$002(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;I)I
pop
aload 0
getfield com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$1/this$0 Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;
invokestatic com/android/u/weibo/contact/ui/dialog/DlgPermissionSet/access$100(Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet;)Lcom/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter;
invokevirtual com/android/u/weibo/contact/ui/dialog/DlgPermissionSet$MyAdapter/notifyDataSetChanged()V
return
.limit locals 6
.limit stack 2
.end method
