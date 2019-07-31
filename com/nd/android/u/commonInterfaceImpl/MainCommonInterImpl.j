.bytecode 50.0
.class public synchronized com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver
.inner class inner com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L5
.catch com/common/android/utils/http/HttpException from L6 to L7 using L5
.catch com/common/android/utils/http/HttpException from L8 to L9 using L5
.catch com/common/android/utils/http/HttpException from L10 to L11 using L5
.catch com/common/android/utils/http/HttpException from L12 to L13 using L14
iconst_0
istore 3
iload 1
lookupswitch
90002 : L15
90003 : L16
90005 : L17
90006 : L18
90008 : L19
91001 : L20
91002 : L21
91006 : L22
91007 : L23
91008 : L24
91009 : L25
92001 : L26
92002 : L27
92003 : L28
92004 : L29
92007 : L30
92008 : L31
92009 : L32
92010 : L33
92011 : L34
92015 : L35
92101 : L36
92102 : L37
92103 : L38
default : L39
L39:
sipush -1001
istore 1
L40:
iload 1
ireturn
L15:
aload 2
ifnull L41
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L41
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/widget/ImageView
ifne L42
L41:
iconst_m1
ireturn
L42:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/widget/ImageView
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ldc "f64"
invokestatic com/nd/android/u/contact/business/SynOapApp/getMenuIconUrl(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
astore 6
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
aload 6
invokestatic com/nd/android/u/image/SimpleHeadImageLoader/display(Landroid/widget/ImageView;JILjava/lang/String;Ljava/lang/String;)V
iconst_0
istore 1
goto L40
L16:
aload 2
invokestatic com/nd/android/u/cloud/OapApplication/getmProfileUserShowImageCacheManager()Lcom/nd/android/u/image/ProfileUserShowImageCacheManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/nd/android/u/image/ProfileUserShowImageCacheManager/hasShowUpdateTime(J)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L40
L17:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
invokestatic com/nd/android/u/cloud/LoginManager/getBusinessInfo(Lcom/product/android/business/login/BindUser;)V
iload 3
istore 1
goto L40
L18:
aload 2
ifnull L43
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L43
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L44
L43:
iconst_m1
ireturn
L44:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 5
new android/content/Intent
dup
aload 5
ldc com/nd/android/u/cloud/activity/SendFlowerTaskActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifle L45
aload 6
ldc "itemid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
L45:
aload 6
ldc "flowernum"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L46
iconst_0
istore 1
L0:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
istore 4
L1:
iload 4
istore 1
L47:
aload 6
ldc "defaultflowernum"
iload 1
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
L46:
aload 5
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iload 3
istore 1
goto L40
L2:
astore 2
aload 2
invokevirtual java/lang/NumberFormatException/printStackTrace()V
goto L47
L20:
aload 2
ifnull L48
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L48
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/business/bean/UserInfo
ifne L49
L48:
iconst_m1
ireturn
L49:
bipush -2
istore 3
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/business/bean/UserInfo
astore 6
ldc com/nd/android/u/contact/dao/UserInfoDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/UserInfoDao
astore 7
aconst_null
astore 5
aload 7
ifnull L50
aload 7
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/findUserInfo()Lcom/product/android/business/login/BindUser; 0
astore 5
L50:
aload 5
ifnonnull L51
new com/nd/android/u/contact/com/OapUserCom
dup
invokespecial com/nd/android/u/contact/com/OapUserCom/<init>()V
astore 8
aload 8
aload 6
invokevirtual com/product/android/business/bean/UserInfo/getSessionId()Ljava/lang/String;
invokevirtual com/nd/android/u/contact/com/OapUserCom/setSid(Ljava/lang/String;)V
L3:
aload 8
aload 6
invokevirtual com/product/android/business/bean/UserInfo/getOapUid()J
invokevirtual com/nd/android/u/contact/com/OapUserCom/getBindUserInfo(J)Lcom/product/android/business/login/BindUser;
astore 6
L4:
iload 3
istore 1
aload 6
astore 5
aload 6
ifnull L52
aload 6
astore 5
L6:
aload 6
invokestatic com/nd/android/u/cloud/LoginManager/getBusinessInfo(Lcom/product/android/business/login/BindUser;)V
L7:
aload 6
astore 5
L8:
aload 6
iconst_0
invokevirtual com/product/android/business/login/BindUser/setIsgetall(I)V
L9:
aload 6
astore 5
L10:
aload 7
aload 6
invokeinterface com/nd/android/u/contact/dao/UserInfoDao/insertUserInfo(Lcom/product/android/business/login/BindUser;)J 1
pop2
L11:
iconst_0
istore 1
aload 6
astore 5
L52:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L40
L5:
astore 6
ldc "MAIN_GET_CURRENT_USER_91001"
aload 6
invokevirtual com/common/android/utils/http/HttpException/getMessage()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
iload 3
istore 1
goto L52
L51:
iconst_0
istore 1
goto L52
L21:
bipush -2
istore 3
iload 3
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
invokestatic ims/utils/CommUtil/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifeq L40
iload 3
istore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
ifne L40
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/setExpiredSid()V
invokestatic com/nd/android/u/cloud/LoginManager/loginauthentication()I
ifne L53
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
iconst_0
putfield com/product/android/business/ApplicationVariable/isIdentityExpired Z
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getLocalSid()Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L40
L53:
bipush -2
istore 1
goto L40
L26:
aload 2
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L54
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L55
L54:
iconst_m1
ireturn
L55:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
invokestatic com/nd/android/u/cloud/helper/Utils/clearAccountInfo(Landroid/content/Context;)V
getstatic com/nd/rj/common/login/jobnumber/JobNumberLoginManager/INSTANCE Lcom/nd/rj/common/login/jobnumber/JobNumberLoginManager;
aload 2
aconst_null
new com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1
dup
aload 0
aload 2
invokespecial com/nd/android/u/commonInterfaceImpl/MainCommonInterImpl$1/<init>(Lcom/nd/android/u/commonInterfaceImpl/MainCommonInterImpl;Landroid/content/Context;)V
invokevirtual com/nd/rj/common/login/jobnumber/JobNumberLoginManager/callLoginActivity(Landroid/content/Context;Landroid/os/Bundle;Lcom/nd/rj/common/login/jobnumber/LoginResultCallback;)V
iconst_0
istore 1
goto L40
L27:
aload 2
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L57
L56:
iconst_m1
ireturn
L57:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 5
new android/content/Intent
dup
aload 5
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 7
aload 7
ldc "id"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
aload 7
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 6
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L34:
aload 2
ifnull L58
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L58
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L59
L58:
iconst_m1
ireturn
L59:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/cloud/activity/MainFrameActivty
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "id"
iconst_4
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 5
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
aload 5
ldc_w 335544320
invokevirtual android/content/Intent/setFlags(I)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L28:
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
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/tast/experience/activity/ReceiveExperienceActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L29:
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
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 2
ldc com/nd/android/u/cloud/activity/SuggestSubitopinionActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L36:
aload 2
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L64
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L65
L64:
iconst_m1
ireturn
L65:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 2
ldc com/nd/android/u/cloud/activity/TestingInfoActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L30:
aload 2
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L66
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L67
L66:
iconst_m1
ireturn
L67:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 2
ldc com/nd/android/u/cloud/activity/friendRcmmnd/PersonCircleActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L32:
aload 2
ifnull L68
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L68
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L69
L68:
iconst_m1
ireturn
L69:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 6
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 6
ldc com/nd/android/u/cloud/activity/friendRcmmnd/FriendRecommendActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
ifle L70
new android/os/Bundle
dup
invokespecial android/os/Bundle/<init>()V
astore 6
aload 6
ldc "APPID"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/os/Bundle/putInt(Ljava/lang/String;I)V
aload 6
ldc "APPCODE"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual android/os/Bundle/putString(Ljava/lang/String;Ljava/lang/String;)V
aload 5
aload 6
invokevirtual android/content/Intent/putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
pop
L70:
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L40
L31:
aload 2
ifnull L71
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L71
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifeq L71
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L72
L71:
iconst_m1
ireturn
L72:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 5
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 6
aload 6
ldc "lUid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 6
aload 5
ldc com/nd/android/u/cloud/activity/OtherContactActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L33:
aload 2
ifnull L73
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L73
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L74
L73:
iconst_m1
ireturn
L74:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 5
aload 5
aload 2
ldc com/nd/android/u/cloud/activity/findfriends/FindFriendsActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L19:
aload 2
ifnull L75
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L76
L75:
iconst_m1
ireturn
L76:
new com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind
dup
invokespecial com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/<init>()V
astore 5
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/displayContent Ljava/lang/String;
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/oriMessage Ljava/lang/String;
aload 5
getstatic com/product/android/business/config/Configuration/MYAPPID I
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/appId I
aload 5
getstatic com/product/android/business/config/Configuration/BIRTHDAYREMINDCODE Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/appCode Ljava/lang/String;
aload 5
iconst_3
invokestatic ims/utils/CommUtil/generate(I)Ljava/lang/String;
putfield com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/generateId Ljava/lang/String;
aload 5
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/computeDate()V
invokestatic com/nd/android/u/controller/observer/MessageDispatcher/getInstance()Lcom/nd/android/u/controller/observer/MessageDispatcher;
aload 5
invokevirtual com/nd/android/u/cloud/customapplication/DisplayMessage_App_BirthdayRemind/getProccessInterface()Lcom/nd/android/u/controller/innerInterface/IMessageProccess;
iconst_0
invokevirtual com/nd/android/u/controller/observer/MessageDispatcher/dispatchMessage(Lcom/nd/android/u/controller/innerInterface/IMessageProccess;Z)V
iload 3
istore 1
goto L40
L22:
aload 2
ifnonnull L77
iconst_m1
ireturn
L77:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokestatic com/nd/android/u/cloud/manager/AppMenuManager/getAppMenu(J)Lcom/product/android/commonInterface/main/AppMenu;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
iload 3
istore 1
goto L40
L37:
aload 2
ifnull L78
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L78
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L79
L78:
iconst_m1
ireturn
L79:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 5
aload 5
new android/content/Intent
dup
aload 5
ldc com/nd/address/ui/AddressSelector
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
iconst_0
istore 1
goto L40
L38:
aload 2
ifnull L80
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L80
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L81
L80:
iconst_m1
ireturn
L81:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 5
new android/content/Intent
dup
aload 5
ldc com/nd/android/u/cloud/activity/SeniorApplyActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 6
aload 6
ldc "apply"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
pop
aload 6
ldc "uid"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L23:
aload 2
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L83
L82:
iconst_m1
ireturn
L83:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getHometownByCode(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
iconst_0
istore 1
goto L40
L24:
aload 2
ifnull L84
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnonnull L85
L84:
iconst_m1
ireturn
L85:
aload 2
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic com/nd/android/u/cloud/helper/Utils/getSchoolNameByCode(Ljava/lang/String;)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
iconst_0
istore 1
goto L40
L35:
aload 2
ifnull L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L86
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L87
L86:
iconst_m1
ireturn
L87:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
aload 2
new android/content/Intent
dup
aload 2
ldc com/nd/android/u/cloud/activity/UnicomFlowReceiveActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L40
L25:
aload 2
ifnonnull L12
iconst_m1
ireturn
L12:
aload 2
new com/nd/android/u/cloud/com/OapWoflowBagCom
dup
invokespecial com/nd/android/u/cloud/com/OapWoflowBagCom/<init>()V
invokevirtual com/nd/android/u/cloud/com/OapWoflowBagCom/judgeOpenWoflowBag()Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
L13:
iconst_0
istore 1
goto L40
L14:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
bipush -2
istore 1
goto L40
.limit locals 9
.limit stack 7
.end method
