.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/HiddenLoveAdapter
.super android/widget/BaseAdapter
.inner class inner com/nd/android/u/contact/adapter/HiddenLoveAdapter$1
.inner class inner com/nd/android/u/contact/adapter/HiddenLoveAdapter$2
.inner class public static abstract interface DelHiddenLoveCallBack inner com/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack outer com/nd/android/u/contact/adapter/HiddenLoveAdapter
.inner class private static Holder inner com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder outer com/nd/android/u/contact/adapter/HiddenLoveAdapter

.field private 'mCallBack' Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;

.field private 'mContext' Landroid/content/Context;

.field private 'mInfos' Ljava/util/ArrayList; signature "Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;"

.field private 'remove' Landroid/view/View$OnClickListener;

.field private 'toProfile' Landroid/view/View$OnClickListener;

.method public <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;)V
.signature "(Landroid/content/Context;Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
new com/nd/android/u/contact/adapter/HiddenLoveAdapter$1
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/HiddenLoveAdapter$1/<init>(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;)V
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/remove Landroid/view/View$OnClickListener;
aload 0
new com/nd/android/u/contact/adapter/HiddenLoveAdapter$2
dup
aload 0
invokespecial com/nd/android/u/contact/adapter/HiddenLoveAdapter$2/<init>(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;)V
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/toProfile Landroid/view/View$OnClickListener;
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mContext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
aload 0
aload 3
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mCallBack Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;
return
.limit locals 4
.limit stack 4
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter;)Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mCallBack Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$DelHiddenLoveCallBack;
areturn
.limit locals 1
.limit stack 1
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
ifnonnull L0
aconst_null
areturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dataStructure/HiddenLoveInfo
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/HiddenLoveAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
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
new com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder
dup
aconst_null
invokespecial com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/<init>(Lcom/nd/android/u/contact/adapter/HiddenLoveAdapter$1;)V
astore 3
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mContext Landroid/content/Context;
invokestatic android/view/LayoutInflater/from(Landroid/content/Context;)Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/hidden_love_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_img_face I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_tx_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/usernametxt Landroid/widget/TextView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/visitor_item_img_remove I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/removeimg Landroid/widget/Button;
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/removeimg Landroid/widget/Button;
getstatic com/nd/android/u/contact/R$string/cancel_hidden_love I
invokevirtual android/widget/Button/setText(I)V
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
iload 1
invokevirtual com/nd/android/u/contact/adapter/HiddenLoveAdapter/getItem(I)Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;
astore 4
aload 4
getfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/uid J
aload 4
getfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/uid J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/heardimg Landroid/widget/ImageView;
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/usernametxt Landroid/widget/TextView;
aload 4
getfield com/nd/android/u/contact/dataStructure/HiddenLoveInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/removeimg Landroid/widget/Button;
aload 4
invokevirtual android/widget/Button/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 4
invokevirtual android/widget/ImageView/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/removeimg Landroid/widget/Button;
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/remove Landroid/view/View$OnClickListener;
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 3
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder/heardimg Landroid/widget/ImageView;
aload 0
getfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/toProfile Landroid/view/View$OnClickListener;
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/adapter/HiddenLoveAdapter$Holder
astore 3
goto L1
.limit locals 5
.limit stack 4
.end method

.method public final setData(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Lcom/nd/android/u/contact/dataStructure/HiddenLoveInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/HiddenLoveAdapter/mInfos Ljava/util/ArrayList;
return
.limit locals 2
.limit stack 2
.end method
