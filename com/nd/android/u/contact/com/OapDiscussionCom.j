.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/OapDiscussionCom
.super java/lang/Object

.field private static final 'DISCUSSIONADD' Ljava/lang/String; = "discussion/add"

.field private static final 'DISCUSSIONCREATE' Ljava/lang/String; = "discussion/create"

.field private static final 'DISCUSSIONINFO' Ljava/lang/String; = "discussion/info"

.field private static final 'DISCUSSIONLIST' Ljava/lang/String; = "discussion/list"

.field private static final 'DISCUSSIONMEMBERLIST' Ljava/lang/String; = "discussion/memberlist"

.field private static final 'DISCUSSIONNOTICEMODI' Ljava/lang/String; = "discussion/noticemodi"

.field private static final 'DISCUSSIONQUIT' Ljava/lang/String; = "discussion/quit"

.field private 'oapApi' Lcom/common/android/utils/http/HttpComExt;

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
new com/common/android/utils/http/HttpComExt
dup
invokespecial com/common/android/utils/http/HttpComExt/<init>()V
putfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
return
.limit locals 1
.limit stack 3
.end method

.method public final addDisscussion(JLjava/util/List;)Z
.signature "(JLjava/util/List<Ljava/lang/Long;>;)Z"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 5
aload 5
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 5
ldc "discussion/add"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 7
aload 3
ifnull L9
L0:
aload 3
invokeinterface java/util/List/size()I 0
ifne L3
L1:
goto L9
L3:
aload 3
invokeinterface java/util/List/iterator()Ljava/util/Iterator; 0
astore 3
L4:
iconst_0
istore 4
L5:
aload 3
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 7
iload 4
aload 3
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual org/json/JSONArray/put(IJ)Lorg/json/JSONArray;
pop
L6:
iload 4
iconst_1
iadd
istore 4
goto L5
L7:
aload 6
ldc "gid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "uid"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
pop
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L8
L9:
iconst_0
ireturn
.limit locals 8
.limit stack 4
.end method

.method public final createDiscussion(Ljava/lang/String;Ljava/util/ArrayList;)J
.signature "(Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;)J"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "discussion/create"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 6
aload 2
ifnull L9
L0:
aload 2
invokevirtual java/util/ArrayList/size()I
ifne L3
L1:
ldc2_w -1L
lreturn
L3:
aload 2
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 2
L4:
iconst_0
istore 3
L5:
aload 2
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L7
aload 6
iload 3
aload 2
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual java/lang/Long/longValue()J
invokevirtual org/json/JSONArray/put(IJ)Lorg/json/JSONArray;
pop
L6:
iload 3
iconst_1
iadd
istore 3
goto L5
L7:
aload 5
ldc "gname"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "uid"
aload 6
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
astore 1
aload 1
ifnull L9
aload 1
ldc "gid"
invokestatic com/common/android/utils/JSONUtils/getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
lreturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
goto L8
L9:
ldc2_w -1L
lreturn
.limit locals 7
.limit stack 4
.end method

.method public final getDiscussionInfo(J)Lcom/product/android/commonInterface/contact/OapGroup;
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getSupportDiscussionInfo(J)Lorg/json/JSONObject;
astore 4
aconst_null
astore 3
aload 4
ifnull L0
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 3
aload 3
aload 4
invokevirtual com/product/android/commonInterface/contact/OapGroup/initDiscussionGroup(Lorg/json/JSONObject;)V
L0:
aload 3
areturn
.limit locals 5
.limit stack 3
.end method

