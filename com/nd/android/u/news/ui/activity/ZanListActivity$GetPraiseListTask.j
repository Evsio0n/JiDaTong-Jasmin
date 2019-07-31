.bytecode 50.0
.class synchronized com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Long;Ljava/lang/Void;Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;>;"
.inner class private GetPraiseListTask inner com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask outer com/nd/android/u/news/ui/activity/ZanListActivity

.field final synthetic 'this$0' Lcom/nd/android/u/news/ui/activity/ZanListActivity;

.method private <init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
aload 0
aload 1
putfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Lcom/nd/android/u/news/ui/activity/ZanListActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/<init>(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Long;)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
invokestatic com/nd/android/forumsdk/ForumFactory/getInstance()Lcom/nd/android/forumsdk/ForumFactory;
invokevirtual com/nd/android/forumsdk/ForumFactory/getNewsOperator()Lcom/nd/android/forumsdk/operator/INewsOperator;
aload 1
iconst_0
aaload
invokevirtual java/lang/Long/longValue()J
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$300(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)I
bipush 70
invokeinterface com/nd/android/forumsdk/operator/INewsOperator/getNewsPraiseList(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise; 4
areturn
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Long;
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/doInBackground([Ljava/lang/Long;)Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;)V
aload 1
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/isSuccess()Z
ifeq L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getUsers()Ljava/util/List;
ifnull L0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getTotal()I
ifle L0
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$300(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)I
iconst_1
if_icmpne L1
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
new com/nd/android/u/news/ui/adapter/ZanListAdapter
dup
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$500(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/GridView;
invokevirtual android/widget/GridView/getNumColumns()I
invokespecial com/nd/android/u/news/ui/adapter/ZanListAdapter/<init>(Landroid/content/Context;I)V
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$402(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
pop
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$400(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getUsers()Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/setData(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$500(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/GridView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$400(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
invokevirtual android/widget/GridView/setAdapter(Landroid/widget/ListAdapter;)V
L2:
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getTotal()I
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$400(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/getCount()I
if_icmpne L3
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
iconst_0
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$102(Lcom/nd/android/u/news/ui/activity/ZanListActivity;Z)Z
pop
L3:
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$308(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)I
pop
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$600(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_comment_praise_title I
iconst_1
anewarray java/lang/Object
dup
iconst_0
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getTotal()I
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
L4:
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$400(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Lcom/nd/android/u/news/ui/adapter/ZanListAdapter;
aload 1
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultPraise/getUsers()Ljava/util/List;
invokevirtual com/nd/android/u/news/ui/adapter/ZanListAdapter/setData(Ljava/util/List;)V
goto L2
L0:
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokestatic com/nd/android/u/news/ui/activity/ZanListActivity/access$700(Lcom/nd/android/u/news/ui/activity/ZanListActivity;)Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/str_comment_praise_title I
iconst_1
anewarray java/lang/Object
dup
iconst_0
iconst_0
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokevirtual android/content/res/Resources/getString(I[Ljava/lang/Object;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/this$0 Lcom/nd/android/u/news/ui/activity/ZanListActivity;
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/news/R$string/get_zanlist_error I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 1
invokestatic com/nd/android/u/news/NewsUtil/getErrorMsg(Ljava/lang/String;Lcom/nd/android/forumsdk/business/bean/ForumResultBase;)Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L4
.limit locals 2
.limit stack 7
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/forumsdk/business/bean/result/ResultPraise
invokevirtual com/nd/android/u/news/ui/activity/ZanListActivity$GetPraiseListTask/onPostExecute(Lcom/nd/android/forumsdk/business/bean/result/ResultPraise;)V
return
.limit locals 2
.limit stack 2
.end method
