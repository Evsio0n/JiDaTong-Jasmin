.bytecode 50.0
.class synchronized com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter
.super android/widget/BaseAdapter
.inner class private FriendGroupAdapter inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter outer com/nd/android/u/contact/activity/ManagerFriendsGroupActivity
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$1
.inner class inner com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3$2

.field private 'isDelFriendGroup' Z

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;

.method private <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
invokespecial android/widget/BaseAdapter/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/isDelFriendGroup Z
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method static synthetic access$600(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Landroid/view/View;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;)V
aload 0
aload 1
aload 2
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/modFriendGroupName(Landroid/view/View;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;)V
return
.limit locals 3
.limit stack 3
.end method

.method static synthetic access$702(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Z)Z
aload 0
iload 1
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/isDelFriendGroup Z
iload 1
ireturn
.limit locals 2
.limit stack 2
.end method

.method private initItemEvent(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;I)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
astore 3
aload 1
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$1
dup
aload 0
iload 2
aload 1
aload 3
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$1/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;ILcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;)V
invokevirtual android/widget/EditText/setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
aload 1
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mBtnClearFriendGroupName Landroid/widget/Button;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2
dup
aload 0
aload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$2/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;)V
invokevirtual android/widget/Button/setOnClickListener(Landroid/view/View$OnClickListener;)V
aload 1
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvDeleteFriendGroup Landroid/widget/ImageView;
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3
dup
aload 0
aload 3
iload 2
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter$3/<init>(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;I)V
invokevirtual android/widget/ImageView/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
.limit locals 4
.limit stack 7
.end method

.method private modFriendGroupName(Landroid/view/View;Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup;)V
aload 2
ifnull L0
aload 1
checkcast android/widget/EditText
astore 1
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
astore 4
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getFgid()I
istore 3
aload 1
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
invokevirtual java/lang/String/trim()Ljava/lang/String;
astore 5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/isDelFriendGroup Z
ifeq L2
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/isDelFriendGroup Z
L0:
return
L2:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/friend_group_name_is_null I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
aload 1
aload 4
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
return
L1:
aload 4
aload 5
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
aload 5
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/setName(Ljava/lang/String;)V
aload 1
aload 5
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$900(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 3
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
return
.limit locals 6
.limit stack 3
.end method

.method public clearForce()V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1000(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Landroid/widget/ListView;
invokevirtual android/widget/ListView/getChildCount()I
istore 2
iconst_0
istore 1
L0:
iload 1
iload 2
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$1000(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Landroid/widget/ListView;
iload 1
invokevirtual android/widget/ListView/getChildAt(I)Landroid/view/View;
getstatic com/nd/android/u/contact/R$id/et_friend_group_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokevirtual android/view/View/clearFocus()V
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
return
.limit locals 3
.limit stack 2
.end method

.method public getCount()I
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
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
new com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder
dup
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/<init>()V
astore 3
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokevirtual com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/getLayoutInflater()Landroid/view/LayoutInflater;
getstatic com/nd/android/u/contact/R$layout/manager_friends_group_item I
aconst_null
invokevirtual android/view/LayoutInflater/inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
astore 2
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_friends_group_order I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/iv_delete_friend_group I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/ImageView
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvDeleteFriendGroup Landroid/widget/ImageView;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/et_friend_group_name I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/EditText
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
aload 3
aload 2
getstatic com/nd/android/u/contact/R$id/btn_clear_input I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
checkcast android/widget/Button
putfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mBtnClearFriendGroupName Landroid/widget/Button;
aload 2
aload 3
invokevirtual android/view/View/setTag(Ljava/lang/Object;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$300(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/getOapFriendGroup()Lcom/nd/android/u/contact/dataStructure/OapFriendGroup; 0
invokevirtual com/nd/android/u/contact/dataStructure/OapFriendGroup/getName()Ljava/lang/String;
astore 4
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
aload 4
invokevirtual android/widget/EditText/setText(Ljava/lang/CharSequence;)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
invokevirtual android/widget/EditText/setTag(Ljava/lang/Object;)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$400(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)Z
ifeq L2
aload 0
aload 3
iload 1
invokespecial com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/initItemEvent(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder;I)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvDeleteFriendGroup Landroid/widget/ImageView;
iconst_0
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
iconst_1
invokevirtual android/widget/EditText/setEnabled(Z)V
aload 0
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$FriendGroupAdapter/this$0 Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;
invokestatic com/nd/android/u/contact/activity/ManagerFriendsGroupActivity/access$500(Lcom/nd/android/u/contact/activity/ManagerFriendsGroupActivity;)I
iload 1
if_icmpne L3
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
invokevirtual android/widget/EditText/requestFocus()Z
pop
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
aload 4
invokevirtual java/lang/String/length()I
invokevirtual android/widget/EditText/setSelection(I)V
L4:
iload 1
ifne L5
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_friend_group_default I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvDeleteFriendGroup Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
iconst_0
invokevirtual android/widget/EditText/setEnabled(Z)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mBtnClearFriendGroupName Landroid/widget/Button;
iconst_4
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
areturn
L0:
aload 2
invokevirtual android/view/View/getTag()Ljava/lang/Object;
checkcast com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder
astore 3
goto L1
L3:
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mEtFriendGroupName Landroid/widget/EditText;
invokevirtual android/widget/EditText/clearFocus()V
goto L4
L5:
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvSelectFriend Landroid/widget/ImageView;
getstatic com/nd/android/u/contact/R$drawable/bt_friend_group_order I
invokevirtual android/widget/ImageView/setImageResource(I)V
aload 2
areturn
L2:
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mIvDeleteFriendGroup Landroid/widget/ImageView;
iconst_4
invokevirtual android/widget/ImageView/setVisibility(I)V
aload 3
getfield com/nd/android/u/contact/activity/ManagerFriendsGroupActivity$ViewHolder/mBtnClearFriendGroupName Landroid/widget/Button;
iconst_4
invokevirtual android/widget/Button/setVisibility(I)V
aload 2
areturn
.limit locals 5
.limit stack 3
.end method
