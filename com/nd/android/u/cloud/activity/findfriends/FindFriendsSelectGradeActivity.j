.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity
.super com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectBaseActivity
.implements android/view/View$OnClickListener
.implements android/widget/AdapterView$OnItemClickListener

.field private 'mDataList' Ljava/util/List; signature "Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;>;"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectBaseActivity/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method private createGradeDataList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;>;"
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131493650
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 4
aload 0
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_SEARCH_FRIEND_GRADE_FROM I
istore 2
getstatic com/nd/android/u/cloud/XYExtentConfig/MAIN_SEARCH_FRIEND_GRADE_TO I
istore 3
iload 2
istore 1
L0:
iload 1
iload 3
if_icmpgt L1
new com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo
dup
invokespecial com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
aload 4
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
aload 5
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDefaultCode Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 5
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDefaultCode Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L2
aload 0
iload 1
iload 2
isub
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mSelectedItemPos I
L2:
iload 1
iconst_1
iadd
istore 1
goto L0
L1:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
areturn
.limit locals 6
.limit stack 3
.end method

.method protected clickSure()V
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mSelectedItemPos I
iconst_m1
if_icmpeq L0
aload 1
ldc "select_return_content"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mSelectedItemPos I
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast android/os/Parcelable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
L0:
aload 0
iconst_m1
aload 1
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/setResult(ILandroid/content/Intent;)V
aload 0
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/finish()V
return
.limit locals 2
.limit stack 4
.end method

.method protected getDataCount()I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
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
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
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
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
iload 1
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/name Ljava/lang/String;
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
aload 0
aload 0
invokespecial com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/createGradeDataList()Ljava/util/List;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsSelectGradeActivity/mDataList Ljava/util/List;
return
.limit locals 2
.limit stack 2
.end method
