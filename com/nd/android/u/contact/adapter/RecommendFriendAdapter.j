.bytecode 50.0
.class public synchronized com/nd/android/u/contact/adapter/RecommendFriendAdapter
.super android/widget/BaseAdapter
.implements com/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback
.inner class Holder inner com/nd/android/u/contact/adapter/RecommendFriendAdapter$Holder outer com/nd/android/u/contact/adapter/RecommendFriendAdapter

.field private 'mContractList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;"

.field protected 'mIsGetUId' Z

.field private 'mListener' Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;

.field private 'mcontext' Landroid/content/Context;

.method public <init>(Landroid/content/Context;Ljava/util/List;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
.signature "(Landroid/content/Context;Ljava/util/List<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;ZLcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V"
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mcontext Landroid/content/Context;
aload 0
aconst_null
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
aload 0
iconst_0
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mIsGetUId Z
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mcontext Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
aload 0
iload 3
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mIsGetUId Z
aload 0
aload 4
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
return
.limit locals 5
.limit stack 2
.end method

.method public final getCount()I
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
ifnonnull L0
iconst_0
ireturn
L0:
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public final getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
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

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.catch java/lang/Exception from L0 to L1 using L2
aload 2
astore 3
aload 2
ifnonnull L3
new com/nd/android/u/contact/view/SearchFriendView
dup
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mcontext Landroid/content/Context;
iconst_1
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mIsGetUId Z
aload 0
invokespecial com/nd/android/u/contact/view/SearchFriendView/<init>(Landroid/content/Context;IZLcom/nd/android/u/contact/view/SearchFriendView$ChangeDataCallback;)V
astore 3
L3:
aload 3
checkcast com/nd/android/u/contact/view/SearchFriendView
astore 2
L0:
aload 2
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/weibo/CommonFriendInfo
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mListener Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;
invokevirtual com/nd/android/u/contact/view/SearchFriendView/initComponentValue(Lcom/product/android/commonInterface/weibo/CommonFriendInfo;Lcom/nd/android/u/contact/adapter/SearchFriendAdapter$ListStatusListener;)V
L1:
aload 3
areturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
aload 3
areturn
.limit locals 4
.limit stack 6
.end method

.method public final notifyDataChange(J)V
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L0:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/CommonFriendInfo
astore 4
aload 4
getfield com/product/android/commonInterface/weibo/CommonFriendInfo/uid J
lload 1
lcmp
ifne L0
aload 0
getfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
aload 4
invokeinterface java/util/List/remove(Ljava/lang/Object;)Z 1
pop
L1:
aload 0
invokevirtual com/nd/android/u/contact/adapter/RecommendFriendAdapter/notifyDataSetChanged()V
return
.limit locals 5
.limit stack 4
.end method

.method public final setList(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/weibo/CommonFriendInfo;>;)V"
aload 0
aload 1
putfield com/nd/android/u/contact/adapter/RecommendFriendAdapter/mContractList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
