.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer
.super com/common/android/utils/task/genericTask/GenericTask
.inner class private CommitToServer inner com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer outer com/nd/android/u/cloud/activity/OtherContactActivity

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/OtherContactActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;Lcom/nd/android/u/cloud/activity/OtherContactActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/<init>(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L9
.catch com/common/android/utils/http/HttpException from L10 to L11 using L9
.catch com/common/android/utils/http/HttpException from L12 to L13 using L9
iconst_0
istore 3
iload 3
istore 2
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1000(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Landroid/widget/EditText;
invokevirtual android/widget/EditText/getText()Landroid/text/Editable;
invokevirtual java/lang/Object/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
L0:
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 1
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/postSignature(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
L1:
iload 3
istore 2
aload 1
ifnull L6
iload 3
istore 2
L3:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpne L6
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedSign Z
L4:
iconst_1
istore 2
L5:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L6:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Z
ifeq L13
iconst_0
istore 3
aconst_null
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
getfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
ifeq L7
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSeniorSchool(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$1200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolCode()Ljava/lang/String;
astore 1
L7:
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$200(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)J
aconst_null
aconst_null
ldc2_w -1L
aload 1
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/postModify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;
astore 1
L8:
iload 3
istore 2
aload 1
ifnull L13
iload 3
istore 2
L10:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpne L13
L11:
iconst_1
istore 2
L12:
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedNativePlace Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedEmail Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedMobilePhone Z
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
iconst_0
putfield com/nd/android/u/cloud/activity/OtherContactActivity/m_bModifiedHighSchool Z
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/cloud/activity/OtherContactActivity$CommitToServer/this$0 Lcom/nd/android/u/cloud/activity/OtherContactActivity;
invokestatic com/nd/android/u/cloud/activity/OtherContactActivity/access$100(Lcom/nd/android/u/cloud/activity/OtherContactActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L13:
iload 2
ifeq L14
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L2:
astore 1
iconst_0
istore 2
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L6
L9:
astore 1
iconst_0
istore 2
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L13
L14:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
.limit locals 4
.limit stack 8
.end method
