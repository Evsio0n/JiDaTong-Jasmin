.bytecode 50.0
.class public synchronized com/nd/android/u/publicNumber/ui/activity/PspInformationActivity
.super com/product/android/ui/activity/BaseFragmentActivity
.implements android/view/View$OnClickListener
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2$1
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3
.inner class inner com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$4

.field private static final 'DEVICE' I = 999


.field private 'adapter' Lcom/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter;

.field private 'mAuth' I

.field private 'mDescription' Ljava/lang/String;

.field private 'mDissDialog' Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;

.field private 'mInfo' Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;

.field private 'mPopMore' Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;

.field private 'mPspId' Ljava/lang/String;

.field private 'mPspName' Ljava/lang/String;

.field private 'mRefreshHandler' Landroid/os/Handler;
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "HandlerLeak" 
.end annotation
.end field

.field private 'mRightBtn' Landroid/widget/ImageView;

.field private 'mSubcount' J

.field private 'mfindHistoryrl' Landroid/widget/RelativeLayout;

.field private 'mfindMsgrl' Landroid/widget/RelativeLayout;

.field private 'mfollowNum' Landroid/widget/TextView;

.field private 'mfollowbtn' Landroid/widget/Button;

.field private 'minterestTitle' Landroid/widget/TextView;

.field private 'minterestgv' Lcom/nd/android/u/ui/widge/MyGridView;

.field private 'mleftBtn' Landroid/widget/Button;

.field private 'mlogoImgv' Landroid/widget/ImageView;

.field private 'mpspIntoducerl' Landroid/widget/RelativeLayout;

.field private 'mremindMsgrl' Landroid/widget/RelativeLayout;

.field private 'mremindcb' Landroid/widget/ToggleButton;

.field private 'mtitleText' Landroid/widget/TextView;

.field private 'observer' Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;

.field private 'observerNew' Lcom/nd/android/u/controller/innerInterface/IMessageObserver;

.field private 'tvDesc' Landroid/widget/TextView;

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
aload 0
lconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDescription Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$2/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$3/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$4
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$4/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRefreshHandler Landroid/os/Handler;
return
.limit locals 1
.limit stack 4
.end method

