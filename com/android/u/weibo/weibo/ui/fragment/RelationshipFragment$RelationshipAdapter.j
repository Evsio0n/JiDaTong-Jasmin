.bytecode 50.0
.class synchronized com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter
.super android/widget/BaseAdapter
.inner class private RelationshipAdapter inner com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter outer com/android/u/weibo/weibo/ui/fragment/RelationshipFragment

.field private 'inflater' Landroid/view/LayoutInflater;

.field final synthetic 'this$0' Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;

.method public <init>(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)V
aload 0
aload 1
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getActivity()Landroid/support/v4/app/FragmentActivity;
ldc "layout_inflater"
invokevirtual android/support/v4/app/FragmentActivity/getSystemService(Ljava/lang/String;)Ljava/lang/Object;
checkcast android/view/LayoutInflater
putfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/inflater Landroid/view/LayoutInflater;
return
.limit locals 2
.limit stack 3
.end method

.method public getCount()I
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Lcom/product/android/commonInterface/weibo/Idol;
iload 1
iflt L0
iload 1
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
if_icmplt L1
L0:
aconst_null
areturn
L1:
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokestatic com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/access$400(Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
areturn
.limit locals 2
.limit stack 2
.end method

.method public volatile synthetic getItem(I)Ljava/lang/Object;
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/getItem(I)Lcom/product/android/commonInterface/weibo/Idol;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
lconst_0
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
astore 3
aload 2
ifnonnull L0
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/inflater Landroid/view/LayoutInflater;
getstatic com/android/u/weibo/R$layout/weibo_following_follower_list_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 3
L0:
aload 0
iload 1
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/getItem(I)Lcom/product/android/commonInterface/weibo/Idol;
astore 2
aload 3
getstatic com/android/u/weibo/R$id/avatar I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
astore 4
aload 3
getstatic com/android/u/weibo/R$id/name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 5
aload 3
getstatic com/android/u/weibo/R$id/follwer_count I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
astore 6
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 4
invokestatic com/product/android/business/headImage/HeadImageLoader/displayImage(JILandroid/widget/ImageView;)V
aload 5
aload 2
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/nickname Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/weibo/Idol/fans I
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/weibo/ui/fragment/RelationshipFragment$RelationshipAdapter/this$0 Lcom/android/u/weibo/weibo/ui/fragment/RelationshipFragment;
invokevirtual com/android/u/weibo/weibo/ui/fragment/RelationshipFragment/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/follower I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
areturn
.limit locals 7
.limit stack 4
.end method
