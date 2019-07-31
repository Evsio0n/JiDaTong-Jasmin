.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/cache/UserCacheManager
.super java/lang/Object
.inner class static synthetic inner com/nd/android/u/contact/cache/UserCacheManager$1
.inner class private GetUserTask inner com/nd/android/u/contact/cache/UserCacheManager$GetUserTask outer com/nd/android/u/contact/cache/UserCacheManager
.inner class private static Params inner com/nd/android/u/contact/cache/UserCacheManager$Params outer com/nd/android/u/contact/cache/UserCacheManager

.field public static final 'EXTRA_USER' Ljava/lang/String; = "extra_user"

.field public static final 'EXTRA_USER_FID' Ljava/lang/String; = "extra_user_fid"

.field private static final 'TAG' Ljava/lang/String; = "UserCacheManager"

.field private static 'instance' Lcom/nd/android/u/contact/cache/UserCacheManager;

.field private static 'mCache' Ljava/util/Map; signature "Ljava/util/Map<Ljava/lang/Long;Lcom/product/android/commonInterface/contact/OapUser;>;"

.field private 'mCallbackMap' Ljava/util/HashMap; signature "Ljava/util/HashMap<Ljava/lang/Long;Lcom/nd/android/u/contact/cache/ProfileUserCacheCallback;>;"

.field private 'mTask' Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;

.field private 'mUserList' Ljava/util/concurrent/BlockingQueue; signature "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Long;>;"

.method static <clinit>()V
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
new com/nd/android/u/contact/cache/UserCacheManager
dup
invokespecial com/nd/android/u/contact/cache/UserCacheManager/<init>()V
putstatic com/nd/android/u/contact/cache/UserCacheManager/instance Lcom/nd/android/u/contact/cache/UserCacheManager;
return
.limit locals 0
.limit stack 2
.end method

.method private <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new java/util/concurrent/ArrayBlockingQueue
dup
bipush 50
invokespecial java/util/concurrent/ArrayBlockingQueue/<init>(I)V
putfield com/nd/android/u/contact/cache/UserCacheManager/mUserList Ljava/util/concurrent/BlockingQueue;
aload 0
new java/util/HashMap
dup
invokespecial java/util/HashMap/<init>()V
putfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
aload 0
new com/nd/android/u/contact/cache/UserCacheManager$GetUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/<init>(Lcom/nd/android/u/contact/cache/UserCacheManager;Lcom/nd/android/u/contact/cache/UserCacheManager$1;)V
putfield com/nd/android/u/contact/cache/UserCacheManager/mTask Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;
invokestatic de/greenrobot/event/EventBus/getDefault()Lde/greenrobot/event/EventBus;
aload 0
ldc com/nd/android/u/contact/cache/UserCacheManager$Params
iconst_0
anewarray java/lang/Class
invokevirtual de/greenrobot/event/EventBus/register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
return
.limit locals 1
.limit stack 5
.end method

.method static synthetic access$100(Lcom/nd/android/u/contact/cache/UserCacheManager;)Ljava/util/concurrent/BlockingQueue;
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mUserList Ljava/util/concurrent/BlockingQueue;
areturn
.limit locals 1
.limit stack 1
.end method

.method private doGetUser(J)V
.catch java/lang/InterruptedException from L0 to L1 using L2
.catch java/lang/RuntimeException from L3 to L4 using L5
.catch java/lang/RuntimeException from L6 to L7 using L5
lload 1
ldc2_w -1L
lcmp
ifeq L1
L0:
aload 0
lload 1
invokespecial com/nd/android/u/contact/cache/UserCacheManager/putFId(J)V
L1:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mTask Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/getState()Ljava/lang/Thread$State;
astore 3
L3:
getstatic java/lang/Thread$State/NEW Ljava/lang/Thread$State;
aload 3
if_acmpne L6
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mTask Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/start()V
L4:
return
L2:
astore 3
aload 3
invokevirtual java/lang/InterruptedException/printStackTrace()V
goto L1
L6:
getstatic java/lang/Thread$State/TERMINATED Ljava/lang/Thread$State;
aload 3
if_acmpne L4
aload 0
new com/nd/android/u/contact/cache/UserCacheManager$GetUserTask
dup
aload 0
aconst_null
invokespecial com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/<init>(Lcom/nd/android/u/contact/cache/UserCacheManager;Lcom/nd/android/u/contact/cache/UserCacheManager$1;)V
putfield com/nd/android/u/contact/cache/UserCacheManager/mTask Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mTask Lcom/nd/android/u/contact/cache/UserCacheManager$GetUserTask;
invokevirtual com/nd/android/u/contact/cache/UserCacheManager$GetUserTask/start()V
L7:
return
L5:
astore 3
aload 3
invokevirtual java/lang/RuntimeException/printStackTrace()V
return
.limit locals 4
.limit stack 5
.end method

