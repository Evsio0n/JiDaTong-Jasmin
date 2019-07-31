.bytecode 50.0
.class public synchronized com/android/u/weibo/weibo/business/parser/TopicInfoParser
.super com/common/android/utils/parser/AbstractObjParser
.signature "Lcom/common/android/utils/parser/AbstractObjParser<Lcom/android/u/weibo/weibo/business/bean/TopicInfo;>;"

.method public <init>()V
aload 0
invokespecial com/common/android/utils/parser/AbstractObjParser/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
.throws org/json/JSONException
new com/android/u/weibo/weibo/business/bean/TopicInfo
dup
invokespecial com/android/u/weibo/weibo/business/bean/TopicInfo/<init>()V
astore 5
aload 1
ifnonnull L0
aload 5
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
L1:
aload 5
areturn
L0:
aload 5
aload 1
ldc "tid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 5
aload 1
ldc "unit_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/unit_id J
aload 5
aload 1
ldc "content"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
aload 5
aload 1
ldc "location"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/location Ljava/lang/String;
aload 5
aload 1
ldc "type"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
aload 5
aload 1
ldc "category"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
aload 5
aload 1
ldc "extra_id"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/extra_id Ljava/lang/String;
aload 5
aload 1
ldc "root_tid"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
i2l
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_tid J
aload 5
aload 1
ldc "post_time"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/from_where I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
astore 6
aload 1
ldc "from_string"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 7
aload 7
aload 6
invokevirtual java/lang/String/indexOf(Ljava/lang/String;)I
ifne L2
aload 5
aload 7
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
L3:
aload 5
aload 1
ldc "weibo_tid"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/weibo_tid J
aload 5
aload 1
ldc "request_id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
aload 5
aload 1
ldc "replys"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 5
aload 1
ldc "forwards"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 5
aload 1
ldc "glances"
iconst_0
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;I)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
aload 5
aload 1
ldc "praises"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 5
aload 1
ldc "praised"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfo/setPraised(I)V
aload 5
aload 1
ldc "article"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
aload 5
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 1
ldc "attach"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 6
ifnull L4
aload 5
new com/android/u/weibo/weibo/business/parser/AttachListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AttachListParser/<init>()V
aload 6
invokevirtual com/android/u/weibo/weibo/business/parser/AttachListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/AttachList;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
L4:
aload 1
ldc "image"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 6
ifnull L5
aload 5
new com/android/u/weibo/weibo/business/parser/WbImageListparser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageListparser/<init>()V
aload 6
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbImageList;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
L5:
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
ldc "forward"
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L6
aload 1
ldc "root_topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
ifnull L6
aload 5
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
aload 1
ldc "root_topic"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/RootTopic;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
L6:
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
ldc "u_rank"
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L1
aload 5
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfo/getUidsForRank()Ljava/util/ArrayList;
astore 6
aload 6
invokevirtual java/util/ArrayList/size()I
istore 3
aload 1
ldc "ranking_user"
invokevirtual org/json/JSONObject/has(Ljava/lang/String;)Z
ifeq L7
aload 5
new com/android/u/weibo/weibo/business/parser/WbUserInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/<init>()V
aload 1
ldc "ranking_user"
invokevirtual org/json/JSONObject/optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
invokevirtual com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/parse(Lorg/json/JSONArray;)Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
iload 3
if_icmpge L1
iconst_0
istore 2
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/size()I
istore 4
L8:
iload 2
iload 3
iload 4
isub
if_icmpge L1
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 1
aload 1
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L8
L2:
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
aload 6
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 7
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
goto L3
L7:
aload 5
new com/android/u/weibo/weibo/business/bean/WbUserInfoList
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbUserInfoList/<init>()V
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
iconst_0
istore 2
L9:
iload 2
iload 3
if_icmpge L1
new com/product/android/commonInterface/weibo/WbUserInfo
dup
invokespecial com/product/android/commonInterface/weibo/WbUserInfo/<init>()V
astore 1
aload 1
aload 6
iload 2
invokevirtual java/util/ArrayList/get(I)Ljava/lang/Object;
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
putfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
aload 1
aload 1
getfield com/product/android/commonInterface/weibo/WbUserInfo/uid J
invokestatic com/android/u/weibo/weiboInterfaceImpl/WeiboCallOtherModel/getUserSysAvatarId(J)I
putfield com/product/android/commonInterface/weibo/WbUserInfo/sysAvatarID I
aload 5
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/WbUserInfoList/add(Ljava/lang/Object;)Z
pop
iload 2
iconst_1
iadd
istore 2
goto L9
.limit locals 8
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
areturn
.limit locals 2
.limit stack 2
.end method

.method public toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
.throws org/json/JSONException
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
aload 1
ifnonnull L0
L1:
aload 2
areturn
L0:
aload 2
ldc "tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "unit_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/unit_id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "group_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/group_id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "content"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "location"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/location Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "type"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "category"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "extra_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/extra_id Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "root_tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_tid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "post_time"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "from_string"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "weibo_tid"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/weibo_tid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "request_id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/request_id J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "replys"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "forwards"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "glances"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/glances I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "praised"
aload 1
invokevirtual com/android/u/weibo/weibo/business/bean/TopicInfo/isPraised()I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "praises"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "article"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/article Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L2
aload 2
ldc "user"
new com/product/android/commonInterface/weibo/parser/WbUserInfoParser
dup
invokespecial com/product/android/commonInterface/weibo/parser/WbUserInfoParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/product/android/commonInterface/weibo/parser/WbUserInfoParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
ifnull L3
aload 2
ldc "attach"
new com/android/u/weibo/weibo/business/parser/AttachListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/AttachListParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/attach Lcom/android/u/weibo/weibo/business/bean/AttachList;
invokevirtual com/android/u/weibo/weibo/business/parser/AttachListParser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L4
aload 2
ldc "image"
new com/android/u/weibo/weibo/business/parser/WbImageListparser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbImageListparser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/parser/WbImageListparser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
ifnull L5
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
ldc "forward"
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L5
aload 2
ldc "root_topic"
new com/android/u/weibo/weibo/business/parser/RootTopicParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/RootTopicParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
invokevirtual com/android/u/weibo/weibo/business/parser/RootTopicParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/RootTopic;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
ifnull L1
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
ldc "u_rank"
invokevirtual java/lang/String/compareTo(Ljava/lang/String;)I
ifne L1
aload 2
ldc "ranking_user"
new com/android/u/weibo/weibo/business/parser/WbUserInfoListParser
dup
invokespecial com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/rankingUserList Lcom/android/u/weibo/weibo/business/bean/WbUserInfoList;
invokevirtual com/android/u/weibo/weibo/business/parser/WbUserInfoListParser/toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 3
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokevirtual com/android/u/weibo/weibo/business/parser/TopicInfoParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
