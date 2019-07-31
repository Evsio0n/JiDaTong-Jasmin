.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/CreateGroupActivity$1
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/CreateGroupActivity
.inner class inner com/nd/android/u/contact/activity/CreateGroupActivity$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/CreateGroupActivity;

.method <init>(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
aload 2
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
getstatic com/nd/android/u/contact/R$string/create_group_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 1
aload 1
ldc "group"
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokestatic com/nd/android/u/contact/activity/CreateGroupActivity/access$000(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Lcom/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/AbsGroup;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L1
aload 1
ldc "add_groupMember"
iconst_1
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokestatic com/nd/android/u/contact/activity/CreateGroupActivity/access$100(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Ljava/lang/String;
ldc "\u521b\u5efa\u7fa4\u5b8c\u6210\uff0c\u8981\u8df3\u8f6c\u5230\u9009\u62e9\u8054\u7cfb\u4eba\u754c\u9762  gotoXYNewSelectUserActivity"
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
ldc com/nd/android/u/contact/activity/XYNewSelectUserActivity
aload 1
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
L2:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/finish()V
L3:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokestatic com/nd/android/u/contact/activity/CreateGroupActivity/access$200(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/app/ProgressDialog;
ifnull L4
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokestatic com/nd/android/u/contact/activity/CreateGroupActivity/access$200(Lcom/nd/android/u/contact/activity/CreateGroupActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L4:
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
ldc com/nd/android/u/contact/activity/SelectRecipientActivity
aload 1
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/goTo(Ljava/lang/Class;Landroid/os/Bundle;)V
goto L2
L0:
aload 1
checkcast com/nd/android/u/contact/activity/CreateGroupActivity$DoRefreshFrinedListTask
getfield com/nd/android/u/contact/activity/CreateGroupActivity$DoRefreshFrinedListTask/errCode I
sipush 406
if_icmpne L5
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
getstatic com/nd/android/u/contact/R$string/create_group_fail_max I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L3
L5:
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
getstatic com/nd/android/u/contact/R$string/create_group_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
goto L3
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/CreateGroupActivity$1/this$0 Lcom/nd/android/u/contact/activity/CreateGroupActivity;
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_create_group I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/CreateGroupActivity/onBegin(Ljava/lang/String;)V
aload 0
aload 1
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
return
.limit locals 2
.limit stack 3
.end method
