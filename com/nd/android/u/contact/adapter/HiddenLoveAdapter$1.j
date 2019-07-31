.bytecode 50.0
.class synchronized com/nd/android/u/contact/adapter/HiddenLoveAdapter$1
.super java/lang/Object
.implements android/view/View$OnClickListener
.enclosing method com/nd/android/u/contact/adapter/HiddenLoveAdapter
.inner class inner com/nd/android/u/contact/adapter/HiddenLoveAdapter$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;

.method <init>(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$1/this$0 Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;
invokestatic com/nd/android/u/contact/adapter/HiddenLoveAdapter/access$100(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;)Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;
aload 1
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/HiddenLoveInfo
invokeinterface com/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack/delHiddenLove(Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)V 1
return
.limit locals 2
.limit stack 2
.end method
