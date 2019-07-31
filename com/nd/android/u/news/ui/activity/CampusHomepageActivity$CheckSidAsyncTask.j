.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
.inner class CheckSidAsyncTask inner com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask outer com/nd/android/u/news/ui/activity/CampusHomepageActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;

.method <init>(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/doInBackground([Ljava/lang/String;)Ljava/lang/String;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/rj/common/login/communication/OapCom/getInstance(Landroid/content/Context;)Lcom/nd/rj/common/login/communication/OapCom;
aload 1
iconst_0
aaload
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokevirtual com/nd/rj/common/login/communication/OapCom/userCheck(Ljava/lang/String;Ljava/lang/StringBuilder;)I
istore 2
iload 2
ifne L0
aload 1
iconst_0
aaload
areturn
L0:
getstatic com/nd/android/u/news/R$string/nd_user_check_fail I
iload 2
if_icmpne L1
invokestatic com/product/android/commonInterface/allCommonInterfaceImpl/AllCommonCallOtherModel$MainModel/getRelginSid()Ljava/lang/String;
areturn
L1:
ldc ""
areturn
.limit locals 3
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/String
invokevirtual com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/onPostExecute(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$500(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
return
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$200(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$300(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)Landroid/webkit/WebView;
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
aload 1
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$600(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/webkit/WebView/loadUrl(Ljava/lang/String;)V
return
.limit locals 2
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/android/u/news/ui/activity/CampusHomepageActivity$CheckSidAsyncTask/this$0 Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;
invokestatic com/nd/android/u/news/ui/activity/CampusHomepageActivity/access$100(Lcom/nd/android/u/news/ui/activity/CampusHomepageActivity;)V
return
.limit locals 1
.limit stack 1
.end method
