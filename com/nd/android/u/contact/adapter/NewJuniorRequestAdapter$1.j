.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;

.field final synthetic 'val$position' I

.method <init>(Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;I)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1/val$position I
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
invokestatic com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/access$000(Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter$OnItemClickListener;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;
invokestatic com/nd/android/u/contact/adapter/NewJuniorRequestAdapter/access$000(Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter;)Lcom/nd/android/u/contact/adapter/NewJuniorRequestAdapter$OnItemClickListener;
aload 1
aload 0
getfield com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$1/val$position I
invokeinterface com/nd/android/u/contact/adapter/NewJuniorRequestAdapter$OnItemClickListener/agreeJuniorRequest(Landroid/view/View;I)V 2
L0:
return
.limit locals 2
.limit stack 3
.end method
