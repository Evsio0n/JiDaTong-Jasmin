.bytecode 50.0
.class synchronized com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4
.super android/os/Handler
.enclosing method com/nd/android/u/ui/widge/chatfragment/FlowerFragment
.inner class inner com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4

.field final synthetic 'this$0' Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;

.method <init>(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
aload 0
aload 1
putfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
aload 1
invokespecial android/os/Handler/handleMessage(Landroid/os/Message;)V
aload 1
getfield android/os/Message/what I
lookupswitch
0 : L0
2 : L1
7 : L2
16 : L3
default : L4
L4:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1400(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
L5:
return
L0:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$800(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$900(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$500(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Landroid/view/View;
iconst_0
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
return
L1:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokevirtual com/nd/android/u/ui/widge/chatfragment/FlowerFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ifnull L5
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1000(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1100(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)I
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1200(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;IILcom/product/android/commonInterface/weibo/FlowerMessageInfo;)V
return
L2:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$100(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
return
L3:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio
getfield com/nd/android/u/bean4xy/DisplayMessage_FlowerAudio/current I
iconst_3
if_icmpne L6
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$300(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)V
L6:
aload 0
getfield com/nd/android/u/ui/widge/chatfragment/FlowerFragment$4/this$0 Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;
invokestatic com/nd/android/u/ui/widge/chatfragment/FlowerFragment/access$1400(Lcom/nd/android/u/ui/widge/chatfragment/FlowerFragment;)Lcom/nd/android/u/ui/widge/ChatBlagFlowerAudioView;
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast com/nd/android/u/controller/innerInterface/IMessageDisplay
invokevirtual com/nd/android/u/ui/widge/ChatBlagFlowerAudioView/setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
return
.limit locals 2
.limit stack 4
.end method
