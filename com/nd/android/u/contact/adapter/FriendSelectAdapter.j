.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/FriendSelectAdapter
.super android/widget/BaseAdapter
.implements com/product/android/ui/widget/SearchTipItem$OnNetSearch
.implements com/product/android/ui/widget/SearchTipItem$OnGetSearchText
.inner class inner com/nd/android/u/contact/adapter/FriendSelectAdapter$1
.inner class private static final enum RowType inner com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType outer com/nd/android/u/contact/adapter/FriendSelectAdapter

.field private 'gid' J

.field private 'mContext' Landroid/content/Context;

.field private 'mHandler' Landroid/os/Handler;

.field private 'mNetSearchList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.field private 'mSearchList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"

.field private 'mSearchText' Ljava/lang/String;

.field private 'mSelectModule' Z

.field private 'mShowNetSearchFailedTip' Z

.method public <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
aload 0
ldc ""
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchText Ljava/lang/String;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mContext Landroid/content/Context;
aload 0
iload 2
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mHandler Landroid/os/Handler;
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
return
.limit locals 4
.limit stack 3
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method private isNameDuplicate(Ljava/lang/String;I)Z
iconst_0
istore 5
iconst_0
istore 3
L0:
iload 5
istore 4
iload 3
aload 0
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getCount()I
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
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/position2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
astore 6
aload 6
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L4
aload 0
iload 3
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContract
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
istore 4
L1:
iload 4
ireturn
L4:
aload 6
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L3
aload 0
iload 3
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L3
iconst_1
ireturn
.limit locals 7
.limit stack 2
.end method

.method private position2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getItemViewType(I)I
invokestatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/value2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
areturn
.limit locals 2
.limit stack 2
.end method

.method private setNetSearchList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
L0:
new java/util/HashSet
dup
invokespecial java/util/HashSet/<init>()V
astore 1
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
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
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
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
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifeq L5
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/adapter/FriendSelectAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/FriendSelectAdapter;)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
return
L5:
aload 0
iconst_1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mShowNetSearchFailedTip Z
return
.limit locals 3
.limit stack 4
.end method

.method private showSearchTipItem()Z
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L0
L1:
iconst_0
ireturn
L0:
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
ifnull L2
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L2:
iload 1
bipush 49
if_icmpgt L1
iconst_1
ireturn
.limit locals 2
.limit stack 2
.end method

.method public final getCount()I
iconst_0
istore 1
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
ifnull L0
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 1
L0:
iload 1
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/isEmpty()Z 0
ifeq L2
iload 1
istore 2
aload 0
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/showSearchTipItem()Z
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
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
ireturn
.limit locals 3
.limit stack 2
.end method

.method public final getHandler()Landroid/os/Handler;
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mHandler Landroid/os/Handler;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/position2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
astore 3
aload 3
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
L1:
aconst_null
areturn
L2:
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aload 3
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L1
iconst_0
istore 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
ifnull L3
iconst_0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
iadd
istore 2
L3:
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
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
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
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

