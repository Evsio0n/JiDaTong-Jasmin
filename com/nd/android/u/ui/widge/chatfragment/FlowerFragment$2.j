.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2
.super java/lang/Object
.implements com/product/android/commonInterface/weibo/ISendFlowerDialogListener
.enclosing method com/nd/android/u/ui/widge/chatfragment/FlowerFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onCancel(Landroid/content/Context;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
return
.limit locals 2
.limit stack 1
.end method

.method public onSuccessNum(Landroid/content/Context;ILjava/util/List;)V
.signature "(Landroid/content/Context;ILjava/util/List<Lcom/product/android/commonInterface/backpack/BackPackItem;>;)V"
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/Button;
iload 2
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
return
.limit locals 4
.limit stack 2
.end method