.method public final getDiscussionList()Ljava/util/ArrayList;
.signature "()Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroup;>;"
.throws com/common/android/utils/http/HttpException
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 3
aload 0
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getSupportDiscussionList()Lorg/json/JSONObject;
astore 4
aload 4
ifnull L0
aload 4
ldc "groups"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 4
aload 4
ifnull L0
aload 4
invokevirtual org/json/JSONArray/length()I
istore 2
iconst_0
istore 1
L1:
iload 1
iload 2
if_icmpge L0
aload 4
iload 1
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 5
new com/product/android/commonInterface/contact/OapGroup
dup
invokespecial com/product/android/commonInterface/contact/OapGroup/<init>()V
astore 6
aload 6
aload 5
invokevirtual com/product/android/commonInterface/contact/OapGroup/initDiscussionGroup(Lorg/json/JSONObject;)V
aload 3
aload 6
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 1
iconst_1
iadd
istore 1
goto L1
L0:
aload 3
areturn
.limit locals 7
.limit stack 2
.end method

.method public final getDiscussionMemberList(J)Ljava/util/ArrayList;
.signature "(J)Ljava/util/ArrayList<Lcom/product/android/commonInterface/contact/OapGroupRelation;>;"
.throws com/common/android/utils/http/HttpException
aload 0
lload 1
invokevirtual com/nd/android/u/contact/com/OapDiscussionCom/getSupportDiscussionMemberList(J)Lorg/json/JSONObject;
astore 6
new java/util/ArrayList
dup
invokespecial java/util/ArrayList/<init>()V
astore 5
aload 6
ifnull L0
aload 6
ldc "members"
invokestatic com/common/android/utils/JSONUtils/getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
astore 6
aload 6
ifnull L0
aload 6
invokevirtual org/json/JSONArray/length()I
istore 4
iconst_0
istore 3
L1:
iload 3
iload 4
if_icmpge L0
aload 6
iload 3
invokestatic com/common/android/utils/JSONUtils/getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
astore 7
new com/product/android/commonInterface/contact/OapGroupRelation
dup
invokespecial com/product/android/commonInterface/contact/OapGroupRelation/<init>()V
astore 8
aload 8
aload 7
lload 1
invokevirtual com/product/android/commonInterface/contact/OapGroupRelation/initDiscussionByJSON(Lorg/json/JSONObject;J)V
aload 5
aload 8
invokevirtual java/util/ArrayList/add(Ljava/lang/Object;)Z
pop
iload 3
iconst_1
iadd
istore 3
goto L1
L0:
aload 5
areturn
.limit locals 9
.limit stack 4
.end method

.method public final getSupportDiscussionInfo(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "discussion/info"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 4
.end method

.method public final getSupportDiscussionList()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 1
aload 1
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 1
ldc "discussion/list"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getSupportDiscussionMemberList(J)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 3
aload 3
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
ldc "discussion/memberlist"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?gid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 4
.end method

.method public final modiDiscussionNotice(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 4
aload 4
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 4
ldc "discussion/noticemodi"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "gid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 5
ldc "notice"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
pop
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final quitDisscusion(J[J)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
.catch org/json/JSONException from L7 to L8 using L2
iconst_0
istore 5
new java/lang/StringBuffer
dup
invokespecial java/lang/StringBuffer/<init>()V
astore 7
aload 7
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
aload 7
ldc "discussion/quit"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 8
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 9
aload 3
ifnull L9
L0:
aload 3
arraylength
ifne L3
L1:
iconst_0
ireturn
L3:
aload 3
arraylength
istore 6
L4:
iconst_0
istore 4
L10:
iload 5
iload 6
if_icmpge L7
L5:
aload 9
iload 4
aload 3
iload 5
laload
invokevirtual org/json/JSONArray/put(IJ)Lorg/json/JSONArray;
pop
L6:
iload 5
iconst_1
iadd
istore 5
iload 4
iconst_1
iadd
istore 4
goto L10
L7:
aload 8
ldc "gid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 8
ldc "uid"
aload 9
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
aload 0
getfield com/nd/android/u/contact/com/OapDiscussionCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
aload 8
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
pop
iconst_1
ireturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L8
L9:
iconst_0
ireturn
.limit locals 10
.limit stack 4
.end method
