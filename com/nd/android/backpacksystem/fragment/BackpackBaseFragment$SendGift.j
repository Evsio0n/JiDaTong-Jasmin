.bytecode 50.0
.class public synchronized com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;Ljava/lang/Void;Ljava/lang/String;>;"
.inner class protected SendGift inner com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift outer com/nd/android/backpacksystem/fragment/BackpackBaseFragment

.field private 'isSuccess' Z

.field private 'mProgressDialog' Landroid/app/ProgressDialog;

.field final synthetic 'this$0' Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;

.method protected <init>(Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;)V
aload 0
aload 1
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/isSuccess Z
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/doInBackground([Lcom/nd/android/backpacksystem/serverinterface/impl/Give$GiveRequestParams;)Ljava/lang/String;
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
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
aconst_null
aload 1
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/communicate(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Lcom/nd/android/backpacksystem/serverinterface/RequestResult; 3
invokeinterface com/nd/android/backpacksystem/serverinterface/ServerInterface/resolveResponse(Lcom/nd/android/backpacksystem/serverinterface/RequestResult;)Lcom/nd/android/backpacksystem/serverinterface/ResolvedResponse; 1
astore 2
aload 2
invokevirtual com/nd/android/backpacksystem/serverinterface/ResolvedResponse/isObjectValid()Z
ifne L0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
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
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/isSuccess Z
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
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
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
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
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/mProgressDialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/isSuccess Z
ifeq L1
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/requestSuccess()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/cancelDlgSendGiftWithMsg()V
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
aload 1
aconst_null
invokestatic com/nd/android/backpacksystem/helper/Utils/showCustomToast(Landroid/app/Activity;Ljava/lang/Object;Landroid/view/View;)V
return
L1:
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
aload 1
invokevirtual com/nd/android/backpacksystem/fragment/BackpackBaseFragment/requestFaildialog(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/this$0 Lcom/nd/android/backpacksystem/fragment/BackpackBaseFragment;
getfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment/mActivity Landroid/app/Activity;
getstatic com/nd/android/backpacksystem/R$string/send_gifts_please_wait I
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/backpacksystem/fragment/BackpackBaseFragment$SendGift/mProgressDialog Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
