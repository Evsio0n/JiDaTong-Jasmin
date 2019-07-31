.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public InitTask inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask outer com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;

.method public <init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 1
.end method

.method protected onPreExecute()V
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1400(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$InitTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1500(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
return
.limit locals 1
.limit stack 2
.end method
