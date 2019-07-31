.bytecode 50.0
.class public synchronized com/nd/schoollife/ui/community/task/CommunityTask
.super com/nd/schoollife/ui/common/base/BaseHttpAsyncTask
.inner class public static abstract interface CommunityTaskCallback inner com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback outer com/nd/schoollife/ui/community/task/CommunityTask

.field public static final 'COMMIT_COMMUNITY_NEW_AVATAR' I = 4103


.field public static final 'COMMIT_COMMUNITY_NEW_COMMUNITY' I = 4102


.field public static final 'COMMIT_COMMUNITY_NEW_INTRO' I = 4100


.field public static final 'COMMIT_COMMUNITY_NEW_SIGNS' I = 4099


.field public static final 'DISMISS_COMMUNITY' I = 4106


.field public static final 'GET_COMMUNITY_BY_CATEGORY' I = 4109


.field public static final 'GET_COMMUNITY_CATEGORY' I = 4101


.field public static final 'GET_COMMUNITY_INFO' I = 4097


.field public static final 'GET_HOT_COMMUNITY' I = 4110


.field public static final 'GET_RECOMMEND_COMMUNITY' I = 4111


.field public static final 'GET_SEARCH_COMMUNITY_HOT_KEY' I = 4108


.field public static final 'JOIN_COMMUNITY' I = 4105


.field public static final 'NEXT_COMMUNITY_SIGN' I = 4098


.field public static final 'QUIT_COMMUNITY' I = 4104


.field public static final 'SEARCH_COMMUNITY' I = 4107


.field private 'mCommunityTaskCallback' Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;

