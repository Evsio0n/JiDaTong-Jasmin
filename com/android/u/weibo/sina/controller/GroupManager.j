.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/controller/GroupManager
.super com/android/u/weibo/sina/controller/BaseSinaManager
.inner class inner com/android/u/weibo/sina/controller/GroupManager$1
.inner class inner com/android/u/weibo/sina/controller/GroupManager$2

.field private static 'mInstance' Lcom/android/u/weibo/sina/controller/GroupManager;

.field private static 'sTokenEx' Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;

.field private 'mFriendshipsAPI' Lcom/android/u/weibo/sina/business/comm/FriendshipsAPI;

.field private 'mLocalSinaSDK' Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;

.field private 'mSinaGroupList' Lcom/android/u/weibo/sina/business/bean/SinaGroupList;

.field private 'mbIsCheckingGroup' Z

.field private 'statusList_group' Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;

.method public <init>(Landroid/content/Context;)V
.catch com/android/u/weibo/weibo/controller/NdWeiboException from L0 to L1 using L2
aload 0
invokespecial com/android/u/weibo/sina/controller/BaseSinaManager/<init>()V
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/GroupManager/mbIsCheckingGroup Z
aload 0
new com/android/u/weibo/weibo/business/bean/TopicInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfoList/<init>()V
putfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
aload 1
putfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
aload 0
new com/android/u/weibo/sina/business/comm/FriendshipsAPI
dup
getstatic com/android/u/weibo/sina/controller/GroupManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokespecial com/android/u/weibo/sina/business/comm/FriendshipsAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
putfield com/android/u/weibo/sina/controller/GroupManager/mFriendshipsAPI Lcom/android/u/weibo/sina/business/comm/FriendshipsAPI;
aload 0
new com/android/u/weibo/sina/business/comm/LocalSinaSDK
dup
aload 1
getstatic com/android/u/weibo/sina/controller/GroupManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getToken()Ljava/lang/String;
invokespecial com/android/u/weibo/sina/business/comm/LocalSinaSDK/<init>(Landroid/content/Context;Ljava/lang/String;)V
putfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
aload 0
new com/android/u/weibo/sina/business/comm/AccountAPI
dup
getstatic com/android/u/weibo/sina/controller/GroupManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokespecial com/android/u/weibo/sina/business/comm/AccountAPI/<init>(Lcom/weibo/sdk/android/Oauth2AccessToken;)V
putfield com/android/u/weibo/sina/controller/GroupManager/mAccountAPI Lcom/android/u/weibo/sina/business/comm/AccountAPI;
aload 0
invokestatic com/android/u/weibo/sina/business/bean/SinaGroupList/getInstance()Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
putfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
aload 0
aload 1
invokestatic com/android/u/weibo/weibo/controller/GlobalSetting/getUid()J
getstatic com/android/u/weibo/sina/controller/GroupManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
invokevirtual com/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx/getSinaUid()Ljava/lang/String;
invokestatic com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getInstance(Landroid/content/Context;JLjava/lang/String;)Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
putfield com/android/u/weibo/sina/controller/GroupManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
L0:
aload 0
invokevirtual com/android/u/weibo/sina/controller/GroupManager/initGroup()V
L1:
return
L2:
astore 1
aload 1
invokevirtual com/android/u/weibo/weibo/controller/NdWeiboException/printStackTrace()V
return
.limit locals 2
.limit stack 5
.end method

