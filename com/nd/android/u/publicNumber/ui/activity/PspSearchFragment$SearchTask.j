.bytecode 50.0
.class synchronized com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;>;"
.inner class private SearchTask inner com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask outer com/nd/android/u/publicNumber/ui/activity/PspSearchFragment

.field private 'mAppendData' Z

.field private 'mIsRunning' Z

.field private 'mSearchText' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;

.method <init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/lang/String;Z)V
aload 0
aload 1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 0
iload 3
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mAppendData Z
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mIsRunning Z
return
.limit locals 4
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/doInBackground([Ljava/lang/Integer;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/util/List;
.signature "([Ljava/lang/Integer;)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
aload 0
iconst_1
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mIsRunning Z
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 1
aload 1
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)I
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$102(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;I)I
pop
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
new com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager
dup
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mSearchText Ljava/lang/String;
iconst_1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPspSearchResultXY(Ljava/lang/String;Z)Ljava/util/List;
invokespecial com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager/<init>(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/util/List;)V
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$302(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
pop
L0:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)I
iconst_1
if_icmpne L1
aload 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$300(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager;
bipush 20
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchResultManager/getResultFromCur(I)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L1:
aload 1
areturn
.limit locals 2
.limit stack 6
.end method

.method public isTaskRunning()Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mIsRunning Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;)V"
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual android/app/Activity/isFinishing()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mAppendData Z
ifeq L2
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/AppendData(Ljava/util/List;)V
L3:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
astore 1
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/getCount()I
ifeq L4
iconst_1
istore 2
L5:
aload 1
iload 2
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;ZZ)V
aload 0
iconst_0
putfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mIsRunning Z
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mSearchText Ljava/lang/String;
astore 1
aload 1
ifnull L6
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
L6:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
iconst_1
iconst_0
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;ZZ)V
return
L2:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$400(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter;
aload 1
invokevirtual com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchAdapter/setParam(Ljava/util/List;)V
goto L3
L4:
iconst_0
istore 2
goto L5
L7:
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
aload 1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$500(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$100(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;)I
ifne L0
aload 0
getfield com/nd/android/u/publicNumber/ui/activity/PspSearchFragment$SearchTask/this$0 Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;
iconst_1
iconst_1
invokestatic com/nd/android/u/publicNumber/ui/activity/PspSearchFragment/access$200(Lcom/nd/android/u/publicNumber/ui/activity/PspSearchFragment;ZZ)V
L0:
return
.limit locals 1
.limit stack 3
.end method
