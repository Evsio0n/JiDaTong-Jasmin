.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener
.super java/lang/Object
.implements android/view/View$OnClickListener
.inner class private TeamInfoOnClickListener inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener outer com/nd/schoollife/ui/team/activity/TeamInfoActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
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
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokevirtual com/nd/schoollife/ui/team/activity/TeamInfoActivity/finish()V
L1:
return
L0:
iload 2
getstatic com/nd/schoollife/R$id/civ_team_avatar I
if_icmpne L1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getGrade()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/isAlterTeamInfoEnable(I)Z
ifeq L1
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnClickListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$500(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
return
.limit locals 3
.limit stack 2
.end method