.method private getCurrentUser()Lcom/product/android/commonInterface/contact/OapUser;
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Error from L0 to L1 using L3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lstore 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 4
aload 4
ifnonnull L4
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 3
aload 3
lload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 3
areturn
L4:
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L5
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
L6:
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getAddr()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setAddress(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getBirthday()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setBirthday(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getBlood()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setBlood(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getDescription()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setDescription(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getDuty()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setDuty(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getEmail()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setEmail(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getFax()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setFax(Ljava/lang/String;)V
L0:
aload 4
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
ifnull L1
ldc ""
aload 4
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L1
aload 4
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokestatic com/common/android/utils/StringUtils/isNumeric(Ljava/lang/String;)Z
ifeq L1
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getGender()Ljava/lang/String;
invokestatic java/lang/Integer/valueOf(Ljava/lang/String;)Ljava/lang/Integer;
invokevirtual java/lang/Integer/intValue()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setGender(I)V
L1:
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getJoindate()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setJoindate(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getMobilephone()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setMobilehone(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getNickname()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setNickname(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getPostcode()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setPostcode(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getSignature()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSignature(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getSite()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setSite(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setSysavatar(I)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getTelephone()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setTelephone(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUap_uid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUap_uid(J)V
aload 0
lload 1
aload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
aload 3
areturn
L5:
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 3
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUnitid()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitid(I)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUnitName(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUsername()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getWorkid()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setWorkid(Ljava/lang/String;)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getType()I
invokevirtual com/product/android/commonInterface/contact/OapUser/setType(I)V
aload 3
aload 4
invokevirtual com/product/android/business/login/BindUser/getUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
goto L6
L2:
astore 5
aload 5
invokevirtual java/lang/Exception/printStackTrace()V
goto L1
L3:
astore 5
aload 5
invokevirtual java/lang/Error/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public static getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
getstatic com/nd/android/u/contact/cache/UserCacheManager/instance Lcom/nd/android/u/contact/cache/UserCacheManager;
areturn
.limit locals 0
.limit stack 1
.end method

.method public static getSysAvatarId(J)I
iconst_m1
istore 2
lload 0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getIUser()Lcom/product/android/business/login/IGetUserInfo;
invokeinterface com/product/android/business/login/IGetUserInfo/getBindUser()Lcom/product/android/business/login/BindUser; 0
astore 3
aload 3
ifnull L1
aload 3
invokevirtual com/product/android/business/login/BindUser/getSysavatar()I
istore 2
L1:
iload 2
ireturn
L0:
invokestatic com/nd/android/u/contact/cache/UserCacheManager/getInstance()Lcom/nd/android/u/contact/cache/UserCacheManager;
lload 0
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 3
aload 3
ifnull L1
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getSysavatar()I
ireturn
.limit locals 4
.limit stack 4
.end method

.method private putFId(J)V
.throws java/lang/InterruptedException
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mUserList Ljava/util/concurrent/BlockingQueue;
ifnull L0
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mUserList Ljava/util/concurrent/BlockingQueue;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/BlockingQueue/contains(Ljava/lang/Object;)Z 1
ifne L0
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mUserList Ljava/util/concurrent/BlockingQueue;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/concurrent/BlockingQueue/put(Ljava/lang/Object;)V 1
L0:
return
.limit locals 3
.limit stack 3
.end method

.method public clear()V
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
invokeinterface java/util/Map/clear()V 0
return
.limit locals 1
.limit stack 1
.end method

.method public containUser(J)Z
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
iconst_1
ireturn
L0:
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L1
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 3
aload 3
ifnull L1
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L1
iconst_1
ireturn
L1:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 3
aload 3
ifnull L2
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L2
aload 0
lload 1
aload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
iconst_1
ireturn
L2:
iconst_0
ireturn
.limit locals 4
.limit stack 4
.end method

.method public get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
invokespecial com/nd/android/u/contact/cache/UserCacheManager/getCurrentUser()Lcom/product/android/commonInterface/contact/OapUser;
astore 4
L1:
aload 4
areturn
L0:
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L2
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 5
aload 5
ifnull L2
aload 5
astore 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifeq L1
L2:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 5
aload 5
ifnull L3
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L3
aload 0
lload 1
aload 5
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
aload 5
areturn
L3:
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L4
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
lload 1
invokespecial com/nd/android/u/contact/cache/UserCacheManager/doGetUser(J)V
L4:
aload 5
ifnull L5
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getUid()J
lconst_0
lcmp
ifeq L5
aload 5
astore 4
aload 5
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lconst_0
lcmp
ifne L1
L5:
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 3
lload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
aload 3
iconst_1
invokevirtual com/product/android/commonInterface/contact/OapUser/setIsactive(I)V
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 3
areturn
.limit locals 6
.limit stack 4
.end method

.method public getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
aload 0
lload 1
aconst_null
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/get(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 3
.limit stack 4
.end method

.method public getUserComment(J)Ljava/lang/String;
aload 0
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
astore 3
aload 3
ifnull L0
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getComment()Ljava/lang/String;
areturn
L0:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
areturn
.limit locals 4
.limit stack 3
.end method

.method public getUserFormServer(JLcom/nd/android/u/contact/cache/ProfileUserCacheCallback;)V
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/containsKey(Ljava/lang/Object;)Z
ifne L0
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokevirtual java/util/HashMap/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 0
lload 1
invokespecial com/nd/android/u/contact/cache/UserCacheManager/doGetUser(J)V
L0:
return
.limit locals 4
.limit stack 3
.end method

.method public onEventMainThread(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)V
aload 1
ifnonnull L0
L1:
return
L0:
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$400(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)Lcom/product/android/commonInterface/contact/OapUser;
ifnull L1
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$300(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/cache/ProfileUserCacheCallback
astore 2
aload 0
getfield com/nd/android/u/contact/cache/UserCacheManager/mCallbackMap Ljava/util/HashMap;
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$300(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/HashMap/remove(Ljava/lang/Object;)Ljava/lang/Object;
pop
aload 2
ifnull L1
aload 2
aload 1
invokestatic com/nd/android/u/contact/cache/UserCacheManager$Params/access$400(Lcom/nd/android/u/contact/cache/UserCacheManager$Params;)Lcom/product/android/commonInterface/contact/OapUser;
invokeinterface com/nd/android/u/contact/cache/ProfileUserCacheCallback/refresh(Lcom/product/android/commonInterface/contact/OapUser;)V 1
return
.limit locals 3
.limit stack 3
.end method

.method public putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
.catch all from L0 to L1 using L2
.catch all from L3 to L4 using L2
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
astore 4
aload 4
monitorenter
L0:
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
aload 3
invokeinterface java/util/Map/put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 2
pop
aload 4
monitorexit
L1:
return
L2:
astore 3
L3:
aload 4
monitorexit
L4:
aload 3
athrow
.limit locals 5
.limit stack 3
.end method

.method public putCache(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUser;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUser
astore 2
aload 0
aload 2
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
aload 2
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
goto L1
L0:
return
.limit locals 3
.limit stack 4
.end method

.method public putCacheByOapJMClassRelation(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/nd/android/u/contact/dataStructure/OapJMClassRelation;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/nd/android/u/contact/dataStructure/OapJMClassRelation
invokevirtual com/nd/android/u/contact/dataStructure/OapJMClassRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
goto L1
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public putCacheByOapUnitRelation(Ljava/util/List;)V
.signature "(Ljava/util/List<Lcom/product/android/commonInterface/contact/OapUnitRelation;>;)V"
aload 1
ifnull L0
aload 1
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L0
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/contact/OapUnitRelation
invokevirtual com/product/android/commonInterface/contact/OapUnitRelation/getFid()J
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/getUser(J)Lcom/product/android/commonInterface/contact/OapUser;
pop
goto L1
L0:
return
.limit locals 2
.limit stack 3
.end method

.method public safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
.catch com/common/android/utils/http/HttpException from L0 to L1 using L2
.catch com/common/android/utils/http/HttpException from L1 to L3 using L4
.catch org/json/JSONException from L1 to L3 using L5
.catch com/common/android/utils/http/HttpException from L6 to L7 using L4
.catch org/json/JSONException from L6 to L7 using L5
.catch com/common/android/utils/http/HttpException from L8 to L9 using L4
.catch org/json/JSONException from L8 to L9 using L5
new com/product/android/commonInterface/contact/OapUser
dup
invokespecial com/product/android/commonInterface/contact/OapUser/<init>()V
astore 6
iconst_0
istore 4
iconst_0
istore 5
L0:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserInfo(J)Lorg/json/JSONObject;
astore 7
aload 6
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/initBaseInfo(Lorg/json/JSONObject;)V
L1:
invokestatic com/nd/android/u/contact/business/ContactOapComFactory/getInstance()Lcom/nd/android/u/contact/business/ContactOapComFactory;
invokevirtual com/nd/android/u/contact/business/ContactOapComFactory/getOapUserCom()Lcom/nd/android/u/contact/com/OapUserCom;
lload 1
invokevirtual com/nd/android/u/contact/com/OapUserCom/getSupportUserInfoExt(J)Lorg/json/JSONArray;
astore 7
L3:
iload 5
istore 3
aload 7
ifnull L10
iload 5
istore 3
L6:
aload 7
invokevirtual org/json/JSONArray/length()I
ifle L10
aload 7
iconst_0
invokevirtual org/json/JSONArray/getJSONObject(I)Lorg/json/JSONObject;
astore 7
L7:
iload 5
istore 3
aload 6
ifnull L10
L8:
aload 6
aload 7
invokevirtual com/product/android/commonInterface/contact/OapUser/initExtInfo(Lorg/json/JSONObject;)V
L9:
iload 5
istore 3
L10:
iload 4
ifeq L11
iload 3
ifeq L11
L12:
aload 6
areturn
L2:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_1
istore 4
aload 7
invokevirtual com/common/android/utils/http/HttpException/getStatusCode()I
sipush 404
if_icmpne L1
aload 6
ldc2_w -1L
invokevirtual com/product/android/commonInterface/contact/OapUser/setUid(J)V
aload 6
areturn
L4:
astore 7
aload 7
invokevirtual com/common/android/utils/http/HttpException/printStackTrace()V
iconst_1
istore 3
goto L10
L5:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
iconst_1
istore 3
goto L10
L11:
aload 0
lload 1
aload 6
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
aload 6
invokeinterface com/nd/android/u/contact/dao/OapUserDao/insertUser(Lcom/product/android/commonInterface/contact/OapUser;)J 1
pop2
aload 6
ifnull L12
aload 6
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifeq L12
aload 6
lload 1
invokevirtual com/product/android/commonInterface/contact/OapUser/setFid(J)V
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/product/android/commonInterface/contact/OapUser/setUsername(Ljava/lang/String;)V
aload 6
areturn
.limit locals 8
.limit stack 4
.end method

.method public synGetUser(J)Lcom/product/android/commonInterface/contact/OapUser;
lload 1
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getOapUid()J
lcmp
ifne L0
aload 0
invokespecial com/nd/android/u/contact/cache/UserCacheManager/getCurrentUser()Lcom/product/android/commonInterface/contact/OapUser;
astore 3
L1:
aload 3
areturn
L0:
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/containsKey(Ljava/lang/Object;)Z 1
ifeq L2
getstatic com/nd/android/u/contact/cache/UserCacheManager/mCache Ljava/util/Map;
lload 1
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/product/android/commonInterface/contact/OapUser
astore 4
aload 4
ifnull L2
aload 4
astore 3
aload 4
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifeq L1
L2:
ldc com/nd/android/u/contact/dao/OapUserDao
invokestatic com/nd/android/u/contact/db/ContactDaoFactory/getImpl(Ljava/lang/Class;)Ljava/lang/Object;
checkcast com/nd/android/u/contact/dao/OapUserDao
lload 1
invokeinterface com/nd/android/u/contact/dao/OapUserDao/findOapUser(J)Lcom/product/android/commonInterface/contact/OapUser; 2
astore 3
aload 3
ifnull L3
aload 3
invokevirtual com/product/android/commonInterface/contact/OapUser/getFid()J
lload 1
lcmp
ifne L3
aload 0
lload 1
aload 3
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/putCache(JLcom/product/android/commonInterface/contact/OapUser;)V
aload 3
areturn
L3:
aload 0
lload 1
invokevirtual com/nd/android/u/contact/cache/UserCacheManager/safeGet(J)Lcom/product/android/commonInterface/contact/OapUser;
areturn
.limit locals 5
.limit stack 4
.end method
