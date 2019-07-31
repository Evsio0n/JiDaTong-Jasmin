.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private CommunityInfoOnClickListener inner com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener outer com/nd/schoollife/ui/community/activity/CommunityInfoActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onClick(Landroid/view/View;)V
aload 1
invokevirtual android/view/View/getId()I
istore 2
iload 2
getstatic com/nd/schoollife/R$id/btn_common_head_back I
if_icmpne L0
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokevirtual com/nd/schoollife/ui/community/activity/CommunityInfoActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/civ_community_avatar I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity/communityInfo Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getRole()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$CommunityRole/isAlterCommunityInfoEnable(I)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/community/activity/CommunityInfoActivity$CommunityInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;
invokestatic com/nd/schoollife/ui/community/activity/CommunityInfoActivity/access$600(Lcom/nd/schoollife/ui/community/activity/CommunityInfoActivity;)V
return
.limit locals 3
.limit stack 2
.end method
