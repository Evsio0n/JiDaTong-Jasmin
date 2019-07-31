.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYSelectUserActivity$1
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYSelectUserActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$002(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$100(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 1
getfield android/os/Message/what I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/setmCurrentTabId(I)V
aload 1
getfield android/os/Message/what I
iconst_3
if_icmple L0
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)V
L1:
aload 1
getfield android/os/Message/what I
iconst_2
if_icmpeq L2
aload 1
getfield android/os/Message/what I
iconst_3
if_icmpne L3
L2:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
bipush 8
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setVisibility(I)V
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Z
ifeq L5
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$000(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)I
iconst_2
if_icmpeq L5
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$200(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;I)V
goto L1
L3:
aload 1
getfield android/os/Message/what I
ifeq L6
aload 1
getfield android/os/Message/what I
iconst_1
if_icmpne L4
L6:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/product/android/ui/widget/XYSearchBarWidget;
iconst_0
invokevirtual com/product/android/ui/widget/XYSearchBarWidget/setVisibility(I)V
goto L4
L5:
aload 1
getfield android/os/Message/what I
tableswitch 50
L7
L8
default : L9
L9:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/getCount()I
ifle L10
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_bt_send_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L7:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/addUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setFinishBtnText()V
goto L9
L8:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity$ImageAdapter/removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYSelectUserActivity/setFinishBtnText()V
goto L9
L10:
aload 0
getfield com/nd/android/u/contact/activity/XYSelectUserActivity$1/this$0 Lcom/nd/android/u/contact/activity/XYSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYSelectUserActivity/access$600(Lcom/nd/android/u/contact/activity/XYSelectUserActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_bt_send_bg_normal I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 4
.limit stack 3
.end method
