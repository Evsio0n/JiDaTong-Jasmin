.bytecode 50.0
.class synchronized com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener
.super java/lang/Object
.implements android/widget/AdapterView$OnItemClickListener
.inner class private TeamSignGridListener inner com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener outer com/nd/schoollife/ui/team/activity/CreateTeamActivity

.field final synthetic 'this$0' Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;

.method private <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
aload 0
aload 1
putfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity$1;)V
aload 0
aload 1
invokespecial com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/<init>(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.signature "(Landroid/widget/AdapterView<*>;Landroid/view/View;IJ)V"
aload 2
checkcast com/nd/schoollife/ui/team/view/ExtCheckButton
astore 1
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifne L0
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/size()I
iconst_5
if_icmplt L0
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$1900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$2000(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Landroid/content/Context;
getstatic com/nd/schoollife/R$string/create_team_team_sign_must_less_5 I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokestatic com/nd/schoollife/common/utils/ui/ToastUtil/showLongToast(Landroid/content/Context;Ljava/lang/String;)V
return
L0:
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifne L1
iconst_1
istore 6
L2:
aload 1
iload 6
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/setCheck(Z)V
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getCheck()Z
ifeq L3
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$800(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByName(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/addTagInfo(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)I
pop
L4:
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$2100(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)V
return
L1:
iconst_0
istore 6
goto L2
L3:
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$800(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/view/ExtCheckButton/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/getTagInfoByName(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 1
aload 0
getfield com/nd/schoollife/ui/team/activity/CreateTeamActivity$TeamSignGridListener/this$0 Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;
invokestatic com/nd/schoollife/ui/team/activity/CreateTeamActivity/access$900(Lcom/nd/schoollife/ui/team/activity/CreateTeamActivity;)Lcom/nd/schoollife/ui/team/adapter/TeamTagList;
aload 1
invokevirtual com/nd/schoollife/ui/team/adapter/TeamTagList/remove(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Z
pop
goto L4
.limit locals 7
.limit stack 3
.end method
