.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener
.super java/lang/Object
.implements android/view/View$OnTouchListener
.inner class private TeamInfoOnTouchListener inner com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener outer com/nd/schoollife/ui/team/activity/TeamInfoActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/<init>(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
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
getstatic com/nd/schoollife/R$id/rl_team_info_sign I
if_icmpeq L1
iload 3
getstatic com/nd/schoollife/R$id/gv_team_info_signs I
if_icmpne L2
L1:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getGrade()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/isAlterTeamInfoEnable(I)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$600(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
L0:
iconst_0
ireturn
L2:
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity/teamInfo Lcom/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean;
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getGrade()I
invokestatic com/nd/schoollife/common/enums/RoleAuthority$TeamRole/isAlterTeamInfoEnable(I)Z
ifeq L0
aload 0
getfield com/nd/schoollife/ui/team/activity/TeamInfoActivity$TeamInfoOnTouchListener/this$0 Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;
invokestatic com/nd/schoollife/ui/team/activity/TeamInfoActivity/access$700(Lcom/nd/schoollife/ui/team/activity/TeamInfoActivity;)V
goto L0
.limit locals 4
.limit stack 2
.end method
