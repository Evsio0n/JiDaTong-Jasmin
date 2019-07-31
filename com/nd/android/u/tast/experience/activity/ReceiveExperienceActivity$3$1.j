.bytecode 50.0
.class synchronized com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/run()V
.inner class static final inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3
.inner class inner com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;

.field final synthetic 'val$list' Ljava/util/List;

.method <init>(Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;Ljava/util/List;)V
aload 0
aload 1
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
aload 0
aload 2
putfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/val$list Ljava/util/List;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/val$hd Landroid/os/Handler;
ifnull L0
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/val$hd Landroid/os/Handler;
iconst_0
invokevirtual android/os/Handler/sendEmptyMessage(I)Z
pop
L0:
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/val$adapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/val$list Ljava/util/List;
invokevirtual com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/val$lv Landroid/widget/ListView;
invokestatic com/nd/android/u/tast/experience/activity/DateWidgetActivity/setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
aload 0
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3$1/this$0 Lcom/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3;
getfield com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity$3/val$adapter Lcom/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter;
invokevirtual com/nd/android/u/tast/experience/adapter/ReceiveExperienceAdapter/notifyDataSetChanged()V
invokestatic java/lang/System/currentTimeMillis()J
pop2
return
.limit locals 1
.limit stack 2
.end method
