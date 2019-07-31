.bytecode 50.0
.class public synchronized com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public RefreshTask inner com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask outer com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout

.field final synthetic 'this$0' Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;

.method public <init>(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)V
aload 0
aload 1
putfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
ifnull L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
imul
invokeinterface com/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener/isNextPage(I)Z 1
ifeq L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1900(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Lcom/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2000(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
imul
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
invokeinterface com/nd/android/u/tast/birthday/view/IGetWaterFallUserListListener/onNextPageExecute(II)I 2
pop
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)I
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$2200(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;I)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$600(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Z
ifeq L0
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1100(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L0:
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1700(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)[I
arraylength
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L2
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1700(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)[I
iload 1
aload 0
getfield com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout$RefreshTask/this$0 Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;
invokestatic com/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout/access$1800(Lcom/nd/android/u/tast/birthday/view/WaterFallBirthdayLayout;)Ljava/util/Vector;
iload 1
invokevirtual java/util/Vector/get(I)Ljava/lang/Object;
checkcast android/widget/LinearLayout
invokevirtual android/widget/LinearLayout/getMeasuredHeight()I
iastore
iload 1
iconst_1
iadd
istore 1
goto L1
L2:
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/onPreExecute()V
return
.limit locals 3
.limit stack 4
.end method
