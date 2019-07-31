.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity
.super com/nd/schoollife/ui/common/base/BaseFragmentActivity
.inner class static synthetic inner com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$1
.inner class private TipCreateCommunitySucsOnClickListener inner com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener outer com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity

.field private 'tipCreateCommunitySucsOnClickListener' Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener;

.method public <init>()V
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseFragmentActivity/<init>()V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/tipCreateCommunitySucsOnClickListener Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener;
return
.limit locals 1
.limit stack 2
.end method

.method protected initContentView()V
aload 0
getstatic com/nd/schoollife/R$layout/activity_tip_create_community_waitfor_commit_judge I
invokevirtual com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/setContentView(I)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initData(Landroid/os/Bundle;)V
aload 0
new com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener
dup
aload 0
aconst_null
invokespecial com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity;Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$1;)V
putfield com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/tipCreateCommunitySucsOnClickListener Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener;
return
.limit locals 2
.limit stack 5
.end method

.method protected initEvent()V
aload 0
getstatic com/nd/schoollife/R$id/btn_common_head_back I
invokevirtual com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
aload 0
getfield com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/tipCreateCommunitySucsOnClickListener Lcom/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity$TipCreateCommunitySucsOnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 1
.limit stack 2
.end method

.method protected initHeadView(Landroid/content/Context;)Landroid/view/View;
aload 1
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/schoollife/R$layout/common_head I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 1
aload 1
getstatic com/nd/schoollife/R$id/tv_common_head_title I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
aload 0
getstatic com/nd/schoollife/R$string/apply_commit_sucs I
invokevirtual com/nd/schoollife/ui/community/activity/TipCreateCommunityWaitforJudgeActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 1
areturn
.limit locals 2
.limit stack 3
.end method
