.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;>;"
.inner class private GetFriendListTask inner com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask outer com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity

.field 'collegeCode' Ljava/lang/String;

.field 'gender' I

.field 'grade' Ljava/lang/String;

.field 'highSchoolCode' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;

.method public <init>(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/gender I
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/grade Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/collegeCode Ljava/lang/String;
aload 0
ldc ""
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/highSchoolCode Ljava/lang/String;
aload 1
iconst_1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$602(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;Z)Z
pop
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$700(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setClickable(Z)V
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$800(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
iconst_0
invokevirtual android/widget/CheckBox/setClickable(Z)V
aload 0
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$900(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)I
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/gender I
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
ifnull L0
aload 0
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo;
getfield com/nd/android/u/cloud/bean/friendRcmmnd/GradeInfo/code Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/grade Ljava/lang/String;
L0:
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
ifnull L1
aload 0
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1100(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/CollegeInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/CollegeInfo/getUnitCode()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/collegeCode Ljava/lang/String;
L1:
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
ifnull L2
aload 0
aload 1
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolCode()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/highSchoolCode Ljava/lang/String;
L2:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/doInBackground([Ljava/lang/Void;)Ljava/util/List;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/util/List;
.signature "([Ljava/lang/Void;)Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;"
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/gender I
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/grade Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/collegeCode Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/highSchoolCode Ljava/lang/String;
bipush 20
iconst_1
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/searchStudent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
areturn
.limit locals 2
.limit stack 8
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/util/List
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/onPostExecute(Ljava/util/List;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/cloud/bean/friendRcmmnd/FriendSearchResult;>;)V"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$602(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$700(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setClickable(Z)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$800(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/CheckBox;
iconst_1
invokevirtual android/widget/CheckBox/setClickable(Z)V
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/size()I 0
ifne L1
L0:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/TextView;
iconst_0
invokevirtual android/widget/TextView/setVisibility(I)V
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
ldc_w 2131493665
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1300(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;I)V
return
L1:
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$000(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Landroid/widget/TextView;
bipush 8
invokevirtual android/widget/TextView/setVisibility(I)V
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
ldc com/nd/android/u/cloud/activity/findfriends/FindFriendsSearchResultActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 2
ldc "select_result_list"
aload 1
checkcast java/io/Serializable
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
aload 2
ldc "select_gender"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/gender I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
ldc "select_hometown"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
invokestatic com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/access$1200(Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;)Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "select_grade"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/grade Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "select_college"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/collegeCode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 2
ldc "select_highschool"
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/highSchoolCode Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 0
getfield com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity$GetFriendListTask/this$0 Lcom/nd/android/u/cloud/activity/findfriends/FindFriendsActivity;
aload 2
invokevirtual com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method
