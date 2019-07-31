.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/product/android/commonInterface/task/BirthBlessResult;>;"
.inner class private GetblessTask inner com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask outer com/android/u/weibo/weibo/ui/activity/TweetProfileActivity

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;

.method private <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/<init>(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/task/BirthBlessResult;
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$200(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/postBless(J)Lcom/product/android/commonInterface/task/BirthBlessResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/task/BirthBlessResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/product/android/commonInterface/task/BirthBlessResult;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
ifnull L0
aload 1
getfield com/product/android/commonInterface/task/BirthBlessResult/iCode I
lookupswitch
200 : L1
201 : L2
401 : L3
405 : L4
406 : L5
409 : L6
default : L7
L7:
return
L1:
aload 1
getfield com/product/android/commonInterface/task/BirthBlessResult/iBlessCount I
istore 2
iload 2
ifle L8
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
iload 2
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1602(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;I)I
pop
L8:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/isInitBirthdayBanner Z
ifeq L7
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1800(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/TextView;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$1900(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2000(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/Button;
bipush 8
invokevirtual android/widget/Button/setVisibility(I)V
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
invokestatic com/android/u/weibo/weibo/ui/activity/TweetProfileActivity/access$2100(Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;)Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
return
L2:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail_double I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L3:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L4:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L5:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L6:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/this$0 Lcom/android/u/weibo/weibo/ui/activity/TweetProfileActivity;
getstatic com/android/u/weibo/R$string/blessing_fail I
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/product/android/commonInterface/task/BirthBlessResult
invokevirtual com/android/u/weibo/weibo/ui/activity/TweetProfileActivity$GetblessTask/onPostExecute(Lcom/product/android/commonInterface/task/BirthBlessResult;)V
return
.limit locals 2
.limit stack 2
.end method
