.bytecode 50.0
.class synchronized com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager
.super java/lang/Object
.inner class private SearchResultManager inner com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager outer com/nd/android/u/cloud/fragment/SearchFragment

.field private 'mCurrGetIndex' I

.field private 'mSearchResults' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/fragment/SearchFragment;

.method public <init>(Lcom/nd/android/u/cloud/fragment/SearchFragment;Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;)V"
aload 0
aload 1
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/this$0 Lcom/nd/android/u/cloud/fragment/SearchFragment;
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aload 2
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mSearchResults Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mCurrGetIndex I
return
.limit locals 3
.limit stack 2
.end method

.method public getResultFromCur(I)Ljava/util/List;
.signature "(I)Ljava/util/List<Lcom/product/android/commonInterface/contact/LocalSearchResult;>;"
new java/util/LinkedList
dup
invokespecial java/util/LinkedList/<init>()V
astore 3
aload 3
invokeinterface java/util/List/clear()V 0
iconst_0
istore 2
L0:
iload 2
iload 1
if_icmpge L1
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mCurrGetIndex I
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mSearchResults Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 3
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mSearchResults Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mCurrGetIndex I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
aload 0
getfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mCurrGetIndex I
iconst_1
iadd
putfield com/nd/android/u/cloud/fragment/SearchFragment$SearchResultManager/mCurrGetIndex I
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
aload 3
areturn
.limit locals 4
.limit stack 3
.end method
