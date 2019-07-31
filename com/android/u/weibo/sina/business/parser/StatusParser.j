.bytecode 50.0
.class public synchronized com/android/u/weibo/sina/business/parser/StatusParser
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
astore 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/String/length()I
bipush 15
if_icmple L0
aload 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/getString(Ljava/lang/String;)Ljava/lang/String;
ldc "EEE MMM dd HH:mm:ss z yyyy"
invokestatic com/android/u/weibo/sina/utils/SinaUtil/sinaDate2Long(Ljava/lang/String;Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
L1:
aload 2
aload 1
ldc "id"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
aload 2
aload 1
ldc "text"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
aload 1
ldc "source"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/xiaoyou I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifne L2
aload 3
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/nd_91u I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
invokevirtual java/lang/String/contains(Ljava/lang/CharSequence;)Z
ifeq L3
L2:
aload 2
aload 3
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
L4:
aload 1
ldc "thumbnail_pic"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 3
aload 1
ldc "bmiddle_pic"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 4
aload 1
ldc "original_pic"
invokevirtual org/json/JSONObject/optString(Ljava/lang/String;)Ljava/lang/String;
astore 5
aload 3
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L5
aload 5
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L6
L5:
new com/android/u/weibo/weibo/business/bean/WbImage
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImage/<init>()V
astore 6
aload 6
aload 3
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
aload 6
aload 4
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_middle Ljava/lang/String;
aload 6
aload 5
putfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
aload 2
new com/android/u/weibo/weibo/business/bean/WbImageList
dup
invokespecial com/android/u/weibo/weibo/business/bean/WbImageList/<init>()V
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
aload 6
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/add(Ljava/lang/Object;)Z
pop
aload 2
ldc "image"
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/category Ljava/lang/String;
L6:
aload 2
new com/android/u/weibo/sina/business/parser/SinaUserParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaUserParser/<init>()V
aload 1
ldc "user"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/parse(Lorg/json/JSONObject;)Lcom/product/android/commonInterface/weibo/WbUserInfo;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
aload 1
ldc "retweeted_status"
invokevirtual org/json/JSONObject/isNull(Ljava/lang/String;)Z
ifne L7
aload 2
ldc "forward"
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
aload 2
new com/android/u/weibo/weibo/business/bean/RootTopic
dup
invokespecial com/android/u/weibo/weibo/business/bean/RootTopic/<init>()V
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
iconst_1
putfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
aload 2
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
ldc "retweeted_status"
invokevirtual org/json/JSONObject/optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
putfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
L8:
aload 2
aload 1
ldc "reposts_count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
aload 2
aload 1
ldc "comments_count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
aload 2
aload 1
ldc "attitudes_count"
invokevirtual org/json/JSONObject/optInt(Ljava/lang/String;)I
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
aload 2
iconst_1
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/isOnlySina Z
aload 2
areturn
L0:
aload 2
aload 1
ldc "created_at"
invokevirtual org/json/JSONObject/optLong(Ljava/lang/String;)J
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
goto L1
L3:
aload 2
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/android/u/weibo/R$string/from_sina I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
goto L4
L7:
aload 2
ldc "first"
putfield com/android/u/weibo/weibo/business/bean/TopicInfo/type Ljava/lang/String;
goto L8
.limit locals 7
.limit stack 4
.end method

.method public volatile synthetic parse(Lorg/json/JSONObject;)Lcom/common/android/utils/parser/BaseType;
.throws org/json/JSONException
aload 0
aload 1
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/parse(Lorg/json/JSONObject;)Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
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
aload 2
ldc "created_at"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/post_time J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "id"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/tid J
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 2
ldc "text"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/content Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "source"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/from_string Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "favorited"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praised Z
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Z)Lorg/json/JSONObject;
pop
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
ifnull L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/isEmpty()Z
ifne L0
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/image Lcom/android/u/weibo/weibo/business/bean/WbImageList;
iconst_0
invokevirtual com/android/u/weibo/weibo/business/bean/WbImageList/get(I)Ljava/lang/Object;
checkcast com/android/u/weibo/weibo/business/bean/WbImage
astore 3
aload 2
ldc "thumbnail_pic"
aload 3
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_thumb Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "bmiddle_pic"
aload 3
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_middle Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 2
ldc "original_pic"
aload 3
getfield com/android/u/weibo/weibo/business/bean/WbImage/image_original Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
ifnull L1
aload 2
ldc "user"
new com/android/u/weibo/sina/business/parser/SinaUserParser
dup
invokespecial com/android/u/weibo/sina/business/parser/SinaUserParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/user Lcom/product/android/commonInterface/weibo/WbUserInfo;
invokevirtual com/android/u/weibo/sina/business/parser/SinaUserParser/toJSONObject(Lcom/product/android/commonInterface/weibo/WbUserInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
ifnull L2
iconst_1
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/exists I
if_icmpne L2
aload 2
ldc "retweeted_status"
new com/android/u/weibo/sina/business/parser/StatusParser
dup
invokespecial com/android/u/weibo/sina/business/parser/StatusParser/<init>()V
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/root_topic Lcom/android/u/weibo/weibo/business/bean/RootTopic;
getfield com/android/u/weibo/weibo/business/bean/RootTopic/topic Lcom/android/u/weibo/weibo/business/bean/TopicInfo;
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L2:
aload 2
ldc "reposts_count"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/forwards I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "comments_count"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/replys I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ldc "attitudes_count"
aload 1
getfield com/android/u/weibo/weibo/business/bean/TopicInfo/praises I
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
areturn
.limit locals 4
.limit stack 4
.end method

.method public volatile synthetic toJSONObject(Lcom/common/android/utils/parser/BaseType;)Lorg/json/JSONObject;
.throws org/json/JSONException
aload 0
aload 1
checkcast com/android/u/weibo/weibo/business/bean/TopicInfo
invokevirtual com/android/u/weibo/sina/business/parser/StatusParser/toJSONObject(Lcom/android/u/weibo/weibo/business/bean/TopicInfo;)Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method
