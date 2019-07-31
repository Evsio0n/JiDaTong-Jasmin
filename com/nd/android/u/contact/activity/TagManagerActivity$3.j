.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/TagManagerActivity$3
.super com/common/android/utils/task/genericTask/TaskAdapter
.enclosing method com/nd/android/u/contact/activity/TagManagerActivity
.inner class inner com/nd/android/u/contact/activity/TagManagerActivity$3

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/TagManagerActivity;

.method <init>(Lcom/nd/android/u/contact/activity/TagManagerActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/TaskAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public onPostExecute(Lcom/common/android/utils/task/genericTask/GenericTask;Lcom/common/android/utils/task/genericTask/TaskResult;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokestatic com/nd/android/u/contact/activity/TagManagerActivity/access$200(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokestatic com/nd/android/u/contact/activity/TagManagerActivity/access$200(Lcom/nd/android/u/contact/activity/TagManagerActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
L0:
aload 2
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getstatic com/nd/android/u/contact/R$string/save_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
ifnull L2
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L3:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/TagInfo
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/TagInfo/setUid(J)V
goto L3
L2:
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/TagDao/deleteTag(J)Z 2
pop
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokeinterface com/nd/android/u/contact/dao/TagDao/insertTagList(Ljava/util/List;)J 1
pop2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 2
aload 2
ldc "TAG_LIST"
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getfield com/nd/android/u/contact/activity/TagManagerActivity/list Ljava/util/ArrayList;
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
aload 1
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
iconst_m1
aload 1
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/setResult(ILandroid/content/Intent;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/finish()V
return
L1:
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
getstatic com/nd/android/u/contact/R$string/save_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public onPreExecute(Lcom/common/android/utils/task/genericTask/GenericTask;)V
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/save_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/activity/TagManagerActivity$3/this$0 Lcom/nd/android/u/contact/activity/TagManagerActivity;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_save_tag I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/contact/activity/TagManagerActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
return
.limit locals 2
.limit stack 4
.end method