.method static synthetic access$000(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/ToggleButton;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$1000(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/onSubcribeResult(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1100(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;Z)V
aload 0
iload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/onUnsubcribeResult(Z)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$1200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
aload 0
aload 1
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/updateInfo(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
return
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$202(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mlogoImgv Landroid/widget/ImageView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/widget/Button;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$602(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;J)J
aload 0
lload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
lload 1
lreturn
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$700(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubCount()V
return
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$800(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Landroid/os/Handler;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRefreshHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$900(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
areturn
.limit locals 1
.limit stack 1
.end method

.method private goToChatPublicActivity()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
ifnull L0
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "generalid"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
aload 2
ldc "MESSAGE_TYPE"
iconst_5
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "grouptype"
bipush 40
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 2
ldc "name"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 1
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/finish()V
return
L0:
new android/content/Intent
dup
aload 0
ldc com/nd/android/u/publicNumber/ui/activity/ChatActivity_Public
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 1
aload 1
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 0
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/startActivity(Landroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/finish()V
return
.limit locals 3
.limit stack 4
.end method

.method private initView()V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_text_title I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mtitleText Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_left I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mleftBtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/header_btn_right I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
getstatic com/nd/android/u/chat/R$drawable/top_button_setting_selector I
invokevirtual android/widget/ImageView/setBackgroundResource(I)V
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/find_history_rl I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindHistoryrl Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/psp_intoduce I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mpspIntoducerl Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/remind_msg_rl I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindMsgrl Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/switch_remind_cb I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ToggleButton
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/find_msg_rl I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/RelativeLayout
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindMsgrl Landroid/widget/RelativeLayout;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/follow_btn I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/psp_interest_grid I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast com/nd/android/u/ui/widge/MyGridView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestgv Lcom/nd/android/u/ui/widge/MyGridView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/name_tv I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/num_follow_tv I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowNum Landroid/widget/TextView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/logo_imgv I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mlogoImgv Landroid/widget/ImageView;
aload 0
aload 0
getstatic com/nd/android/u/chat/R$id/psp_desc_value_tv I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/tvDesc Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter/<init>(Landroid/content/Context;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestgv Lcom/nd/android/u/ui/widge/MyGridView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/adapter Lcom/nd/android/u/publicNumber/ui/activity/PspInterestMemberAdapter;
invokevirtual com/nd/android/u/ui/widge/MyGridView/setAdapter(Landroid/widget/ListAdapter;)V
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfo(Ljava/lang/String;)Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
ifnull L1
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubcribeView()V
return
L1:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showUnSubcribeView()V
return
.limit locals 1
.limit stack 4
.end method

.method private onSubcribeResult(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
ldc "FOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L0:
iload 1
ifeq L1
getstatic com/nd/android/u/chat/R$string/follow_success I
invokestatic com/common/android/utils/ToastUtils/display(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/unfollow I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_orange I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mpspIntoducerl Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$drawable/preference_first_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindMsgrl Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindMsgrl Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
lconst_1
ladd
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubCount()V
return
L1:
getstatic com/nd/android/u/chat/R$string/follow_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 5
.end method

.method private onUnsubcribeResult(Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
ldc "UNFOLLOW"
invokestatic com/nd/android/u/controller/utils/CommonUtils/getGroupOperationKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 2
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifeq L0
invokestatic com/nd/android/u/controller/ChatGlobalVariable/getInstance()Lcom/nd/android/u/controller/ChatGlobalVariable;
invokevirtual com/nd/android/u/controller/ChatGlobalVariable/getFackBackList()Ljava/util/List;
aload 2
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L0:
iload 1
ifeq L1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/finish()V
return
L1:
getstatic com/nd/android/u/chat/R$string/unfollow_error I
invokestatic com/common/android/utils/ToastUtils/display(I)V
return
.limit locals 3
.limit stack 2
.end method

.method private showSubCount()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
ldc2_w 999L
lcmp
ifle L3
new java/text/DecimalFormat
dup
invokespecial java/text/DecimalFormat/<init>()V
astore 1
aload 1
ldc "0,000"
invokevirtual java/text/DecimalFormat/applyPattern(Ljava/lang/String;)V
L0:
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
invokevirtual java/text/DecimalFormat/format(J)Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowNum Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
return
L2:
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowNum Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowNum Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/psp_follow_num I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
return
.limit locals 2
.limit stack 8
.end method

.method private showSubcribeView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/unfollow I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_orange I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mpspIntoducerl Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$drawable/preference_first_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindMsgrl Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindMsgrl Landroid/widget/RelativeLayout;
iconst_0
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/tvDesc Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/description Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubCount()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mlogoImgv Landroid/widget/ImageView;
iconst_1
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/data_complete I
iconst_1
if_icmpne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subway I
iconst_2
if_icmpeq L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/auth I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
iconst_0
iconst_0
getstatic com/nd/android/u/chat/R$drawable/auth_recent I
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPublicNumberInfoFromServer(Ljava/lang/String;)V
goto L1
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 1
.limit stack 5
.end method

.method private showUnSubcribeView()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$string/follow I
invokevirtual android/widget/Button/setText(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
getstatic com/nd/android/u/chat/R$drawable/btn_green I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
iconst_0
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
bipush 8
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mpspIntoducerl Landroid/widget/RelativeLayout;
getstatic com/nd/android/u/chat/R$drawable/preference_one_item I
invokevirtual android/widget/RelativeLayout/setBackgroundResource(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindMsgrl Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindMsgrl Landroid/widget/RelativeLayout;
bipush 8
invokevirtual android/widget/RelativeLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDescription Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/tvDesc Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDescription Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L0:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubCount()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L1:
getstatic com/nd/android/u/publicNumber/controller/PortraitManager/INSTANCE Lcom/nd/android/u/publicNumber/controller/PortraitManager;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mlogoImgv Landroid/widget/ImageView;
iconst_1
invokevirtual com/nd/android/u/publicNumber/controller/PortraitManager/displayPublicNumberPortrait(Ljava/lang/String;Landroid/widget/ImageView;Z)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mAuth I
iconst_1
if_icmpne L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
iconst_0
iconst_0
getstatic com/nd/android/u/chat/R$drawable/auth_recent I
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/minterestTitle Landroid/widget/TextView;
iconst_0
iconst_0
iconst_0
iconst_0
invokevirtual android/widget/TextView/setCompoundDrawablesWithIntrinsicBounds(IIII)V
return
.limit locals 1
.limit stack 5
.end method

.method private switchRemindOption()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
invokevirtual android/widget/ToggleButton/isChecked()Z
ifeq L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
return
.limit locals 1
.limit stack 2
.end method

.method private updateInfo(Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/subcount J
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/showSubCount()V
return
.limit locals 2
.limit stack 3
.end method

.method protected _onCreate(Landroid/os/Bundle;)Z
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L1 to L3 using L2
iconst_0
istore 2
aload 0
aload 1
invokespecial com/product/android/ui/activity/BaseFragmentActivity/_onCreate(Landroid/os/Bundle;)Z
ifeq L4
aload 0
getstatic com/nd/android/u/chat/R$layout/chat_psp_information I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 1
aload 1
ifnull L3
L0:
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 1
ldc "generalid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 1
ldc "name"
invokevirtual android/os/Bundle/containsKey(Ljava/lang/String;)Z
ifeq L1
aload 0
aload 1
ldc "name"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
ifnonnull L1
aload 0
ldc ""
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
L1:
aload 0
aload 1
ldc "count_key"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mSubcount J
aload 0
aload 1
ldc "description_key"
invokevirtual android/os/Bundle/getString(Ljava/lang/String;)Ljava/lang/String;
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDescription Ljava/lang/String;
aload 0
aload 1
ldc "auth_key"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mAuth I
L3:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/initView()V
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/initEvent()V
iconst_1
istore 2
L4:
iload 2
ireturn
L2:
astore 1
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/finish()V
iconst_0
ireturn
.limit locals 3
.limit stack 4
.end method

.method protected initEvent()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mtitleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/chat/R$string/psp_info_title I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindMsgrl Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindMsgrl Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfindHistoryrl Landroid/widget/RelativeLayout;
aload 0
invokevirtual android/widget/RelativeLayout/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mleftBtn Landroid/widget/Button;
aload 0
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
aload 0
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberPermissionManager/getFixPspGroupSetType(Ljava/lang/String;)I
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
iconst_0
invokevirtual android/widget/ToggleButton/setChecked(Z)V
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
new com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1
dup
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity$1/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspInformationActivity;)V
invokevirtual android/widget/ToggleButton/setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/registObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/registObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPspInfoFromServer(Ljava/lang/String;)V
return
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mremindcb Landroid/widget/ToggleButton;
iconst_1
invokevirtual android/widget/ToggleButton/setChecked(Z)V
goto L1
.limit locals 1
.limit stack 4
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/android/u/chat/R$id/header_btn_left I
if_icmpne L0
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/android/u/chat/R$id/follow_btn I
if_icmpne L2
aload 0
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/switchFollowOption()V
return
L2:
iload 2
getstatic com/nd/android/u/chat/R$id/remind_msg_rl I
if_icmpne L3
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/switchRemindOption()V
return
L3:
iload 2
getstatic com/nd/android/u/chat/R$id/find_msg_rl I
if_icmpeq L4
iload 2
getstatic com/nd/android/u/chat/R$id/find_history_rl I
if_icmpne L5
L4:
aload 0
invokespecial com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/goToChatPublicActivity()V
return
L5:
iload 2
getstatic com/nd/android/u/chat/R$id/header_btn_right I
if_icmpne L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPopMore Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
ifnonnull L6
aload 0
new com/nd/android/u/publicNumber/ui/widget/PspPopMore
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mRightBtn Landroid/widget/ImageView;
invokevirtual android/widget/ImageView/getParent()Landroid/view/ViewParent;
checkcast android/view/View
invokespecial com/nd/android/u/publicNumber/ui/widget/PspPopMore/<init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPopMore Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
L6:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPopMore Lcom/nd/android/u/publicNumber/ui/widget/PspPopMore;
invokevirtual com/nd/android/u/publicNumber/ui/widget/PspPopMore/show()V
return
.limit locals 3
.limit stack 6
.end method

.method protected onDestroy()V
aload 0
invokespecial com/product/android/ui/activity/BaseFragmentActivity/onDestroy()V
getstatic com/nd/android/u/controller/observer/RequestResultNotifier/INSTANCE Lcom/nd/android/u/controller/observer/RequestResultNotifier;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observer Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;
invokevirtual com/nd/android/u/controller/observer/RequestResultNotifier/unregistObserver(Lcom/nd/android/u/controller/innerInterface/IRequstResultObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
iconst_5
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
sipush 1000
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/observerNew Lcom/nd/android/u/controller/innerInterface/IMessageObserver;
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/unregistObserver(ILcom/nd/android/u/controller/innerInterface/IMessageObserver;)V
return
.limit locals 1
.limit stack 3
.end method

.method public switchFollowOption()V
iconst_0
istore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 0
getstatic com/nd/android/u/chat/R$string/follow I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L0
iconst_1
istore 1
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
ifnull L1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L1
aload 0
new com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mInfo Lcom/nd/android/u/publicNumber/controller/bean/PublicNumberInfo;
getfield com/nd/android/u/publicNumber/controller/bean/PublicNumberInfo/name Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mfollowbtn Landroid/widget/Button;
invokevirtual android/widget/Button/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
aload 0
getstatic com/nd/android/u/chat/R$string/follow I
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/followOption()V
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
ifnull L4
aload 0
new com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspName Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
goto L2
L4:
aload 0
new com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog
dup
aload 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mPspId Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/<init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
putfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
goto L2
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspInformationActivity/mDissDialog Lcom/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog;
invokevirtual com/nd/android/u/publicNumber/ui/dialog/PublicNumberOpDailog/show()V
return
.limit locals 2
.limit stack 7
.end method
