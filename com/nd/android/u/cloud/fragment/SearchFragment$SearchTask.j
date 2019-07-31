.bytecode 50.0
.class synchronized com/nd/android/u/cloud/fragment/SearchFragment$SearchTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;>;"
.inner class private SearchTask inner com/nd/android/u/cloud/fragment/SearchFragment$SearchTask outer com/nd/android/u/cloud/fragment/SearchFragment

.field private 'mAppendData' Z

.field private 'mIsRunning' Z

.field private 'mSearchText' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/fragment/SearchFragment;

.method <init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/lang/String;Z)V
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 0
iload 3
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mAppendData Z
aload 0
iconst_0
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mIsRunning Z
return
.limit locals 4
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/doInBackground([Ljava/lang/Integer;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/util/List;
.signature "([Ljava/lang/Integer;)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
aload 0
iconst_1
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mIsRunning Z
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 1
aload 1
invokeinterface java/util/List/clear()V 0
bipush 20
istore 3
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/none_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager
dup
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mSearchText Ljava/lang/String;
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/searchLocalUser(Ljava/lang/String;)Ljava/util/List;
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/util/List;)V
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$302(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
pop
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/contact_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$102(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
pop
L0:
iload 3
istore 2
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/contact_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
if_acmpne L1
aload 1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$300(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
bipush 20
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/getResultFromCur(I)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 3
istore 2
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/group_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$102(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
pop
bipush 20
aload 1
invokeinterface java/util/List/size()I 0
isub
istore 2
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager
dup
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mSearchText Ljava/lang/String;
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/searchLocalGroup(Ljava/lang/String;)Ljava/util/List;
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/util/List;)V
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$402(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
pop
L1:
iload 2
istore 3
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/group_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
if_acmpne L2
aload 1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$400(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
iload 2
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/getResultFromCur(I)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
iload 2
istore 3
aload 1
invokeinterface java/util/List/size()I 0
bipush 20
if_icmpge L2
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/psp_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$102(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
pop
iload 2
aload 1
invokeinterface java/util/List/size()I 0
isub
istore 3
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
new com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager
dup
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mSearchText Ljava/lang/String;
iconst_1
invokestatic com/nd/android/u/publicNumber/controller/PublicNumberController/getPspSearchResultXY(Ljava/lang/String;Z)Ljava/util/List;
invokespecial com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/<init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/util/List;)V
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$502(Lcom/nd/android/u/cloud/fragment/SearchFragment;Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
pop
L2:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/psp_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
if_acmpne L3
aload 1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$500(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager;
iload 3
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/getResultFromCur(I)Ljava/util/List;
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L3:
aload 1
areturn
.limit locals 4
.limit stack 6
.end method

.method public isTaskRunning()Z
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mIsRunning Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;)V"
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
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
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mAppendData Z
ifeq L2
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/AppendData(Ljava/util/List;)V
L3:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
astore 1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/getCount()I
ifeq L4
iconst_1
istore 2
L5:
aload 1
iload 2
iconst_0
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$200(Lcom/nd/android/u/cloud/fragment/SearchFragment;ZZ)V
aload 0
iconst_0
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mIsRunning Z
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$700(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Ljava/lang/String;
astore 1
aload 1
ifnull L6
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
L6:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/notifyDataSetChanged()V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
iconst_1
iconst_0
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$200(Lcom/nd/android/u/cloud/fragment/SearchFragment;ZZ)V
return
L2:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$600(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter;
aload 1
invokevirtual com/nd/android/u/cloud/fragment/SearchFragment$SearchAdapter/setParam(Ljava/util/List;)V
goto L3
L4:
iconst_0
istore 2
goto L5
L7:
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 1
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$800(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/lang/String;)V
return
.limit locals 4
.limit stack 3
.end method

.method protected onPreExecute()V
aload 0
invokespecial android/os/AsyncTask/onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$100(Lcom/nd/android/u/cloud/fragment/SearchFragment;)Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
getstatic com/nd/android/u/cloud/fragment/SearchFragment$SearchType/none_search Lcom/nd/android/u/cloud/fragment/SearchFragment$SearchType;
if_acmpne L0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchTask/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
iconst_1
iconst_1
invokestatic com/nd/android/u/cloud/fragment/SearchFragment/access$200(Lcom/nd/android/u/cloud/fragment/SearchFragment;ZZ)V
L0:
return
.limit locals 1
.limit stack 3
.end method
