.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/FindSeniorAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/FindSeniorAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/FindSeniorAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/FindSeniorAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
invokestatic com/nd/android/u/contact/adapter/FindSeniorAdapter/access$000(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;
invokestatic com/nd/android/u/contact/adapter/FindSeniorAdapter/access$000(Lcom/nd/android/u/contact/adapter/FindSeniorAdapter;)Lcom/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener;
aload 1
aload 0
getfield com/nd/android/u/contact/adapter/FindSeniorAdapter$1/val$position I
invokeinterface com/nd/android/u/contact/adapter/FindSeniorAdapter$OnItemClickListener/onItemClick(Landroid/view/View;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
