.bytecode 50.0
.class public synchronized com/android/u/weibo/weiboInterfaceImpl/WeiboCommonInterImpl
.super java/lang/Object
.implements com/product/android/commonInterface/ICommonInterObserver

.method public <init>(ZZZZZ)V
aload 0
invokespecial java/lang/Object/<init>()V
iload 1
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedLottery Z
iload 2
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedAlbum Z
iload 3
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedContactInfo Z
iload 4
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mIsShow3D Z
iload 5
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/gIsNeedSecretLove Z
return
.limit locals 6
.limit stack 1
.end method

.method public onCommonInterModelProc(ILcom/product/android/commonInterface/BaseCommonStruct;)I
.catch java/lang/NumberFormatException from L0 to L1 using L2
.catch com/android/u/weibo/weibo/controller/WeiBoException from L3 to L4 using L5
.catch com/android/u/weibo/weibo/controller/WeiBoException from L6 to L7 using L8
.catch com/android/u/weibo/weibo/controller/WeiBoException from L9 to L10 using L11
.catch com/android/u/weibo/weibo/controller/WeiBoException from L12 to L13 using L14
.catch com/android/u/weibo/weibo/controller/WeiBoException from L15 to L16 using L17
.catch com/android/u/weibo/weibo/controller/WeiBoException from L18 to L19 using L20
.catch com/android/u/weibo/weibo/controller/WeiBoException from L21 to L22 using L20
.catch com/android/u/weibo/weibo/controller/WeiBoException from L23 to L24 using L20
.catch com/android/u/weibo/weibo/controller/WeiBoException from L25 to L26 using L27
.catch org/json/JSONException from L25 to L26 using L28
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
astore 8
aload 8
ifnonnull L29
ldc "WeiboCommonInterImpl"
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
L29:
iload 1
lookupswitch
30001 : L30
30002 : L31
30003 : L32
30004 : L33
30100 : L34
30201 : L35
31001 : L36
31002 : L37
31003 : L38
31004 : L39
31005 : L40
31006 : L41
31007 : L42
31008 : L43
31101 : L44
31102 : L45
31103 : L6
31104 : L46
31105 : L47
32101 : L48
32102 : L49
32103 : L50
32104 : L51
32105 : L52
32106 : L53
default : L54
L54:
sipush -1001
istore 1
L55:
iload 1
ireturn
L48:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L56
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokestatic com/android/u/weibo/weibo/utils/WeiboActivityUtils/toTweetProfileActivity(Landroid/content/Context;JI)V
iconst_0
istore 1
goto L55
L56:
iconst_m1
istore 1
goto L55
L35:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L57
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L57
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 6
aload 6
invokestatic com/common/android/utils/NetWorkUtils/JudgeNetWorkStatus(Landroid/content/Context;)Z
ifne L58
getstatic com/android/u/weibo/R$string/net_warn_no_network I
invokestatic com/common/android/utils/ToastUtils/display(I)V
bipush -3
istore 1
goto L55
L58:
aconst_null
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof com/product/android/commonInterface/weibo/ISendFlowerDialogListener
ifeq L59
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/ISendFlowerDialogListener
astore 5
L59:
new com/android/u/weibo/flower/ui/dialog/SendFlowerDialog
dup
aload 6
aload 5
invokespecial com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/<init>(Landroid/content/Context;Lcom/product/android/commonInterface/weibo/ISendFlowerDialogListener;)V
astore 5
L0:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokestatic java/lang/Integer/parseInt(Ljava/lang/String;)I
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFlowerNum I
L1:
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
i2l
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mItemId J
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
putfield com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/mFromBackSys Z
aload 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/flower/ui/dialog/SendFlowerDialog/showDialog(J)V
iconst_0
istore 1
goto L55
L57:
iconst_m1
istore 1
goto L55
L44:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 5
aload 5
ifnull L60
aload 5
arraylength
iconst_4
if_icmpne L60
L3:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 5
iconst_0
iaload
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 5
iconst_1
iaload
aload 5
iconst_2
iaload
aload 5
iconst_3
iaload
i2l
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerRank(IJIIJ)Ljava/util/ArrayList;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L4:
iconst_0
istore 1
goto L55
L5:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
bipush -2
istore 1
goto L55
L60:
iconst_m1
istore 1
goto L55
L45:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
iconst_2
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getFlowerMessageInfo(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L61
iconst_0
istore 1
goto L55
L61:
bipush -2
istore 1
goto L55
L6:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getUserFlowerInfo(J)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
L7:
iconst_0
istore 1
goto L55
L8:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
bipush -2
istore 1
goto L55
L36:
aconst_null
astore 6
aload 8
getstatic com/android/u/weibo/R$string/follow_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 5
L9:
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/followNd(J)Ljava/util/ArrayList;
astore 7
L10:
aload 7
astore 6
L62:
aload 6
ifnull L63
aload 6
invokeinterface java/util/List/size()I 0
ifle L63
iconst_0
istore 1
aload 2
aload 8
getstatic com/android/u/weibo/R$string/follow_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L11:
astore 7
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L64
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/getMessage()Ljava/lang/String;
astore 5
L64:
aload 7
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L62
L63:
bipush -2
istore 1
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L42:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L65
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/util/List
ifne L66
L65:
iconst_m1
ireturn
L66:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/util/List
astore 7
aconst_null
astore 5
L12:
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 7
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/followNd(Ljava/util/List;)Ljava/util/ArrayList;
astore 6
L13:
aload 6
astore 5
L67:
aload 5
ifnull L68
aload 5
invokeinterface java/util/List/size()I 0
ifle L68
iconst_0
istore 1
aload 7
invokeinterface java/util/List/size()I 0
aload 5
invokeinterface java/util/List/size()I 0
if_icmpne L69
iconst_1
istore 4
L70:
aload 2
iload 4
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
goto L55
L14:
astore 6
aload 6
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L67
L69:
iconst_0
istore 4
goto L70
L68:
bipush -2
istore 1
goto L55
L37:
aconst_null
astore 5
L15:
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/unFollowNd(J)Lcom/product/android/commonInterface/weibo/IdolList;
astore 6
L16:
aload 6
astore 5
L71:
aload 5
ifnull L72
aload 5
invokeinterface java/util/List/size()I 0
ifle L72
iconst_0
istore 1
aload 2
aload 8
getstatic com/android/u/weibo/R$string/unfollow_success I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L17:
astore 6
aload 6
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L71
L72:
bipush -2
istore 1
aload 2
aload 8
getstatic com/android/u/weibo/R$string/unfollow_error I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L39:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/checkUidIsMyFolling(J)Z
putfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
iconst_0
istore 1
goto L55
L38:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 5
aload 5
ifnull L73
aload 5
arraylength
iconst_2
if_icmpne L73
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 5
iconst_1
iaload
aload 5
iconst_0
iaload
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getCommonFriend(II)Ljava/util/ArrayList;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L74
iconst_0
istore 1
goto L55
L74:
bipush -2
istore 1
goto L55
L73:
iconst_m1
istore 1
goto L55
L30:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof java/lang/String
ifeq L75
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
instanceof java/util/ArrayList
ifeq L75
new android/content/Intent
dup
aload 8
ldc com/android/u/weibo/weibo/controller/PostTweetService
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L76
aload 5
ldc "content"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast java/lang/String
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
L76:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L77
aload 5
ldc "img_paths"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast java/util/ArrayList
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
pop
L77:
aload 5
ldc "localCreateAt"
invokestatic java/util/Calendar/getInstance()Ljava/util/Calendar;
invokevirtual java/util/Calendar/getTimeInMillis()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 8
aload 5
invokevirtual android/content/Context/startService(Landroid/content/Intent;)Landroid/content/ComponentName;
pop
iconst_0
istore 1
goto L55
L75:
iconst_m1
istore 1
goto L55
L46:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getRankAdData()Ljava/util/List;
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
ifnull L78
iconst_0
istore 1
goto L55
L78:
bipush -2
istore 1
goto L55
L40:
aload 8
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/delIdol(J)V
iconst_0
istore 1
goto L55
L49:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
checkcast [I
checkcast [I
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L79
aload 5
ifnull L79
aload 5
arraylength
iconst_2
if_icmpne L79
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 6
new android/content/Intent
dup
aload 6
ldc com/android/u/weibo/cropimage/ui/activity/CropImageActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 7
aload 7
aload 6
ldc com/android/u/weibo/cropimage/ui/activity/CropImageActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 7
ldc "outputX"
aload 5
iconst_0
iaload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 7
ldc "outputY"
aload 5
iconst_1
iaload
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;I)Landroid/content/Intent;
pop
aload 7
ldc "mCropUri"
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
aload 7
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
iconst_0
istore 1
goto L55
L79:
iconst_m1
istore 1
goto L55
L50:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L80
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/content/Context
ifne L81
L80:
iconst_m1
istore 1
goto L55
L81:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/content/Context
astore 2
new android/content/Intent
dup
aload 2
ldc com/android/u/weibo/flower/ui/activity/SendFlowerManagerActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
astore 5
aload 5
ldc "uid"
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;J)Landroid/content/Intent;
pop
aload 2
aload 5
invokevirtual android/content/Context/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L55
L51:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L82
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifne L83
L82:
iconst_m1
istore 1
goto L55
L83:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 5
aload 5
new android/content/Intent
dup
aload 5
ldc com/android/u/weibo/weibo/ui/activity/ContactListActivity
invokespecial android/content/Intent/<init>(Landroid/content/Context;Ljava/lang/Class;)V
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual android/app/Activity/startActivityForResult(Landroid/content/Intent;I)V
iconst_0
istore 1
goto L55
L41:
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFollowingList()Ljava/util/ArrayList;
astore 5
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 6
aload 5
ifnull L84
iconst_0
istore 1
aload 5
invokevirtual java/util/ArrayList/size()I
istore 3
L85:
iload 1
iload 3
if_icmpge L84
aload 6
aload 5
iload 1
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast com/product/android/commonInterface/weibo/Idol
getfield com/product/android/commonInterface/weibo/Idol/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L85
L84:
aload 2
aload 6
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
iconst_0
istore 1
goto L55
L31:
aload 2
ifnonnull L86
iconst_m1
ireturn
L86:
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
ifle L87
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iadd
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
L87:
iconst_0
istore 1
goto L55
L32:
aload 2
ifnonnull L88
iconst_m1
ireturn
L88:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/flowerNum I
iconst_0
istore 1
goto L55
L33:
aload 2
ifnonnull L89
iconst_m1
ireturn
L89:
aload 2
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/iPara I
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getItemCountInBacksystem(I)I
putfield com/product/android/commonInterface/BaseCommonStruct/iPara I
iconst_0
istore 1
goto L55
L47:
aload 2
ifnull L90
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifne L18
L90:
iconst_m1
ireturn
L18:
aload 8
invokestatic com/android/u/weibo/weibo/controller/NdWeiboManager/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/controller/NdWeiboManager;
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
iconst_2
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboManager/getFlowerMessage(JI)Lcom/product/android/commonInterface/weibo/FlowerMessageInfo;
astore 5
L19:
aload 5
ifnonnull L91
bipush -2
istore 1
goto L55
L91:
iconst_0
istore 3
iload 3
istore 1
L21:
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/contentType I
ifne L55
L22:
iload 3
istore 1
L23:
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L55
aload 2
aload 5
getfield com/product/android/commonInterface/weibo/FlowerMessageInfo/msg_text Ljava/lang/String;
putfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
L24:
iload 3
istore 1
goto L55
L20:
astore 2
aload 2
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
bipush -2
istore 1
goto L55
L34:
aload 2
ifnonnull L92
iconst_m1
ireturn
L92:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/bPara Z
putstatic com/android/u/weibo/weibo/controller/GlobalSetting/mMyTweetRefresh Z
iconst_0
istore 1
goto L55
L52:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L93
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 5
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 6
aload 6
aload 5
ldc com/android/u/weibo/weibo/ui/activity/HashtagsListActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 6
ldc "tags_name"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L55
L93:
iconst_m1
istore 1
goto L55
L43:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
lconst_0
lcmp
ifeq L94
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L94
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof com/product/android/business/bean/PagingParams
ifne L95
L94:
iconst_m1
ireturn
L95:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast com/product/android/business/bean/PagingParams
astore 6
aconst_null
astore 5
L25:
new com/android/u/weibo/weibo/business/comm/NdRelationSdk
dup
invokespecial com/android/u/weibo/weibo/business/comm/NdRelationSdk/<init>()V
aload 8
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/lPara J
aload 6
invokevirtual com/android/u/weibo/weibo/business/comm/NdRelationSdk/getFans(Landroid/content/Context;JLcom/product/android/business/bean/PagingParams;)Lcom/product/android/commonInterface/weibo/IdolList;
astore 6
L26:
aload 6
astore 5
L96:
aload 5
ifnull L97
iconst_0
istore 1
aload 2
aload 5
putfield com/product/android/commonInterface/BaseCommonStruct/obj2 Ljava/lang/Object;
goto L55
L27:
astore 6
aload 6
invokevirtual com/android/u/weibo/weibo/controller/WeiBoException/printStackTrace()V
goto L96
L28:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L96
L97:
bipush -2
istore 1
goto L55
L53:
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
instanceof android/app/Activity
ifeq L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
ifnull L98
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/obj1 Ljava/lang/Object;
checkcast android/app/Activity
astore 5
new java/io/File
dup
aload 2
getfield com/product/android/commonInterface/BaseCommonStruct/sPara Ljava/lang/String;
invokespecial java/io/File/<init>(Ljava/lang/String;)V
invokestatic android/net/Uri/fromFile(Ljava/io/File;)Landroid/net/Uri;
astore 2
new android/content/Intent
dup
invokespecial android/content/Intent/<init>()V
astore 6
aload 6
aload 5
ldc com/android/u/weibo/weibo/ui/activity/TweetComposeActivity
invokevirtual android/content/Intent/setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
pop
aload 6
ldc "android.intent.action.SEND"
invokevirtual android/content/Intent/setAction(Ljava/lang/String;)Landroid/content/Intent;
pop
aload 6
ldc "android.intent.extra.STREAM"
aload 2
invokevirtual android/content/Intent/putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
pop
aload 5
aload 6
invokevirtual android/app/Activity/startActivity(Landroid/content/Intent;)V
iconst_0
istore 1
goto L55
L98:
iconst_m1
istore 1
goto L55
L2:
astore 6
goto L1
.limit locals 9
.limit stack 9
.end method
