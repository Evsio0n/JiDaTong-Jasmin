.bytecode 50.0
.class synchronized com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
.inner class inner com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;

.method <init>(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L0
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$700(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifle L1
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1600(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokevirtual com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/setGiversText()V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$500(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
return
L1:
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$1200(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity$5/this$0 Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;
invokestatic com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity/access$500(Lcom/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
return
.limit locals 3
.limit stack 2
.end method
