.bytecode 50.0
.class public synchronized com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$2
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$3
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$4
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$6
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8
.inner class inner com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8$1

.field public static final 'DEPARTGROUPTYPE' I = 2


.field public static final 'GROUPTYPE' I = 1


.field 'profileUserCacheCallback' Lcom/nd/android/u/contact/cache/ProfileUserCacheCallback;

.method public <init>(Z)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8
dup
aload 0
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$8/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;)V
putfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/profileUserCacheCallback Lcom/nd/android/u/contact/cache/ProfileUserCacheCallback;
iload 1
putstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsNeedSercetLove Z
return
.limit locals 2
.limit stack 4
.end method

.method private InterProcessGroupGetData(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L5
.catch java/lang/Exception from L6 to L7 using L8
.catch com/common/android/utils/http/HttpException from L9 to L10 using L11
.catch com/common/android/utils/http/HttpException from L12 to L13 using L11
.catch com/common/android/utils/http/HttpException from L14 to L15 using L11
.catch com/common/android/utils/http/HttpException from L15 to L16 using L11
.catch com/common/android/utils/http/HttpException from L17 to L18 using L11
.catch java/lang/Exception from L19 to L20 using L21
.catch java/lang/Exception from L22 to L23 using L21
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
astore 5
iload 1
tableswitch 10301
L24
L25
L26
L27
L28
L29
L30
L31
L32
L33
L34
L35
L36
L37
L38
L39
L40
L41
L42
L43
L44
L45
L46
L47
L48
default : L49
L49:
sipush -1001
istore 1
L50:
iload 1
ireturn
L24:
aload 2
ifnull L51
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L52
L51:
iconst_m1
ireturn
L52:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 1
aload 2
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 1
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L25:
aload 2
ifnonnull L53
iconst_m1
ireturn
L53:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getUnitid()I
invokestatic com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getInstance()Lcom/nd/android/u/contact/dataStructure/PhotoScreenCondition;
invokevirtual com/nd/android/u/contact/dataStructure/PhotoScreenCondition/getGender()I
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUserByUnitid(II)Ljava/util/ArrayList; 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L50
L26:
aload 2
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [J
ifne L55
L54:
iconst_m1
ireturn
L55:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 6
aload 6
arraylength
iconst_2
if_icmpne L56
aload 6
iconst_0
laload
lconst_0
lcmp
ifle L56
aload 6
iconst_1
laload
lconst_0
lcmp
ifgt L57
L56:
iconst_m1
ireturn
L57:
aload 6
iconst_0
laload
lstore 3
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L58
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
ireturn
L58:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L27:
aload 2
ifnonnull L59
iconst_m1
ireturn
L59:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getCommonMsgNotifyType()I 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_0
istore 1
goto L50
L28:
aload 2
ifnull L60
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
L60:
iconst_m1
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L1:
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L61
iconst_m1
ireturn
L2:
astore 2
iconst_m1
ireturn
L61:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getMsgNotifyType()I 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_0
istore 1
goto L50
L43:
aload 2
ifnull L62
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L3
L62:
iconst_m1
ireturn
L3:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L4:
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L63
iconst_m1
ireturn
L5:
astore 2
iconst_m1
ireturn
L63:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setMsgNotifyTypeByDB(I)Z 1
pop
iconst_0
istore 1
goto L50
L44:
aload 2
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L6
L64:
iconst_m1
ireturn
L6:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 3
L7:
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnonnull L65
iconst_m1
ireturn
L8:
astore 2
iconst_m1
ireturn
L65:
aload 2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/clearMsgNofifyType()V 0
iconst_0
istore 1
goto L50
L45:
aload 2
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L67
L66:
iconst_m1
ireturn
L67:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getFixPspGroupSetType(Ljava/lang/String;)I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_0
istore 1
goto L50
L29:
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupCategory()Ljava/util/Iterator; 0
astore 5
aload 5
ifnonnull L68
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
ireturn
L68:
aload 5
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L69
aload 5
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory
invokevirtual com/nd/android/u/contact/business_new/ProcesssImpl/GroupImpl/OapGroupCatagory/getGroupList()Ljava/util/Iterator;
astore 6
aload 6
ifnull L68
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L68
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
ireturn
L69:
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
ireturn
L30:
aload 2
ifnull L70
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L71
L70:
iconst_m1
ireturn
L71:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L72
iconst_m1
ireturn
L72:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getCreatorID()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L50
L31:
aload 2
ifnonnull L73
iconst_m1
ireturn
L73:
aload 2
aload 0
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/getAllChatGroupList()Ljava/util/List;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L50
L32:
aload 2
ifnull L74
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L75
L74:
iconst_m1
ireturn
L75:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 3
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/findGroupByDB(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 6
ifnonnull L76
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7
dup
aload 0
lload 3
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$7/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L77:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L76:
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
astore 5
goto L77
L33:
aload 2
ifnull L78
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L79
L78:
iconst_m1
ireturn
L79:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L80
iconst_m1
ireturn
L80:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L34:
aload 2
ifnull L81
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L82
L81:
iconst_m1
ireturn
L82:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L83
iconst_m1
ireturn
L83:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L35:
aload 2
ifnull L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L85
L84:
iconst_m1
ireturn
L85:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L86
iconst_m1
ireturn
L86:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getNotice()Ljava/lang/String; 0
invokestatic com/common/android/utils/StringUtils/getFliteStr(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L36:
aload 2
ifnonnull L87
iconst_m1
ireturn
L87:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L88
iconst_m1
ireturn
L88:
aload 2
aload 5
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/isManager(J)Z 2
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L50
L37:
aload 2
ifnull L89
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L9
L89:
iconst_m1
ireturn
L9:
invokestatic com/nd/android/u/contact/business/SynOapGroupPro/getInstance()Lcom/nd/android/u/contact/business/SynOapGroupPro;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/business/SynOapGroupPro/getGroupMember(J)Ljava/util/List;
astore 6
L10:
aload 6
ifnull L90
L12:
aload 6
invokeinterface java/util/List/size()I 0
ifne L14
L13:
goto L90
L14:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 6
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 6
L15:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L17
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapGroupRelation
astore 7
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getGrade()I
iconst_2
if_icmplt L15
aload 5
aload 7
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/getFid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L16:
goto L15
L11:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
bipush -2
istore 1
goto L50
L17:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L18:
iconst_0
istore 1
goto L50
L38:
aload 2
ifnonnull L91
iconst_m1
ireturn
L91:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
l2i
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/setCommonMsgNotifyType(II)V 2
iconst_0
istore 1
goto L50
L39:
aload 2
ifnull L92
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L93
L92:
iconst_m1
ireturn
L93:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 3
aload 5
lload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/findGroupByDB(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
aload 6
ifnull L94
aload 6
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGroupName()Ljava/lang/String;
astore 5
L94:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L40:
aload 2
ifnull L95
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L95
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapGroup
ifne L96
L95:
iconst_m1
ireturn
L96:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapGroup
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
lstore 3
L19:
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 3
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/getGroupName(J)Ljava/lang/String; 2
astore 6
L20:
aload 6
astore 5
aload 6
ifnonnull L23
L22:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
L23:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L21:
astore 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 3
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
goto L23
L41:
aload 2
ifnull L97
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifge L98
L97:
iconst_m1
ireturn
L98:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic com/nd/android/u/contact/util/GroupPermissionManager/getGroupSetFormType(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L50
L42:
aload 2
ifnonnull L99
iconst_m1
ireturn
L99:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L100
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
L101:
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
lload 3
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 1
iload 1
ifne L102
bipush -2
ireturn
L100:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 3
goto L101
L102:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
i2l
iload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUsersByDeptid(JI)Ljava/util/ArrayList; 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L50
L46:
aload 2
ifnull L103
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L104
L103:
iconst_m1
ireturn
L104:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 5
aload 5
ifnonnull L105
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
L106:
iconst_0
istore 1
goto L50
L105:
aload 2
aload 5
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getCatagory()I 0
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
goto L106
L47:
aload 2
ifnonnull L107
iconst_m1
ireturn
L107:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L108
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 3
L109:
ldc com/nd/android/u/contact/dao/OapJMClassRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassRelationDao
lload 3
invokeinterface com/nd/android/u/contact/dao/OapJMClassRelationDao/searchClassRelation(J)Ljava/util/List; 2
astore 5
aload 5
invokeinterface java/util/List/size()I 0
ifle L110
aload 5
iconst_0
invokeinterface java/util/List/get(I)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getClassid()I
istore 1
iload 1
ifne L111
bipush -2
ireturn
L108:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 3
goto L109
L111:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
i2l
iload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchUsersByClassid(JI)Ljava/util/ArrayList; 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L50
L110:
bipush -2
ireturn
L48:
aload 2
ifnull L112
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L113
L112:
iconst_m1
ireturn
L113:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
ifnonnull L114
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L115:
iconst_0
istore 1
goto L50
L114:
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
goto L115
L90:
bipush -2
ireturn
.limit locals 8
.limit stack 7
.end method

.method private InterProcessGroupProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L4 to L5 using L2
.catch java/lang/Exception from L5 to L6 using L2
.catch java/lang/Exception from L6 to L7 using L2
.catch java/lang/Exception from L8 to L9 using L10
.catch java/lang/Exception from L11 to L12 using L13
.catch java/lang/Exception from L14 to L15 using L16
ldc "winnyang"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "InterProcessGroupProcess:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
istore 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lconst_0
lcmp
ifgt L17
bipush -2
ireturn
L17:
iload 1
tableswitch 10201
L18
L19
L20
L21
L22
L23
L24
L25
L26
L27
L28
L29
L30
L31
L32
L33
L34
L35
L36
L37
L38
default : L31
L31:
sipush -1001
istore 1
L39:
iload 1
ireturn
L18:
aload 2
ifnonnull L40
iconst_m1
ireturn
L40:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2001
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_0
istore 1
goto L39
L19:
aload 2
ifnull L41
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L41
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [Ljava/lang/String;
ifne L42
L41:
iconst_m1
ireturn
L42:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [Ljava/lang/String;
checkcast [Ljava/lang/String;
astore 10
aload 10
arraylength
iconst_2
if_icmpne L43
aload 10
iconst_0
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L43
aload 10
iconst_1
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L44
L43:
iconst_m1
ireturn
L44:
aload 10
iconst_0
aaload
astore 2
aload 10
iconst_1
aaload
astore 10
L0:
new org/json/JSONObject
dup
aload 10
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 10
aload 2
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
L1:
aload 2
ifnonnull L3
iconst_0
ireturn
L3:
aload 10
ldc "notice"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L4
aload 2
aload 10
ldc "notice"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setNoticeByDB(Ljava/lang/String;)Z 1
pop
L4:
aload 10
ldc "introduction"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L5
aload 2
aload 10
ldc "introduction"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setIntroductionByDB(Ljava/lang/String;)Z 1
pop
L5:
aload 10
ldc "gname"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L6
aload 2
aload 10
ldc "gname"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setNameByDb(Ljava/lang/String;)Z 1
pop
L6:
aload 10
ldc "joinperm"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 2
aload 10
ldc "joinperm"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/setPermissionByDB(I)Z 1
pop
L7:
iconst_0
ireturn
L2:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
iconst_m1
istore 1
goto L39
L20:
aload 2
ifnull L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifle L45
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L8
L45:
iconst_m1
ireturn
L8:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 4
L9:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 12
aload 12
ifnonnull L46
iconst_m1
ireturn
L10:
astore 2
iconst_m1
ireturn
L46:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
aload 12
lload 4
iload 1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/switchMemberRole(JI)Z 3
ifne L47
iconst_m1
ireturn
L47:
aconst_null
astore 11
aload 11
astore 10
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L48
iload 1
lookupswitch
2 : L49
8 : L50
16 : L51
default : L52
L52:
aload 11
astore 10
L48:
aload 2
aload 10
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L39
L49:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_not_be_group_manager I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
aastore
dup
iconst_1
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 10
goto L48
L50:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_r_group_manager_now I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
aastore
dup
iconst_1
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 10
goto L48
L51:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/u_r_group_leader I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
iconst_2
anewarray java/lang/Object
dup
iconst_0
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getName()Ljava/lang/String; 0
aastore
dup
iconst_1
aload 12
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGID()J 0
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
astore 10
goto L48
L21:
ldc "winnyang"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "InterProcessGroupProcess CONTACT_UPDATE_GROUPMEMBER_10204:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/i(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 2
ifnull L53
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L53
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L53
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnonnull L54
L53:
iconst_m1
ireturn
L54:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 10
aload 10
arraylength
iconst_2
if_icmpeq L55
iconst_m1
ireturn
L55:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 11
aload 11
arraylength
iconst_2
if_icmpeq L56
iconst_m1
ireturn
L56:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 12
aload 11
iconst_0
laload
lstore 4
aload 11
iconst_1
laload
lstore 4
aload 10
iconst_0
iaload
istore 1
aload 10
iconst_1
iaload
istore 3
aload 2
aconst_null
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L11:
aload 12
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 6
L12:
iload 3
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L57
iload 1
ifne L58
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L59
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$2
dup
aload 0
lload 6
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$2/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L58:
iconst_0
ireturn
L13:
astore 2
iconst_m1
ireturn
L59:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnonnull L60
iconst_m1
ireturn
L60:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/addMemberByDB(Ljava/util/Iterator;)Z 1
pop
iconst_0
ireturn
L57:
iload 3
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L61
iload 1
ifne L62
lload 4
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L63
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$3
dup
aload 0
lload 6
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$3/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
iconst_0
ireturn
L63:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnonnull L64
iconst_m1
ireturn
L64:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/addMemberByDB(Ljava/util/Iterator;)Z 1
pop
iconst_0
ireturn
L62:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnonnull L65
iconst_m1
ireturn
L65:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
lload 4
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/delMemberByDB(Ljava/util/Iterator;)Z 1
pop
iconst_0
ireturn
L61:
bipush -2
istore 1
goto L39
L22:
aload 2
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [J
ifne L67
L66:
iconst_m1
ireturn
L67:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 2
aload 2
arraylength
iconst_2
if_icmpne L68
aload 2
iconst_0
laload
lconst_0
lcmp
ifle L68
aload 2
iconst_1
laload
lconst_0
lcmp
ifgt L69
L68:
iconst_m1
ireturn
L69:
aload 2
iconst_0
laload
lstore 4
aload 2
iconst_1
laload
lstore 6
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnull L70
lload 6
lconst_0
lcmp
ifgt L71
L70:
iconst_0
ireturn
L71:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
lload 6
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/delMemberByDB(Ljava/util/Iterator;)Z 1
pop
iconst_0
istore 1
goto L39
L23:
aload 2
ifnull L72
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L72
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [I
ifeq L72
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L73
L72:
iconst_m1
ireturn
L73:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 10
aload 10
arraylength
iconst_2
if_icmpne L74
aload 10
iconst_0
iaload
iflt L74
aload 10
iconst_1
iaload
ifge L75
L74:
iconst_m1
ireturn
L75:
aload 10
iconst_0
iaload
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L76
L14:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/parseLong(Ljava/lang/String;)J
lstore 4
L15:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/delMemberByDB(Ljava/util/Iterator;)Z 1
pop
L76:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2005
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iload 3
istore 1
goto L39
L16:
astore 2
iconst_m1
ireturn
L24:
aload 2
ifnull L77
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L77
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [I
ifeq L77
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L78
L77:
iconst_m1
ireturn
L78:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 10
aload 10
arraylength
iconst_2
if_icmpeq L79
iconst_m1
ireturn
L79:
aload 10
iconst_0
iaload
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
if_icmpne L80
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
lstore 4
aload 10
iconst_1
iaload
sipush 201
if_icmpne L81
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$4
dup
aload 0
lload 4
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$4/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
L81:
iconst_0
istore 1
goto L39
L80:
aload 10
iconst_0
iaload
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
if_icmpne L81
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5
dup
aload 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Long/valueOf(Ljava/lang/String;)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$5/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
goto L81
L25:
aload 2
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnonnull L83
L82:
iconst_m1
ireturn
L83:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
astore 10
aload 10
arraylength
iconst_2
if_icmpeq L84
iconst_m1
ireturn
L84:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
istore 1
aload 10
iconst_0
laload
lstore 4
aload 10
iconst_1
laload
lstore 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 8
aconst_null
astore 10
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
astore 11
iload 1
iconst_1
if_icmpne L85
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
ifnonnull L86
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/toInitOapGroupsList()V
L86:
iconst_0
ifne L87
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
lload 4
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/findGroupByGUid(J)Lcom/product/android/commonInterface/contact/OapGroup; 2
astore 10
L87:
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
aload 10
invokeinterface java/util/List/contains(Ljava/lang/Object;)Z 1
ifne L88
aload 10
ifnull L88
aload 10
iconst_0
invokevirtual com/product/android/commonInterface/contact/OapGroup/setFalg(I)V
aload 10
lload 8
invokevirtual com/product/android/commonInterface/contact/OapGroup/setUid(J)V
ldc com/nd/android/u/contact/dao/OapGroupDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupDao
aload 10
invokeinterface com/nd/android/u/contact/dao/OapGroupDao/insertGroup(Lcom/product/android/commonInterface/contact/OapGroup;)J 1
pop2
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 11
aload 11
lload 8
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setUid(J)V
aload 11
lload 6
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setFid(J)V
aload 11
aload 10
invokevirtual com/product/android/commonInterface/contact/OapGroup/getGid()J
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/setGid(J)V
ldc com/nd/android/u/contact/dao/OapGroupRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapGroupRelationDao
aload 11
invokeinterface com/nd/android/u/contact/dao/OapGroupRelationDao/insertGroupRelation(Lcom/product/android/commonInterface/contact/OapGroupRelation;)J 1
pop2
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
ldc_w 131076
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifyProcessComplete(I)V
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
invokestatic com/nd/android/u/contact/business/GroupVariable/getInstance()Lcom/nd/android/u/contact/business/GroupVariable;
invokevirtual com/nd/android/u/contact/business/GroupVariable/getNormalGroupList()Ljava/util/List;
aload 10
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L88:
invokestatic com/nd/android/u/contact/business/OapGroupPro/getInstance()Lcom/nd/android/u/contact/business/OapGroupPro;
lload 4
lload 6
iload 1
invokevirtual com/nd/android/u/contact/business/OapGroupPro/agreeAddGroupFromIMS(JJI)V
L89:
iconst_0
istore 1
goto L39
L85:
iload 1
ifne L89
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 11
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnonnull L90
iconst_m1
ireturn
L90:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
lload 8
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
aload 2
aload 10
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/addMemberByDB(Ljava/util/Iterator;)Z 1
pop
goto L89
L26:
aload 2
ifnonnull L91
iconst_m1
ireturn
L91:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2002
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_0
istore 1
goto L39
L27:
aload 2
ifnonnull L92
iconst_m1
ireturn
L92:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2002
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_0
istore 1
goto L39
L28:
aload 2
ifnull L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L94
L93:
iconst_m1
ireturn
L94:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
aload 2
ifnull L95
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/delMemberByDB(Ljava/util/Iterator;)Z 1
pop
L95:
iconst_0
istore 1
goto L39
L29:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L96
invokestatic com/common/android/utils/concurrent/NdExecutors/getBackgroundThreadPool()Ljava/util/concurrent/ExecutorService;
new com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable
dup
iconst_0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokespecial com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/<init>(ZJ)V
invokeinterface java/util/concurrent/ExecutorService/execute(Ljava/lang/Runnable;)V 1
L96:
iconst_0
istore 1
goto L39
L30:
aload 2
ifnonnull L97
iconst_m1
ireturn
L97:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2003
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
iconst_0
istore 1
goto L39
L32:
aload 2
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof android/os/Bundle
ifne L99
L98:
iconst_m1
ireturn
L99:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast android/os/Bundle
astore 2
new android/content/Intent
dup
aload 10
ldc com/nd/android/u/contact/activity/DiscussionManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 11
aload 11
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 10
aload 11
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L39
L33:
aload 2
ifnull L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof android/os/Bundle
ifne L101
L100:
iconst_m1
ireturn
L101:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 10
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast android/os/Bundle
astore 2
new android/content/Intent
dup
aload 10
ldc com/nd/android/u/contact/activity/GroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 11
aload 11
aload 2
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 10
aload 11
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L39
L34:
aload 2
ifnull L102
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L102
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L103
L102:
iconst_m1
ireturn
L103:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 11
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L104
new android/content/Intent
dup
aload 11
ldc com/nd/android/u/contact/activity/XYSelectUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 10
L105:
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 12
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifeq L106
aload 12
ldc "fid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/os/Bundle/putLong(Ljava/lang/String;J)V
L107:
aload 12
ldc "selected_tab"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 12
ldc "is_talk"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 10
aload 12
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 10
ldc_w 268435456
invokevirtual android/content/Intent/addFlags(I)Landroid/content/Intent;
pop
aload 11
ifnull L108
aload 11
aload 10
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L108:
iconst_0
istore 1
goto L39
L104:
new android/content/Intent
dup
aload 11
ldc com/nd/android/u/contact/activity/SelectUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 10
goto L105
L106:
invokestatic com/nd/android/u/contact/dataStructure/SelectedMemberQueue/getInstance()Lcom/nd/android/u/contact/dataStructure/SelectedMemberQueue;
invokevirtual com/nd/android/u/contact/dataStructure/SelectedMemberQueue/init()V
goto L107
L35:
aload 2
ifnull L109
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L109
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/chat/IGroupReceiveSettingListener
ifeq L109
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L109
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L110
L109:
iconst_m1
ireturn
L110:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/chat/IGroupReceiveSettingListener
astore 10
new com/nd/android/u/contact/dialog/DlgGroupRevSet
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/nd/android/u/contact/R$style/Style_Self_Info_Dlg I
invokespecial com/nd/android/u/contact/dialog/DlgGroupRevSet/<init>(Landroid/content/Context;II)V
astore 2
aload 2
aload 10
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/setOnAfterDismissListener(Lcom/product/android/commonInterface/chat/IGroupReceiveSettingListener;)V
aload 2
invokevirtual com/nd/android/u/contact/dialog/DlgGroupRevSet/show()V
iconst_0
istore 1
goto L39
L36:
aload 2
ifnonnull L111
iconst_m1
ireturn
L111:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifne L112
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2004
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
L113:
iconst_0
istore 1
goto L39
L112:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl;
sipush 2014
ldc2_w -1L
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/GroupSubjectImpl/notifyGroupData(IJ)V
goto L113
L37:
aload 2
ifnull L114
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L115
L114:
iconst_m1
ireturn
L115:
new java/lang/Thread
dup
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$6
dup
aload 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$6/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;J)V
invokespecial java/lang/Thread/<init>(Ljava/lang/Runnable;)V
invokevirtual java/lang/Thread/start()V
iconst_0
istore 1
goto L39
L38:
aload 2
ifnull L116
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L117
L116:
iconst_m1
ireturn
L117:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 10
aload 10
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
aload 2
aload 10
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/delMemberByDB(Ljava/util/Iterator;)Z 1
pop
iconst_0
istore 1
goto L39
.limit locals 13
.limit stack 7
.end method

.method private InterProcessNeedTimeProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.throws org/json/JSONException
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L13 to L14 using L2
.catch com/common/android/utils/http/HttpException from L15 to L16 using L2
.catch com/common/android/utils/http/HttpException from L17 to L18 using L2
.catch com/common/android/utils/http/HttpException from L19 to L20 using L2
.catch com/common/android/utils/http/HttpException from L21 to L22 using L23
.catch com/common/android/utils/http/HttpException from L24 to L25 using L26
.catch com/common/android/utils/http/HttpException from L27 to L28 using L29
.catch java/lang/Exception from L30 to L31 using L32
.catch com/common/android/utils/http/HttpException from L33 to L34 using L35
.catch com/common/android/utils/http/HttpException from L36 to L37 using L38
.catch com/common/android/utils/http/HttpException from L39 to L40 using L41
.catch com/common/android/utils/http/HttpException from L42 to L43 using L44
.catch com/common/android/utils/http/HttpException from L43 to L45 using L44
.catch com/common/android/utils/http/HttpException from L46 to L47 using L44
bipush -2
istore 3
iload 1
tableswitch 11001
L48
L49
L50
L51
L52
L53
L54
L55
L56
L57
L58
L59
L60
L61
L62
L63
L64
default : L52
L52:
sipush -1001
istore 1
L65:
iload 1
ireturn
L48:
aload 2
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L67
L66:
iconst_m1
ireturn
L67:
iload 3
istore 1
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
L1:
iload 3
istore 1
L3:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
L4:
aload 6
ifnull L68
iload 3
istore 1
L5:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L68
L6:
iload 3
istore 1
L7:
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getUnitid()I
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getUnitid()I
if_icmpeq L69
L8:
iload 3
istore 1
L9:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 4
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendDel(J)Z
pop
L10:
iload 3
istore 1
L11:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/deleteFriend(J)V
L12:
iload 3
istore 1
L13:
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L14:
iconst_0
istore 1
iconst_0
istore 3
L15:
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lconst_0
sipush 30003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
L16:
iload 3
istore 1
goto L65
L2:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 2
ldc "\u89e3\u9664\u597d\u53cb\u5931\u8d25"
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
goto L65
L69:
iload 3
istore 1
L17:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 4
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/dellFollw(J)V
L18:
goto L10
L68:
iload 3
istore 1
L19:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
lload 4
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/dellFollw(J)V
L20:
goto L10
L49:
aload 2
ifnull L70
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L21
L70:
iconst_m1
ireturn
L21:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
ldc ""
iconst_m1
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/addFollw(JLjava/lang/String;I)V
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
iconst_0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lconst_0
sipush 30005
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L22:
iconst_0
istore 1
goto L65
L23:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 6
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L71
L72
L72
L73
default : L72
L72:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L71:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/canot_follow_self I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L73:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/favorite_friend_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L50:
aload 2
ifnull L74
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L75
L74:
iconst_m1
ireturn
L75:
aload 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/synGetUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L65
L51:
aload 2
ifnull L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L77
L76:
iconst_m1
ireturn
L77:
aconst_null
astore 7
aload 7
astore 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L25
L24:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapTagCom()Lcom/nd/android/u/contact/com/OapTagCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/com/OapTagCom/getUserTagsList(J)Ljava/util/ArrayList;
astore 6
L25:
aload 6
ifnull L78
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/TagDao/deleteTag(J)Z 2
pop
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
aload 6
invokeinterface com/nd/android/u/contact/dao/TagDao/insertTagList(Ljava/util/List;)J 1
pop2
L79:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L65
L26:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aload 7
astore 6
goto L25
L78:
ldc com/nd/android/u/contact/dao/TagDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/TagDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
iconst_4
invokeinterface com/nd/android/u/contact/dao/TagDao/findTagByLimit(JI)Ljava/util/List; 3
checkcast java/util/ArrayList
astore 6
goto L79
L53:
aload 2
ifnull L80
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L81
L80:
iconst_m1
ireturn
L81:
aload 2
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/business/OapUserManager/addToBlackList(J)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L82
L27:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$WeiboEntry/deleteFriend(J)Z
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel$OrganizationEntry/deleteFriend(J)I
pop
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getFriendGroupOperator()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IFriendGroupOperator/getBlackList()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup; 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
ldc ""
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/FriednInterface/IFriendGroup/addMember(JLjava/lang/String;)Z 3
pop
L28:
iconst_0
ireturn
L29:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L28
L82:
bipush -2
ireturn
L54:
aload 2
ifnull L83
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L84
L83:
iconst_m1
ireturn
L84:
aload 2
invokestatic com/nd/android/u/contact/business/OapUserManager/getInstance()Lcom/nd/android/u/contact/business/OapUserManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/business/OapUserManager/delFromBlackList(J)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L85
iconst_0
istore 1
invokestatic com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl;
lconst_0
sipush 30003
invokevirtual com/nd/android/u/contact/business_new/Common/OperatorInterface/ObserverInerface/FriendGroupSubjectImpl/notifyFriendGroupDataChanged(JI)V
goto L65
L85:
bipush -2
istore 1
goto L65
L55:
aload 2
ifnull L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L30
L86:
iconst_m1
ireturn
L30:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
iconst_0
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendAgree(JI)Z
pop
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L31:
iconst_0
istore 1
goto L65
L32:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
bipush -2
ireturn
L56:
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupCategory()Ljava/util/Iterator; 0
pop
iconst_0
istore 1
goto L65
L57:
aload 2
ifnonnull L33
iconst_m1
ireturn
L33:
aload 2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
aconst_null
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/getMyHiddenLoveInfo(Ljava/util/ArrayList;)Lorg/json/JSONObject;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L34:
iconst_0
istore 1
goto L65
L35:
astore 2
bipush -2
istore 1
goto L65
L58:
aload 2
ifnull L87
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L88
L87:
iconst_m1
ireturn
L88:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapSecretLoveCom()Lcom/nd/android/u/contact/com/OapSecretLoveCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 6
invokevirtual com/nd/android/u/contact/com/OapSecretLoveCom/addMyHiddenLove(JLjava/lang/StringBuilder;)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L89
iconst_0
istore 1
goto L65
L89:
bipush -2
istore 1
aload 2
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
goto L65
L59:
aload 2
ifnull L90
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L91
L90:
iconst_m1
ireturn
L91:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lconst_0
lcmp
ifeq L92
iconst_0
istore 1
goto L65
L92:
bipush -2
istore 1
goto L65
L60:
aload 2
ifnull L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof org/json/JSONObject
ifne L36
L93:
iconst_m1
ireturn
L36:
aload 2
invokestatic com/nd/android/u/contact/com/COapRequestProcessImpl/getInstance()Lcom/nd/android/u/contact/com/COapRequestProcessImpl;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast org/json/JSONObject
invokevirtual com/nd/android/u/contact/com/COapRequestProcessImpl/modifyUser(Lorg/json/JSONObject;)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L37:
iconst_0
istore 1
goto L65
L38:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
bipush -2
istore 1
goto L65
L61:
aload 2
ifnull L94
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L39
L94:
iconst_m1
ireturn
L39:
aload 2
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUserCom/searchUserByKey(Ljava/lang/String;)Ljava/util/List;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L40:
iconst_0
istore 1
goto L65
L41:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
bipush -2
istore 1
goto L65
L62:
aload 2
ifnull L95
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L95
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/util/ArrayList
ifne L96
L95:
iconst_m1
ireturn
L96:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/util/ArrayList
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/saveNetSearchFirends(Ljava/util/List;)Z
ifeq L97
iconst_0
istore 1
goto L65
L97:
bipush -2
istore 1
goto L65
L63:
aload 2
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/util/ArrayList
ifne L99
L98:
iconst_m1
ireturn
L99:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
ifne L42
iconst_m1
ireturn
L42:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapFriendGroupcom()Lcom/nd/android/u/contact/com/OapFriendGroupCom;
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapFriendGroupCom/friendApply(Ljava/util/ArrayList;Ljava/lang/String;)Z
pop
aload 6
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 6
L43:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L46
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lstore 4
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
iconst_0
lload 4
aconst_null
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/addFriend(IJLcom/product/android/commonInterface/contact/OapUser;)V
L45:
goto L43
L44:
astore 6
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 6
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
tableswitch 403
L100
L101
L101
L102
default : L101
L101:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/add_friend_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L46:
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L47:
iconst_0
istore 1
goto L65
L100:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/canot_follow_self I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L102:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/favorite_friend_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iload 3
istore 1
goto L65
L64:
aload 2
ifnull L103
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L104
L103:
iconst_m1
ireturn
L104:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 6
aload 2
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYOrgLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getOrganizationOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IOrganizationLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator;
aload 6
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IOrganizationOperator/modifyUserSignature(Ljava/lang/String;)Z 1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L65
.limit locals 8
.limit stack 5
.end method

.method private InterProcessOtherInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
bipush -2
istore 3
aconst_null
astore 10
aconst_null
astore 7
aconst_null
astore 9
aconst_null
astore 8
iload 1
lookupswitch
10101 : L0
10102 : L1
10103 : L2
10104 : L3
10105 : L4
10106 : L5
10107 : L6
10108 : L7
10109 : L8
10110 : L9
10111 : L10
10112 : L11
10113 : L12
10114 : L13
10115 : L14
12001 : L15
12002 : L16
default : L17
L17:
sipush -1001
istore 1
L18:
iload 1
ireturn
L0:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
aconst_null
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/setBind_users_list(Ljava/util/ArrayList;)V
iconst_0
istore 1
goto L18
L1:
aload 2
ifnull L19
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L19
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L20
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/support/v4/app/Fragment
ifne L20
L19:
iconst_m1
ireturn
L20:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L21
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 7
L22:
new android/content/Intent
dup
aload 7
ldc com/nd/android/u/contact/activity/TagDetailActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 9
aload 9
ldc "OAP_ID"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 8
ifnull L23
aload 8
aload 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
L24:
iconst_0
istore 1
goto L18
L21:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/support/v4/app/Fragment
ifeq L22
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 8
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 7
goto L22
L23:
aload 7
ifnull L24
aload 7
aload 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
goto L24
L2:
aload 2
ifnull L25
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L25
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L26
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/support/v4/app/Fragment
ifne L26
L25:
iconst_m1
ireturn
L26:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L27
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 7
aload 9
astore 8
L28:
new android/content/Intent
dup
aload 7
ldc com/nd/android/u/contact/activity/BlackListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 9
aload 8
ifnull L29
aload 8
aload 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/support/v4/app/Fragment/startActivityForResult(Landroid/content/Intent;I)V
L30:
iconst_0
istore 1
goto L18
L27:
aload 10
astore 7
aload 9
astore 8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/support/v4/app/Fragment
ifeq L28
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/support/v4/app/Fragment
astore 8
aload 8
invokevirtual android/support/v4/app/Fragment/getActivity()Landroid/support/v4/app/FragmentActivity;
astore 7
goto L28
L29:
aload 7
ifnull L30
aload 7
aload 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
goto L30
L3:
aload 2
ifnonnull L31
iconst_m1
ireturn
L31:
aload 2
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/checkUidIsBlackList(JJ)Z 4
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L18
L4:
aload 2
ifnull L32
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L32
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L33
L32:
iconst_m1
ireturn
L33:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 7
new android/content/Intent
dup
aload 7
ldc com/nd/android/u/contact/activity/HiddenLoveManageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 8
aload 8
ldc "loveInfo"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 8
ldc "hasData"
iconst_0
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 7
ifnull L34
aload 7
aload 8
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L34:
iconst_0
istore 1
goto L18
L5:
aload 2
ifnull L35
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L35
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L36
L35:
iconst_m1
ireturn
L36:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 7
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 8
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L37
aload 8
aload 7
ldc com/nd/android/u/contact/activity/XYTopRankActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
L38:
aload 8
ldc "topType"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_1
if_icmpne L39
aload 8
ldc "gender"
iconst_2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L40:
aload 7
ifnull L41
aload 7
aload 8
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
L41:
iconst_0
istore 1
goto L18
L37:
aload 8
aload 7
ldc com/nd/android/u/contact/activity/TopRankActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
goto L38
L39:
aload 8
ldc "gender"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
goto L40
L6:
aload 2
ifnonnull L42
iconst_m1
ireturn
L42:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getHundredUserNameByGender(I)Ljava/util/ArrayList; 1
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L18
L7:
aload 2
ifnonnull L43
iconst_m1
ireturn
L43:
aload 2
ldc com/nd/android/u/contact/dao/OapBlackListDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapBlackListDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokeinterface com/nd/android/u/contact/dao/OapBlackListDao/getBlackList(J)Ljava/util/ArrayList; 2
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L18
L8:
aload 2
ifnull L44
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L45
L44:
iconst_m1
ireturn
L45:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/SynOapApp/isExist(ILjava/lang/String;)Z
istore 4
iload 4
ifne L46
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L46
iconst_1
invokestatic com/nd/android/u/contact/business/backgroundRable/ObtainAppRable/obtain(Z)V
L46:
aload 2
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L18
L9:
aload 2
ifnull L47
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L47
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapApp
ifne L48
L47:
iconst_m1
ireturn
L48:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
invokestatic com/nd/android/u/contact/business/SynOapApp/isInstallApp(Lcom/product/android/commonInterface/contact/OapApp;)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L18
L10:
aload 2
ifnull L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L50
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof android/os/Bundle
ifeq L49
L50:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnonnull L51
L49:
iconst_m1
ireturn
L51:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast android/os/Bundle
invokestatic com/nd/android/u/contact/business/SynOapApp/jumpActivity(Landroid/content/Context;Landroid/os/Bundle;)V
iconst_0
istore 1
goto L18
L11:
aload 2
ifnull L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapApp
ifne L53
L52:
iconst_m1
ireturn
L53:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapApp
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
invokestatic com/nd/android/u/contact/business/SynOapApp/showLoadDialog(Lcom/product/android/commonInterface/contact/OapApp;Landroid/content/Context;)V
iconst_0
istore 1
goto L18
L12:
aload 2
ifnonnull L54
iconst_m1
ireturn
L54:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic com/nd/android/u/contact/business/SynOapApp/getApplistById(I)Ljava/util/ArrayList;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L18
L13:
aload 2
ifnull L55
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L56
L55:
iconst_m1
ireturn
L56:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L18
L14:
aload 2
ifnull L57
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L58
L57:
iconst_m1
ireturn
L58:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/contact/business/SynOapApp/getOapApp(ILjava/lang/String;)Lcom/product/android/commonInterface/contact/OapApp;
astore 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/business/config/Configuration/MYAPPID I
if_icmpne L59
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/GIFTGIVERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L60
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/giftgiver_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L61:
iconst_0
istore 1
goto L18
L60:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L62
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/birthday_remind I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L62:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/club_request_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L59:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/business/config/Configuration/TASKAPPID I
if_icmpne L63
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/FLOWERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L64
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/flower_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L64:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/PAIHANGCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L65
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/paihang_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L65:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/PRESEND_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L66
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/present_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L66:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/LOTTERYCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L67
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/lottery_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L67:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/SYSADD_LOTTER_GIFT_CODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L68
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/lot_gift_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L68:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/app_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L63:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/business/config/Configuration/SECRETLOVEAPPID I
if_icmpne L69
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/SECRETLOVECODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L70
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/hidlove_notify I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L70:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/app_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L69:
aload 7
ifnull L71
aload 7
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isEmpty(Ljava/lang/String;)Z
ifne L71
aload 2
aload 7
invokevirtual com/product/android/commonInterface/contact/OapApp/getName()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L71:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/business/config/Configuration/PMSAPPID I
if_icmpne L72
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/PMSAPPCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L72
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/pms_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L72:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
getstatic com/product/android/business/config/Configuration/CHINAPARTNERID I
if_icmpne L73
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/business/config/Configuration/CHINAPARTNERCODE Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L73
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/app_chinapartner_title I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L73:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/contact/R$string/app_msg I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L61
L15:
aload 2
ifnull L74
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L75
L74:
iconst_m1
ireturn
L75:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
istore 4
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 7
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 5
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 9
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 8
aload 8
ldc "isFromChat"
iload 4
invokevirtual android/os/Bundle/putBoolean(Ljava/lang/String;Z)V
aload 8
ldc "friend"
aload 9
invokevirtual android/os/Bundle/putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
new android/content/Intent
dup
aload 7
ldc com/nd/android/u/contact/activity/FriendsGroupManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 9
aload 9
aload 8
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 7
checkcast android/app/Activity
aload 9
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
iload 3
istore 1
goto L18
L16:
aload 2
ifnull L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L77
L76:
iconst_m1
ireturn
L77:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 7
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gIsSenior Z
ifeq L78
getstatic com/nd/android/u/contact/business/ContactGlobalVariable/gHasBeanSenior Z
ifeq L79
aload 7
aload 2
ldc com/nd/android/u/contact/activity/senior/MySeniorActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
iconst_0
istore 4
invokestatic com/nd/android/u/contact/activity/senior/NewContactCount/getInstance()Lcom/nd/android/u/contact/activity/senior/NewContactCount;
invokevirtual com/nd/android/u/contact/activity/senior/NewContactCount/getCount()I
ifle L80
iconst_1
istore 4
L80:
aload 7
ldc "hasNewData"
iload 4
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 2
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iload 3
istore 1
goto L18
L79:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_1
invokestatic com/nd/android/u/contact/contactInterfaceImpl/ContactCallOtherModel/gotoSeniorApplyActivity(Landroid/content/Context;JZ)I
pop
iload 3
istore 1
goto L18
L78:
aload 7
aload 2
ldc com/nd/android/u/contact/activity/senior/FindSeniorActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 7
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iload 3
istore 1
goto L18
.limit locals 11
.limit stack 6
.end method

.method private InterProcessPersonInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/Exception from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L6 to L7 using L5
.catch com/common/android/utils/http/HttpException from L8 to L9 using L10
.catch org/json/JSONException from L8 to L9 using L11
.catch java/lang/Exception from L12 to L13 using L14
.catch java/lang/Exception from L15 to L16 using L17
bipush -2
istore 3
iload 1
tableswitch 10001
L18
L19
L20
L21
L22
L23
L24
L25
L26
L27
L28
L29
L30
L31
L32
L33
L34
L35
L36
L37
L38
L39
L40
L41
L42
L43
L44
L45
default : L30
L30:
sipush -1001
istore 1
L46:
iload 1
ireturn
L18:
aload 2
ifnonnull L47
iconst_m1
ireturn
L47:
aload 2
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L19:
aload 2
ifnonnull L48
iconst_m1
ireturn
L48:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getSysAvatarId(J)I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_0
istore 1
goto L46
L20:
aload 2
ifnull L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L49
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L50
L49:
iconst_m1
ireturn
L50:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnonnull L51
bipush -2
ireturn
L51:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lcmp
ifne L52
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L53
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/product/android/business/login/BindUser/setSignature(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
L53:
invokestatic com/product/android/business/service/SendBroadcastMsg/getInstance()Lcom/product/android/business/service/SendBroadcastMsg;
invokevirtual com/product/android/business/service/SendBroadcastMsg/sendNotifySignChance()V
iconst_0
istore 1
goto L46
L52:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
aload 7
astore 6
aload 7
ifnonnull L54
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 6
L54:
aload 6
ifnull L53
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
goto L53
L21:
aload 2
ifnull L55
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L56
L55:
iconst_m1
ireturn
L56:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 4
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lload 4
lcmp
ifne L57
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L58
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/product/android/business/login/BindUser/setSysavatar(I)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
ldc com/nd/android/u/contact/dao/HeadImageDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/HeadImageDao
lload 4
invokeinterface com/nd/android/u/contact/dao/HeadImageDao/updateHeadImage(J)V 2
L58:
getstatic com/product/android/business/broadcast/PersonInfoBroadHelper/INSTANCE Lcom/product/android/business/broadcast/PersonInfoBroadHelper;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/product/android/business/broadcast/PersonInfoBroadHelper/sendUpdateAvaBroadCast(J)V
iconst_0
istore 1
goto L46
L57:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 6
aload 6
ifnull L58
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/product/android/commonInterface/contact/OapUser/setSysavatar(I)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateFriend(Lcom/product/android/commonInterface/contact/OapUser;)V 1
goto L58
L22:
aload 2
ifnull L59
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L59
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/os/Bundle
ifne L60
L59:
iconst_m1
ireturn
L60:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/os/Bundle
ldc "cmd"
invokevirtual android/os/Bundle/getInt(Ljava/lang/String;)I
pop
iconst_0
istore 1
goto L46
L23:
aload 2
ifnull L61
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L62
L61:
iconst_m1
ireturn
L62:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 0
getfield com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/profileUserCacheCallback Lcom/nd/android/u/contact/cache/ProfileUserCacheCallback;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 7
ifnull L63
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
astore 6
L63:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L46
L24:
aload 2
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L65
L64:
iconst_m1
ireturn
L65:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
aload 7
ifnull L66
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
astore 6
L66:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L46
L25:
aload 2
ifnull L67
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L68
L67:
iconst_m1
ireturn
L68:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 6
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 4
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
aload 7
ifnull L69
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
astore 6
L69:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
iconst_0
istore 1
goto L46
L26:
aload 2
ifnull L70
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L71
L70:
iconst_m1
ireturn
L71:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lstore 4
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
lload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroup(J)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup; 2
ifnonnull L72
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L73:
iconst_0
istore 1
goto L46
L72:
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
goto L73
L27:
aload 2
ifnull L74
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L74
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/business/login/BindUser
ifne L75
L74:
iconst_m1
ireturn
L75:
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/business/login/BindUser
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/updateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
iconst_0
istore 1
goto L46
L28:
aload 2
ifnull L76
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnonnull L77
L76:
iconst_m1
ireturn
L77:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 6
aload 6
arraylength
iconst_2
if_icmpeq L78
iconst_m1
ireturn
L78:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 6
iconst_0
iaload
aload 6
iconst_1
iaload
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchContracByKey(IILjava/lang/String;)Ljava/util/List; 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L29:
aload 2
ifnull L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof [I
ifeq L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnonnull L0
L79:
iconst_m1
ireturn
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 6
L1:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 7
aload 7
arraylength
iconst_2
if_icmpeq L80
iconst_m1
ireturn
L2:
astore 2
iconst_m1
ireturn
L80:
aload 6
invokevirtual java/util/ArrayList/size()I
ifge L81
iconst_m1
ireturn
L81:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 7
iconst_0
iaload
aload 7
iconst_1
iaload
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUserDao/searchFilterContracByKey(IILjava/lang/String;Ljava/util/ArrayList;)Ljava/util/List; 4
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L31:
aload 2
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifne L83
L82:
iconst_m1
ireturn
L83:
new com/nd/android/u/contact/dialog/AddFriendRequestDialog
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
invokespecial com/nd/android/u/contact/dialog/AddFriendRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendRequestDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
iconst_0
istore 1
goto L46
L32:
aload 2
ifnull L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifne L85
L84:
iconst_m1
ireturn
L85:
new com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
invokespecial com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/contact/OapUser;)V
invokevirtual com/nd/android/u/contact/dialog/AddFriendFollowRequestDialog/create()Landroid/app/AlertDialog;
invokevirtual android/app/AlertDialog/show()V
iconst_0
istore 1
goto L46
L33:
aload 2
ifnonnull L86
iconst_m1
ireturn
L86:
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
ifnull L87
invokestatic com/nd/android/u/contact/business/ContactGlobalVariable/getInstance()Lcom/nd/android/u/contact/business/ContactGlobalVariable;
invokevirtual com/nd/android/u/contact/business/ContactGlobalVariable/getFriendGroups()Lcom/nd/android/u/contact/dataStructure/FriendGroups;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/dataStructure/FriendGroups/findFgidByFid(J)I
iconst_m1
if_icmpeq L87
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L88:
iconst_0
istore 1
goto L46
L87:
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
goto L88
L34:
aload 2
ifnull L89
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L90
L89:
iconst_m1
ireturn
L90:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/containUser(J)Z
ifne L91
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
new com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1
dup
aload 0
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl$1/<init>(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;)V
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUserFormServer(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)V
L91:
iconst_0
istore 1
goto L46
L35:
aload 2
ifnull L92
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifgt L93
L92:
iconst_m1
ireturn
L93:
iconst_1
istore 3
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 7
aload 7
astore 6
aload 7
ifnonnull L94
aload 7
astore 6
L3:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
l2i
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getStudentInfo(I)Lcom/product/android/commonInterface/contact/OapUser;
astore 7
L4:
aload 7
astore 6
L6:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 7
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
L7:
aload 7
astore 6
L94:
iload 3
istore 1
aload 6
ifnull L95
iload 3
istore 1
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getType()I
iconst_2
if_icmpne L95
iconst_2
istore 1
L95:
ldc ""
astore 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
ifnull L96
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokevirtual com/product/android/business/login/BindUser/getUnitname()Ljava/lang/String;
astore 6
L96:
iload 1
iconst_1
if_icmpne L97
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDeptid(J)I
istore 1
aload 2
iconst_3
anewarray java/lang/String
dup
iconst_0
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 1
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getDepartNameByDeptId(I)Ljava/lang/String;
aastore
dup
iconst_1
invokestatic com/nd/android/u/contact/business/OapDepartManager/getInstance()Lcom/nd/android/u/contact/business/OapDepartManager;
iload 1
invokevirtual com/nd/android/u/contact/business/OapDepartManager/getParentDepartNameByDeptid(I)Ljava/lang/String;
aastore
dup
iconst_2
aload 6
aastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L98:
iconst_0
istore 1
goto L46
L5:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L94
L97:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_5IUP Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L99
aload 2
iconst_3
anewarray java/lang/String
dup
iconst_0
ldc com/nd/android/u/contact/dao/OapClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapClassDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/OapClassDao/getClassName(J)Ljava/lang/String; 2
aastore
dup
iconst_1
aload 6
aastore
dup
iconst_2
ldc ""
aastore
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L98
L99:
getstatic com/product/android/business/config/Configuration/PRODUCT Lcom/product/android/business/ProductTypeDef$Product;
getstatic com/product/android/business/ProductTypeDef$Product/PRODUCT_91XY Lcom/product/android/business/ProductTypeDef$Product;
if_acmpne L98
iload 1
iconst_2
if_icmpne L98
iconst_3
anewarray java/lang/String
astore 7
aload 7
iconst_0
ldc com/nd/android/u/contact/dao/OapJMClassDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapJMClassDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/OapJMClassDao/getClassName(J)Ljava/lang/String; 2
aastore
aload 7
iconst_1
ldc ""
aastore
aload 7
iconst_2
aload 6
aastore
aload 7
iconst_0
aaload
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L9
L8:
aload 7
iconst_0
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
l2i
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/getClassByFid(I)Lcom/nd/android/u/contact/dataStructure/OapJMClass;
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClass/getClassname()Ljava/lang/String;
aastore
L9:
aload 2
aload 7
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L98
L10:
astore 6
aload 6
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
goto L9
L11:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L9
L36:
aload 2
ifnull L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L100
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifne L101
L100:
iconst_m1
ireturn
L101:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
astore 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
iconst_0
istore 1
goto L46
L37:
aload 2
ifnull L102
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L12
L102:
iconst_m1
ireturn
L12:
aload 2
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokeinterface com/nd/android/u/contact/dao/OapUserDao/getUidByName(Ljava/lang/String;)J 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
L13:
iconst_0
istore 1
goto L46
L14:
astore 2
bipush -2
istore 1
goto L46
L38:
aload 2
ifnull L103
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L103
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/util/ArrayList
ifne L104
L103:
iconst_m1
ireturn
L104:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/util/ArrayList
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
ifne L105
iconst_m1
ireturn
L105:
aload 6
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L106:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L107
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUserSimple
astore 8
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
aload 8
getfield com/product/android/commonInterface/contact/OapUserSimple/fid J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 9
aload 8
aload 9
invokevirtual com/product/android/commonInterface/contact/OapUser/getUserName()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/username Ljava/lang/String;
aload 8
aload 9
invokevirtual com/product/android/commonInterface/contact/OapUser/getSignature()Ljava/lang/String;
putfield com/product/android/commonInterface/contact/OapUserSimple/signature Ljava/lang/String;
aload 8
aload 9
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
putfield com/product/android/commonInterface/contact/OapUserSimple/sysavatar I
goto L106
L107:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L39:
aload 2
ifnull L108
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L108
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L109
L108:
iconst_m1
ireturn
L109:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 6
new android/content/Intent
dup
aload 6
invokevirtual android/app/Activity/getApplicationContext()Landroid/content/Context;
ldc com/nd/android/u/contact/activity/SelectGiftUserActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L110
aload 7
ldc "backpack_sendflower"
iconst_1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 7
ldc "itemid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 7
ldc "sendCount"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L110:
aload 6
aload 7
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L46
L40:
aload 2
ifnonnull L111
iconst_m1
ireturn
L111:
aload 2
ldc com/nd/android/u/contact/dao/FriendRelationDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/FriendRelationDao
invokeinterface com/nd/android/u/contact/dao/FriendRelationDao/getFriendList()Ljava/util/ArrayList; 0
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L41:
aload 2
ifnull L112
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnonnull L113
L112:
iconst_m1
ireturn
L113:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [J
checkcast [J
invokestatic com/nd/android/u/contact/helper/ContactPubFunction/getAllUserinfoAndUnit([J)Ljava/util/List;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L46
L42:
aload 2
ifnull L114
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifgt L115
L114:
iconst_m1
ireturn
L115:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 6
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/product/android/business/login/BindUser/setUap_uid(I)V
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
aload 6
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/forceUpdateUserInfo(Lcom/product/android/business/login/BindUser;)Z 1
pop
iconst_0
istore 1
goto L46
L43:
aload 2
ifnull L116
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L116
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/commonInterface/contact/OapUser
ifne L15
L116:
iconst_m1
ireturn
L15:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapJMClassCom()Lcom/nd/android/u/contact/com/OapJMClassCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
invokevirtual com/nd/android/u/contact/com/OapJMClassCom/editStudentInfo(Lcom/product/android/commonInterface/contact/OapUser;)Z
ifeq L16
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/commonInterface/contact/OapUser
invokeinterface com/nd/android/u/contact/dao/OapUserDao/updateUser(Lcom/product/android/commonInterface/contact/OapUser;)V 1
L16:
iconst_0
istore 1
goto L46
L17:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
bipush -2
ireturn
L44:
aload 2
ifnull L117
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L117
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/lang/String
ifne L118
L117:
iconst_m1
ireturn
L118:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/String
astore 6
getstatic com/nd/android/util/ContactConst/FOLLOWED Ljava/lang/String;
aload 6
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L119
new com/nd/android/u/contact/dataStructure/NewFans
dup
invokespecial com/nd/android/u/contact/dataStructure/NewFans/<init>()V
astore 6
aload 6
invokestatic java/lang/System/currentTimeMillis()J
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setTime(J)V
aload 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/contact/dataStructure/NewFans/setFid(J)V
ldc com/nd/android/u/contact/dao/NewFansDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/NewFansDao
aload 6
invokeinterface com/nd/android/u/contact/dao/NewFansDao/insertFans(Lcom/nd/android/u/contact/dataStructure/NewFans;)V 1
L120:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
ldc "UPDATE_NEW_FANS_FACE"
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
iload 3
istore 1
goto L46
L119:
ldc com/nd/android/u/contact/dao/NewFansDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/NewFansDao
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokeinterface com/nd/android/u/contact/dao/NewFansDao/deleteFans(J)V 2
goto L120
L45:
aload 2
ifnonnull L121
iconst_m1
ireturn
L121:
invokestatic com/nd/android/u/contact/listener/ContactDispatcher/getInstance()Lcom/nd/android/u/contact/listener/ContactDispatcher;
sipush 2000
iconst_1
invokevirtual com/nd/android/u/contact/listener/ContactDispatcher/notifyReceiveNewContact(II)V
iload 3
istore 1
goto L46
.limit locals 10
.limit stack 7
.end method

.method static synthetic access$000(Lcom/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl;JLjava/lang/String;Z)V
aload 0
lload 1
aload 3
iload 4
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/notifyGetNameResult(JLjava/lang/String;Z)V
return
.limit locals 5
.limit stack 5
.end method

.method private getAllChatGroupList()Ljava/util/List;
.signature "()Ljava/util/List<Lcom/product/android/commonInterface/chat/ChatGroup;>;"
invokestatic com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getInstance()Lcom/nd/android/u/contact/business_new/Controller/ContactOperatorFactory;
invokestatic com/nd/android/u/contact/business_new/ProcesssImpl/ProductLoaderImpl/XYGroupLoader/getInstance()Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;
invokevirtual com/nd/android/u/contact/business_new/Controller/ContactOperatorFactory/getGroupOperator(Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/LoaderInterface/IGroupLoader;)Lcom/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator;
astore 2
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 2
iconst_0
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 3
aload 3
ifnull L0
L1:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L1
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGroupKey()Ljava/lang/String; 0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L1
L0:
aload 2
iconst_3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 3
aload 3
ifnull L2
L3:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L2
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L3
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGroupKey()Ljava/lang/String; 0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDiscussionGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L3
L2:
aload 2
iconst_1
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 3
aload 3
ifnull L4
L5:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L5
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGroupKey()Ljava/lang/String; 0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L5
L4:
aload 2
iconst_2
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 3
aload 3
ifnull L6
L7:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L6
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 4
aload 4
ifnull L7
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
aload 4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGroupKey()Ljava/lang/String; 0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getDepartGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L7
L6:
aload 2
iconst_4
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/IGroupOperator/getGroupList(I)Ljava/util/Iterator; 1
astore 2
aload 2
ifnull L8
L9:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L8
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup
astore 3
aload 3
ifnull L9
aload 1
new com/product/android/commonInterface/chat/ChatGroup
dup
aload 3
invokeinterface com/nd/android/u/contact/business_new/Common/OperatorInterface/GroupInterface/IGroup/getGroupKey()Ljava/lang/String; 0
invokestatic com/product/android/commonInterface/chat/ChatGroup/getNormalGroupType()I
invokespecial com/product/android/commonInterface/chat/ChatGroup/<init>(Ljava/lang/String;I)V
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L9
L8:
aload 1
areturn
.limit locals 5
.limit stack 5
.end method

.method private notifyGetNameResult(JLjava/lang/String;Z)V
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 5
aload 5
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 5
lload 1
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_2
sipush 20078
aload 5
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
return
.limit locals 6
.limit stack 4
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch org/json/JSONException from L0 to L1 using L2
iload 1
sipush 10001
if_icmplt L3
iload 1
sipush 10099
if_icmpge L3
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessPersonInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L3:
iload 1
sipush 10101
if_icmplt L4
iload 1
sipush 10199
if_icmpge L4
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessOtherInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L4:
iload 1
sipush 10201
if_icmplt L5
iload 1
sipush 10299
if_icmpge L5
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessGroupProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L5:
iload 1
sipush 10301
if_icmplt L6
iload 1
sipush 10399
if_icmpge L6
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessGroupGetData(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L6:
iload 1
sipush 11001
if_icmplt L7
iload 1
sipush 11099
if_icmpge L7
L0:
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessNeedTimeProcess(ILcom/product/android/commonInterface/BaseCommonStruct;)I
istore 1
L1:
iload 1
ireturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
bipush -2
ireturn
L7:
iload 1
sipush 12001
if_icmpeq L8
iload 1
sipush 12002
if_icmpne L9
L8:
aload 0
iload 1
aload 2
invokespecial com/nd/android/u/contact/contactInterfaceImpl/ContactCommonInterImpl/InterProcessOtherInfo(ILcom/product/android/commonInterface/BaseCommonStruct;)I
ireturn
L9:
sipush -1001
ireturn
.limit locals 3
.limit stack 3
.end method
