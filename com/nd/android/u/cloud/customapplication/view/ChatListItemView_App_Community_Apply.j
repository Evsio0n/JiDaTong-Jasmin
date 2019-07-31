.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply
.super android/widget/LinearLayout
.implements com/nd/android/u/controller/innerInterface/IChatListItem
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1
.inner class OperateApplyTask inner com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask outer com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply

.field private 'PROCESS_TYPE' Ljava/lang/String;

.field private 'applyFace' Landroid/widget/ImageView;

.field private 'applyInfo' Landroid/widget/TextView;

.field private 'applyerName' Landroid/widget/TextView;

.field private 'isAccept' Z

.field private 'mAppMessage' Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;

.field private 'mContext' Landroid/content/Context;

.field private 'middleDivder' Landroid/view/View;

.field 'reason' Ljava/lang/String;

.field private 'tvLeft' Landroid/widget/TextView;

.field private 'tvRight' Landroid/widget/TextView;

.field private 'tvTime' Landroid/widget/TextView;

.field private 'whoApply' Landroid/widget/TextView;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/isAccept Z
aload 0
ldc ""
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/reason Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/getView()V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)V
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/operateApply()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Z
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/isAccept Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method private getView()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
ldc_w 2130903163
aload 0
iconst_1
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
pop
aload 0
aload 0
ldc_w 2131624581
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyerName Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624580
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyFace Landroid/widget/ImageView;
aload 0
aload 0
ldc_w 2131624582
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/whoApply Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624583
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyInfo Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624585
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624587
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvRight Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624578
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvTime Landroid/widget/TextView;
aload 0
aload 0
ldc_w 2131624586
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/findViewById(I)Landroid/view/View;
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/middleDivder Landroid/view/View;
return
.limit locals 1
.limit stack 4
.end method

.method private operateApply()V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131494488
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask
dup
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;)V
iconst_0
anewarray java/lang/Void
invokevirtual com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$OperateApplyTask/execute([Ljava/lang/Object;)Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask;
pop
return
.limit locals 1
.limit stack 3
.end method

.method public getData()Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
areturn
.limit locals 1
.limit stack 1
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624585
if_icmpne L0
aload 0
iconst_1
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/isAccept Z
aload 0
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/operateApply()V
L1:
return
L0:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624587
if_icmpne L2
new com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog
dup
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131230771
invokespecial com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/<init>(Landroid/content/Context;I)V
astore 1
aload 1
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/show()V
aload 1
new com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1
dup
aload 0
aload 1
invokespecial com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply$1/<init>(Lcom/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply;Lcom/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/RejectJoinCommunityDialog/setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
return
L2:
aload 1
invokevirtual android/view/View/getId()I
ldc_w 2131624580
if_icmpne L1
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userUid J
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/gotoTweetProfileActivity(Landroid/content/Context;J)V 3
return
.limit locals 2
.limit stack 5
.end method

.method public setData(Lcom/nd/android/u/controller/innerInterface/IMessageDisplay;)V
aload 0
aload 1
checkcast com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community
putfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvTime Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/timeString Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493322
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvRight Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493324
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/isRead()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvRight Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/middleDivder Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
ldc_w 2131361817
invokevirtual android/content/res/Resources/getColor(I)I
invokevirtual android/widget/TextView/setTextColor(I)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
ifne L1
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493010
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L2:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvRight Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setClickable(Z)V
L3:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/verifyInfo Ljava/lang/String;
ifnonnull L4
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
ldc ""
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/verifyInfo Ljava/lang/String;
L4:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyInfo Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493004
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/verifyInfo Ljava/lang/String;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/whoApply Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/displayContent Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userUid J
iconst_3
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyFace Landroid/widget/ImageView;
getstatic com/product/android/business/headImage/HeadImageLoader/mFaceCircleDisplayOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayCircleImage(JBLandroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyerName Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/userName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/applyFace Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
iconst_1
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493009
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L5:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mAppMessage Lcom/nd/android/u/cloud/customapplication/DisplayMessage_App_Community;
getfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_Community/optResult I
iconst_2
if_icmpne L2
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/mContext Landroid/content/Context;
ldc_w 2131493865
invokevirtual android/content/Context/getText(I)Ljava/lang/CharSequence;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
goto L2
L0:
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvLeft Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/cloud/customapplication/view/ChatListItemView_App_Community_Apply/tvRight Landroid/widget/TextView;
aload 0
invokevirtual android/widget/TextView/setOnClickListener(Landroid/view/View$OnClickListener;)V
goto L3
.limit locals 2
.limit stack 6
.end method
