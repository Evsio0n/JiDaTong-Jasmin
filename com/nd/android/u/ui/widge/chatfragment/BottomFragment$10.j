.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$10
.super java/lang/Object
.implements com/nd/android/u/controller/factory/ChatBottomFunctionFactory$ISpecialProccess
.enclosing method com/nd/android/u/ui/widge/chatfragment/BottomFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$10

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$10/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public specialProccess(Ljava/lang/Object;)Ljava/lang/Object;
aload 1
instanceof android/net/Uri
ifeq L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$10/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 1
checkcast android/net/Uri
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$1402(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/net/Uri;)Landroid/net/Uri;
pop
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method
