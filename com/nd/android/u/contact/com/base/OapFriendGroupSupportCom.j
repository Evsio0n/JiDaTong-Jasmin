.bytecode 50.0
.class public synchronized com/nd/android/u/contact/com/base/OapFriendGroupSupportCom
.super com/nd/android/u/contact/com/base/OapSupportCom

.field private static final 'ADDURL' Ljava/lang/String; = "friend/add"

.field private static final 'DELURL' Ljava/lang/String; = "friend/del"

.field private static final 'FOLLOWADDURL' Ljava/lang/String; = "friend/followadd"

.field private static final 'FOLLOWDELURL' Ljava/lang/String; = "friend/followdel"

.field private static final 'FRIENDAGREEURL' Ljava/lang/String; = "friend/friendagree"

.field private static final 'FRIENDAPPLYURL' Ljava/lang/String; = "friend/friendapply"

.field private static final 'FRIENDDELURL' Ljava/lang/String; = "friend/frienddel"

.field private static final 'FRIENDMODIURL' Ljava/lang/String; = "friend/friendmodi"

.field private static final 'FRIENDMOVURL' Ljava/lang/String; = "friend/move"

.field private static final 'LISTMEMBERURL' Ljava/lang/String; = "friend/listmember"

.field private static final 'LISTURL' Ljava/lang/String; = "friend/list"

.field private static final 'MODIFYURL' Ljava/lang/String; = "friend/modi"

.field private static final 'TAG' Ljava/lang/String; = "OapFriendGroupSupportCom"

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/com/base/OapSupportCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public final addFollw(JLjava/lang/String;I)V
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/followadd"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 3
ifnull L4
L3:
ldc ""
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 6
ldc "note"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
iload 4
iconst_m1
if_icmpeq L6
L5:
aload 6
ldc "tagid"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
return
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 7
.limit stack 4
.end method

