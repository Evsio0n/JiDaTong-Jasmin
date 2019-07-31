.bytecode 50.0
.class synchronized com/nd/android/u/tast/main/activity/TaskMainActivity$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/tast/main/activity/TaskMainActivity/onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.inner class inner com/nd/android/u/tast/main/activity/TaskMainActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/tast/main/activity/TaskMainActivity;

.field final synthetic 'val$item' Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;

.method <init>(Lcom/nd/android/u/tast/main/activity/TaskMainActivity;Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;)V
aload 0
aload 1
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$1/this$0 Lcom/nd/android/u/tast/main/activity/TaskMainActivity;
aload 0
aload 2
putfield com/nd/android/u/tast/main/activity/TaskMainActivity$1/val$item Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 3
.limit stack 2
.end method

.method public run()V
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
aload 0
getfield com/nd/android/u/tast/main/activity/TaskMainActivity$1/val$item Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/getItemid()J
iconst_0
invokevirtual com/nd/android/u/tast/buss/TaskModelManager/postTaskNewStatus(JI)I
pop
return
.limit locals 1
.limit stack 4
.end method
