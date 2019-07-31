.bytecode 50.0
.class public final synchronized enum com/nd/android/u/tast/buss/TaskModelManager
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/tast/buss/TaskModelManager;>;"

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/tast/buss/TaskModelManager;

.field public static final enum 'INSTANCE' Lcom/nd/android/u/tast/buss/TaskModelManager;

.field private final 'DISC_CACHE_SIZE_64MB' I

.field private final 'TASK_DISC_CACHE_DIR' Ljava/lang/String;

.field public 'taskImageOptions' Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.method static <clinit>()V
new com/nd/android/u/tast/buss/TaskModelManager
dup
ldc "INSTANCE"
iconst_0
invokespecial com/nd/android/u/tast/buss/TaskModelManager/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
iconst_1
anewarray com/nd/android/u/tast/buss/TaskModelManager
dup
iconst_0
getstatic com/nd/android/u/tast/buss/TaskModelManager/INSTANCE Lcom/nd/android/u/tast/buss/TaskModelManager;
aastore
putstatic com/nd/android/u/tast/buss/TaskModelManager/$VALUES [Lcom/nd/android/u/tast/buss/TaskModelManager;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
aload 0
ldc "chat"
putfield com/nd/android/u/tast/buss/TaskModelManager/TASK_DISC_CACHE_DIR Ljava/lang/String;
aload 0
ldc_w 67108864
putfield com/nd/android/u/tast/buss/TaskModelManager/DISC_CACHE_SIZE_64MB I
aload 0
new com/nostra13/universalimageloader/core/DisplayImageOptions$Builder
dup
invokespecial com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/<init>()V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/cacheOnDisc()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
new com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache
dup
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
ldc "chat"
invokestatic com/nostra13/universalimageloader/utils/StorageUtils/getIndividualCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
ldc_w 67108864
invokespecial com/nostra13/universalimageloader/cache/disc/impl/TotalSizeLimitedDiscCache/<init>(Ljava/io/File;I)V
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/discCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;
invokevirtual com/nostra13/universalimageloader/core/DisplayImageOptions$Builder/build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
putfield com/nd/android/u/tast/buss/TaskModelManager/taskImageOptions Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
return
.limit locals 3
.limit stack 6
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/tast/buss/TaskModelManager;
ldc com/nd/android/u/tast/buss/TaskModelManager
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/tast/buss/TaskModelManager
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/tast/buss/TaskModelManager;
getstatic com/nd/android/u/tast/buss/TaskModelManager/$VALUES [Lcom/nd/android/u/tast/buss/TaskModelManager;
invokevirtual [Lcom/nd/android/u/tast/buss/TaskModelManager;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/tast/buss/TaskModelManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public getMyReceivedAward()Lcom/nd/android/u/tast/experience/bean/MoreExperienceItem;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 1
L0:
aload 1
invokevirtual com/nd/android/u/tast/com/AjaxCom/getMyReceivedAward()Lorg/json/JSONObject;
astore 3
new com/nd/android/u/tast/experience/bean/MoreExperienceItem
dup
invokespecial com/nd/android/u/tast/experience/bean/MoreExperienceItem/<init>()V
astore 2
L1:
aload 2
astore 1
aload 3
ifnull L7
L3:
aload 3
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpeq L5
L4:
aconst_null
areturn
L5:
aload 2
aload 3
ldc "exp"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setExp(I)V
aload 2
aload 3
ldc "money"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setMoney(I)V
aload 2
aload 3
ldc "flower"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setFlower(I)V
L6:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
astore 1
L7:
aload 1
areturn
.limit locals 4
.limit stack 3
.end method

.method public getPersonnalTaskSummary()Lcom/nd/android/u/tast/experience/bean/PersonalTaskSummary;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 1
L0:
aload 1
invokevirtual com/nd/android/u/tast/com/AjaxCom/getPersonnalTaskSummary()Lorg/json/JSONObject;
astore 1
L1:
aload 1
ifnonnull L3
aconst_null
areturn
L3:
aload 1
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpeq L5
L4:
aconst_null
areturn
L5:
new com/nd/android/u/tast/experience/bean/PersonalTaskSummary
dup
invokespecial com/nd/android/u/tast/experience/bean/PersonalTaskSummary/<init>()V
astore 2
aload 2
aload 1
ldc "process"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/PersonalTaskSummary/setProcess(I)V
aload 2
aload 1
ldc "summary"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/PersonalTaskSummary/setSummary(Ljava/lang/String;)V
L6:
aload 2
areturn
L2:
astore 1
aload 1
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 3
.end method

.method public getShowOff()Lcom/nd/android/u/tast/experience/bean/ShowOffBean;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 2
L0:
aload 2
invokevirtual com/nd/android/u/tast/com/AjaxCom/getShowOff()Lorg/json/JSONObject;
astore 4
L1:
aload 4
ifnonnull L3
aconst_null
areturn
L3:
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
sipush 200
if_icmpeq L5
L4:
aconst_null
areturn
L5:
new com/nd/android/u/tast/experience/bean/ShowOffBean
dup
invokespecial com/nd/android/u/tast/experience/bean/ShowOffBean/<init>()V
astore 2
aload 2
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/ShowOffBean/setMsg(Ljava/lang/String;)V
aload 2
aload 4
ldc "summary"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/ShowOffBean/setSummary(Ljava/lang/String;)V
aload 2
aload 4
ldc "level"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/ShowOffBean/setLevel(I)V
aload 2
aload 4
ldc "range"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/ShowOffBean/setRange(I)V
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 4
ldc "ranges"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
L6:
iconst_0
istore 1
L7:
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L9
new com/nd/android/u/tast/experience/bean/RangeBean
dup
invokespecial com/nd/android/u/tast/experience/bean/RangeBean/<init>()V
astore 5
aload 5
aload 4
iload 1
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
ldc "id"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
i2l
invokevirtual com/nd/android/u/tast/experience/bean/RangeBean/setId(J)V
aload 5
aload 4
iload 1
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
ldc "name"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/RangeBean/setName(Ljava/lang/String;)V
aload 3
aload 5
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L8:
iload 1
iconst_1
iadd
istore 1
goto L7
L9:
aload 2
aload 3
invokevirtual com/nd/android/u/tast/experience/bean/ShowOffBean/setRanges(Ljava/util/ArrayList;)V
L10:
aload 2
areturn
L2:
astore 2
aload 2
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
.limit locals 6
.limit stack 3
.end method

.method public getTodayTask()Lcom/nd/android/u/tast/experience/bean/TodayTaskList;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L3 to L4 using L2
.catch com/common/android/utils/http/HttpException from L5 to L6 using L2
.catch com/common/android/utils/http/HttpException from L7 to L8 using L2
.catch com/common/android/utils/http/HttpException from L9 to L10 using L2
.catch com/common/android/utils/http/HttpException from L11 to L12 using L2
.catch com/common/android/utils/http/HttpException from L12 to L13 using L2
.catch com/common/android/utils/http/HttpException from L14 to L15 using L2
.catch com/common/android/utils/http/HttpException from L16 to L17 using L2
.catch com/common/android/utils/http/HttpException from L18 to L19 using L2
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 3
L0:
aload 3
invokevirtual com/nd/android/u/tast/com/AjaxCom/getTodayTask()Lorg/json/JSONObject;
astore 4
L1:
aload 4
ifnonnull L3
aconst_null
areturn
L3:
aload 4
ldc "code"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
istore 1
L4:
iload 1
sipush 200
if_icmpeq L5
aconst_null
areturn
L5:
new com/nd/android/u/tast/experience/bean/TodayTaskList
dup
invokespecial com/nd/android/u/tast/experience/bean/TodayTaskList/<init>()V
astore 3
aload 3
iload 1
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setCode(I)V
aload 3
aload 4
ldc "msg"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setMsg(Ljava/lang/String;)V
aload 3
aload 4
ldc "process"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setProgress(I)V
aload 3
aload 4
ldc "level"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setLevel(I)V
aload 3
aload 4
ldc "exp"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setExp(I)V
aload 3
aload 4
ldc "exp_up"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setExpUp(I)V
aload 3
aload 4
ldc "range"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setRange(Ljava/lang/String;)V
aload 3
aload 4
ldc "reward"
invokestatic com/common/android/utils/JSONUtils/getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setReward(Ljava/lang/String;)V
aload 3
aload 4
ldc "exp_rec"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setExpRec(I)V
aload 3
aload 4
ldc "money_rec"
invokestatic com/common/android/utils/JSONUtils/getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setMoneyRec(I)V
aload 4
ldc "tasks"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
L6:
iconst_0
istore 1
L7:
iload 1
aload 4
invokevirtual org/json/JSONArray/length()I
if_icmpge L18
aload 4
iload 1
invokevirtual org/json/JSONArray/optJSONObject(I)Lorg/json/JSONObject;
astore 6
aload 6
ldc "isopen"
iconst_2
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
iconst_1
if_icmpeq L9
L8:
goto L20
L9:
new com/nd/android/u/tast/experience/bean/MoreExperienceItem
dup
invokespecial com/nd/android/u/tast/experience/bean/MoreExperienceItem/<init>()V
astore 7
aload 7
aload 6
ldc "itemcode"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemCode(Ljava/lang/String;)V
aload 7
aload 6
ldc "itemname"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemname(Ljava/lang/String;)V
aload 7
aload 6
ldc "itemdesc"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setmItemDesc(Ljava/lang/String;)V
aload 7
aload 6
ldc "scoretype"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setScoreType(I)V
aload 7
aload 6
ldc "exp"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setExp(I)V
aload 7
aload 6
ldc "money"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setMoney(I)V
aload 7
aload 6
ldc "flower"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setFlower(I)V
aload 7
aload 6
ldc "type"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setType(I)V
aload 7
aload 6
ldc "condition"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setCondition(Ljava/lang/String;)V
aload 7
aload 6
ldc "expiredate"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setExpiredate(Ljava/lang/String;)V
aload 7
aload 6
ldc "partakers"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setParttakers(Ljava/lang/String;)V
aload 7
aload 6
ldc "condition_m"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setConditionM(I)V
aload 7
aload 6
ldc "condition_n"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setConditionN(I)V
aload 6
ldc "status"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
istore 2
L10:
iload 2
iconst_1
if_icmpne L21
L11:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FINISH Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L12:
aload 7
aload 6
ldc "statusimg"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatusImg(I)V
aload 7
aload 6
ldc "times"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setTimes(I)V
aload 7
aload 6
ldc "url"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setUrl(Ljava/lang/String;)V
aload 7
aload 6
ldc "itemid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setItemid(J)V
aload 7
aload 6
ldc "isnew"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setIsnew(I)V
aload 5
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L13:
goto L20
L2:
astore 3
aload 3
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
aconst_null
areturn
L21:
iload 2
iconst_2
if_icmpne L16
L14:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/FAIL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L15:
goto L12
L16:
aload 7
getstatic com/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS/NORMAL Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;
invokevirtual com/nd/android/u/tast/experience/bean/MoreExperienceItem/setStatus(Lcom/nd/android/u/tast/experience/activity/DateWidgetActivity$MORE_EXP_STATUS;)V
L17:
goto L12
L18:
aload 3
aload 5
invokevirtual com/nd/android/u/tast/experience/bean/TodayTaskList/setItemList(Ljava/util/ArrayList;)V
L19:
aload 3
areturn
L20:
iload 1
iconst_1
iadd
istore 1
goto L7
.limit locals 8
.limit stack 3
.end method

.method public postTaskNewStatus(JI)I
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch org/json/JSONException from L0 to L1 using L3
.catch com/common/android/utils/http/HttpException from L4 to L5 using L2
.catch org/json/JSONException from L4 to L5 using L3
new com/nd/android/u/tast/com/AjaxCom
dup
invokespecial com/nd/android/u/tast/com/AjaxCom/<init>()V
astore 4
L0:
aload 4
lload 1
iload 3
invokevirtual com/nd/android/u/tast/com/AjaxCom/postTaskNewStatus(JI)Lorg/json/JSONObject;
astore 4
L1:
aload 4
ifnonnull L4
iconst_0
ireturn
L4:
aload 4
ldc "code"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 3
L5:
iload 3
ireturn
L2:
astore 4
aload 4
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_0
ireturn
L3:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
iconst_0
ireturn
.limit locals 5
.limit stack 4
.end method
