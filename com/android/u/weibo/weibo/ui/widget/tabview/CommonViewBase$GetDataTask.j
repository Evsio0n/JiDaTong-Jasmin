.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Object;Ljava/lang/Boolean;>;"
.inner class private GetDataTask inner com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask outer com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;

.method private <init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$1;)V
aload 0
aload 1
invokespecial com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/<init>(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/clearData()V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/getDataAndProcessBitmap()V
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokestatic com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/access$100(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)Landroid/view/View;
invokevirtual android/view/View/getVisibility()I
ifne L0
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokestatic com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/access$100(Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;)Landroid/view/View;
bipush 8
invokevirtual android/view/View/setVisibility(I)V
L0:
aload 0
getfield com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/this$0 Lcom/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase;
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase/updateView()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/android/u/weibo/weibo/ui/widget/tabview/CommonViewBase$GetDataTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method
