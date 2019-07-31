.bytecode 50.0
.class public synchronized com/nd/android/u/imSdk/IMSdkCall$GroupMessage
.super java/lang/Object
.inner class public static GroupMessage inner com/nd/android/u/imSdk/IMSdkCall$GroupMessage outer com/nd/android/u/imSdk/IMSdkCall

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static addGroupRequest(JLjava/lang/String;)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 3
aload 3
ldc_w 65060
putfield ims/bean/NDMessage/IMSCmd I
aload 3
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 3
getstatic com/nd/android/u/imSdk/GroupLoginManager/INSTANCE Lcom/nd/android/u/imSdk/GroupLoginManager;
invokevirtual com/nd/android/u/imSdk/GroupLoginManager/getNormalGroupType()I
putfield ims/bean/NDMessage/groupType I
aload 3
aload 2
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 3
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 4
.limit stack 3
.end method

.method public static agreeJoinGroup(Ljava/lang/String;IJI)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 5
aload 5
ldc_w 65062
putfield ims/bean/NDMessage/IMSCmd I
aload 5
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 5
iload 1
putfield ims/bean/NDMessage/groupType I
aload 5
lload 2
putfield ims/bean/NDMessage/uidTo J
aload 5
iload 4
putfield ims/bean/NDMessage/optType I
aload 5
iconst_1
putfield ims/bean/NDMessage/iPara I
aload 5
ldc ""
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
new com/nd/android/u/controller/bean/DefaultGroup
dup
aload 0
iload 1
invokespecial com/nd/android/u/controller/bean/DefaultGroup/<init>(Ljava/lang/String;I)V
invokevirtual com/nd/android/u/controller/bean/DefaultGroup/loginInit()V
aload 5
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 6
.limit stack 4
.end method

