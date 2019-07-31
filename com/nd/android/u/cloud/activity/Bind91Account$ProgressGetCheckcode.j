.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private ProgressGetCheckcode inner com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode outer com/nd/android/u/cloud/activity/Bind91Account

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/Bind91Account;

.method public <init>(Lcom/nd/android/u/cloud/activity/Bind91Account;Landroid/content/Context;I)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
return
.limit locals 4
.limit stack 3
.end method

.method protected doFail(I)V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getErrmsg()Ljava/lang/String;
astore 2
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
aload 2
invokestatic com/nd/rj/common/login/NdLoginComFun/ShowToast(Landroid/content/Context;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doGetCheckcode()I
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/isNeedInit()Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doInit()I
istore 2
iload 2
ifeq L1
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L1:
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/doGetCheckcode()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L0:
iload 2
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 3
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$300(Lcom/nd/android/u/cloud/activity/Bind91Account;)Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/cloud/activity/Bind91Account$ProgressGetCheckcode/this$0 Lcom/nd/android/u/cloud/activity/Bind91Account;
invokestatic com/nd/android/u/cloud/activity/Bind91Account/access$000(Lcom/nd/android/u/cloud/activity/Bind91Account;)Lcom/nd/rj/common/login/NdLogin91Assistant;
invokevirtual com/nd/rj/common/login/NdLogin91Assistant/getDrawable()Landroid/graphics/drawable/BitmapDrawable;
invokevirtual android/widget/ImageView/setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return
.limit locals 1
.limit stack 2
.end method
