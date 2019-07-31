.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener
.super java/lang/Object
.implements android/view/View$OnTouchListener
.inner class private CommunityInfoOnTouchListener inner com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener outer com/nd/schoollife/ui/community/activity/CommunityInfoActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
aload 2
invokevirtual android/view/MotionEvent/getAction()I
iconst_1
if_icmpne L0
aload 1
invokevirtual android/view/View/getId()I
istore 3
iload 3
getstatic com/nd/schoollife/R$id/rl_community_info_sign I
if_icmpeq L1
iload 3
getstatic com/nd/schoollife/R$id/gv_community_info_signs I
if_icmpne L2
L1:
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getRole()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/isAlterCommunityInfoEnable(I)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$700(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
L0:
iconst_0
ireturn
L2:
iload 3
getstatic com/nd/schoollife/R$id/rl_community_info_intro I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getRole()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/isAlterCommunityInfoEnable(I)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$800(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
goto L0
.limit locals 4
.limit stack 2
.end method
