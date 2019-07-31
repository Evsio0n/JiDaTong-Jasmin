.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.enclosing method com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment
.inner class inner com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;

.method <init>(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 4
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/access$100(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/adapter/SelectPersonListAdapter;
iload 3
invokevirtual com/nd/android/backpacksystem/adapter/SelectPersonListAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 1
aload 1
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
lload 4
lcmp
ifne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokevirtual com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
getstatic com/nd/android/backpacksystem/R$string/cannot_select_yourself I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
lconst_0
lstore 4
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mActivity Landroid/app/Activity;
instanceof com/nd/android/backpacksystem/activity/SelectGiftPersonActivity
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mActivity Landroid/app/Activity;
checkcast com/nd/android/backpacksystem/activity/SelectGiftPersonActivity
getfield com/nd/android/backpacksystem/activity/SelectGiftPersonActivity/mSendGiftItemId J
lstore 4
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
dup
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$style/dlg_my_gift I
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
invokestatic com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/access$200(Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;)Lcom/nd/android/backpacksystem/listener/DialogCallBack;
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/<init>(Landroid/app/Activity;ILcom/nd/android/backpacksystem/listener/DialogCallBack;)V
putfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 1
lload 4
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setData(Lcom/product/android/commonInterface/contact/OapUserSimple;J)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
iconst_1
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/setCanceledOnTouchOutside(Z)V
aload 0
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment$1/this$0 Lcom/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment;
getfield com/nd/android/backpacksystem/fragment/SelectGiftPersonPageFragment/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/show()V
return
.limit locals 6
.limit stack 6
.end method
