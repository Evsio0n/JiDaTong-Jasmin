.bytecode 50.0
.class synchronized com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;Ljava/lang/Void;Ljava/lang/String;>;"
.inner class private static SendGift inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift outer com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$1
.inner class inner com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2

.field private 'isSuccess' Z

.field private 'mActivity' Landroid/app/Activity;

.field private 'mDlgSendGiftWithMsg' Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;

.field private 'mProgressDialog' Landroid/app/ProgressDialog;

.method public <init>(Landroid/app/Activity;Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/isSuccess Z
aload 0
aload 1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$4500(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;)Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
areturn
.limit locals 1
.limit stack 1
.end method

.method private requestFaildialog(Ljava/lang/String;)V
new android/app/AlertDialog$Builder
dup
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
astore 2
aload 2
aload 1
invokevirtual android/app/AlertDialog$Builder/setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/cancel_gift I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$1
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$1/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;)V
invokevirtual android/app/AlertDialog$Builder/setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/retry I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
new com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2
dup
aload 0
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift$2/<init>(Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift;)V
invokevirtual android/app/AlertDialog$Builder/setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 2
invokevirtual android/app/AlertDialog$Builder/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
return
.limit locals 3
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/doInBackground([Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;)Ljava/lang/String;
new com/nd/android/backpacksystem/serverinterface/impl/Give
dup
invokespecial com/nd/android/backpacksystem/serverinterface/impl/Give/<init>()V
astore 2
aload 1
iconst_0
aaload
astore 1
aload 2
aload 2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
aconst_null
aload 1
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult; 3
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse; 1
astore 2
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isObjectValid()Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gifts_fail I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
areturn
L0:
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isSuccess()Z
ifeq L1
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
checkcast com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse
astore 2
getstatic com/nd/android/backpacksystem/data/BackpackSystemData/INSTANCE Lcom/nd/android/backpacksystem/data/BackpackSystemData;
aload 1
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mItemId J
aload 2
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveResponse/mItemNum I
invokevirtual com/nd/android/backpacksystem/data/BackpackSystemData/updateItemCount(JI)V
aload 0
iconst_1
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/isSuccess Z
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gifts_success I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
getfield com/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams/mToUid J
invokestatic com/nd/android/backpacksystem/helper/Utils/getOapUserSimpleById(J)Lcom/product/android/commonInterface/contact/OapUserSimple;
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
areturn
L1:
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/getResolvedObj()Ljava/lang/Object;
astore 1
aload 1
instanceof java/lang/String
ifeq L2
aload 1
checkcast java/lang/String
areturn
L2:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gifts_fail I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
areturn
.limit locals 3
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/String
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mProgressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/isSuccess Z
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
aload 1
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
ifnull L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/isShowing()Z
ifeq L2
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mDlgSendGiftWithMsg Lcom/nd/android/backpacksystem/widget/DlgSendGiftWithMsg;
invokevirtual com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg/cancel()V
L2:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "send_finish_select_gift_person_activity"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/finish()V
return
L1:
aload 0
aload 1
invokespecial com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/requestFaildialog(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gifts_please_wait I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/backpacksystem/widget/DlgSendGiftWithMsg$SendGift/mProgressDialog Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
