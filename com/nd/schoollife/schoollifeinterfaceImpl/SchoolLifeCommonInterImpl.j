.bytecode 50.0
.class public synchronized com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>(Landroid/content/Context;)V
aload 0
invokespecial java/lang/Object/<init>()V
invokestatic com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/getInstance()Lcom/nd/schoollife/common/utils/ui/SchoolLifeGlobal;
aload 1
invokevirtual com/nd/schoollife/common/utils/ui/SchoolLifeGlobal/init(Landroid/content/Context;)V
return
.limit locals 2
.limit stack 2
.end method

.method private InterProcessCommunityProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
iload 1
tableswitch 151001
L0
L1
L2
L3
L4
default : L5
L5:
sipush -1001
istore 1
L6:
iload 1
ireturn
L0:
aload 2
ifnull L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
lload 5
lconst_0
lcmp
ifle L8
aload 2
ifnull L8
aload 2
instanceof android/content/Context
ifne L9
L8:
iconst_m1
ireturn
L9:
new android/content/Intent
dup
aload 2
ldc com/nd/schoollife/ui/community/activity/CommunityHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 10
aload 10
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lload 5
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
aload 10
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L6
L7:
iconst_m1
istore 1
goto L6
L1:
aload 2
ifnull L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/lang/Long
ifeq L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
istore 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 7
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
lload 5
lload 7
iload 9
aload 10
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/approvalJoinCommunity(JJZLjava/lang/String;)Lcom/nd/schoollife/common/bean/SchoolLifeResultBase; 6
astore 11
aload 11
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getResultCode()I
i2l
lstore 5
lload 5
ldc2_w 200L
lcmp
ifne L11
iconst_0
istore 1
goto L6
L11:
lload 5
ldc2_w -100L
lcmp
ifne L12
bipush -3
istore 1
goto L6
L12:
ldc ""
astore 10
aload 11
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/isBusinessError()Z
ifeq L13
aload 11
invokevirtual com/nd/schoollife/common/bean/SchoolLifeResultBase/getErrorBean()Ljava/lang/Object;
astore 11
aload 11
ifnull L14
aload 11
instanceof com/nd/schoollife/common/bean/CommunityErrorBean
ifeq L14
aload 11
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getError_code()Ljava/lang/String;
astore 10
aload 11
checkcast com/nd/schoollife/common/bean/CommunityErrorBean
invokevirtual com/nd/schoollife/common/bean/CommunityErrorBean/getErr_msg()Ljava/lang/String;
astore 11
L15:
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 12
aload 12
aload 10
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
aload 12
aload 11
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
aload 12
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
bipush -2
istore 1
goto L6
L14:
ldc "-998"
astore 10
ldc "\u5ba1\u6279\u5931\u8d25~"
astore 11
goto L15
L13:
ldc "\u7f51\u7edc\u8bf7\u6c42\u51fa\u9519\u5566~"
astore 11
goto L15
L10:
iconst_m1
istore 1
goto L6
L2:
iconst_1
istore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
astore 11
invokestatic com/nd/schoollife/controller/OperatorFactory/getInstance()Lcom/nd/schoollife/controller/OperatorFactory;
invokevirtual com/nd/schoollife/controller/OperatorFactory/getCommunityOperator()Lcom/nd/schoollife/controller/operator/ICommunityOperator;
astore 12
aload 12
iconst_1
bipush 100
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
astore 13
aload 13
ifnull L16
aload 13
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getTotal()I
istore 4
aload 13
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 13
aload 13
ifnull L16
aload 13
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L17:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L18
aload 11
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIm_gid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L17
L18:
bipush 100
iload 4
if_icmpge L16
L19:
iload 1
iconst_1
iadd
istore 3
aload 12
iconst_1
bipush 100
invokeinterface com/nd/schoollife/controller/operator/ICommunityOperator/getMyJoinedCommunity(II)Lcom/nd/schoollife/common/bean/result/ResultCommunityInfoList; 2
invokevirtual com/nd/schoollife/common/bean/result/ResultCommunityInfoList/getList()Ljava/util/List;
astore 13
aload 13
ifnull L20
aload 13
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 13
L21:
aload 13
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L20
aload 13
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/schoollife/common/bean/result/CommunityInfoBean
astore 14
aload 11
aload 14
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIm_gid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifne L21
aload 11
aload 14
invokevirtual com/nd/schoollife/common/bean/result/CommunityInfoBean/getIm_gid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
ldc ""
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
goto L21
L20:
iload 3
istore 1
iload 3
bipush 100
imul
iload 4
if_icmpge L19
L16:
aload 11
invokeinterface java/util/Map/isEmpty()Z 0
ifne L22
aload 11
invokeinterface java/util/Map/keySet()Ljava/util/Set; 0
invokeinterface java/util/Set/iterator()Ljava/util/Iterator; 0
astore 11
L23:
aload 11
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L22
aload 10
aload 11
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
goto L23
L22:
aload 2
aload 10
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
iconst_0
istore 1
goto L6
L3:
aload 2
ifnull L24
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L24
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L24
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
new android/content/Intent
dup
aload 2
ldc com/nd/schoollife/ui/community/activity/CreateCommunityActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L6
L24:
iconst_m1
istore 1
goto L6
L4:
aload 2
ifnull L25
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnull L25
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/CommunityUtils/getAvatarPathByKey(JLjava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L6
L25:
iconst_m1
istore 1
goto L6
.limit locals 15
.limit stack 7
.end method

.method private InterProcessPostProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
iload 1
tableswitch 153001
L0
L1
default : L2
L2:
sipush -1001
ireturn
L0:
iconst_0
ireturn
L1:
iconst_0
ireturn
.limit locals 3
.limit stack 1
.end method

.method private InterProcessTeamProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
bipush -2
istore 3
iload 1
tableswitch 152001
L0
L1
L2
default : L3
L3:
sipush -1001
istore 1
L4:
iload 1
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
lload 4
lconst_0
lcmp
ifle L5
aload 2
ifnull L5
aload 2
instanceof android/content/Context
ifne L6
L5:
iconst_m1
ireturn
L6:
new android/content/Intent
dup
aload 2
ldc com/nd/schoollife/ui/team/activity/TeamHomeActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
aload 6
ldc "LONG_TEAM_OR_COMMUNITY_ID"
lload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L4
L1:
aload 2
ifnull L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
new android/content/Intent
dup
aload 2
ldc com/nd/schoollife/ui/team/activity/CreateTeamActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L4
L7:
iconst_m1
istore 1
goto L4
L2:
aload 2
ifnull L8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnull L8
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/schoollife/ui/common/util/TeamUtils/getTeamAvatarUrl(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iload 3
istore 1
goto L4
L8:
iconst_m1
istore 1
goto L4
.limit locals 7
.limit stack 5
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
iload 1
ldc_w 151000
if_icmplt L0
iload 1
ldc_w 151999
if_icmpgt L0
aload 0
iload 1
aload 2
invokespecial com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl/InterProcessCommunityProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L0:
iload 1
ldc_w 152000
if_icmplt L1
iload 1
ldc_w 152999
if_icmpgt L1
aload 0
iload 1
aload 2
invokespecial com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl/InterProcessTeamProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L1:
iload 1
ldc_w 153000
if_icmplt L2
iload 1
ldc_w 153999
if_icmpgt L2
aload 0
iload 1
aload 2
invokespecial com/nd/schoollife/schoollifeinterfaceImpl/SchoolLifeCommonInterImpl/InterProcessPostProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L2:
sipush -1001
ireturn
.limit locals 3
.limit stack 3
.end method
