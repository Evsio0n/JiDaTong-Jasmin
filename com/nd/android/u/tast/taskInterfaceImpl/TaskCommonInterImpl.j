.bytecode 50.0
.class public synchronized com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.field private 'act' Landroid/app/Activity;

.field private 'intent' Landroid/content/Intent;

.field private 'oc' Lcom/nd/android/u/tast/com/OapBirthdayCom;

.method public <init>(ZJ)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
aconst_null
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
aload 0
aconst_null
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/oc Lcom/nd/android/u/tast/com/OapBirthdayCom;
aload 0
aconst_null
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
iload 1
invokevirtual com/nd/android/u/tast/TaskGlobalVariable/setLottery(Z)V
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
lload 2
invokevirtual com/nd/android/u/tast/TaskGlobalVariable/setCustomerUid(J)V
return
.limit locals 4
.limit stack 3
.end method

.method private taskToActivity(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class;)V
.signature "(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class<*>;)V"
new android/content/Intent
dup
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
aload 2
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 4
.end method

.method private taskToLotMain(Lcom/product/android/commonInterface/BaseCommonStruct;)V
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 2
aload 0
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/tast/lottery/activity/LotMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifle L0
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
ldc "itemtype"
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L0:
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
ifeq L1
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
ldc "lotnum"
aload 1
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
l2i
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
L1:
aload 2
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
return
.limit locals 3
.limit stack 5
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L11
.catch org/json/JSONException from L10 to L12 using L13
.catch com/common/android/utils/http/HttpException from L10 to L12 using L11
.catch com/common/android/utils/http/HttpException from L12 to L14 using L11
.catch com/common/android/utils/http/HttpException from L15 to L16 using L11
.catch com/common/android/utils/http/HttpException from L17 to L18 using L19
.catch com/common/android/utils/http/HttpException from L20 to L21 using L19
.catch com/common/android/utils/http/HttpException from L21 to L22 using L19
.catch com/common/android/utils/http/HttpException from L23 to L24 using L19
.catch com/common/android/utils/http/HttpException from L24 to L25 using L19
.catch com/common/android/utils/http/HttpException from L26 to L27 using L19
.catch com/common/android/utils/http/HttpAuthException from L28 to L29 using L30
.catch com/common/android/utils/http/ResponseException from L28 to L29 using L31
.catch com/common/android/utils/http/HttpServerException from L28 to L29 using L32
.catch com/common/android/utils/http/HttpException from L28 to L29 using L33
.catch java/lang/Exception from L28 to L29 using L34
.catch com/common/android/utils/http/HttpAuthException from L35 to L36 using L30
.catch com/common/android/utils/http/ResponseException from L35 to L36 using L31
.catch com/common/android/utils/http/HttpServerException from L35 to L36 using L32
.catch com/common/android/utils/http/HttpException from L35 to L36 using L33
.catch java/lang/Exception from L35 to L36 using L34
iload 1
lookupswitch
80001 : L37
80002 : L38
80003 : L39
80004 : L40
80005 : L41
80006 : L42
80007 : L43
80008 : L44
80009 : L45
81001 : L46
81002 : L47
81003 : L48
81004 : L49
default : L50
L50:
sipush -1001
istore 1
L51:
iload 1
ireturn
L37:
aload 2
ifnull L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L52
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L53
L52:
iconst_m1
ireturn
L53:
aload 0
aload 2
ldc com/nd/android/u/tast/birthday/activity/BirthdayGiftGiverActivity
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/taskToActivity(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class;)V
iconst_0
istore 1
goto L51
L38:
aload 2
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L55
L54:
iconst_m1
ireturn
L55:
aload 0
aload 2
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/taskToLotMain(Lcom/product/android/commonInterface/BaseCommonStruct;)V
iconst_0
istore 1
goto L51
L39:
aload 2
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L57
L56:
iconst_m1
ireturn
L57:
aload 0
aload 2
ldc com/nd/android/u/tast/lottery/activity/RafflesListActivity
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/taskToActivity(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class;)V
iconst_0
istore 1
goto L51
L40:
aload 2
ifnull L58
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L58
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L59
L58:
iconst_m1
ireturn
L59:
aload 0
aload 2
ldc com/nd/android/u/tast/lottery/activity/RafflesListPublicActivity
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/taskToActivity(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class;)V
iconst_0
istore 1
goto L51
L41:
aload 2
ifnull L60
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L60
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L61
L60:
iconst_m1
ireturn
L61:
aload 0
aload 2
ldc com/nd/android/u/tast/birthday/activity/BirthdayActivity
invokespecial com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/taskToActivity(Lcom/product/android/commonInterface/BaseCommonStruct;Ljava/lang/Class;)V
iconst_0
istore 1
goto L51
L42:
aload 2
ifnull L62
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L62
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L63
L62:
iconst_m1
ireturn
L63:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 0
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/tast/experience/activity/ReceiveExpActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
aload 2
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L51
L43:
aload 2
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L65
L64:
iconst_m1
ireturn
L65:
aload 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
ldc com/nd/android/u/tast/experience/activity/DateWidgetActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 2
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
aload 2
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L51
L44:
aload 2
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L67
L66:
iconst_m1
ireturn
L67:
aload 0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
aload 0
new android/content/Intent
dup
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
ldc com/nd/android/u/tast/main/activity/TaskMainActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/act Landroid/app/Activity;
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/intent Landroid/content/Intent;
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L51
L45:
aload 2
ifnonnull L68
iconst_m1
ireturn
L68:
aload 2
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L51
L46:
aload 2
ifnull L69
lconst_0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lcmp
ifne L70
L69:
iconst_m1
ireturn
L70:
aload 0
new com/nd/android/u/tast/com/OapBirthdayCom
dup
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/<init>()V
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/oc Lcom/nd/android/u/tast/com/OapBirthdayCom;
L0:
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/oc Lcom/nd/android/u/tast/com/OapBirthdayCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/getBirthuser(J)Lorg/json/JSONObject;
astore 3
L1:
aload 3
ifnonnull L71
bipush -2
ireturn
L71:
iconst_0
istore 1
L3:
aload 3
ldc "data"
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
astore 3
L4:
aload 3
ifnonnull L7
L5:
aload 2
iconst_0
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L6:
goto L51
L7:
new com/product/android/commonInterface/task/BirthUserData
dup
aload 3
invokespecial com/product/android/commonInterface/task/BirthUserData/<init>(Lorg/json/JSONObject;)V
astore 3
aload 2
iconst_1
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
aload 2
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L8:
goto L51
L47:
aload 2
ifnull L72
lconst_0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lcmp
ifne L73
L72:
iconst_m1
ireturn
L73:
aload 0
new com/nd/android/u/tast/com/OapBirthdayCom
dup
invokespecial com/nd/android/u/tast/com/OapBirthdayCom/<init>()V
putfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/oc Lcom/nd/android/u/tast/com/OapBirthdayCom;
L9:
new com/product/android/commonInterface/task/BirthBlessResult
dup
aload 0
getfield com/nd/android/u/tast/taskInterfaceImpl/TaskCommonInterImpl/oc Lcom/nd/android/u/tast/com/OapBirthdayCom;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/lang/Long/longValue()J
invokevirtual com/nd/android/u/tast/com/OapBirthdayCom/postBlessGetJson(J)Lorg/json/JSONObject;
invokespecial com/product/android/commonInterface/task/BirthBlessResult/<init>(Lorg/json/JSONObject;)V
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L10:
aload 4
ldc "task_key_bless_fid"
aload 3
getfield com/product/android/commonInterface/task/BirthBlessResult/lUid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 4
ldc "task_key_bless_count"
aload 3
getfield com/product/android/commonInterface/task/BirthBlessResult/iBlessCount I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L12:
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 4
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual de/greenrobot/event/EventBus/post(Ljava/lang/Object;)V
L14:
aload 3
getfield com/product/android/commonInterface/task/BirthBlessResult/mbParseResult Z
ifne L74
bipush -2
ireturn
L13:
astore 5
L15:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
L16:
goto L12
L11:
astore 2
bipush -2
ireturn
L74:
iconst_0
istore 1
aload 2
aload 3
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L51
L48:
aload 2
ifnonnull L75
iconst_m1
ireturn
L75:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ifnonnull L17
ldc "TaskCommonInterImpl"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc " applicationContext is null"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
bipush -2
ireturn
L17:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getRecordMarqueeRaffles()Lcom/product/android/commonInterface/task/RafflesList;
astore 3
L18:
aload 3
ifnull L76
L20:
aload 3
invokevirtual com/product/android/commonInterface/task/RafflesList/size()I
ifeq L76
aload 5
invokeinterface java/util/List/clear()V 0
aload 3
invokevirtual com/product/android/commonInterface/task/RafflesList/iterator()Ljava/util/Iterator;
astore 6
L21:
aload 6
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L76
aload 6
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/task/Raffles
astore 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual com/product/android/commonInterface/task/Raffles/getUId()J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 8
new com/product/android/commonInterface/BaseCommonStruct
dup
invokespecial com/product/android/commonInterface/BaseCommonStruct/<init>()V
astore 3
aload 3
aload 7
invokevirtual com/product/android/commonInterface/task/Raffles/getUId()J
putfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/commonInterface/CommonInterfaceManager/INSTANCE Lcom/product/android/commonInterface/CommonInterfaceManager;
iconst_1
sipush 10301
aload 3
invokevirtual com/product/android/commonInterface/CommonInterfaceManager/CommonInterfaceID(IILcom/product/android/commonInterface/BaseCommonStruct;)I
pop
aload 3
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 4
L22:
aload 4
astore 3
L23:
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L24
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/nd/android/u/tasklib/R$string/lot_no_depart_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
astore 3
L24:
aload 5
iconst_5
anewarray java/lang/String
dup
iconst_0
aload 8
aastore
dup
iconst_1
aload 3
aastore
dup
iconst_2
aload 7
invokevirtual com/product/android/commonInterface/task/Raffles/getUserName()Ljava/lang/String;
aastore
dup
iconst_3
aload 7
invokevirtual com/product/android/commonInterface/task/Raffles/getPrize_name()Ljava/lang/String;
aastore
dup
iconst_4
aload 7
invokevirtual com/product/android/commonInterface/task/Raffles/getCreate_dt()Ljava/lang/String;
aastore
invokeinterface java/util/List/add(Ljava/lang/Object;)Z 1
pop
L25:
goto L21
L76:
iconst_0
istore 1
L26:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L27:
goto L51
L49:
aload 2
ifnull L77
lconst_0
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lcmp
ifne L78
L77:
iconst_m1
ireturn
L78:
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 3
L28:
aload 3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/tast/com/AjaxCom/getUserscore(J)Lorg/json/JSONObject;
astore 3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getOapUid()J 0
lcmp
ifne L35
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
aload 3
invokevirtual com/product/android/commonInterface/task/OapScore/setScoreData(Lorg/json/JSONObject;)V
invokestatic com/nd/android/u/tast/com/TaskComFactory/getInstance()Lcom/nd/android/u/tast/com/TaskComFactory;
invokevirtual com/nd/android/u/tast/com/TaskComFactory/getLotteryCom()Lcom/nd/android/u/tast/com/OapLotteryCom;
sipush 10000
invokevirtual com/nd/android/u/tast/com/OapLotteryCom/getItemByType(I)I
istore 1
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
iload 1
invokevirtual com/product/android/commonInterface/task/OapScore/setLotterychance(I)V
aload 2
invokestatic com/nd/android/u/tast/TaskGlobalVariable/getInstance()Lcom/nd/android/u/tast/TaskGlobalVariable;
getfield com/nd/android/u/tast/TaskGlobalVariable/mOapScore Lcom/product/android/commonInterface/task/OapScore;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L29:
goto L79
L35:
new com/product/android/commonInterface/task/OapScore
dup
invokespecial com/product/android/commonInterface/task/OapScore/<init>()V
astore 4
aload 4
aload 3
invokevirtual com/product/android/commonInterface/task/OapScore/setScoreData(Lorg/json/JSONObject;)V
aload 2
aload 4
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L36:
goto L79
L30:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpAuthException/printStackTrace()V
bipush -2
istore 1
goto L51
L31:
astore 2
aload 2
invokevirtual com/common/android/utils/http/ResponseException/printStackTrace()V
bipush -2
istore 1
goto L51
L32:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpServerException/printStackTrace()V
bipush -2
istore 1
goto L51
L33:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
bipush -2
istore 1
goto L51
L34:
astore 2
aload 2
invokevirtual java/lang/Exception/printStackTrace()V
bipush -2
istore 1
goto L51
L2:
astore 2
bipush -2
istore 1
goto L51
L19:
astore 2
bipush -2
istore 1
goto L51
L79:
iconst_0
istore 1
goto L51
.limit locals 9
.limit stack 5
.end method
