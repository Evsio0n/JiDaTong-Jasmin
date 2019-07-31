.bytecode 50.0
.class public synchronized com/nd/android/forumsdk/business/com/http/impl/TeamComImpl
.super com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom
.implements com/nd/android/forumsdk/business/com/http/ITeamCom

.method public <init>()V
aload 0
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public addCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 6
aload 6
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/add_team_category"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 5
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L1:
aload 4
ldc "avatar"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
ldc "intro"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 4
astore 1
L5:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 6
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
areturn
L2:
astore 2
aload 5
astore 1
L6:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 2
aload 4
astore 1
goto L6
.limit locals 7
.limit stack 5
.end method

.method public addTag(Ljava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/add_team_tags"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 3
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 2
L1:
aload 2
ldc "name"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 2
astore 1
L5:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
areturn
L2:
astore 2
aload 3
astore 1
L6:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L5
L4:
astore 3
aload 2
astore 1
aload 3
astore 2
goto L6
.limit locals 5
.limit stack 5
.end method

.method public approvalCreate(JZLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L5 to L6 using L4
.catch org/json/JSONException from L7 to L8 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_approval"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 6
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L1:
aload 5
ldc "id"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 5
ldc "approval_info"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
iload 3
ifeq L7
L5:
aload 5
ldc "approval_action"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
aload 5
astore 4
L9:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/ForumResultBase
aload 4
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
L7:
aload 5
ldc "approval_action"
ldc "0"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
goto L6
L4:
astore 6
aload 5
astore 4
aload 6
astore 5
L10:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L9
L2:
astore 5
aload 6
astore 4
goto L10
.limit locals 8
.limit stack 5
.end method

.method public createNewTeam(Ljava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L5 to L6 using L4
.catch org/json/JSONException from L7 to L8 using L4
.catch org/json/JSONException from L9 to L10 using L4
.catch org/json/JSONException from L11 to L12 using L4
.catch org/json/JSONException from L13 to L14 using L4
.catch org/json/JSONException from L15 to L16 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 9
aload 9
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_create"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 8
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 7
L1:
aload 7
ldc "avatar"
aload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "name"
aload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 7
ldc "intro"
aload 5
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 3
ifnull L10
L5:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 1
L6:
iconst_0
istore 6
L7:
iload 6
aload 3
arraylength
if_icmpge L9
aload 1
aload 3
iload 6
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L8:
iload 6
iconst_1
iadd
istore 6
goto L7
L9:
aload 7
ldc "category"
aload 1
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L10:
aload 4
ifnull L16
L11:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 1
L12:
iconst_0
istore 6
L13:
iload 6
aload 4
arraylength
if_icmpge L15
aload 1
aload 4
iload 6
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L14:
iload 6
iconst_1
iadd
istore 6
goto L13
L15:
aload 7
ldc "tags"
aload 1
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L16:
aload 7
astore 1
L17:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 9
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
areturn
L2:
astore 2
aload 8
astore 1
L18:
aload 2
invokevirtual org/json/JSONException/printStackTrace()V
goto L17
L4:
astore 2
aload 7
astore 1
goto L18
.limit locals 10
.limit stack 5
.end method

.method public deleteCategory(J)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/del_team_category"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public deleteTag(J)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/del_team_tags"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "tid="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/DELETE Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
areturn
.limit locals 4
.limit stack 5
.end method

.method public doFocusOrNot(JZ)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L5 to L6 using L4
.catch org/json/JSONException from L7 to L8 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 7
aload 7
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_follow"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 6
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 4
L1:
aload 4
ldc "id"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
iload 3
ifeq L7
L5:
aload 4
ldc "follow_action"
ldc "1"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 7
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/ForumResultBase
aload 4
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
L7:
aload 4
ldc "follow_action"
ldc "0"
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L8:
goto L6
L4:
astore 5
L9:
aload 5
invokevirtual org/json/JSONException/printStackTrace()V
goto L6
L2:
astore 5
aload 6
astore 4
goto L9
.limit locals 8
.limit stack 5
.end method

.method public editTeamInfo(JLjava/lang/String;Ljava/lang/String;[J[JLjava/lang/String;)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L1 to L3 using L4
.catch org/json/JSONException from L3 to L5 using L4
.catch org/json/JSONException from L6 to L7 using L4
.catch org/json/JSONException from L8 to L9 using L4
.catch org/json/JSONException from L10 to L11 using L4
.catch org/json/JSONException from L12 to L13 using L4
.catch org/json/JSONException from L14 to L15 using L4
.catch org/json/JSONException from L16 to L17 using L4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 11
aload 11
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_modify"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aconst_null
astore 10
L0:
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 9
L1:
aload 9
ldc "id"
lload 1
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 9
ldc "avatar"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
aload 4
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 9
ldc "name"
aload 4
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L3:
aload 9
ldc "intro"
aload 7
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L5:
aload 5
ifnull L11
L6:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 3
L7:
iconst_0
istore 8
L8:
iload 8
aload 5
arraylength
if_icmpge L10
aload 3
aload 5
iload 8
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L9:
iload 8
iconst_1
iadd
istore 8
goto L8
L10:
aload 9
ldc "category"
aload 3
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L11:
aload 6
ifnull L17
L12:
new org/json/JSONArray
dup
invokespecial org/json/JSONArray/<init>()V
astore 3
L13:
iconst_0
istore 8
L14:
iload 8
aload 6
arraylength
if_icmpge L16
aload 3
aload 6
iload 8
laload
invokevirtual org/json/JSONArray/put(J)Lorg/json/JSONArray;
pop
L15:
iload 8
iconst_1
iadd
istore 8
goto L14
L16:
aload 9
ldc "tags"
aload 3
invokevirtual org/json/JSONObject/accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L17:
aload 9
astore 3
L18:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/POST Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 11
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
aload 3
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoBean
areturn
L2:
astore 4
aload 10
astore 3
L19:
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L18
L4:
astore 4
aload 9
astore 3
goto L19
.limit locals 12
.limit stack 5
.end method

.method public getAllCategoryForTeam()Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 1
aload 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/get_team_category"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 1
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTeamCategory
areturn
.limit locals 2
.limit stack 5
.end method

.method public getAllTeamList(III)Lcom/nd/android/forumsdk/business/bean/result/ResultDetailTeamList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_lists"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "status="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
ifle L0
aload 4
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 3
ifle L1
aload 4
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultDetailTeamList
areturn
.limit locals 5
.limit stack 5
.end method

.method public getHotTeam(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_hots"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
lload 1
lconst_0
lcmp
ifle L0
aload 5
ldc "/ghost_v/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
L0:
iload 3
ifle L1
aload 5
ldc "/page/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
iload 4
ifle L2
aload 5
ldc "/size/"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L2:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getMembers(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultUserList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_followers"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
ldc ""
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 3
ifle L0
aload 5
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
ifle L1
aload 5
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultUserList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultUserList
areturn
.limit locals 6
.limit stack 5
.end method

.method public getMyFocusTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_following"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
areturn
.limit locals 4
.limit stack 5
.end method

.method public getMyTeam(II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_my"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
ldc "&"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTags(II)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTags;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/get_team_tags"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 1
ifle L0
aload 3
ldc "page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 1
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 2
ifle L1
aload 3
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetTags
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTags
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTeamInfo(J)Lcom/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 3
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_info"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 3
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "id="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 3
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultGetTeamInfo
areturn
.limit locals 4
.limit stack 5
.end method

.method public getTeamListByCategory(JII)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 5
aload 5
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_kinds"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
ldc "category="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
lload 1
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
pop
iload 3
ifle L0
aload 5
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 4
ifle L1
aload 5
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 5
iload 4
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 5
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
areturn
.limit locals 6
.limit stack 5
.end method

.method public volatile synthetic processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
aload 1
aload 2
aload 3
aload 4
aload 5
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
.limit locals 6
.limit stack 6
.end method

.method public volatile synthetic processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
aload 0
aload 1
aload 2
aload 3
aload 4
invokespecial com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
areturn
.limit locals 5
.limit stack 5
.end method

.method public searchTeamByKeyWord(Ljava/lang/String;II)Lcom/nd/android/forumsdk/business/bean/result/ResultTeamInfoList;
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/team_search"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "?"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
ldc "keyword="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
aload 1
invokestatic android/net/Uri/encode(Ljava/lang/String;)Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
iload 2
ifle L0
aload 4
ldc "&page="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 2
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L0:
iload 3
ifle L1
aload 4
ldc "&size="
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 4
iload 3
invokevirtual java/lang/StringBuilder/append(I)Ljava/lang/StringBuilder;
pop
L1:
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/GET Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
aconst_null
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTeamInfoList
areturn
.limit locals 5
.limit stack 5
.end method

.method public updateCategory(Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/CategoryInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/modi_team_category"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 1
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PUT Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/CategoryInfoBean
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 5
.end method

.method public updateTag(Lcom/nd/android/forumsdk/business/bean/structure/TagInfoBean;)Lcom/nd/android/forumsdk/business/bean/result/ResultTagInfoBean;
.catch org/json/JSONException from L0 to L1 using L2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 2
aload 2
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
getstatic com/nd/android/forumsdk/business/constant/ForumConfig/HOST_URL Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc "/mg/api/aid/modi_team_tags"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
new com/google/gson/Gson
dup
invokespecial com/google/gson/Gson/<init>()V
aload 1
invokevirtual com/google/gson/Gson/toJson(Ljava/lang/Object;)Ljava/lang/String;
astore 1
L0:
new org/json/JSONObject
dup
aload 1
invokespecial org/json/JSONObject/<init>(Ljava/lang/String;)V
astore 1
aload 0
getstatic com/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType/PUT Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;
aload 2
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
ldc com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
aconst_null
aload 1
invokevirtual com/nd/android/forumsdk/business/com/http/impl/TeamComImpl/processRequestAndParse(Lcom/nd/android/forumsdk/business/com/http/impl/ForumBaseCom$RequestType;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/json/JSONObject;)Lcom/nd/android/forumsdk/business/bean/ForumResultBase;
checkcast com/nd/android/forumsdk/business/bean/result/ResultTagInfoBean
astore 1
L1:
aload 1
areturn
L2:
astore 1
aload 1
invokevirtual org/json/JSONException/printStackTrace()V
aconst_null
areturn
.limit locals 3
.limit stack 6
.end method
