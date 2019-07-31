.bytecode 50.0
.class synchronized com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private AlterCommunityIntroClickListener inner com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener outer com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;

.method private <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener/<init>(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
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
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
invokevirtual com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/btn_alter_community_info_intro_commit I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity$AlterCommunityIntroClickListener/this$0 Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;
invokestatic com/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity/access$200(Lcom/nd/schoollife/ui/community/activity/AlterCommunityIntroActivity;)V
return
.limit locals 3
.limit stack 2
.end method
