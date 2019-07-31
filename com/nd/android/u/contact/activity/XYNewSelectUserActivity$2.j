.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/XYNewSelectUserActivity$2
.super android/os/Handler
.enclosing method com/nd/android/u/contact/activity/XYNewSelectUserActivity
.inner class inner com/nd/android/u/contact/activity/XYNewSelectUserActivity$2

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;

.method <init>(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
invokespecial android/os/Handler/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public handleMessage(Landroid/os/Message;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 1
getfield android/os/Message/what I
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$002(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;I)I
pop
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$100(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$200(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$000(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)I
iconst_2
if_icmpeq L0
return
L0:
aload 1
getfield android/os/Message/what I
lookupswitch
50 : L1
51 : L2
1001 : L3
default : L4
L4:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$500(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/adapter/ContactFragmentAdapter;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/pager Lcom/common/android/ui/widget/CompatibleViewPager;
invokevirtual com/common/android/ui/widget/CompatibleViewPager/getCurrentItem()I
invokevirtual com/nd/android/u/contact/adapter/ContactFragmentAdapter/notifyChildDateChange(I)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter/getCount()I
ifle L5
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$600(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_bt_send_bg I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
L1:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter/addUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/setFinishBtnText()V
goto L4
L2:
aload 1
getfield android/os/Message/obj Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 2
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$300(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter;
lload 2
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity$ImageAdapter/removeUid(J)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/setGridViewWidth()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/setFinishBtnText()V
goto L4
L3:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/isShowing()Z
ifeq L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGroupOpdialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
invokevirtual de/greenrobot/event/EventBus/unregister(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity/mGenKey Ljava/lang/String;
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/removeFeedbackKey(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokevirtual com/nd/android/u/contact/activity/XYNewSelectUserActivity/groupOpMsgFail()V
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getType()I
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$400(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup/getGID()J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$ChatEntry/toChatActivity(Landroid/content/Context;IJ)V
goto L4
L5:
aload 0
getfield com/nd/android/u/contact/activity/XYNewSelectUserActivity$2/this$0 Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;
invokestatic com/nd/android/u/contact/activity/XYNewSelectUserActivity/access$600(Lcom/nd/android/u/contact/activity/XYNewSelectUserActivity;)Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$drawable/xy_bt_send_bg_normal I
invokevirtual android/widget/Button/setBackgroundResource(I)V
return
.limit locals 4
.limit stack 4
.end method
