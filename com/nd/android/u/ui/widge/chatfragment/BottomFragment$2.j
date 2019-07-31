.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$2
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/ui/widge/chatfragment/BottomFragment/isAutoPopQuickReply()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
invokevirtual android/support/v4/app/FragmentActivity/isFinishing()Z
ifne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$700(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
ifnull L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$700(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener;
iconst_0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$2/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$800(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
invokevirtual android/widget/LinearLayout/getHeight()I
invokeinterface com/nd/android/u/ui/widge/chatfragment/BottomFragment$CommonBottomListener/showPopQuickReply(II)V 2
L0:
return
.limit locals 1
.limit stack 3
.end method