.method public final getSearchList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;"
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public getSearchText()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchText Ljava/lang/String;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L7
.catch java/lang/Exception from L8 to L9 using L7
aload 0
iload 1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/position2Type(I)Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
astore 3
aload 3
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/SEARCH_CONTACT_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L10
aload 2
astore 3
aload 2
ifnonnull L11
new com/nd/android/u/contact/view/FriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mContext Landroid/content/Context;
aconst_null
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mHandler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/view/FriendView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;ZLandroid/os/Handler;)V
astore 3
L11:
aload 3
checkcast com/nd/android/u/contact/view/FriendView
astore 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
ifeq L0
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/gid J
invokevirtual com/nd/android/u/contact/view/FriendView/setGid(J)V
L0:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/SearchContract
astore 4
aload 0
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/isNameDuplicate(Ljava/lang/String;I)Z
ifeq L3
aload 2
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getUsername()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getWorkid()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JLjava/lang/String;Z)V
L1:
goto L12
L3:
aload 2
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFid()J
aload 4
invokevirtual com/product/android/commonInterface/chat/SearchContract/getFgid()I
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JIZ)V
L4:
goto L12
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
goto L12
L10:
aload 3
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_TIP_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L13
aload 2
ifnonnull L14
new com/product/android/ui/widget/SearchTipItem
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mContext Landroid/content/Context;
invokespecial com/product/android/ui/widget/SearchTipItem/<init>(Landroid/content/Context;)V
astore 2
L15:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mContext Landroid/content/Context;
checkcast android/app/Activity
aload 0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mShowNetSearchFailedTip Z
aload 0
invokevirtual com/product/android/ui/widget/SearchTipItem/updateContent(Landroid/app/Activity;Lcom/product/android/ui/widget/SearchTipItem$OnGetSearchText;ZLcom/product/android/ui/widget/SearchTipItem$OnNetSearch;)V
aload 2
areturn
L14:
aload 2
checkcast com/product/android/ui/widget/SearchTipItem
astore 2
goto L15
L13:
aload 3
getstatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/NET_SEARCH_ROW Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
if_acmpne L16
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 3
aload 2
ifnonnull L17
new com/nd/android/u/contact/view/FriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mContext Landroid/content/Context;
aconst_null
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mHandler Landroid/os/Handler;
invokespecial com/nd/android/u/contact/view/FriendView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;ZLandroid/os/Handler;)V
astore 2
L5:
aload 0
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
iload 1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/isNameDuplicate(Ljava/lang/String;I)Z
ifeq L8
aload 2
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "("
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/workid Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc ")"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JLjava/lang/String;Z)V
L6:
aload 2
areturn
L7:
astore 3
aload 3
invokevirtual java/lang/Exception/printStackTrace()V
aload 2
areturn
L17:
aload 2
checkcast com/nd/android/u/contact/view/FriendView
astore 2
goto L5
L8:
aload 2
aload 3
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
iconst_0
iconst_1
invokevirtual com/nd/android/u/contact/view/FriendView/initComponentValue(JIZ)V
L9:
aload 2
areturn
L16:
aconst_null
areturn
L12:
aload 3
areturn
.limit locals 5
.limit stack 6
.end method

.method public getViewTypeCount()I
invokestatic com/nd/android/u/contact/adapter/FriendSelectAdapter$RowType/values()[Lcom/nd/android/u/contact/adapter/FriendSelectAdapter$RowType;
arraylength
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final isSelectModule()Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
ireturn
.limit locals 1
.limit stack 1
.end method

.method public onSearch(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;)V"
aload 0
aload 1
invokespecial com/nd/android/u/contact/adapter/FriendSelectAdapter/setNetSearchList(Ljava/util/List;)V
aload 0
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/notifyDataSetChanged()V
return
.limit locals 2
.limit stack 2
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/FriendSelectAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public setGid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/gid J
return
.limit locals 3
.limit stack 3
.end method

.method public final setHandler(Landroid/os/Handler;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mHandler Landroid/os/Handler;
return
.limit locals 2
.limit stack 2
.end method

.method public setNetSearchFailedTipShowState(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mShowNetSearchFailedTip Z
return
.limit locals 2
.limit stack 2
.end method

.method public setNetSearchKey(Ljava/lang/String;)V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchText Ljava/lang/String;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mShowNetSearchFailedTip Z
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mNetSearchList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
return
.limit locals 2
.limit stack 2
.end method

.method public final setSearchList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/chat/SearchContract;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
L0:
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
aload 0
getfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSearchList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
.limit locals 2
.limit stack 3
.end method

.method public final setSelectModule(Z)V
aload 0
iload 1
putfield com/nd/android/u/contact/adapter/FriendSelectAdapter/mSelectModule Z
return
.limit locals 2
.limit stack 2
.end method
