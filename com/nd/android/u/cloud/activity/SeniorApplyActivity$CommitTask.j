.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Integer;>;"
.inner class private CommitTask inner com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask outer com/nd/android/u/cloud/activity/SeniorApplyActivity

.field 'strError' Ljava/lang/String;

.field final synthetic 'this$0' Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;

.method private <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method synthetic <init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Lcom/nd/android/u/cloud/activity/SeniorApplyActivity$1;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/<init>(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch com/common/android/utils/http/HttpException from L6 to L7 using L8
.catch com/common/android/utils/http/HttpException from L9 to L10 using L8
.catch com/common/android/utils/http/HttpException from L11 to L12 using L13
.catch com/common/android/utils/http/HttpException from L14 to L15 using L13
.catch java/lang/NumberFormatException from L16 to L17 using L18
.catch com/common/android/utils/http/HttpException from L19 to L20 using L2
iconst_0
istore 2
iconst_0
istore 6
ldc2_w -1L
lstore 7
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$800(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L21
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$900(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
L21:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifne L22
lload 7
lstore 11
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L0
L22:
lload 7
lstore 9
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L23
lload 7
lstore 9
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L23
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1200(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/widget/TextView;
invokevirtual android/widget/TextView/getText()Ljava/lang/CharSequence;
invokeinterface java/lang/CharSequence/toString()Ljava/lang/String; 0
invokevirtual com/product/android/commonInterface/contact/OapUser/setProvince(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1300(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifeq L16
lconst_0
lstore 7
L24:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
lload 7
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setNativePlaceCode(Ljava/lang/String;)V
lload 7
lstore 9
L23:
lload 9
lstore 11
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1400(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolName()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSeniorSchool(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1400(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/nd/android/u/cloud/readschoolinfo/HighSchoolInfo;
invokevirtual com/nd/android/u/cloud/readschoolinfo/HighSchoolInfo/getSchoolCode()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
aload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setHighschoolCode(Ljava/lang/String;)V
lload 9
lstore 11
L0:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
astore 13
L1:
aload 13
astore 1
L3:
getstatic com/product/android/business/config/Configuration/DEFAULTUNITID I
bipush 55
if_icmpne L4
aload 13
invokevirtual java/lang/String/getBytes()[B
iconst_0
invokestatic android/util/Base64/encodeToString([BI)Ljava/lang/String;
astore 1
L4:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L19
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNativePlaceCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getHighschoolCode()Ljava/lang/String;
aload 1
ldc ""
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/newSeniorApply(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
istore 5
L5:
iload 5
istore 6
iload 5
ifne L25
bipush -3
istore 2
iload 5
istore 6
L25:
iload 2
istore 4
iload 6
ifeq L26
iload 2
istore 3
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$800(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L27
L6:
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/postSignature(Ljava/lang/String;)Lorg/json/JSONObject;
astore 1
L7:
iload 2
istore 3
aload 1
ifnull L27
iload 2
istore 3
L9:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpne L27
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$802(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L10:
iload 2
istore 3
L27:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifne L11
iload 3
istore 4
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1100(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L26
L11:
new com/nd/android/u/cloud/com/OapFriendRecommendCom
dup
invokespecial com/nd/android/u/cloud/com/OapFriendRecommendCom/<init>()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
aconst_null
aconst_null
lload 11
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getHighschoolCode()Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/com/OapFriendRecommendCom/postModify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;
astore 1
L12:
iload 3
istore 4
aload 1
ifnull L26
iload 3
istore 4
L14:
aload 1
ldc "code"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
sipush 200
if_icmpne L26
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1002(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_0
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1102(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L15:
iload 3
istore 4
L26:
iload 4
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
areturn
L16:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1300(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 9
L17:
lload 9
lstore 7
goto L24
L18:
astore 1
aload 1
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L24
L19:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getSeniorSystemCom()Lcom/nd/android/u/contact/com/OapSeniorSystemCom;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$000(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)J
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getNativePlaceCode()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokevirtual com/product/android/commonInterface/contact/OapUser/getHighschoolCode()Ljava/lang/String;
aload 1
ldc ""
invokevirtual com/nd/android/u/contact/com/OapSeniorSystemCom/editSeniorInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
istore 5
L20:
goto L5
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
istore 2
aload 0
aload 1
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
putfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/strError Ljava/lang/String;
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L25
L8:
astore 1
iconst_m1
istore 3
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L27
L13:
astore 1
bipush -2
istore 4
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L26
.limit locals 14
.limit stack 8
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/cancel()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1600(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 1
invokevirtual java/lang/Integer/intValue()I
iconst_m1
if_icmpne L1
ldc "\u63d0\u4ea4\u5b66\u957f\u5ba3\u8a00\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$802(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
L2:
aload 0
aload 1
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
return
L1:
aload 1
invokevirtual java/lang/Integer/intValue()I
bipush -2
if_icmpne L3
ldc "\u63d0\u4ea4\u4fe1\u606f\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1002(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
iconst_1
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1102(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;Z)Z
pop
goto L2
L3:
aload 1
invokevirtual java/lang/Integer/intValue()I
bipush -3
if_icmpne L4
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1700(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
ldc "\u63d0\u4ea4\u7533\u8bf7\u5931\u8d25"
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L2
L4:
aload 1
invokevirtual java/lang/Integer/intValue()I
sipush 404
if_icmpne L5
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1800(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/strError Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L2
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/strError Ljava/lang/String;
invokestatic com/common/android/utils/ToastUtils/display(Ljava/lang/String;)V
goto L2
L5:
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Z
ifeq L6
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
ldc_w 2131495705
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/getString(I)Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/ToastUtils/customToast(Landroid/content/Context;Ljava/lang/String;)V
L6:
iconst_1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/product/android/utils/SharedPreferenceHelper/getInstance(Landroid/content/Context;)Lcom/product/android/utils/SharedPreferenceHelper;
invokevirtual com/product/android/utils/SharedPreferenceHelper/saveHasBeanSenior()V
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
new com/product/android/business/login/BindUser
dup
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$500(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)Lcom/product/android/commonInterface/contact/OapUser;
invokespecial com/product/android/business/login/BindUser/<init>(Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendModifyMyInfoBroadCast(Landroid/content/Context;Lcom/product/android/business/login/BindUser;)V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokestatic com/nd/android/u/cloud/activity/SeniorApplyActivity/access$1900(Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;)V
goto L2
.limit locals 2
.limit stack 5
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Integer
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/onPostExecute(Ljava/lang/Integer;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494604
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/SeniorApplyActivity$CommitTask/this$0 Lcom/nd/android/u/cloud/activity/SeniorApplyActivity;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/getResources()Landroid/content/res/Resources;
ldc_w 2131494901
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/SeniorApplyActivity/onBegin(Ljava/lang/String;Ljava/lang/String;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/onPreExecute()V
return
.limit locals 1
.limit stack 4
.end method
