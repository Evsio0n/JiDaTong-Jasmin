.bytecode 50.0
.class synchronized com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;>;"
.inner class private InfoAsyncTask inner com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask outer com/nd/android/u/contact/view/RankingListRelativeLayout

.field final synthetic 'this$0' Lcom/nd/android/u/contact/view/RankingListRelativeLayout;

.method private <init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
aload 0
aload 1
putfield com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
aload 0
invokespecial android/os/AsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;Lcom/nd/android/u/contact/view/RankingListRelativeLayout$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/<init>(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/doInBackground([Ljava/lang/Integer;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Ljava/util/List;
.signature "([Ljava/lang/Integer;)Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
pop
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/toWeiboGetRankAdData()Ljava/util/List;
astore 3
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsNeedSercetLove Z
ifeq L0
aload 3
ifnull L0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getHiddenLoveRandAd()Ljava/util/List;
astore 1
aload 1
ifnull L0
aload 3
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
L0:
aconst_null
astore 2
aload 2
astore 1
aload 3
ifnull L1
aload 2
astore 1
aload 3
invokeinterface java/util/List/size()I 0
ifle L1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L2:
aload 2
astore 1
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/util/List
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 4
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 5
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 5
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L3
L4:
aload 2
aload 1
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L2
L1:
aload 1
areturn
.limit locals 6
.limit stack 4
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
L0:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$200(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/content/Context;
ldc "\u6682\u65e0\u6392\u884c\u699c\u6570\u636e"
invokestatic com/common/android/utils/ToastUtils/displayTimeLong(Landroid/content/Context;Ljava/lang/String;)V
return
L1:
aload 0
getfield com/nd/android/u/contact/view/RankingListRelativeLayout$InfoAsyncTask/this$0 Lcom/nd/android/u/contact/view/RankingListRelativeLayout;
invokestatic com/nd/android/u/contact/view/RankingListRelativeLayout/access$300(Lcom/nd/android/u/contact/view/RankingListRelativeLayout;)Landroid/support/v4/view/ViewPager;
invokevirtual android/support/v4/view/ViewPager/getAdapter()Landroid/support/v4/view/PagerAdapter;
checkcast com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter
aload 1
invokevirtual com/nd/android/u/contact/view/RankingListRelativeLayout$ViewPagerAdapter/setDataList(Ljava/util/List;)V
aload 0
aload 1
invokespecial android/os/AsyncTask/onPostExecute(Ljava/lang/Object;)V
return
.limit locals 2
.limit stack 2
.end method
