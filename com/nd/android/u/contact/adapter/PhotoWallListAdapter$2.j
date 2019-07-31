.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/PhotoWallListAdapter$2
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/u/contact/adapter/PhotoWallListAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/PhotoWallListAdapter$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 0
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter$2/this$0 Lcom/nd/android/u/contact/adapter/PhotoWallListAdapter;
getfield com/nd/android/u/contact/adapter/PhotoWallListAdapter/mContext Landroid/content/Context;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/toHRMainActivty(Landroid/content/Context;)V
return
.limit locals 6
.limit stack 1
.end method
