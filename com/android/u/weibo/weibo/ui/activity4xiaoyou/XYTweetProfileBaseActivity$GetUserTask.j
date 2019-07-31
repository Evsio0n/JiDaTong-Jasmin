.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Object;Ljava/lang/Void;>;"
.inner class private GetUserTask inner com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask outer com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/<init>(Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.catch com/android/u/weibo/weibo/controller/WeiBoException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
astore 1
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getOapUserBaseAndExtInfo(J)Lcom/product/android/commonInterface/contact/OapUser;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
aload 0
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/XiaoyouCallOtherModel/getOapScoreFromNet(J)Lcom/product/android/commonInterface/task/OapScore;
aastore
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/publishProgress([Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserPageInfo(J)Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWhose I
iconst_1
if_icmpne L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/isInBlackList(J)Z
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mIsInBlackList Z
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserFlowerInfo(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mFlowerInfo Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
L1:
aconst_null
areturn
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L1
.limit locals 2
.limit stack 6
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Void
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/onPostExecute(Ljava/lang/Void;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
ifnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWhose I
ifne L1
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mWeiboUser Lcom/android/u/weibo/weibo/business/bean/UserPageInfo;
getfield com/android/u/weibo/weibo/business/bean/UserPageInfo/weibo_uid J
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mSinaUid J
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/initHeaderView()V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/rightButton Landroid/widget/Button;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
ifnull L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/rightButton Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/leftButton Landroid/widget/Button;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/rlSetting Landroid/view/View;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
L0:
return
.limit locals 2
.limit stack 3
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
aconst_null
astore 3
aload 3
astore 2
aload 1
ifnull L0
aload 3
astore 2
aload 1
arraylength
ifle L0
aload 1
iconst_0
aaload
astore 2
L0:
aload 2
ifnonnull L1
return
L1:
aload 2
instanceof com/product/android/commonInterface/contact/OapUser
ifeq L2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 2
checkcast com/product/android/commonInterface/contact/OapUser
putfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
ldc2_w -1L
lcmp
ifne L3
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getstatic com/android/u/weibo/R$string/user_exist I
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/getString(I)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
L3:
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
getstatic com/android/u/weibo/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
getstatic com/android/u/weibo/R$drawable/user_face_boy_default_circle I
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer
dup
invokespecial com/nostra13/universalimageloader/core/display/CircleBitmapDisplayer/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
astore 2
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mUid J
iconst_3
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aload 2
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mHeaderViewHolder Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$HeaderViewHolder/imgAvatar Landroid/widget/ImageView;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/mOapUser Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/updateSignature(Ljava/lang/String;)V
L4:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity$GetUserTask/this$0 Lcom/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity;
aload 2
invokevirtual com/android/u/weibo/weibo/ui/activity4xiaoyou/XYTweetProfileBaseActivity/processGetUserTaskPublish(Ljava/lang/Object;)V
goto L4
.limit locals 4
.limit stack 5
.end method
