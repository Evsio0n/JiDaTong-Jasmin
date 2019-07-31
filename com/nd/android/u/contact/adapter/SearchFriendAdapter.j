.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SearchFriendAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback
.implements com/product/android/ui/widget/SearchTipItem$OnNetSearch
.implements com/product/android/ui/widget/SearchTipItem$OnGetSearchText
.inner class inner com/nd/android/u/contact/adapter/SearchFriendAdapter$1
.inner class Holder inner com/nd/android/u/contact/adapter/SearchFriendAdapter$Holder outer com/nd/android/u/contact/adapter/SearchFriendAdapter
.inner class public static abstract interface ListStatusListener inner com/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener outer com/nd/android/u/contact/adapter/SearchFriendAdapter
.inner class private static final enum RowType inner com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType outer com/nd/android/u/contact/adapter/SearchFriendAdapter

.field private final 'TAG' Ljava/lang/String;

.field private 'mContractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field protected 'mIsBackpackSendflower' Z

.field private 'mListener' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;

.field private 'mNetSearchList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.field private 'mSearchText' Ljava/lang/String;

.field private 'mShowNetSearchFailedTip' Z

.field private 'mcontext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;Ljava/util/List;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SearchFriendAdapter"
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mSearchText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mIsBackpackSendflower Z
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
return
.limit locals 4
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SearchFriendAdapter"
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mSearchText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mIsBackpackSendflower Z
aload 2
ifnull L0
aload 2
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 7
L1:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 8
aload 8
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lstore 5
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 5
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 9
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 9
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
iconst_m1
if_icmpeq L1
aload 8
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L1
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
aload 0
iload 3
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mIsBackpackSendflower Z
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
return
.limit locals 10
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method private position2Type(I)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/getItemViewType(I)I
invokestatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/value2Type(I)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
areturn
.limit locals 2
.limit stack 2
.end method

.method private setNetSearchList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
L0:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L1:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Set/add(Ljava/lang/Object;)Z 1
pop
goto L1
L2:
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 2
L3:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Set/contains(Ljava/lang/Object;)Z 1
ifeq L3
aload 2
invokeinterface java/util/Iterator/remove()V 0
goto L3
L4:
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L5
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/adapter/SearchFriendAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/SearchFriendAdapter;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L5:
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mShowNetSearchFailedTip Z
return
.limit locals 3
.limit stack 4
.end method

.method private showSearchTipItem()Z
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
ifnull L0
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L0:
iload 1
bipush 49
if_icmple L1
iconst_1
ireturn
L1:
iconst_0
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final getCount()I
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
ifnull L0
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L0:
iload 1
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
iload 1
istore 2
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/showSearchTipItem()Z
ifeq L1
iload 1
iconst_1
iadd
istore 2
L1:
iload 2
ireturn
L2:
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/position2Type(I)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
astore 3
aload 3
getstatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
L1:
aconst_null
areturn
L2:
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aload 3
getstatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
if_acmpne L1
iconst_0
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
ifnull L3
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 2
L3:
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
iload 1
iload 2
isub
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getItemViewType(I)I
iload 1
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L1
iconst_1
ireturn
L1:
iconst_2
ireturn
.limit locals 2
.limit stack 2
.end method

.method public getSearchText()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
aload 0
iload 1
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/position2Type(I)Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
astore 3
aload 3
getstatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
if_acmpne L6
aload 2
astore 3
aload 2
ifnonnull L7
new com/nd/android/u/contact/view/SearchFriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mIsBackpackSendflower Z
aload 0
invokespecial com/nd/android/u/contact/view/SearchFriendView/<init>(Landroid/content/Context;IZLcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;)V
astore 3
L7:
aload 3
checkcast com/nd/android/u/contact/view/SearchFriendView
astore 2
L0:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/chat/SearchContract
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
invokevirtual com/nd/android/u/contact/view/SearchFriendView/initComponentValue(Lcom/product/android/commonInterface/chat/SearchContract;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
L1:
aload 3
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L6:
aload 3
getstatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/NET_SEARCH_TIP_ROW Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
if_acmpne L8
aload 2
ifnonnull L9
new com/product/android/ui/widget/SearchTipItem
dup
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
invokespecial com/product/android/ui/widget/SearchTipItem/<init>(Landroid/content/Context;)V
astore 2
L10:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
checkcast android/app/Activity
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mShowNetSearchFailedTip Z
aload 0
invokevirtual com/product/android/ui/widget/SearchTipItem/updateContent(Landroid/app/Activity;Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;ZLcom/product/android/ui/widget/SearchTipItem$OnNetSearch;)V
aload 2
areturn
L9:
aload 2
checkcast com/product/android/ui/widget/SearchTipItem
astore 2
goto L10
L8:
aload 3
getstatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
if_acmpne L11
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 3
aload 2
ifnonnull L12
new com/nd/android/u/contact/view/SearchFriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mcontext Landroid/content/Context;
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mIsBackpackSendflower Z
aload 0
invokespecial com/nd/android/u/contact/view/SearchFriendView/<init>(Landroid/content/Context;IZLcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;)V
astore 2
L3:
aload 2
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
invokevirtual com/nd/android/u/contact/view/SearchFriendView/initComponentValue(JLjava/lang/String;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
L4:
aload 2
areturn
L5:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
aload 2
areturn
L12:
aload 2
checkcast com/nd/android/u/contact/view/SearchFriendView
astore 2
goto L3
L11:
aconst_null
areturn
.limit locals 4
.limit stack 6
.end method

.method public getViewTypeCount()I
invokestatic com/nd/android/u/contact/adapter/SearchFriendAdapter$RowType/values()[Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$RowType;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final notifyDataChange(J)V
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 4
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lload 1
lcmp
ifne L0
aload 4
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
L1:
aload 0
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/notifyDataSetChanged()V
return
.limit locals 5
.limit stack 4
.end method

.method public onSearch(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
invokespecial com/nd/android/u/contact/adapter/SearchFriendAdapter/setNetSearchList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/SearchFriendAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 4
L1:
aload 4
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 4
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/chat/SearchContract
astore 5
aload 5
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
lstore 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L1
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
iconst_m1
if_icmpeq L1
aload 5
iconst_1
invokevirtual com/product/android/commonInterface/chat/SearchContract/setIsFriend(Z)V
goto L1
L0:
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mContractList Ljava/util/List;
return
.limit locals 7
.limit stack 3
.end method

.method public setNetSearchFailedTipShowState(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mShowNetSearchFailedTip Z
return
.limit locals 2
.limit stack 2
.end method

.method public setNetSearchKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mSearchText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mShowNetSearchFailedTip Z
aload 0
getfield com/nd/android/u/contact/adapter/SearchFriendAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 2
.limit stack 2
.end method
