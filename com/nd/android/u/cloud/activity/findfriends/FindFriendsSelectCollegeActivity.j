.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity
.super com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectBaseActivity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener

.field 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method protected clickSure()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mSelectedItemPos I
iconst_m1
if_icmpeq L0
aload 1
ldc "select_return_content"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mSelectedItemPos I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/os/Parcelable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
L0:
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected getDataCount()I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ireturn
L0:
iconst_0
ireturn
.limit locals 1
.limit stack 1
.end method

.method protected getDataItem(I)Ljava/lang/Object;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 2
.end method

.method protected getName(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/readschoolinfo/CollegeInfo
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitName()Ljava/lang/String;
areturn
L0:
ldc ""
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectBaseActivity/onCreate(Landroid/os/Bundle;)V
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
aload 0
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/openDatabase(Landroid/content/Context;)V
aload 0
getstatic com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/INSTANCE Lcom/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle;
invokevirtual com/nd/android/u/cloud/readschoolinfo/SchoolInfoHandle/getCollegeInfos()Ljava/util/List;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDefaultCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L0
iconst_0
istore 2
L1:
iload 2
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
invokeinterface java/util/List/size()I 0
if_icmpge L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDataList Ljava/util/List;
iload 2
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/readschoolinfo/CollegeInfo
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mDefaultCode Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
iload 2
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mSelectedItemPos I
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mSelectedItemPos I
iconst_m1
if_icmpeq L3
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mListView Landroid/widget/ListView;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectCollegeActivity/mSelectedItemPos I
invokevirtual android/widget/ListView/setSelection(I)V
L3:
return
L2:
iload 2
iconst_1
iadd
istore 2
goto L1
.limit locals 3
.limit stack 2
.end method
