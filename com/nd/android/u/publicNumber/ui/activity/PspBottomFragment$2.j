.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2
.super java/lang/Object
.implements com/nd/android/u/publicNumber/ui/widget/PspMenuView$OnItemClickCallBack
.enclosing method com/nd/android/u/publicNumber/ui/activity/PspBottomFragment
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public dismissOption(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Ljava/lang/Runnable;
ldc2_w 200L
invokevirtual android/os/Handler/postDelayed(Ljava/lang/Runnable;J)Z
pop
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$402(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;I)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_down I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$402(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;I)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_down I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
iconst_2
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$402(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;I)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_down I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
goto L3
.limit locals 2
.limit stack 4
.end method

.method public onItemClick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isNetworkAvailable()Z
ifne L0
getstatic com/nd/android/u/chat/R$string/get_fail_network_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
L0:
invokestatic ims/manager/IMSStateManager/getInstance()Lims/manager/IMSStateManager;
invokevirtual ims/manager/IMSStateManager/isOnline()Z
ifne L1
getstatic com/nd/android/u/chat/R$string/get_fail I
invokestatic com/common/android/utils/ToastUtils/display(I)V
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
invokevirtual com/nd/android/u/ChatEntry/loginIMS()V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/getInfoByItemOnclick(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberMenuButton;)V
return
.limit locals 2
.limit stack 2
.end method

.method public showOption(I)V
iload 1
tableswitch 0
L0
L1
L2
default : L3
L3:
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_up I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$600(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_up I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspBottomFragment$2/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspBottomFragment/access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspBottomFragment;)Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/chat_menu_icon_up I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
return
.limit locals 2
.limit stack 2
.end method