.method public static dimssGroup(Ljava/lang/String;I)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 65057
putfield ims/bean/NDMessage/IMSCmd I
aload 2
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 2
iload 1
putfield ims/bean/NDMessage/groupType I
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static group_cmd_c2n_add_member(Ljava/lang/String;I[JI)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 4
aload 4
ldc_w 65061
putfield ims/bean/NDMessage/IMSCmd I
aload 4
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 4
iload 1
putfield ims/bean/NDMessage/groupType I
aload 4
aload 2
putfield ims/bean/NDMessage/object Ljava/lang/Object;
aload 4
iload 3
putfield ims/bean/NDMessage/wseq I
aload 4
ldc ""
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 4
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 5
.limit stack 2
.end method

.method public static group_cmd_c2n_remove_member(Ljava/lang/String;IJI)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 5
aload 5
ldc_w 65063
putfield ims/bean/NDMessage/IMSCmd I
aload 5
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 5
iload 1
putfield ims/bean/NDMessage/groupType I
aload 5
lload 2
putfield ims/bean/NDMessage/uidTo J
aload 5
iload 4
putfield ims/bean/NDMessage/wseq I
aload 5
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 6
.limit stack 3
.end method

.method public static group_cmd_c2n_remove_member(Ljava/lang/String;I[JI)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 4
aload 4
ldc_w 65063
putfield ims/bean/NDMessage/IMSCmd I
aload 4
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 4
iload 1
putfield ims/bean/NDMessage/groupType I
aload 4
aload 2
putfield ims/bean/NDMessage/object Ljava/lang/Object;
aload 4
iload 3
putfield ims/bean/NDMessage/wseq I
aload 4
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 5
.limit stack 2
.end method

.method public static quitGroup(Ljava/lang/String;I)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 2
aload 2
ldc_w 65058
putfield ims/bean/NDMessage/IMSCmd I
aload 2
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 2
iload 1
putfield ims/bean/NDMessage/groupType I
aload 2
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 3
.limit stack 2
.end method

.method public static refuseToJoinGroup(Ljava/lang/String;IJLjava/lang/String;I)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 6
aload 6
ldc_w 65062
putfield ims/bean/NDMessage/IMSCmd I
aload 6
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 6
iload 1
putfield ims/bean/NDMessage/groupType I
aload 6
lload 2
putfield ims/bean/NDMessage/uidTo J
aload 6
aload 4
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 6
iload 5
putfield ims/bean/NDMessage/optType I
aload 6
iconst_0
putfield ims/bean/NDMessage/iPara I
aload 6
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 7
.limit stack 3
.end method

.method public static sendModifyGroupNotice(JILjava/lang/String;I)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "gid"
lload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 3
ifnull L5
L3:
aload 5
ldc "notice"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 3
aload 3
ldc_w 65056
putfield ims/bean/NDMessage/IMSCmd I
aload 3
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 3
iload 2
putfield ims/bean/NDMessage/groupType I
aload 3
iload 4
putfield ims/bean/NDMessage/wseq I
aload 3
aload 5
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 3
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
L5:
aload 5
ldc "notice"
ldc ""
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
goto L4
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 6
.limit stack 4
.end method

.method public static sendModifyIntroduction(JILjava/lang/String;I)V
.catch org/json/JSONException from L0 to L1 using L2
.catch org/json/JSONException from L3 to L4 using L2
.catch org/json/JSONException from L5 to L6 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 5
L0:
aload 5
ldc "gid"
lload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
L1:
aload 3
ifnull L5
L3:
aload 5
ldc "introduction"
aload 3
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L4:
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 3
aload 3
ldc_w 65056
putfield ims/bean/NDMessage/IMSCmd I
aload 3
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 3
iload 2
putfield ims/bean/NDMessage/groupType I
aload 3
iload 4
putfield ims/bean/NDMessage/wseq I
aload 3
aload 5
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 3
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
L5:
aload 5
ldc "introduction"
ldc ""
invokevirtual org/json/JSONObject/put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
pop
L6:
goto L4
L2:
astore 3
aload 3
invokevirtual org/json/JSONException/printStackTrace()V
goto L4
.limit locals 6
.limit stack 4
.end method

.method public static sendModifyJoinperm(JI)V
.catch org/json/JSONException from L0 to L1 using L2
new org/json/JSONObject
dup
invokespecial org/json/JSONObject/<init>()V
astore 3
L0:
aload 3
ldc "gid"
lload 0
invokevirtual org/json/JSONObject/put(Ljava/lang/String;J)Lorg/json/JSONObject;
pop
aload 3
ldc "joinperm"
iload 2
invokevirtual org/json/JSONObject/put(Ljava/lang/String;I)Lorg/json/JSONObject;
pop
L1:
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 4
aload 4
ldc_w 65056
putfield ims/bean/NDMessage/IMSCmd I
aload 4
lload 0
invokestatic java/lang/String/valueOf(J)Ljava/lang/String;
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 4
iconst_0
putfield ims/bean/NDMessage/groupType I
aload 4
aload 3
invokevirtual org/json/JSONObject/toString()Ljava/lang/String;
putfield ims/bean/NDMessage/oriMessage Ljava/lang/String;
aload 4
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
L2:
astore 4
aload 4
invokevirtual org/json/JSONException/printStackTrace()V
goto L1
.limit locals 5
.limit stack 4
.end method

.method public static transferGroup(Ljava/lang/String;IJ)V
new ims/bean/NDMessage
dup
invokespecial ims/bean/NDMessage/<init>()V
astore 4
aload 4
ldc_w 65064
putfield ims/bean/NDMessage/IMSCmd I
aload 4
aload 0
putfield ims/bean/NDMessage/groupId Ljava/lang/String;
aload 4
iload 1
putfield ims/bean/NDMessage/groupType I
aload 4
lload 2
putfield ims/bean/NDMessage/uidTo J
aload 4
bipush 16
putfield ims/bean/NDMessage/optType I
aload 4
invokestatic ims/IMSdk/sendMessage(Lims/bean/NDMessage;)V
return
.limit locals 5
.limit stack 3
.end method
