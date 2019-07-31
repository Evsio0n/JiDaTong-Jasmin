.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/BottomFragment$1
.super java/lang/Object
.implements com/nd/android/u/controller/innerInterface/IMessageObserver
.enclosing method com/nd/android/u/ui/widge/chatfragment/BottomFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/BottomFragment$1

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onMessageStateChanged(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;I)V
return
.limit locals 3
.limit stack 0
.end method

.method public onOtherMessageNotify(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
bipush 23
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/BottomFragment/showSimplyPopWindow()V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/getVisibility()I
bipush 8
if_icmpne L0
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/ui/widget/SpenEditText;
iconst_0
invokevirtual com/common/android/ui/widget/SpenEditText/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/ui/widget/SpenEditText;
invokevirtual com/common/android/ui/widget/SpenEditText/length()I
ifle L1
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$400(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$000(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Lcom/common/android/ui/widget/SpenEditText;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;Landroid/view/View;)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$600(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_bt_text_bg I
invokevirtual android/widget/ImageView/setImageResource(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Z
ifeq L3
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L3:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/BottomFragment$1/this$0 Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/BottomFragment/access$200(Lcom/nd/android/u/ui/widge/chatfragment/BottomFragment;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
goto L2
.limit locals 2
.limit stack 2
.end method

.method public onReceiveMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method

.method public onSendNewMessage(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 0
.end method
