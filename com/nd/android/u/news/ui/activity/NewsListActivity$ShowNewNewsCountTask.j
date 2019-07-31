.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class ShowNewNewsCountTask inner com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask outer com/nd/android/u/news/ui/activity/NewsListActivity

.field public 'mNewList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;"

.field private 'mOldInfo' Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/NewsListActivity;

.method public <init>(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)V
.signature "(Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List<Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;>;)V"
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 3
putfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/mNewList Ljava/util/List;
aload 0
aload 2
putfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/mOldInfo Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
return
.limit locals 4
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/mOldInfo Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/mNewList Ljava/util/List;
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$900(Lcom/nd/android/u/news/ui/activity/NewsListActivity;Lcom/nd/android/forumsdk/business/bean/result/NewsInfoBean;Ljava/util/List;)I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 1
invokevirtual java/lang/Integer/intValue()I
ifle L0
aload 0
getfield com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/this$0 Lcom/nd/android/u/news/ui/activity/NewsListActivity;
aload 1
invokevirtual java/lang/Integer/intValue()I
invokestatic com/nd/android/u/news/ui/activity/NewsListActivity/access$1000(Lcom/nd/android/u/news/ui/activity/NewsListActivity;I)V
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/news/ui/activity/NewsListActivity$ShowNewNewsCountTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method
