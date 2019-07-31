.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask
.super com/common/android/utils/task/genericTask/GenericTask
.inner class public final GetSeniorDetailTask inner com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask outer com/nd/android/u/contact/activity/senior/SeniorDetailActivity

.field 'errCode' I

.field final synthetic 'this$0' Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;

.method public <init>(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)V
aload 0
aload 1
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 0
invokespecial com/common/android/utils/task/genericTask/GenericTask/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/errCode I
return
.limit locals 2
.limit stack 2
.end method

.method protected transient _doInBackground([Lcom/common/android/utils/task/genericTask/TaskParams;)Lcom/common/android/utils/task/genericTask/TaskResult;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L8
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L10 to L11 using L2
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch com/common/android/utils/http/HttpException from L14 to L15 using L16
.catch org/json/JSONException from L14 to L15 using L17
.catch com/common/android/utils/http/HttpException from L15 to L8 using L2
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
.catch com/common/android/utils/http/HttpException from L20 to L21 using L2
.catch com/common/android/utils/http/HttpException from L22 to L23 using L2
.catch com/common/android/utils/http/HttpException from L24 to L25 using L2
lconst_0
lstore 2
L0:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
ifnull L1
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$000(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
getfield com/nd/android/u/contact/dataStructure/SeniorInfo/uid J
lstore 2
L1:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
lload 2
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/getSeniorDetail(J)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
astore 1
L3:
aload 1
ifnull L24
L4:
aload 0
getfield com/nd/android/u/contact/activity/senior/SeniorDetailActivity$GetSeniorDetailTask/this$0 Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;
aload 1
invokestatic com/nd/android/u/contact/activity/senior/SeniorDetailActivity/access$002(Lcom/nd/android/u/contact/activity/senior/SeniorDetailActivity;Lcom/nd/android/u/contact/dataStructure/SeniorInfo;)Lcom/nd/android/u/contact/dataStructure/SeniorInfo;
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 2
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 1
L5:
aload 1
ifnonnull L7
L6:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
lload 2
l2i
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getStudentInfo(I)Lcom/product/android/commonInterface/contact/OapUser;
astore 1
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
L7:
ldc ""
astore 1
L9:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
astore 1
L10:
iconst_3
anewarray java/lang/String
astore 5
aload 5
iconst_0
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
lload 2
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getClassName(J)Ljava/lang/String; 2
aastore
L11:
aload 5
iconst_1
ldc ""
aastore
aload 5
iconst_2
aload 1
aastore
L12:
aload 5
iconst_0
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
istore 4
L13:
iload 4
ifeq L15
L14:
aload 5
iconst_0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
lload 2
l2i
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getClassByFid(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
aastore
L15:
getstatic com/common/android/utils/task/genericTask/TaskResult/OK Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L8:
astore 1
L18:
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L19:
goto L7
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
areturn
L16:
astore 1
L20:
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
L21:
goto L15
L17:
astore 1
L22:
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L23:
goto L15
L24:
getstatic com/common/android/utils/task/genericTask/TaskResult/FAILED Lcom/common/android/utils/task/genericTask/TaskResult;
astore 1
L25:
aload 1
areturn
.limit locals 6
.limit stack 5
.end method
