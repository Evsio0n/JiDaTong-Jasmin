.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/MySeniorAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/MySeniorAdapter/getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.inner class inner com/nd/android/u/contact/adapter/MySeniorAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/MySeniorAdapter;

.field final synthetic 'val$info' Lcom/nd/android/u/contact/dataStructure/SeniorInfo;

.method <init>(Lcom/nd/android/u/contact/adapter/MySeniorAdapter;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/MySeniorAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/MySeniorAdapter$1/val$info Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/MySeniorAdapter;
invokestatic com/nd/android/u/contact/adapter/MySeniorAdapter/access$000(Lcom/nd/android/u/contact/adapter/MySeniorAdapter;)Landroid/content/Context;
bipush -99
aload 0
getfield com/nd/android/u/contact/adapter/MySeniorAdapter$1/val$info Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
return
.limit locals 2
.limit stack 4
.end method
