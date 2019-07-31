.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/team/task/TeamTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask
.inner class public static abstract interface TeamTaskCallback inner com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback outer com/nd/schoollife/ui/team/task/TeamTask

.field public static final 'COMMIT_TEAM_NEW_AVATAR' I = 4103


.field public static final 'COMMIT_TEAM_NEW_INTRO' I = 4100


.field public static final 'COMMIT_TEAM_NEW_SIGNS' I = 4099


.field public static final 'COMMIT_TEAM_NEW_TEAM' I = 4102


.field public static final 'FOCUSE_UNFOCUSE_TEAM' I = 4104


.field public static final 'GET_TEAM_CATEGORY' I = 4101


.field public static final 'GET_TEAM_INFO' I = 4097


.field public static final 'NEXT_TEAM_SIGN' I = 4098


.field private 'mOperator' Lcom/nd/schoollife/controller/operator/ITeamOperator;

.field private 'mTeamTaskCallback' Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
aload 5
putfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
return
.limit locals 6
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aconst_null
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 0
aload 4
putfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getTeamOperator()Lcom/nd/schoollife/controller/operator/ITeamOperator;
putfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
return
.limit locals 5
.limit stack 5
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/team/task/TeamTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Object;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L5
.catch java/lang/Exception from L8 to L9 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L14 to L15 using L16
.catch java/lang/Exception from L17 to L18 using L19
.catch java/lang/Exception from L20 to L21 using L22
.catch java/lang/Exception from L23 to L24 using L25
.catch java/lang/Exception from L26 to L27 using L28
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mCode I
tableswitch 4097
L29
L30
L31
L32
L33
L34
L35
L36
default : L37
L37:
aconst_null
areturn
L29:
aload 1
arraylength
iconst_1
if_icmpne L37
lconst_0
lstore 6
L0:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 2
L1:
iload 2
i2l
lstore 6
L38:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
lload 6
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L38
L30:
aload 1
arraylength
iconst_2
if_icmpne L37
iconst_0
istore 2
iconst_0
istore 4
L3:
aload 1
iconst_0
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L4:
iload 3
istore 2
L6:
aload 1
iconst_1
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
L7:
iload 5
istore 4
iload 3
istore 2
L39:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
iload 4
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags; 2
areturn
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L39
L31:
aload 1
arraylength
iconst_2
if_icmpne L37
iconst_0
istore 2
L8:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L9:
iload 3
istore 2
L40:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
astore 11
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/isSuccess()Z
ifeq L37
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
astore 13
aconst_null
astore 12
aload 12
astore 11
aload 13
ifnull L41
aload 12
astore 11
aload 13
invokevirtual java/util/ArrayList/size()I
ifle L41
aload 13
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean
astore 11
L41:
aload 11
ifnull L37
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getCategory()[Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
astore 12
aload 12
arraylength
istore 4
iload 4
newarray long
astore 14
iconst_0
istore 3
L42:
iload 3
iload 4
if_icmpge L43
aload 14
iload 3
aload 12
iload 3
aaload
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L42
L10:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L40
L43:
iconst_0
newarray long
astore 13
aload 13
astore 12
aload 1
iconst_1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L44
aload 13
astore 12
aload 1
iconst_1
aaload
ldc ":"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L44
aload 1
iconst_1
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 1
iconst_0
istore 3
L45:
aload 1
astore 12
iload 3
iload 4
if_icmpge L44
L11:
aload 1
iload 3
aload 13
iload 3
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2l
lastore
L12:
iload 3
iconst_1
iadd
istore 3
goto L45
L13:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L12
L44:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getAvatar()Ljava/lang/String;
ldc ""
aload 14
aload 12
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getIntro()Ljava/lang/String;
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 7
areturn
L32:
aload 1
arraylength
iconst_2
if_icmpne L37
iconst_0
istore 2
L14:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L15:
iload 3
istore 2
L46:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
astore 11
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/isSuccess()Z
ifeq L37
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
astore 13
aconst_null
astore 12
aload 12
astore 11
aload 13
ifnull L47
aload 12
astore 11
aload 13
invokevirtual java/util/ArrayList/size()I
ifle L47
aload 13
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean
astore 11
L47:
aload 1
iconst_1
aaload
ifnull L48
aload 11
aload 1
iconst_1
aaload
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/setIntro(Ljava/lang/String;)V
L48:
aload 11
ifnull L37
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getCategory()[Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 12
iconst_0
istore 3
L49:
iload 3
iload 4
if_icmpge L50
aload 12
iload 3
aload 13
iload 3
aaload
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L49
L16:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L46
L50:
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getTags()[Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 14
iconst_0
istore 3
L51:
iload 3
iload 4
if_icmpge L52
aload 14
iload 3
aload 13
iload 3
aaload
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L51
L52:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getAvatar()Ljava/lang/String;
ldc ""
aload 12
aload 14
aload 1
iconst_1
aaload
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 7
areturn
L33:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory; 0
areturn
L34:
aload 1
arraylength
iconst_5
if_icmpne L37
aload 1
iconst_2
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 11
aload 11
arraylength
istore 3
iload 3
newarray long
astore 13
iconst_0
istore 2
L53:
iload 2
iload 3
if_icmpge L54
L17:
aload 13
iload 2
aload 11
iload 2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2l
lastore
L18:
iload 2
iconst_1
iadd
istore 2
goto L53
L19:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L18
L54:
iconst_0
newarray long
astore 12
aload 12
astore 11
aload 1
iconst_3
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L55
aload 12
astore 11
aload 1
iconst_3
aaload
ldc ":"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L55
aload 1
iconst_3
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 14
aload 14
arraylength
istore 3
iload 3
newarray long
astore 12
iconst_0
istore 2
L56:
aload 12
astore 11
iload 2
iload 3
if_icmpge L55
L20:
aload 12
iload 2
aload 14
iload 2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
i2l
lastore
L21:
iload 2
iconst_1
iadd
istore 2
goto L56
L22:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L21
L55:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
aload 1
iconst_0
aaload
aload 1
iconst_1
aaload
aload 13
aload 11
aload 1
iconst_4
aaload
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 5
areturn
L35:
aload 1
arraylength
iconst_2
if_icmpne L37
iconst_0
istore 2
L23:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L24:
iload 3
istore 2
L57:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo; 2
astore 11
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/isSuccess()Z
ifeq L58
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getSucc_list()Ljava/util/ArrayList;
astore 13
aconst_null
astore 12
aload 12
astore 11
aload 13
ifnull L59
aload 12
astore 11
aload 13
invokevirtual java/util/ArrayList/size()I
ifle L59
aload 13
iconst_0
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean
astore 11
L59:
aload 11
ifnull L37
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getCategory()[Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 12
iconst_0
istore 3
L60:
iload 3
iload 4
if_icmpge L61
aload 12
iload 3
aload 13
iload 3
aaload
invokevirtual com/nd/android/forumsdk/business/bean/result/CategoryInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L60
L25:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L57
L61:
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getTags()[Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;
astore 14
aload 14
arraylength
istore 4
iload 4
newarray long
astore 13
iconst_0
istore 3
L62:
iload 3
iload 4
if_icmpge L63
aload 13
iload 3
aload 14
iload 3
aaload
invokevirtual com/nd/android/forumsdk/business/bean/structure/TagInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L62
L63:
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/structure/GetTeamInfoSuccListBean/getIntro()Ljava/lang/String;
astore 11
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mCtx Landroid/content/Context;
iload 2
i2l
aload 1
iconst_1
aaload
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/uploadModifyTeamAvatar(Landroid/content/Context;JLjava/lang/String;)J
lstore 6
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
iload 2
i2l
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc ""
aload 12
aload 13
aload 11
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean; 7
areturn
L58:
new com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
dup
invokespecial com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/<init>()V
astore 1
aload 1
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getResultCode()I
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultCode(I)V
aload 1
aload 11
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean/setResultMsg(Ljava/lang/String;)V
aload 1
areturn
L36:
lconst_0
lstore 6
L26:
aload 1
iconst_0
aaload
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 8
L27:
lload 8
lstore 6
L64:
aload 1
iconst_1
aaload
invokestatic java/lang/Boolean/parseBoolean(Ljava/lang/String;)Z
istore 10
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mOperator Lcom/nd/schoollife/controller/operator/ITeamOperator;
lload 6
iload 10
invokeinterface com/nd/schoollife/controller/operator/ITeamOperator/doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase; 3
areturn
L28:
astore 11
aload 11
invokevirtual java/lang/Exception/printStackTrace()V
goto L64
.limit locals 15
.limit stack 9
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
L0:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
aload 1
invokeinterface com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback/onProcessingPostExecute(Ljava/lang/Object;)V 1
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/onPreExecute()V
L0:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
invokeinterface com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback/onProcessPreExecute()V 0
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 1
.end method

.method protected transient onProgressUpdate([Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/onProgressUpdate([Ljava/lang/Object;)V
aload 1
ifnull L1
L0:
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/team/task/TeamTask/mTeamTaskCallback Lcom/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback;
aload 1
invokeinterface com/nd/schoollife/ui/team/task/TeamTask$TeamTaskCallback/onProcessingExecute([Ljava/lang/Object;)V 1
L1:
return
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
return
.limit locals 2
.limit stack 2
.end method