.field private 'mOperator' Lcom/nd/schoollife/controller/operator/ICommunityOperator;

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aload 4
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
aload 5
putfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 6
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;)V
aload 0
aload 1
iload 2
aload 3
aconst_null
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
aload 4
putfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 5
.limit stack 5
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aload 1
aload 2
iload 3
aload 4
aload 5
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/<init>(Landroid/content/Context;Lcom/nd/schoollife/ui/common/base/interfaces/IProcessView4Task;ILcom/nd/schoollife/ui/common/task/CallStyle;Lcom/nd/schoollife/ui/common/base/interfaces/AsyncTaskCallback;)V
aload 0
aconst_null
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 0
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
putfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
return
.limit locals 6
.limit stack 6
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/schoollife/ui/community/task/CommunityTask/doInBackground([Ljava/lang/String;)Ljava/lang/Object;
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
.catch java/lang/Exception from L29 to L30 using L31
.catch java/lang/Exception from L32 to L33 using L34
.catch all from L32 to L33 using L35
.catch java/lang/Exception from L36 to L37 using L34
.catch all from L36 to L37 using L35
.catch all from L38 to L39 using L35
.catch java/lang/Exception from L40 to L41 using L42
.catch all from L40 to L41 using L43
.catch java/lang/Exception from L44 to L45 using L42
.catch all from L44 to L45 using L43
.catch all from L46 to L47 using L43
.catch java/lang/Exception from L48 to L49 using L50
.catch all from L48 to L49 using L51
.catch java/lang/Exception from L52 to L53 using L50
.catch all from L52 to L53 using L51
.catch java/lang/Exception from L54 to L55 using L50
.catch all from L54 to L55 using L51
.catch all from L56 to L57 using L51
.catch java/lang/Exception from L58 to L59 using L60
.catch java/lang/Exception from L61 to L62 using L60
.catch java/lang/Exception from L63 to L64 using L60
.catch java/lang/Exception from L65 to L66 using L67
.catch java/lang/Exception from L68 to L69 using L67
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCode I
tableswitch 4097
L70
L71
L72
L73
L74
L75
L76
L77
L78
L79
L80
L81
L82
L83
L84
default : L78
L78:
aconst_null
areturn
L70:
aload 1
arraylength
iconst_1
if_icmpne L78
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
L85:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 6
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
areturn
L2:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L85
L71:
aload 1
arraylength
iconst_2
if_icmpne L78
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
L86:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 4
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getTags(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityTags; 2
areturn
L5:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L86
L72:
aload 1
arraylength
iconst_2
if_icmpne L78
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
L87:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
astore 14
aload 14
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/isSuccess()Z
ifeq L78
aload 14
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 12
aload 12
arraylength
istore 4
iload 4
newarray long
astore 15
iconst_0
istore 3
L88:
iload 3
iload 4
if_icmpge L89
aload 15
iload 3
aload 12
iload 3
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L88
L10:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L87
L89:
iconst_0
newarray long
astore 13
aload 13
astore 12
aload 1
iconst_1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L90
aload 13
astore 12
aload 1
iconst_1
aaload
ldc ":"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L90
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
L91:
aload 1
astore 12
iload 3
iload 4
if_icmpge L90
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
goto L91
L13:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L12
L90:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
aload 14
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getAvatar()Ljava/lang/String;
aload 14
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getName()Ljava/lang/String;
aload 15
aload 12
aload 14
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIntro()Ljava/lang/String;
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 7
areturn
L73:
aload 1
arraylength
iconst_2
if_icmpne L78
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
L92:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
astore 12
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/isSuccess()Z
ifeq L78
aload 12
aload 1
iconst_1
aaload
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/setIntro(Ljava/lang/String;)V
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getCategory()[Lcom/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 1
iconst_0
istore 3
L93:
iload 3
iload 4
if_icmpge L94
aload 1
iload 3
aload 13
iload 3
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityCategoryInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L93
L16:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L92
L94:
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getTags()[Lcom/nd/schoollife/common/bean/structure/CommunityTagInfoBean;
astore 13
aload 13
arraylength
istore 4
iload 4
newarray long
astore 14
iconst_0
istore 3
L95:
iload 3
iload 4
if_icmpge L96
aload 14
iload 3
aload 13
iload 3
aaload
invokevirtual com/nd/schoollife/common/bean/structure/CommunityTagInfoBean/getId()J
lastore
iload 3
iconst_1
iadd
istore 3
goto L95
L96:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getAvatar()Ljava/lang/String;
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getName()Ljava/lang/String;
aload 1
aload 14
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getIntro()Ljava/lang/String;
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/editCommunityInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 7
areturn
L74:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getAllCommunityCategory()Lcom/nd/schoollife/common/bean/result/ResultGetAllCommunityCategory; 0
areturn
L75:
aload 1
arraylength
iconst_5
if_icmpne L78
aload 1
iconst_2
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 12
aload 12
arraylength
istore 3
iload 3
newarray long
astore 14
iconst_0
istore 2
L97:
iload 2
iload 3
if_icmpge L98
L17:
aload 14
iload 2
aload 12
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
goto L97
L19:
astore 13
aload 13
invokevirtual java/lang/Exception/printStackTrace()V
goto L18
L98:
iconst_0
newarray long
astore 13
aload 13
astore 12
aload 1
iconst_3
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L99
aload 13
astore 12
aload 1
iconst_3
aaload
ldc ":"
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L99
aload 1
iconst_3
aaload
ldc ":"
invokevirtual java/lang/String/split(Ljava/lang/String;)[Ljava/lang/String;
astore 15
aload 15
arraylength
istore 3
iload 3
newarray long
astore 13
iconst_0
istore 2
L100:
aload 13
astore 12
iload 2
iload 3
if_icmpge L99
L20:
aload 13
iload 2
aload 15
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
goto L100
L22:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L21
L99:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 1
iconst_0
aaload
aload 1
iconst_1
aaload
aload 14
aload 12
aload 1
iconst_4
aaload
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/createCommunity(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 5
areturn
L76:
aload 1
arraylength
iconst_2
if_icmpne L78
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
L101:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityInfo(J)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo; 2
astore 12
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/isSuccess()Z
ifeq L102
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
aload 12
aload 1
iconst_1
aaload
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/updateCommunityAvatar(JLcom/nd/schoollife/common/bean/result/ResultGetCommunityInfo;Ljava/lang/String;)Lcom/nd/schoollife/common/bean/result/CommunityInfoBean; 4
areturn
L25:
astore 12
aload 12
invokevirtual java/lang/Exception/printStackTrace()V
goto L101
L102:
new com/nd/schoollife/common/bean/result/CommunityInfoBean
dup
invokespecial com/nd/schoollife/common/bean/result/CommunityInfoBean/<init>()V
astore 1
aload 1
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultCode()I
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultCode(I)V
aload 1
aload 12
invokevirtual com/nd/schoollife/common/bean/result/ResultGetCommunityInfo/getResultMsg()Ljava/lang/String;
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/setResultMsg(Ljava/lang/String;)V
aload 1
areturn
L77:
aload 1
arraylength
iconst_1
if_icmpne L78
iconst_0
istore 2
L26:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L27:
iload 3
istore 2
L103:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iconst_0
iload 2
i2l
ldc ""
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/joinOrExitCommunity(ZJLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 4
areturn
L28:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L103
L79:
aload 1
arraylength
iconst_1
if_icmpne L78
iconst_0
istore 2
L29:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 3
L30:
iload 3
istore 2
L104:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
i2l
iconst_1
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/dismissCommunity(JZ)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 3
areturn
L31:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L104
L80:
aload 1
arraylength
iconst_3
if_icmpne L78
aload 1
iconst_0
aaload
astore 12
iconst_0
istore 3
iconst_0
istore 2
L32:
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
L33:
iload 4
istore 2
iload 4
istore 3
L36:
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
L37:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 12
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
areturn
L34:
astore 1
iload 2
istore 3
L38:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L39:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 12
iload 2
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
areturn
L35:
astore 1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
aload 12
iload 3
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/searchCommunity(Ljava/lang/String;II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 3
pop
aload 1
athrow
L81:
aload 1
arraylength
iconst_2
if_icmpne L78
iconst_0
istore 3
iconst_0
istore 2
L40:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
L41:
iload 4
istore 2
iload 4
istore 3
L44:
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
L45:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey; 2
areturn
L42:
astore 1
iload 2
istore 3
L46:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L47:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey; 2
areturn
L43:
astore 1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 3
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityHotKey(II)Lcom/nd/schoollife/common/bean/result/ResultGetCommunityHotKey; 2
pop
aload 1
athrow
L82:
aload 1
arraylength
iconst_3
if_icmpne L78
lconst_0
lstore 8
iconst_0
istore 5
iconst_0
istore 4
lload 8
lstore 6
iload 4
istore 2
iload 5
istore 3
L48:
aload 1
iconst_0
aaload
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 10
L49:
lload 10
lstore 6
iload 4
istore 2
lload 10
lstore 8
iload 5
istore 3
L52:
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
L53:
lload 10
lstore 6
iload 4
istore 2
lload 10
lstore 8
iload 4
istore 3
L54:
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 5
L55:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 10
iload 4
iload 5
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
areturn
L50:
astore 1
lload 6
lstore 8
iload 2
istore 3
L56:
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
L57:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 6
iload 2
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
areturn
L51:
astore 1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 8
iload 3
iconst_0
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getCommunityByCategory(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
pop
aload 1
athrow
L83:
aload 1
arraylength
iconst_3
if_icmpne L78
iconst_m1
istore 3
iconst_m1
istore 4
ldc2_w -1L
lstore 6
iload 3
istore 2
L58:
aload 1
iconst_0
aaload
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 8
L59:
lload 8
lstore 6
iload 3
istore 2
L61:
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
L62:
lload 8
lstore 6
iload 3
istore 2
L63:
aload 1
iconst_2
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 5
L64:
iload 5
istore 4
iload 3
istore 2
lload 8
lstore 6
L105:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 6
iload 2
iload 4
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getHotCommunity(JII)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 4
areturn
L60:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L105
L84:
aload 1
arraylength
iconst_2
if_icmpne L78
iconst_m1
istore 2
iconst_m1
istore 4
L65:
aload 1
iconst_0
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 3
L66:
iload 3
istore 2
L68:
aload 1
iconst_1
aaload
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
istore 5
L69:
iload 5
istore 4
iload 3
istore 2
L106:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mOperator Lcom/nd/schoollife/controller/operator/ICommunityOperator;
iload 2
iload 4
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getRecommendCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
areturn
L67:
astore 1
aload 1
invokevirtual java/lang/Exception/printStackTrace()V
goto L106
.limit locals 16
.limit stack 8
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
.catch java/lang/Exception from L0 to L1 using L2
aload 0
aload 1
invokespecial com/nd/schoollife/ui/common/base/BaseHttpAsyncTask/onPostExecute(Ljava/lang/Object;)V
L0:
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
aload 1
invokeinterface com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback/onProcessingPostExecute(Ljava/lang/Object;)V 1
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
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
invokeinterface com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback/onProcessPreExecute()V 0
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
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
ifnull L1
aload 0
getfield com/nd/schoollife/ui/community/task/CommunityTask/mCommunityTaskCallback Lcom/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback;
aload 1
invokeinterface com/nd/schoollife/ui/community/task/CommunityTask$CommunityTaskCallback/onProcessingExecute([Ljava/lang/Object;)V 1
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
