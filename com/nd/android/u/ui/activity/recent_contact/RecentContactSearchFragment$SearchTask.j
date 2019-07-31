.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask
.super android/os/AsyncTask
.signature "Landroid/os/AsyncTask<Ljava/lang/Integer;Ljava/lang/Void;Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult;>;"
.inner class private SearchTask inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment

.field private 'isRunning' Z

.field private 'mAppendData' Z

.field private 'mSearchText' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;

.method <init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;Ljava/lang/String;Z)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 0
invokespecial android/os/AsyncTask/<init>()V
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 0
iload 3
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/mAppendData Z
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/isRunning Z
return
.limit locals 4
.limit stack 2
.end method

.method private covert(Lcom/product/android/commonInterface/chat/SearchContract;)Lcom/product/android/commonInterface/chat/SearchContactsItem;
new com/product/android/commonInterface/chat/SearchContactsItem
dup
invokespecial com/product/android/commonInterface/chat/SearchContactsItem/<init>()V
astore 2
aload 2
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setId(J)V
aload 2
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUapuid()J
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setUapUid(J)V
aload 2
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/isFriend()Z
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setFriendFlag(Z)V
aload 2
aload 1
invokevirtual com/product/android/commonInterface/chat/SearchContract/getWorkid()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setWorkId(Ljava/lang/String;)V
aload 2
areturn
.limit locals 3
.limit stack 3
.end method

.method protected transient doInBackground([Ljava/lang/Integer;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult;
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
iconst_1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/isRunning Z
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult
dup
aconst_null
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$1;)V
astore 2
aload 2
new java/util/ArrayList
dup
iconst_0
invokespecial java/util/ArrayList/<init>(I)V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchRecentContactList Ljava/util/List;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 2
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L3:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 5
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
ifne L3
aload 5
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
astore 5
L0:
aload 3
aload 5
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L1:
goto L3
L2:
astore 5
goto L3
L4:
getstatic com/nd/android/u/ChatEntry/INSTANCE Lcom/nd/android/u/ChatEntry;
getfield com/nd/android/u/ChatEntry/chatCallOtherModel_UI Lcom/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI;
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getOapUid()J 0
aload 1
iconst_0
aaload
invokevirtual java/lang/Integer/intValue()I
bipush 20
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 3
invokeinterface com/nd/android/u/ui/chatInterfaceImpl/IChatCallOtherModel_UI/searchFilterContracByKey(JIILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List; 6
astore 1
aload 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchContactsList Ljava/util/List;
aload 1
ifnull L5
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L6:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 3
aload 2
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchContactsList Ljava/util/List;
aload 0
aload 3
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/covert(Lcom/product/android/commonInterface/chat/SearchContract;)Lcom/product/android/commonInterface/chat/SearchContactsItem;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L6
L5:
aload 2
areturn
.limit locals 6
.limit stack 7
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Integer;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/doInBackground([Ljava/lang/Integer;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method public isTaskRunning()Z
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/isRunning Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected onPostExecute(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult;)V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 2
aload 2
ifnull L0
aload 2
invokevirtual android/app/Activity/isFinishing()Z
ifeq L1
L0:
return
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/mAppendData Z
ifeq L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 1
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchRecentContactList Ljava/util/List;
aload 1
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchContactsList Ljava/util/List;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/AppendData(Ljava/util/List;Ljava/util/List;)V
L3:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/notifyDataSetChanged()V
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/isRunning Z
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$300(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Ljava/lang/String;
astore 1
aload 1
ifnull L4
aload 1
ldc ""
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L5
L4:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/notifyDataSetChanged()V
return
L2:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$200(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;
aload 1
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchRecentContactList Ljava/util/List;
aload 1
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult/mSearchContactsList Ljava/util/List;
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/setParam(Ljava/util/List;Ljava/util/List;)V
goto L3
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/mSearchText Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/this$0 Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;
aload 1
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment/access$400(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment;Ljava/lang/String;)V
return
.limit locals 3
.limit stack 3
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchTask/onPostExecute(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$SearchResult;)V
return
.limit locals 2
.limit stack 2
.end method
