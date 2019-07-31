.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove
.super com/common/android/utils/task/progressTask/ProgressTask
.inner class private DelHiddenLove inner com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove outer com/nd/android/u/contact/activity/HiddenLoveManageActivity

.field private 'mInfo' Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;Landroid/content/Context;ILcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
aload 0
aload 2
iload 3
invokespecial com/common/android/utils/task/progressTask/ProgressTask/<init>(Landroid/content/Context;I)V
aload 0
aload 4
putfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/mInfo Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/mErrorMsg Ljava/lang/StringBuilder;
aload 1
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/wait_for_cancel_hidden_love I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
return
.limit locals 5
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/mInfo Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
getfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/uid J
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/delMyHiddenLove(J)Z
ifeq L3
L1:
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L3:
iconst_m1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected doSuccess()V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
getstatic com/nd/android/u/contact/R$string/cancel_hidden_love_success I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
invokestatic com/nd/android/u/contact/activity/HiddenLoveManageActivity/access$100(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)Ljava/util/ArrayList;
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/mInfo Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
invokevirtual java/util/ArrayList/remove(Ljava/lang/Object;)Z
pop
aload 0
getfield com/nd/android/u/contact/activity/HiddenLoveManageActivity$DelHiddenLove/this$0 Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;
invokestatic com/nd/android/u/contact/activity/HiddenLoveManageActivity/access$200(Lcom/nd/android/u/contact/activity/HiddenLoveManageActivity;)V
return
.limit locals 1
.limit stack 2
.end method
