.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/TransferGroupMemberAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class inner com/nd/android/u/contact/adapter/TransferGroupMemberAdapter$1

.field private static final 'TAG' Ljava/lang/String; = "GroupMemberAdapter"

.field private 'callback' Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;

.field private 'context' Landroid/content/Context;

.field private 'memberList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'selectid' J

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nd/android/u/contact/adapter/TransferGroupMemberAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/TransferGroupMemberAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/TransferGroupMemberAdapter;)V
putfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/context Landroid/content/Context;
return
.limit locals 2
.limit stack 4
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
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

.method public final getMemberList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;"
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getSelectid()J
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/selectid J
lreturn
.limit locals 1
.limit stack 2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
new com/nd/android/u/contact/view/TransferGroupMemberView
dup
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/context Landroid/content/Context;
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/callback Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;
invokespecial com/nd/android/u/contact/view/TransferGroupMemberView/<init>(Landroid/content/Context;Lcom/product/android/business/headImage/ProfileHeadImageCacheCallback;)V
astore 3
L0:
aload 3
checkcast com/nd/android/u/contact/view/TransferGroupMemberView
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/selectid J
invokevirtual com/nd/android/u/contact/view/TransferGroupMemberView/initComponentValue(Lcom/product/android/commonInterface/contact/OapUser;J)V
aload 3
areturn
.limit locals 4
.limit stack 4
.end method

.method public final hasStableIds()Z
iconst_1
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setMemberList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
ifnonnull L0
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
L1:
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
aload 1
invokeinterface java/util/List/addAll(Ljava/util/Collection;)Z 1
pop
return
L0:
aload 0
getfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/memberList Ljava/util/List;
invokeinterface java/util/List/clear()V 0
goto L1
.limit locals 2
.limit stack 3
.end method

.method public final setSelectid(J)V
aload 0
lload 1
putfield com/nd/android/u/contact/adapter/TransferGroupMemberAdapter/selectid J
return
.limit locals 3
.limit stack 3
.end method
