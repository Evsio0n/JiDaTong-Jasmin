.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter
.super android/widget/BaseAdapter
.inner class private ImageAdapter inner com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter outer com/nd/android/u/contact/activity/AddFriendsActivity

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/AddFriendsActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;Lcom/nd/android/u/contact/activity/AddFriendsActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/<init>(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$400(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/ArrayList;
invokevirtual java/util/ArrayList/size()I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$400(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method public getItemId(I)J
iload 1
i2l
lreturn
.limit locals 2
.limit stack 2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
aload 2
ifnonnull L0
new com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder
dup
invokespecial com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
getstatic com/nd/android/u/contact/R$layout/add_friends_list_item I
aconst_null
invokestatic android/view/View/inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_head_photo I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_Right_Ht I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/mIvRightHt Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/tv_content I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/TextView
putfield com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/mTvContent Landroid/widget/TextView;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 3
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/mTvContent Landroid/widget/TextView;
aload 0
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ImageAdapter/this$0 Lcom/nd/android/u/contact/activity/AddFriendsActivity;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$400(Lcom/nd/android/u/contact/activity/AddFriendsActivity;)Ljava/util/ArrayList;
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/CharSequence
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder/mIvHeadPhoto Landroid/widget/ImageView;
invokestatic com/nd/android/u/contact/activity/AddFriendsActivity/access$500()[I
iload 1
iaload
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/AddFriendsActivity$ViewHolder
astore 3
goto L1
.limit locals 4
.limit stack 3
.end method
