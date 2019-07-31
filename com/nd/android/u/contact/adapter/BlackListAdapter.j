.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/BlackListAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/adapter/RefreshBaseAdapter
.inner class static synthetic inner com/nd/android/u/contact/adapter/BlackListAdapter$1
.inner class private static Holder inner com/nd/android/u/contact/adapter/BlackListAdapter$Holder outer com/nd/android/u/contact/adapter/BlackListAdapter

.field private 'mBlackList' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"

.field private 'mContext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/BlackListAdapter/mContext Landroid/content/Context;
return
.limit locals 2
.limit stack 2
.end method

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/BlackListAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
return
.limit locals 3
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
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

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/adapter/BlackListAdapter$Holder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/BlackListAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/BlackListAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/blacklist_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/usernametxt Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_img_remove I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/removeimg Landroid/widget/Button;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/BlackListPerson
astore 4
aload 3
getfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/removeimg Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$id/tag_first I
aload 4
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/Button/setTag(ILjava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/removeimg Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$id/tag_second I
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/Button/setTag(ILjava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/usernametxt Landroid/widget/TextView;
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 4
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUserComment(J)Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 4
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
aload 4
getfield com/product/android/commonInterface/contact/BlackListPerson/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 3
getfield com/nd/android/u/contact/adapter/BlackListAdapter$Holder/heardimg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/BlackListAdapter$Holder
astore 3
goto L1
.limit locals 5
.limit stack 4
.end method

.method final getVisitorsList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;"
aload 0
getfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final refresh()V
aload 0
invokevirtual com/nd/android/u/contact/adapter/BlackListAdapter/notifyDataSetChanged()V
return
.limit locals 1
.limit stack 1
.end method

.method public final setVisitorsList(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/BlackListPerson;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/BlackListAdapter/mBlackList Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
