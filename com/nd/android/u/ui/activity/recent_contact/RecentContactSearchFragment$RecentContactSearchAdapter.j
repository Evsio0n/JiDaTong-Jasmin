.bytecode 50.0
.class synchronized com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter
.super android/widget/BaseAdapter
.implements com/product/android/ui/widget/SearchTipItem$OnNetSearch
.implements com/product/android/ui/widget/SearchTipItem$OnGetSearchText
.inner class private static RecentContactSearchAdapter inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment
.inner class inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1
.inner class private static final enum RowType inner com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType outer com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter

.field private 'mActivity' Landroid/app/Activity;

.field private 'mForwardingParam' Lcom/nd/android/u/controller/bean/contact/ForwardingParam;

.field private 'mNetSearchList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.field private 'mSearchContactsList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContactsItem;>;"

.field private 'mSearchRecentContactList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;"

.field private 'mSearchText' Ljava/lang/String;

.field private 'mShowNetSearchFailedTip' Z

.method <init>(Landroid/app/Activity;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;Ljava/lang/String;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
aload 0
aload 3
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mShowNetSearchFailedTip Z
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$500(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$600(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;Ljava/util/ArrayList;)V
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/saveNetSearchResult(Ljava/util/ArrayList;)V
return
.limit locals 2
.limit stack 2
.end method

.method private isNameDuplicate(Ljava/lang/String;I)Z
iconst_0
istore 6
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getCount()I
istore 4
iconst_0
istore 3
L0:
iload 6
istore 5
iload 3
iload 4
if_icmpge L1
iload 3
iload 2
if_icmpne L2
L3:
iload 3
iconst_1
iadd
istore 3
goto L0
L2:
aload 0
iload 3
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/position2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
astore 7
aload 7
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/CONTACTS_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L4
aload 0
iload 3
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContactsItem
astore 7
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 7
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
istore 5
L1:
iload 5
ireturn
L4:
aload 7
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L3
aload 0
iload 3
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
ireturn
.limit locals 8
.limit stack 3
.end method

.method private position2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItemViewType(I)I
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/value2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
areturn
.limit locals 2
.limit stack 2
.end method

.method private saveNetSearchResult(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 2
aload 2
aload 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 11015
aload 2
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 3
.limit stack 4
.end method

.method private setNetSearchList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
.catch java/lang/NumberFormatException from L0 to L1 using L2
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
ifnonnull L3
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
L3:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L4:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L5
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 3
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getMessageType()I
ifne L4
aload 3
invokevirtual com/nd/android/u/controller/bean/contact/RecentContactItem/getId()Ljava/lang/String;
astore 3
L0:
aload 1
aload 3
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
L1:
goto L4
L2:
astore 3
goto L4
L5:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L6:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContactsItem
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
goto L6
L7:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L8:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L9
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L8
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L8
L9:
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1
dup
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$1/<init>(Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
.limit locals 4
.limit stack 4
.end method

.method private showSearchTipItem()Z
iconst_0
istore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
ifnull L0
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L0:
iload 1
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
ifnull L1
iload 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 2
L1:
iload 2
bipush 49
if_icmple L2
iconst_0
ireturn
L2:
iconst_1
ireturn
.limit locals 3
.limit stack 2
.end method

.method public AppendData(Ljava/util/List;Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContactsItem;>;)V"
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
aload 2
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 3
.limit stack 2
.end method

.method public cleanAllSearchResult()V
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public getCount()I
iconst_0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
ifnull L0
iconst_0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 2
L0:
iload 2
istore 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
ifnull L1
iload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L1:
iload 1
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
ifnull L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L3
iload 1
istore 2
aload 0
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/showSearchTipItem()Z
ifeq L2
iload 1
iconst_1
iadd
istore 2
L2:
iload 2
ireturn
L3:
iload 1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
ireturn
.limit locals 3
.limit stack 2
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/position2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
astore 4
aload 4
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/RECENT_CONTACT_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aload 4
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/CONTACTS_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L1
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
iload 1
iload 2
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L1:
aload 4
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
iload 1
iload 2
iload 3
iadd
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L2:
aconst_null
areturn
.limit locals 5
.limit stack 4
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getItemViewType(I)I
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
invokeinterface java/util/List/size()I 0
istore 2
iload 1
iload 2
if_icmpge L0
iconst_0
ireturn
L0:
iload 1
iload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
if_icmpge L1
iconst_1
ireturn
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
iconst_2
ireturn
L2:
iconst_3
ireturn
.limit locals 3
.limit stack 3
.end method

.method public getSearchText()Ljava/lang/String;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/position2Type(I)Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
astore 3
aload 3
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/RECENT_CONTACT_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L0
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItem(I)Ljava/lang/Object;
checkcast com/nd/android/u/controller/bean/contact/RecentContactItem
astore 3
aload 2
ifnonnull L1
new com/nd/android/u/ui/widge/RecentContactItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
invokespecial com/nd/android/u/ui/widge/RecentContactItemView/<init>(Landroid/content/Context;)V
astore 2
L2:
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
aload 3
iconst_1
invokevirtual com/nd/android/u/ui/widge/RecentContactItemView/updateContent(Landroid/content/Context;Lcom/nd/android/u/controller/bean/contact/RecentContactItem;Z)V
aload 2
areturn
L1:
aload 2
checkcast com/nd/android/u/ui/widge/RecentContactItemView
astore 2
goto L2
L0:
aload 3
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/CONTACTS_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L3
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContactsItem
astore 3
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 3
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/isNameDuplicate(Ljava/lang/String;I)Z
istore 4
aload 2
ifnonnull L4
new com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/<init>(Landroid/content/Context;)V
astore 2
L5:
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
aload 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
iconst_1
iload 4
invokevirtual com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/updateContent(Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;ZZ)V
aload 2
areturn
L4:
aload 2
checkcast com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView
astore 2
goto L5
L3:
aload 3
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/SEARCH_TIP_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L6
aload 2
ifnonnull L7
new com/product/android/ui/widget/SearchTipItem
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
invokespecial com/product/android/ui/widget/SearchTipItem/<init>(Landroid/content/Context;)V
astore 2
L8:
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
aload 0
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mShowNetSearchFailedTip Z
aload 0
invokevirtual com/product/android/ui/widget/SearchTipItem/updateContent(Landroid/app/Activity;Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;ZLcom/product/android/ui/widget/SearchTipItem$OnNetSearch;)V
aload 2
areturn
L7:
aload 2
checkcast com/product/android/ui/widget/SearchTipItem
astore 2
goto L8
L6:
aload 3
getstatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
if_acmpne L9
aload 0
iload 1
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 5
new com/product/android/commonInterface/chat/SearchContactsItem
dup
invokespecial com/product/android/commonInterface/chat/SearchContactsItem/<init>()V
astore 3
aload 3
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setFriendFlag(Z)V
aload 3
aload 5
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setId(J)V
aload 3
aload 5
getfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/setWorkId(Ljava/lang/String;)V
aload 2
ifnonnull L10
new com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView
dup
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
invokespecial com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/<init>(Landroid/content/Context;)V
astore 2
L11:
aload 0
getstatic com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/INSTANCE Lcom/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl;
getfield com/nd/android/u/chatInterfaceImpl/ChatInterfaceImpl/chatCallOtherModel Lcom/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business;
aload 3
invokevirtual com/product/android/commonInterface/chat/SearchContactsItem/getId()J
invokeinterface com/nd/android/u/chatInterfaceImpl/IChatCallOtherModel_Business/getUserName(J)Ljava/lang/String; 2
iload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/isNameDuplicate(Ljava/lang/String;I)Z
istore 4
aload 2
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mActivity Landroid/app/Activity;
aload 3
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mForwardingParam Lcom/nd/android/u/controller/bean/contact/ForwardingParam;
iconst_0
iload 4
invokevirtual com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView/updateContent(Landroid/app/Activity;Lcom/product/android/commonInterface/chat/SearchContactsItem;Lcom/nd/android/u/controller/bean/contact/ForwardingParam;ZZ)V
aload 2
areturn
L10:
aload 2
checkcast com/nd/android/u/ui/activity/recent_contact/SearchContactsItemView
astore 2
goto L11
L9:
aconst_null
areturn
.limit locals 6
.limit stack 6
.end method

.method public getViewTypeCount()I
invokestatic com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType/values()[Lcom/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter$RowType;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onSearch(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
invokespecial com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/setNetSearchList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public setNetSearchFailedTipShowState(Z)V
aload 0
iload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mShowNetSearchFailedTip Z
return
.limit locals 2
.limit stack 2
.end method

.method public setParam(Ljava/util/List;Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/controller/bean/contact/RecentContactItem;>;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContactsItem;>;)V"
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchRecentContactList Ljava/util/List;
L0:
aload 0
aload 2
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
ifnonnull L1
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchContactsList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 3
.limit stack 3
.end method

.method public updateSearchText(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/ui/activity/recent_contact/RecentContactSearchFragment$RecentContactSearchAdapter/mSearchText Ljava/lang/String;
return
.limit locals 2
.limit stack 2
.end method