.method private addNew(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L0
L1:
return
L0:
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 7
L2:
aload 7
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L3
aload 7
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 8
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
aload 8
invokevirtual java/lang/Long/longValue()J
ldc ""
aload 9
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/sinaFollow(JLjava/lang/String;Ljava/lang/StringBuilder;)I
pop
aload 0
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "sinaFollow:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 8
invokevirtual java/lang/StringBuilder/append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
ldc ",result="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/controller/GroupManager/debug(Ljava/lang/String;)V
goto L2
L3:
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 9
bipush 30
newarray long
astore 7
aload 9
aload 7
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iconst_0
istore 2
iconst_0
istore 3
aload 1
invokevirtual java/util/ArrayList/size()I
istore 4
L4:
iload 3
iload 4
if_icmpge L5
aload 7
astore 8
aload 7
bipush 29
laload
lconst_0
lcmp
ifeq L6
bipush 30
newarray long
astore 8
aload 9
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iconst_0
istore 2
L6:
aload 8
iload 2
aload 1
iload 3
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
lastore
iload 2
iconst_1
iadd
istore 2
iload 3
iconst_1
iadd
istore 3
aload 8
astore 7
goto L4
L5:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getId()J
lstore 5
iconst_0
istore 2
aload 9
invokevirtual java/util/ArrayList/size()I
istore 3
L7:
iload 2
iload 3
if_icmpge L1
aload 0
lload 5
aload 9
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast [J
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/emptyListener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addToGroupBatch(J[JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
iload 2
iconst_1
iadd
istore 2
goto L7
.limit locals 10
.limit stack 5
.end method

.method public static clearInstance()V
aconst_null
putstatic com/android/u/weibo/sina/controller/GroupManager/mInstance Lcom/android/u/weibo/sina/controller/GroupManager;
return
.limit locals 0
.limit stack 1
.end method

.method private createDefaultGroup()V
.throws com/android/u/weibo/weibo/controller/NdWeiboException
.catch org/json/JSONException from L0 to L1 using L2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/isExceeded()Z
ifeq L3
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/create_default_group_fail_max I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
L3:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
getstatic com/android/u/weibo/weibo/controller/GlobalSetting/defaultGroupName Ljava/lang/String;
astore 2
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L4
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/create_default_group_fail_no_name I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
L4:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
aload 2
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/createGroup(Ljava/lang/String;Ljava/lang/StringBuilder;)I
ifeq L5
aload 0
aload 0
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual com/android/u/weibo/sina/controller/GroupManager/getErrorCode(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/sina/controller/GroupManager/processWeiBoException(I)Ljava/lang/String;
astore 1
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/create_default_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
L5:
new com/android/u/weibo/sina/business/parser/SinaGroupParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupParser/<init>()V
astore 2
L0:
aload 2
new org/json/JSONObject
dup
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/sina/business/bean/SinaGroup;
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
aload 1
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/addDefaultGroup(Lcom/android/u/weibo/sina/business/bean/SinaGroup;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/setDefaultGroupMemberIds(Ljava/util/ArrayList;)V
L1:
return
L2:
astore 1
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/parse_default_group_data_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 5
.end method

.method private delOld(Ljava/util/ArrayList;)V
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;)V"
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 0
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
ldc ""
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/emptyListener Lcom/android/u/weibo/weibo/controller/NdWeiboListener;
invokevirtual com/android/u/weibo/sina/controller/GroupManager/sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
goto L0
L1:
return
.limit locals 2
.limit stack 5
.end method

.method private getDefaultGroupMembers()V
.throws com/android/u/weibo/weibo/controller/NdWeiboException
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getMemberCount()I
istore 1
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 2
iload 1
ifne L0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
aload 2
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/setDefaultGroupMemberIds(Ljava/util/ArrayList;)V
return
L0:
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getId()J
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 2
iconst_0
invokespecial com/android/u/weibo/sina/controller/GroupManager/getMembersFromReceive(JLjava/lang/StringBuilder;Ljava/util/ArrayList;I)Z
ifeq L1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
aload 2
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/setDefaultGroupMemberIds(Ljava/util/ArrayList;)V
return
L1:
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/get_defalt_group_member_id_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
.limit locals 3
.limit stack 6
.end method

.method private getFollowList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokestatic com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getInstance(Landroid/content/Context;)Lcom/android/u/weibo/weibo/business/db/NdWeiboDatabase;
iconst_0
iconst_0
iconst_0
invokevirtual com/android/u/weibo/weibo/business/db/NdWeiboDatabase/getAttentionUserList(ZII)Lcom/product/android/commonInterface/weibo/IdolList;
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast com/product/android/commonInterface/weibo/Idol
astore 3
aload 3
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
lconst_0
lcmp
ifeq L0
aload 1
aload 3
getfield com/product/android/commonInterface/weibo/Idol/sinaUid J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 1
areturn
.limit locals 4
.limit stack 4
.end method

.method private getGroupList()Z
.throws com/android/u/weibo/weibo/controller/NdWeiboException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
aload 1
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/getGroup(Ljava/lang/StringBuilder;)I
ifne L3
L0:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
new com/android/u/weibo/sina/business/parser/SinaGroupListParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaGroupListParser/<init>()V
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/SinaGroupListParser/parse(Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/setGroups(Ljava/util/ArrayList;)V
L1:
iconst_1
ireturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L3:
iconst_0
ireturn
.limit locals 2
.limit stack 3
.end method

.method private getIdsToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L0:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 4
aload 1
aload 4
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L0
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 3
areturn
.limit locals 5
.limit stack 2
.end method

.method private getIdsToDel(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;Ljava/util/ArrayList<Ljava/lang/Long;>;)Ljava/util/ArrayList<Ljava/lang/Long;>;"
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L0:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L1
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
astore 4
aload 2
aload 4
invokevirtual java/util/ArrayList/contains(Ljava/lang/Object;)Z
ifne L0
aload 3
aload 4
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
goto L0
L1:
aload 3
areturn
.limit locals 5
.limit stack 2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;)Lcom/android/u/weibo/sina/controller/GroupManager;
aload 1
putstatic com/android/u/weibo/sina/controller/GroupManager/sTokenEx Lcom/android/u/weibo/sina/business/bean/Oauth2AccessTokenEx;
getstatic com/android/u/weibo/sina/controller/GroupManager/mInstance Lcom/android/u/weibo/sina/controller/GroupManager;
ifnonnull L0
new com/android/u/weibo/sina/controller/GroupManager
dup
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/<init>(Landroid/content/Context;)V
putstatic com/android/u/weibo/sina/controller/GroupManager/mInstance Lcom/android/u/weibo/sina/controller/GroupManager;
L0:
getstatic com/android/u/weibo/sina/controller/GroupManager/mInstance Lcom/android/u/weibo/sina/controller/GroupManager;
aload 0
putfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
getstatic com/android/u/weibo/sina/controller/GroupManager/mInstance Lcom/android/u/weibo/sina/controller/GroupManager;
areturn
.limit locals 2
.limit stack 3
.end method

.method private getMembersFromReceive(JLjava/lang/StringBuilder;Ljava/util/ArrayList;I)Z
.signature "(JLjava/lang/StringBuilder;Ljava/util/ArrayList<Ljava/lang/Long;>;I)Z"
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
.catch org/json/JSONException from L9 to L10 using L2
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
lload 1
sipush 200
iload 5
aload 3
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/getMemberIds(JIILjava/lang/StringBuilder;)I
ifne L11
L0:
new org/json/JSONObject
dup
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 8
aload 8
ldc "users"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 9
L1:
iconst_0
istore 5
L3:
aload 9
invokevirtual org/json/JSONArray/length()I
istore 6
L4:
iload 5
iload 6
if_icmpge L7
L5:
aload 4
aload 9
iload 5
invokevirtual org/json/JSONArray/getLong(I)J
invokestatic java/lang/Long/valueOf(J)Ljava/lang/Long;
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
L6:
iload 5
iconst_1
iadd
istore 5
goto L4
L7:
aload 8
ldc "next_cursor"
invokevirtual org/json/JSONObject/getInt(Ljava/lang/String;)I
istore 5
L8:
iload 5
ifle L12
L9:
aload 0
lload 1
aload 3
aload 4
iload 5
invokespecial com/android/u/weibo/sina/controller/GroupManager/getMembersFromReceive(JLjava/lang/StringBuilder;Ljava/util/ArrayList;I)Z
istore 7
L10:
iload 7
ireturn
L12:
iconst_1
ireturn
L2:
astore 3
L11:
iconst_0
ireturn
.limit locals 10
.limit stack 6
.end method

.method private matchFollowList()V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getDefaultGroupMemberIds()Ljava/util/ArrayList;
astore 1
aload 1
ifnonnull L0
return
L0:
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/getFollowList()Ljava/util/ArrayList;
astore 2
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/sina/controller/GroupManager/getIdsToAdd(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
astore 3
aload 0
aload 0
aload 1
aload 2
invokespecial com/android/u/weibo/sina/controller/GroupManager/getIdsToDel(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
invokespecial com/android/u/weibo/sina/controller/GroupManager/delOld(Ljava/util/ArrayList;)V
aload 0
aload 3
invokespecial com/android/u/weibo/sina/controller/GroupManager/addNew(Ljava/util/ArrayList;)V
return
.limit locals 4
.limit stack 4
.end method

.method private stopHere()Z
.throws com/android/u/weibo/weibo/controller/NdWeiboException
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/hasDefault()Z
ifeq L0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getDefaultGroupMemberIds()Ljava/util/ArrayList;
astore 1
aload 1
ifnonnull L1
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/getDefaultGroupMembers()V
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/matchFollowList()V
L2:
iconst_0
ireturn
L1:
aload 1
invokevirtual java/util/ArrayList/size()I
ifne L2
iconst_1
ireturn
L0:
aload 0
invokevirtual com/android/u/weibo/sina/controller/GroupManager/initGroup()V
iconst_1
ireturn
.limit locals 2
.limit stack 1
.end method

.method public addSinaFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_3
aload 4
invokevirtual com/android/u/weibo/sina/controller/GroupManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mFriendshipsAPI Lcom/android/u/weibo/sina/business/comm/FriendshipsAPI;
lload 1
aload 3
new com/android/u/weibo/sina/controller/GroupManager$1
dup
aload 0
aload 4
invokespecial com/android/u/weibo/sina/controller/GroupManager$1/<init>(Lcom/android/u/weibo/sina/controller/GroupManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/create(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 8
.end method

.method public addToGroup(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
lload 1
lload 3
aload 6
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/addToGroup(JJLjava/lang/StringBuilder;)I
ifne L0
aload 5
iconst_0
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L0:
aload 5
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
.limit locals 7
.limit stack 6
.end method

.method public addToGroup(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getId()J
lload 1
aload 3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addToGroup(JJLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
return
.limit locals 4
.limit stack 6
.end method

.method public addToGroupBatch(J[JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 3
ifnull L0
aload 3
arraylength
ifne L1
L0:
aload 4
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/friend_list_is_null I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L1:
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
lload 1
aload 3
aload 5
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/addToGroupBatch(J[JLjava/lang/StringBuilder;)I
ifne L2
aload 4
iconst_0
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L2:
aload 4
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
.limit locals 6
.limit stack 6
.end method

.method public getOlderGroupFriendsTimeLine(JLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.catch com/android/u/weibo/weibo/controller/NdWeiboException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L6 to L7 using L5
L0:
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/stopHere()Z
istore 9
L1:
iload 9
ifeq L8
L9:
return
L2:
astore 10
aload 3
iconst_0
aload 10
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L8:
ldc2_w 9223372036854775807L
lstore 5
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L10
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
lload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/getTweetIDByTimestamp(J)J
lstore 5
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
lload 5
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/indexOfTweet(J)I
iconst_1
iadd
istore 4
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iload 4
isub
bipush 20
if_icmplt L11
aload 3
iconst_0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
iload 4
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
return
L11:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
iconst_1
isub
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lconst_1
lsub
lstore 5
L12:
aload 0
iconst_0
aload 3
invokevirtual com/android/u/weibo/sina/controller/GroupManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifne L9
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getId()J
lstore 7
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "getOlderGroupFriendsTimeLine:timestamp="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",maxID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 5
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 10
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
lload 7
lload 1
lload 5
bipush 20
aload 10
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/groupFriendsTimeLine(JJJILjava/lang/StringBuilder;)I
ifne L13
L3:
new org/json/JSONObject
dup
aload 10
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 10
new com/android/u/weibo/sina/business/parser/StatusListParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusListParser/<init>()V
aload 10
ldc "statuses"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/sina/business/parser/StatusListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 10
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 10
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(Ljava/util/Collection;)Z
pop
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L6
aload 3
iconst_0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iload 4
iload 4
bipush 20
iadd
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/subList(II)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ldc ""
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L4:
aload 0
iconst_0
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addLimitCount(I)V
return
L10:
iconst_0
istore 4
goto L12
L6:
aload 3
iconst_0
aconst_null
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L7:
goto L4
L5:
astore 10
aload 3
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 10
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/Exception;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L4
L13:
aload 3
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/get_more_group_weibo_data_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L4
.limit locals 11
.limit stack 9
.end method

.method public initGroup()V
.throws com/android/u/weibo/weibo/controller/NdWeiboException
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mbIsCheckingGroup Z
ifeq L0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/wait_for_getting_group_info I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
L0:
aload 0
iconst_1
putfield com/android/u/weibo/sina/controller/GroupManager/mbIsCheckingGroup Z
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/getGroupList()Z
ifeq L1
aload 0
ldc "\uff1d\uff1d\uff1d\uff1d\uff1d\u83b7\u53d6\u597d\u53cb\u5206\u7ec4\u6210\u529f"
invokevirtual com/android/u/weibo/sina/controller/GroupManager/debug(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/hasDefault()Z
ifeq L2
aload 0
ldc "\uff1d\uff1d\uff1d\uff1d\uff1d\u5df2\u6709\u9ed8\u8ba4\u5206\u7ec4"
invokevirtual com/android/u/weibo/sina/controller/GroupManager/debug(Ljava/lang/String;)V
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/getDefaultGroupMembers()V
L3:
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/GroupManager/mbIsCheckingGroup Z
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/matchFollowList()V
return
L2:
aload 0
ldc "\uff1d\uff1d\uff1d\uff1d\uff1d\u521b\u5efa\u9ed8\u8ba4\u5206\u7ec4"
invokevirtual com/android/u/weibo/sina/controller/GroupManager/debug(Ljava/lang/String;)V
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/createDefaultGroup()V
goto L3
L1:
aload 0
iconst_0
putfield com/android/u/weibo/sina/controller/GroupManager/mbIsCheckingGroup Z
aload 0
ldc "\u83b7\u53d6\u597d\u53cb\u5206\u7ec4\u5931\u8d25"
invokevirtual com/android/u/weibo/sina/controller/GroupManager/debug(Ljava/lang/String;)V
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/get_friend_group_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
athrow
.limit locals 1
.limit stack 4
.end method

.method public refreshGroup()V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/hasDefault()Z
ifeq L0
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/matchFollowList()V
L0:
return
.limit locals 1
.limit stack 1
.end method

.method public refreshGroupFriendsTimeLine(ZLcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
.catch com/android/u/weibo/weibo/controller/NdWeiboException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L5
.catch org/json/JSONException from L4 to L6 using L5
.catch org/json/JSONException from L7 to L8 using L5
.catch org/json/JSONException from L8 to L9 using L5
iload 1
ifne L10
aload 0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ldc "tweet_following"
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/getTopicInfoList(Ljava/lang/String;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
putfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifne L11
ldc "debug"
ldc "============no local data for refreshGroupFriendsTimeLine"
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L12:
aload 2
iconst_0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L13:
return
L11:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "============get local data for refreshGroupFriendsTimeLine:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
goto L12
L10:
aload 0
iconst_0
aload 2
invokevirtual com/android/u/weibo/sina/controller/GroupManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifne L13
L0:
aload 0
invokespecial com/android/u/weibo/sina/controller/GroupManager/stopHere()Z
istore 1
L1:
iload 1
ifne L13
lconst_0
lstore 4
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/isEmpty()Z
ifne L14
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
lstore 4
L14:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaGroupList Lcom/android/u/weibo/sina/business/bean/SinaGroupList;
invokevirtual com/android/u/weibo/sina/business/bean/SinaGroupList/getId()J
lstore 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 8
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "refreshGroupFriendsTimeLine list_id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 6
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ",latestID="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 4
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mLocalSinaSDK Lcom/android/u/weibo/sina/business/comm/LocalSinaSDK;
lload 6
lload 4
lconst_0
bipush 20
aload 8
invokevirtual com/android/u/weibo/sina/business/comm/LocalSinaSDK/groupFriendsTimeLine(JJJILjava/lang/StringBuilder;)I
ifne L15
L3:
new org/json/JSONObject
dup
aload 8
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
ldc "statuses"
invokevirtual org/json/JSONObject/getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 8
new com/android/u/weibo/sina/business/parser/StatusListParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusListParser/<init>()V
aload 8
invokevirtual com/android/u/weibo/sina/business/parser/StatusListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
astore 8
aload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/size()I
ifle L4
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
iconst_0
aload 8
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfoList/addAll(ILjava/util/Collection;)Z
pop
L4:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
ldc "tweet_following"
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/clear(Ljava/lang/String;)V
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mSinaWeiboDatabase Lcom/android/u/weibo/sina/business/db/SinaWeiboDatabase;
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
ldc "tweet_following"
lconst_0
invokevirtual com/android/u/weibo/sina/business/db/SinaWeiboDatabase/insertTopicInfoList(Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;Ljava/lang/String;J)I
istore 3
L6:
iload 3
iflt L8
L7:
ldc "debug"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "insert list error:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
L8:
aload 2
iconst_0
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/statusList_group Lcom/android/u/weibo/weibo/business/bean/TopicInfoList;
aconst_null
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onComplete(ILjava/lang/Object;Ljava/lang/String;)V 3
L9:
aload 0
iconst_0
invokevirtual com/android/u/weibo/sina/controller/GroupManager/addLimitCount(I)V
return
L2:
astore 8
aload 2
iconst_0
aload 8
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
return
L5:
astore 8
aload 2
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 8
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/Exception;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L9
L15:
aload 2
iconst_0
new com/android/u/weibo/weibo/controller/NdWeiboException
dup
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mContext Landroid/content/Context;
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
getstatic com/android/u/weibo/R$string/get_weibo_group_data_fail I
invokevirtual android/content/res/Resources/getString(I)Ljava/lang/String;
invokespecial com/android/u/weibo/weibo/controller/NdWeiboException/<init>(Ljava/lang/String;)V
invokeinterface com/android/u/weibo/weibo/controller/NdWeiboListener/onError(ILcom/android/u/weibo/weibo/controller/NdWeiboException;)V 2
goto L9
.limit locals 9
.limit stack 9
.end method

.method public sinaUnFollow(JLjava/lang/String;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
aload 0
iconst_3
aload 4
invokevirtual com/android/u/weibo/sina/controller/GroupManager/isRequestDenied(ILcom/android/u/weibo/weibo/controller/NdWeiboListener;)Z
ifeq L0
return
L0:
aload 0
getfield com/android/u/weibo/sina/controller/GroupManager/mFriendshipsAPI Lcom/android/u/weibo/sina/business/comm/FriendshipsAPI;
lload 1
aload 3
new com/android/u/weibo/sina/controller/GroupManager$2
dup
aload 0
aload 4
invokespecial com/android/u/weibo/sina/controller/GroupManager$2/<init>(Lcom/android/u/weibo/sina/controller/GroupManager;Lcom/android/u/weibo/weibo/controller/NdWeiboListener;)V
invokevirtual com/android/u/weibo/sina/business/comm/FriendshipsAPI/destroy(JLjava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
return
.limit locals 5
.limit stack 8
.end method
