.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$3
.super java/lang/Object
.implements android/text/TextWatcher
.enclosing method com/nd/android/u/ui/widge/chatfragment/BottomFragment/initEvent()V
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$3

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
aload 1
invokeinterface android/text/Editable/length()I 0
ifle L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$900(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$3/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
return
.limit locals 5
.limit stack 0
.end method
