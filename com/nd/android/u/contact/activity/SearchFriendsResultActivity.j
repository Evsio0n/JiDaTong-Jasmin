.bytecode 50.0
.class public synchronized com/nd/android/u/contact/activity/SearchFriendsResultActivity
.super com/product/android/ui/activity/HeaderActivity
.inner class inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$1
.inner class private SearchFriendAdapter inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter outer com/nd/android/u/contact/activity/SearchFriendsResultActivity
.inner class inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter$1
.inner class static ViewHolder inner com/nd/android/u/contact/activity/SearchFriendsResultActivity$ViewHolder outer com/nd/android/u/contact/activity/SearchFriendsResultActivity

.field private 'adapter' Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;

.field private 'addFollowRequestCode' I

.field private 'mLvResultDisplay' Landroid/widget/ListView;

.field private 'mSearchResultList' Ljava/util/List; signature "Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUserSimple;>;"

.method public <init>()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/<init>()V
aload 0
iconst_2
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/addFollowRequestCode I
return
.limit locals 1
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$200(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)I
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/addFollowRequestCode I
ireturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$300(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
areturn
.limit locals 1
.limit stack 1
.end method

.method protected initComponent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponent()V
aload 0
aload 0
getstatic com/nd/android/u/contact/R$id/lv_result_display I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/findViewById(I)Landroid/view/View;
checkcast android/widget/ListView
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
return
.limit locals 1
.limit stack 3
.end method

.method protected initComponentValue()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/titleText Landroid/widget/TextView;
aload 0
getstatic com/nd/android/u/contact/R$string/searchresult I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/TextView/setText(Ljava/lang/CharSequence;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
iconst_0
invokevirtual android/widget/ListView/setDividerHeight(I)V
aload 0
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getIntent()Landroid/content/Intent;
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "friends"
invokevirtual android/os/Bundle/get(Ljava/lang/String;)Ljava/lang/Object;
checkcast java/util/List
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
ifnonnull L0
L0:
return
.limit locals 1
.limit stack 3
.end method

.method protected initEvent()V
aload 0
invokespecial com/product/android/ui/activity/HeaderActivity/initEvent()V
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
ifnonnull L0
aload 0
new com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/<init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$1;)V
putfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
invokevirtual android/widget/ListView/setAdapter(Landroid/widget/ListAdapter;)V
L1:
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
new com/nd/android/u/contact/activity/SearchFriendsResultActivity$1
dup
aload 0
invokespecial com/nd/android/u/contact/activity/SearchFriendsResultActivity$1/<init>(Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity;)V
invokevirtual android/widget/ListView/setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return
L0:
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/adapter Lcom/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter;
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity$SearchFriendAdapter/notifyDataSetChanged()V
goto L1
.limit locals 1
.limit stack 5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
aload 0
iload 1
iload 2
aload 3
invokespecial com/product/android/ui/activity/HeaderActivity/onActivityResult(IILandroid/content/Intent;)V
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/addFollowRequestCode I
iload 1
if_icmpne L0
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
astore 3
aload 3
ldc "following"
invokevirtual android/os/Bundle/getBoolean(Ljava/lang/String;)Z
istore 4
aload 3
ldc "uid"
invokevirtual android/os/Bundle/getLong(Ljava/lang/String;)J
lstore 5
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
lload 5
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 3
aload 3
ifnull L1
iload 4
ifeq L2
aload 3
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L3:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
lload 5
lcmp
ifne L4
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setChecked(Z)V
L1:
return
L4:
iload 1
iconst_1
iadd
istore 1
goto L3
L2:
aload 3
getstatic com/nd/android/u/contact/R$drawable/bt_concern_friend I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 3
aload 0
getstatic com/nd/android/u/contact/R$string/concern_others I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L5:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
lload 5
lcmp
ifne L6
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setChecked(Z)V
return
L6:
iload 1
iconst_1
iadd
istore 1
goto L5
L0:
iconst_1
iload 1
if_icmpne L1
iload 2
iconst_m1
if_icmpne L1
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
pop
aload 3
invokevirtual android/content/Intent/getExtras()Landroid/os/Bundle;
ldc "friend"
invokevirtual android/os/Bundle/getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mLvResultDisplay Landroid/widget/ListView;
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual android/widget/ListView/findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
checkcast android/widget/Button
astore 7
aload 7
ifnull L1
aload 7
getstatic com/nd/android/u/contact/R$drawable/bt_already_concern I
invokevirtual android/widget/Button/setBackgroundResource(I)V
aload 7
aload 0
getstatic com/nd/android/u/contact/R$string/already_concern I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/getString(I)Ljava/lang/String;
invokevirtual android/widget/Button/setText(Ljava/lang/CharSequence;)V
iconst_0
istore 1
L7:
iload 1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L1
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lcmp
ifne L8
aload 0
getfield com/nd/android/u/contact/activity/SearchFriendsResultActivity/mSearchResultList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUserSimple
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapUserSimple/setChecked(Z)V
return
L8:
iload 1
iconst_1
iadd
istore 1
goto L7
.limit locals 8
.limit stack 4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/product/android/ui/activity/HeaderActivity/onCreate(Landroid/os/Bundle;)V
aload 0
getstatic com/nd/android/u/contact/R$layout/search_friends_list I
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/setContentView(I)V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/initComponent()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/initComponentValue()V
aload 0
invokevirtual com/nd/android/u/contact/activity/SearchFriendsResultActivity/initEvent()V
return
.limit locals 2
.limit stack 2
.end method
