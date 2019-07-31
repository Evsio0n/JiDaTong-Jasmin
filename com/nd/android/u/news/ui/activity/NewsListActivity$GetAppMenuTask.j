.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/product/android/commonInterface/main/AppMenu;>;"
.inner class private GetAppMenuTask inner com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask outer com/nd/android/u/news/ui/activity/NewsListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/u/news/ui/activity/NewsListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/<init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/main/AppMenu;
ldc2_w 123L
invokestatic com/nd/android/u/news/newsInterfaceImpl/NewsCallOtherModel/getAppMenuByAppid(J)Lcom/product/android/commonInterface/main/AppMenu;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/doInBackground([Ljava/lang/Void;)Lcom/product/android/commonInterface/main/AppMenu;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/product/android/commonInterface/main/AppMenu;)V
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$100(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/LinearLayout;
iconst_0
invokevirtual android/widget/LinearLayout/setVisibility(I)V
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 1
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$302(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/product/android/commonInterface/main/AppMenu;)Lcom/product/android/commonInterface/main/AppMenu;
pop
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$200(Lcom/nd/android/u/news/ui/activity/NewsListActivity;)Landroid/widget/LinearLayout;
bipush 8
invokevirtual android/widget/LinearLayout/setVisibility(I)V
goto L1
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/product/android/commonInterface/main/AppMenu
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$GetAppMenuTask/onPostExecute(Lcom/product/android/commonInterface/main/AppMenu;)V
return
.limit locals 2
.limit stack 2
.end method
