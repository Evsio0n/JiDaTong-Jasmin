.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/lang/Object;>;"
.inner class private LoadImages inner com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages outer com/nd/android/u/news/ui/activity/base/PhotoBaseActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/this$0 Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/<init>(Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/this$0 Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/getDataInBackGround()Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/news/ui/activity/base/PhotoBaseActivity$LoadImages/this$0 Lcom/nd/android/u/news/ui/activity/base/PhotoBaseActivity;
aload 1
invokevirtual com/nd/android/u/news/ui/activity/base/PhotoBaseActivity/executeInUi(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method