.method public final addFriendGroup(Ljava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/add"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "tagtitle"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 4
.limit stack 3
.end method

.method public final addFriendGroupreturn(Ljava/lang/String;)Lorg/json/JSONObject;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/add"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "tagtitle"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 4
.limit stack 3
.end method

.method public final addNewFriendGroup(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/add"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "tagtitle"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 4
.limit stack 3
.end method

.method public final addRequestAgree(JI)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendagree"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "tagid"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 5
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 6
aload 6
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 7
.limit stack 4
.end method

.method public final delFollw(J)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/followdel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final delFriend(J)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/frienddel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final delFriendGroup(I)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
aload 3
ldc "tagid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
ldc "OapFriendGroupSupportCom"
ldc "[\u5220\u9664\u5206\u7ec4]tagid=%s"
iconst_1
anewarray java/lang/Object
dup
iconst_0
iload 1
invokestatic java/lang/Integer/valueOf(I)Ljava/lang/Integer;
aastore
invokestatic java/lang/String/format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 4
.limit stack 6
.end method

.method public final deleteFriendGroup(I)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/del"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "tagid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 2
aload 3
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 3
.end method

.method public final dellFollw(J)V
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/followdel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
return
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final follw(JLjava/lang/String;I)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/followadd"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 3
ifnull L4
L3:
ldc ""
aload 3
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 6
ldc "note"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
iload 4
iconst_m1
if_icmpeq L6
L5:
aload 6
ldc "tagid"
iload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L6:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
.limit locals 7
.limit stack 4
.end method

.method public final friendAgree(JI)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendagree"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
aload 5
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 5
ldc "tagid"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 6
.limit stack 4
.end method

.method public final friendApply(JLjava/lang/String;)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendapply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 4
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 5
ldc "note"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "flag"
ldc "auto"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 4
aload 5
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
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

.method public final friendApply(Ljava/util/ArrayList;Ljava/lang/String;)Z
.signature "(Ljava/util/ArrayList<Ljava/lang/Long;>;Ljava/lang/String;)Z"
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L2
.catch org/json/JSONException from L4 to L5 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendapply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 5
aload 1
invokevirtual java/util/ArrayList/iterator()Ljava/util/Iterator;
astore 1
L1:
aload 1
invokeinterface java/util/Iterator/hasNext()Z 0
ifeq L4
aload 5
aload 1
invokeinterface java/util/Iterator/next()Ljava/lang/Object; 0
checkcast java/lang/Long
invokevirtual org/json/JSONArray/put(Ljava/lang/Object;)Lorg/json/JSONArray;
pop
L3:
goto L1
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
L6:
iconst_1
ireturn
L4:
aload 4
ldc "fid"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "note"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "flag"
ldc "auto"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
L5:
goto L6
.limit locals 6
.limit stack 3
.end method

.method public final friendDel(J)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/frienddel"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
L2:
astore 5
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 6
.limit stack 4
.end method

.method public final friendMove(JJ)Z
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/move"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "fid"
lload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "tagid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
L2:
astore 7
aload 7
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 8
.limit stack 4
.end method

.method public final friendmodi(JILjava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendmodi"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
aload 6
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
iload 3
iconst_m1
if_icmpeq L0
aload 6
ldc "tagid"
iload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L0:
aload 4
ifnull L1
aload 6
ldc "comment"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
ldc "OapFriendGroupSupportCom"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "[\u4fee\u6539\u597d\u53cb\u5206\u7ec4\u53ca\u5907\u6ce8]json="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 6
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 7
.limit stack 4
.end method

.method public final getFriendGroupList()Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getFriendGroupMember(IIII)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/listmember"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
iconst_0
istore 6
iload 6
istore 5
iload 1
iconst_m1
if_icmpeq L0
iconst_0
ifne L1
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_0
iconst_1
iadd
istore 5
L0:
iload 5
istore 6
iload 2
iconst_m1
if_icmpeq L2
iload 5
ifne L3
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
iconst_1
iadd
istore 6
L2:
iload 6
istore 2
iload 3
iconst_m1
if_icmpeq L4
iload 6
ifne L5
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
iconst_1
iadd
istore 2
L4:
iload 2
istore 3
iload 4
iconst_m1
if_icmpeq L6
iload 2
ifne L7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
iconst_1
iadd
istore 3
L6:
iload 3
ifne L8
aload 7
ldc "?getfollow=1"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L9:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
areturn
L1:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
istore 5
goto L0
L3:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
istore 6
goto L2
L5:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
istore 2
goto L4
L7:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
istore 3
goto L6
L8:
aload 7
ldc "&getfollow=1"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L9
.limit locals 8
.limit stack 4
.end method

.method public final getSupportFriendList()Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/list"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 1
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 1
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
.limit locals 2
.limit stack 2
.end method

.method public final getSupportFriendListMember(IIII)Lorg/json/JSONObject;
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuffer
dup
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/listmember"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokespecial java/lang/StringBuffer/<init>(Ljava/lang/String;)V
astore 7
iconst_0
istore 6
iload 6
istore 5
iload 1
iconst_m1
if_icmpeq L0
iconst_0
ifne L1
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iconst_0
iconst_1
iadd
istore 5
L0:
iload 5
istore 6
iload 2
iconst_m1
if_icmpeq L2
iload 5
ifne L3
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
iconst_1
iadd
istore 6
L2:
iload 6
istore 2
iload 3
iconst_m1
if_icmpeq L4
iload 6
ifne L5
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
iconst_1
iadd
istore 2
L4:
iload 2
istore 3
iload 4
iconst_m1
if_icmpeq L6
iload 2
ifne L7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "?updatetime="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
iconst_1
iadd
istore 3
L6:
iload 3
ifne L8
aload 7
ldc "?getfollow=1"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
L9:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 7
invokevirtual java/lang/StringBuffer/toString()Ljava/lang/String;
invokevirtual com/common/android/utils/http/HttpComExt/get(Ljava/lang/String;)Lcom/common/android/utils/http/Response;
invokevirtual com/common/android/utils/http/Response/asJSONObject()Lorg/json/JSONObject;
areturn
L1:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
istore 5
goto L0
L3:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&pos="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 5
istore 6
goto L2
L5:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 6
istore 2
goto L4
L7:
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "&tagid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
iload 2
istore 3
goto L6
L8:
aload 7
ldc "&getfollow=1"
invokevirtual java/lang/StringBuffer/append(Ljava/lang/String;)Ljava/lang/StringBuffer;
pop
goto L9
.limit locals 8
.limit stack 4
.end method

.method public final modiFriendGroup(ILjava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/modi"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L0:
aload 4
ldc "tagid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
aload 2
ifnull L4
L3:
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L4
aload 4
ldc "tagname"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 2
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 5
.limit stack 3
.end method

.method public final modifyFriendGroup(ILjava/lang/String;)Z
.throws org/json/JSONException
.throws com/common/android/utils/http/HttpException
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/modi"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 3
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
aload 4
ldc "tagid"
iload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
aload 2
ifnull L0
ldc ""
aload 2
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifne L0
aload 4
ldc "tagname"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L0:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 3
aload 4
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
pop
iconst_1
ireturn
.limit locals 5
.limit stack 3
.end method

.method public final reqestAddFriend(JLjava/lang/String;Ljava/lang/String;)Lcom/common/android/utils/http/Response;
.throws com/common/android/utils/http/HttpException
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
invokestatic com/product/android/business/config/Configuration/getOAPServiceUrl()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "friend/friendapply"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
astore 5
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 6
L0:
aload 6
ldc "fid"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 6
ldc "note"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 6
ldc "flag"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L1:
aload 0
getfield com/nd/android/u/contact/com/base/OapFriendGroupSupportCom/oapApi Lcom/common/android/utils/http/HttpComExt;
aload 5
aload 6
invokevirtual com/common/android/utils/http/HttpComExt/post(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/common/android/utils/http/Response;
areturn
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 7
.limit stack 4
.end method
