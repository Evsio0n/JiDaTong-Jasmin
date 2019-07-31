.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/SearchUserAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class inner com/nd/android/u/contact/adapter/SearchUserAdapter$1
.inner class Holder inner com/nd/android/u/contact/adapter/SearchUserAdapter$Holder outer com/nd/android/u/contact/adapter/SearchUserAdapter

.field private final 'TAG' Ljava/lang/String;

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'context' Landroid/content/Context;

.field private 'list' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.method public <init>(Landroid/content/Context;Ljava/util/List;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SearchUserAdapter"
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
aload 0
new com/nd/android/u/contact/adapter/SearchUserAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchUserAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/SearchUserAdapter;)V
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
return
.limit locals 3
.limit stack 4
.end method

.method public <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
ldc "SearchUserAdapter"
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/TAG Ljava/lang/String;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/context Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
aload 0
new com/nd/android/u/contact/adapter/SearchUserAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/SearchUserAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/SearchUserAdapter;)V
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
return
.limit locals 4
.limit stack 4
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public final getList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/SearchUserAdapter/getItem(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/view/AddFriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/SearchUserAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
invokespecial com/nd/android/u/contact/view/AddFriendView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;)V
astore 3
L0:
aload 3
checkcast com/nd/android/u/contact/view/AddFriendView
aload 4
invokevirtual com/nd/android/u/contact/view/AddFriendView/initComponentValue(Lcom/product/android/commonInterface/contact/OapUser;)V
aload 3
areturn
.limit locals 5
.limit stack 4
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/SearchUserAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/SearchUserAdapter/list Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
